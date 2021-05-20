#include <atmel_start.h>
#include <stdio.h>
#include <timeout.h>
#include <i2c_types.h>
#include <utils/atomic.h>

#define eeprom_slave_adr 0x54
#define eeprom_min_temp_adr 0
#define eeprom_max_temp_adr 1

#define temp_sens_slave_adr 0x4f
#define ts_temp_reg_adr 0x0
#define ts_conf_reg_adr 0x1
#define ts_llim_reg_adr 0x2
#define ts_hlim_reg_adr 0x3

#define timer_prescaler 8
#define cpu_frequency (8ull * 1024ull * 1024ull)
#define ticks_per_second (cpu_frequency / timer_prescaler)
#define measure_adc_cycles (ticks_per_second / 8)
#define drive_cycles (ticks_per_second / 8)
#define display_cycles ticks_per_second
#define read_temp_cycles ticks_per_second

i2c_operations_t i2c_cb_adr_nack(void *p);
i2c_operations_t i2c_cb_data_nack(void *p);
i2c_operations_t i2c_cb_busy(void *p);

static absolutetime_t measure_adc();
static absolutetime_t drive();
static absolutetime_t display();
static absolutetime_t read_temp();

adc_result_t adc_measurement;
uint8_t      duty;
uint8_t      temp;
uint8_t      temp_reading[2];
uint8_t      conf_reading[2];
uint8_t      llim_reading[2];
uint8_t      hlim_reading[2];

uint8_t adr_nack   = 0;
uint8_t data_nack  = 0;
bool    slave_busy = false;

// Initialize the two first elements in the struct, the
// remaining elements are initialized by TIMER_0_timeout_create()
timer_struct_t measure_adc_handle = {measure_adc, NULL};
timer_struct_t drive_handle       = {drive, NULL};
timer_struct_t display_handle     = {display, NULL};
timer_struct_t read_temp_handle   = {read_temp, NULL};

/** Structure passed into read_handler to describe the actions to be performed by the handler */
typedef struct {
	uint8_t *data;
	uint8_t  size;
} transfer_descriptor_t;

/** This callback is called when the initial write of the pointer register has finished.
    This callback controls the second phase of the I2C transaction, the read of the
    targeted register after a REPEATED START.
*/
i2c_operations_t read_handler(void *d)
{
	transfer_descriptor_t *desc = (transfer_descriptor_t *)d;
	I2C_0_set_buffer((void *)desc->data, desc->size);
	// Set callback to NULL: After read is complete, terminate transfer and send STOP
	I2C_0_set_data_complete_callback(NULL, NULL);
	return i2c_restart_read; // Send REPEATED START before read
}

/** Read one register in the temperature sensor on IO1 Xplained.*/
void temp_sens_read(uint8_t adr, uint8_t *data, uint8_t size)
{
	// 1. Write adr to pointer register in temperature sensor
	// 2. Read size bytes from temperature sensor into buffer

	transfer_descriptor_t d = {data, size};
	while (!I2C_0_open(temp_sens_slave_adr))
		; // sit here until we get the bus..
	I2C_0_set_data_complete_callback((void *)read_handler, &d);
	I2C_0_set_address_nack_callback((void *)i2c_cb_restart_read, NULL);
	I2C_0_set_buffer((void *)&adr, 1);
	I2C_0_master_operation(false); // write
	while (I2C_BUSY == I2C_0_close())
		; // sit here until finished
}

/* Two simple NACK callback functions just to demonstrate the
use of the callbacks.*/
i2c_operations_t i2c_cb_adr_nack(void *p)
{
	adr_nack++;
	return i2c_stop;
}

i2c_operations_t i2c_cb_data_nack(void *p)
{
	data_nack++;
	return i2c_stop;
}

