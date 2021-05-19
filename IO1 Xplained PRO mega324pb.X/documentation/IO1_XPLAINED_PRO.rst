Introduction
============

This is the documentation for the IO1 Xplained PRO demo application.
The demo uses:
- The device's ADC to read the light sensor on IO1 Xplained PRO
- The device's I2C to communicate with the temperature sensor on IO1 Xplained PRO, and store max and min values
- The device's PWM to control the intensity of a LED on IO1 Xplained PRO
- The device's USART to print output in a terminal window 
- The Timeout Driver to schedule the timing of these operations


Related documents / Application notes
-------------------------------------


Supported evaluation kit
------------------------

 - `Mega324PB-XplainedPRO <http://www.atmel.com/tools/atmega324pb-xpro.aspx>`_ or
 - `Tiny817-XplainedPRO <http://www.atmel.com/tools/attiny817-xpro.aspx>`_
 - `IO1-XplainedPRO <http://www.atmel.com/tools/atio1-xpro.aspx>`_

The user must connect IO1 Xplained PRO to the EXT1 header on the device's Xplained PRO board


Interface settings
------------------

- USART for printf() over EDBG USART
	- No parity
	- 8-bit character size
	- 1 stop bit
	- 57600 baud-rate

Running the demo
----------------

1. Click Export Project and open the .atzip file in Studio
2. Build and flash into supported evaluation board
3. Open the EDBG COM port in a terminal window to observe the printf() output
4. Control light into the light sensor on IO1 and observe the output in the terminal window.