/** This callback is called when the initial write of the pointer register has finished.
    This callback controls the second phase of the I2C transaction, the write of the
    data after a REPEATED START.
*/
i2c_operations_t eeprom_write_n_data_handler(void *d)
{
	transfer_descriptor_t *desc = (transfer_descriptor_t *)d;
	I2C_0_set_buffer((void *)desc->data, desc->size);
	// Set callback to terminate transfer and send STOP after write is complete
	I2C_0_set_data_complete_callback(i2c_cb_return_stop, NULL);
	// We should not get a data NACK here, but setup handler in case
	I2C_0_set_data_nack_callback(i2c_cb_data_nack, NULL);
	// We should not get an address NACK here, but setup handler in case
	I2C_0_set_address_nack_callback(i2c_cb_adr_nack, NULL);
	return i2c_continue; // No START or REPEATED START before next write
}

/** Performs the following transfer sequence:
1. Send SLA+W, Data1
2. Send RepeatedStart, SLA+W, Write Data1, ..., Write DataN
3. Send Stop

This transfer sequence is typically done to first write to the slave the address in
the slave to write to, thereafter to write N bytes to this address.
*/
void eeprom_write_n(uint16_t adr, uint8_t *data, uint8_t size)
{
	uint8_t               sla = eeprom_slave_adr | ((adr >> 8) & 0x3);
	uint8_t               a   = adr & 0xff;
	transfer_descriptor_t d   = {data, size};
	while (!I2C_0_open(sla))
		; // sit here until we get the bus..
	// This callback specifies what to do after the first write operation has completed
	// The parameters to the callback are bundled together in the aggregate data type d.
	I2C_0_set_data_complete_callback(eeprom_write_n_data_handler, &d);
	// We should not get an an address NACK here
	I2C_0_set_address_nack_callback(i2c_cb_adr_nack, NULL);
	// Transmit least significant byte of EEPROM address
	I2C_0_set_buffer((void *)&a, 1);
	// Start a Write operation
	I2C_0_master_operation(false);
	while (I2C_BUSY == I2C_0_close())
		; // sit here until the entire chained operation has finished
}

/** This callback is called when the initial write of the pointer register has finished.
    This callback controls the second phase of the I2C transaction, the write of the
    data after a REPEATED START.
*/
i2c_operations_t eeprom_read_n_data_handler(void *d)
{
	transfer_descriptor_t *desc = (transfer_descriptor_t *)d;
	I2C_0_set_buffer((void *)desc->data, desc->size);
	// Set callback to terminate transfer and send STOP after read is complete
	I2C_0_set_data_complete_callback(i2c_cb_return_stop, NULL);
	return i2c_restart_read; // Send REPEATED START before read
}

/** Performs the following transfer sequence:
1. Send SLA+W, Data1
2. Send RepeatedStart, SLA+R, Read Data1, ..., Read DataN
3. Send Stop

This transfer sequence is typically done to first write to the slave the address in
the slave to read from, thereafter to read N bytes from this address.
*/
void eeprom_read_n(uint16_t adr, uint8_t *data, uint8_t size)
{
	uint8_t               sla = eeprom_slave_adr | ((adr >> 8) & 0x3);
	uint8_t               a   = adr & 0xff;
	transfer_descriptor_t d   = {data, size};
	while (!I2C_0_open(sla))
		; // sit here until we get the bus..
	// This callback specifies what to do after the first write operation has completed
	// The parameters to the callback are bundled together in the aggregate data type d.
	I2C_0_set_data_complete_callback(eeprom_read_n_data_handler, &d);
	// We should not get an an address NACK here
	I2C_0_set_address_nack_callback(i2c_cb_adr_nack, NULL);
	// Transmit least significant byte of EEPROM address
	I2C_0_set_buffer((void *)&a, 1);
	// Start a Write operation
	I2C_0_master_operation(false);
	while (I2C_BUSY == I2C_0_close())
		; // sit here until the entire chained operation has finished
}

i2c_operations_t i2c_cb_busy(void *p)
{
	slave_busy = true;
	return i2c_stop;
}

/** Wait until the slave is ready. This is needed if accessing the slave
immediately after a write, when the slave is busy writing eeprom.
*/
void eeprom_check_ready(uint16_t adr)
{
	uint8_t sla = eeprom_slave_adr | ((adr >> 8) & 0x3);
	uint8_t a   = adr & 0xff;

	slave_busy = false;
	while (!I2C_0_open(sla))
		; // sit here until we get the bus..
	// We will get an an address NACK here if slave is busy
	I2C_0_set_address_nack_callback(i2c_cb_busy, NULL);
	// ... otherwise, transmit data and STOP
	// Transmit least significant byte of EEPROM address
	I2C_0_set_buffer((void *)&a, 1);
	// Start a Write operation
	I2C_0_master_operation(false);
	while (I2C_BUSY == I2C_0_close())
		; // sit here until the entire chained operation has finished
}

void eeprom_wait_ready()
{
	slave_busy = true;
	while (slave_busy)
		eeprom_check_ready(0);
}

static absolutetime_t measure_adc()
{
	// Get conversion from ADC CH0 (Mega324pb ch0:PA0)
	adc_measurement = ADC_0_get_conversion(0);

	// Schedule next measure() to be called
	return measure_adc_cycles;
}

static absolutetime_t drive()
{
	// Drive LED heartbeat
	duty += 10; // 8-bit datatype, will wrap around at 255
	// Output duty cycle on PWM CH0(324pb:PD5) as read from ADC
	PWM_0_load_duty_cycle_ch0(duty);

	// Schedule next drive() to be called
	return drive_cycles;
}

static absolutetime_t display()
{
	printf("ADC=%d\r\n", adc_measurement);
	printf("DutyC=%d\r\n", duty);
	printf("temp=%d\r\n", temp);

	// Schedule next display() to be called
	return display_cycles;
}

static absolutetime_t read_temp()
{
	uint8_t stored_temp;
	temp_sens_read(ts_temp_reg_adr, temp_reading, 1);
	temp = temp_reading[0];

	// If current temperature is higher than the previously recorded max,
	// or lower than the previously recorded min, save the new max or min to EEPROM.
	eeprom_read_n(eeprom_min_temp_adr, &stored_temp, 1);
	if (temp < stored_temp) {
		eeprom_wait_ready();
		eeprom_write_n(eeprom_min_temp_adr, &temp, 1);
	}

	eeprom_read_n(eeprom_max_temp_adr, &stored_temp, 1);
	if (temp > stored_temp) {
		eeprom_wait_ready();
		eeprom_write_n(eeprom_max_temp_adr, &temp, 1);
	}

	// Schedule next read_temp() to be called
	return read_temp_cycles;
}

int main(void)
{
	uint8_t min_temp, max_temp;

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	ENABLE_INTERRUPTS();

	/* Read some of the registers in the temperature sensor just to demonstrate
	usage of the the I2C interface*/

	// Read only Most Significant Byte of 16-bit temp register, LSB contains fractional temperature
	temp_sens_read(ts_temp_reg_adr, temp_reading, 1);
	printf("read temp = %d\r\n", temp_reading[0]);

	temp_sens_read(ts_conf_reg_adr, conf_reading, 2);
	printf("read config = %d\r\n", conf_reading[1] << 8 | conf_reading[0]);

	temp_sens_read(ts_llim_reg_adr, llim_reading, 2);
	printf("read low limit = %d\r\n", llim_reading[1] << 8 | llim_reading[0]);

	temp_sens_read(ts_hlim_reg_adr, hlim_reading, 2);
	printf("read high limit = %d\r\n", hlim_reading[1] << 8 | hlim_reading[0]);

	eeprom_read_n(eeprom_min_temp_adr, &min_temp, 1);
	eeprom_read_n(eeprom_max_temp_adr, &max_temp, 1);
	printf("min,max temp= %d, %d\r\n", min_temp, max_temp);

	// Add tasks to scheduler
	TIMER_0_timeout_create(&measure_adc_handle, measure_adc_cycles);
	TIMER_0_timeout_create(&drive_handle, drive_cycles);
	TIMER_0_timeout_create(&display_handle, display_cycles);
	TIMER_0_timeout_create(&read_temp_handle, read_temp_cycles);

	while (1) {
		// Returns immediately if no callback is ready to execute
		TIMER_0_timeout_call_next_callback();
	}
}
