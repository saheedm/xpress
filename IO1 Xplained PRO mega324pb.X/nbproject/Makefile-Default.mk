#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c src/driver_init.c driver_isr.c examples/src/adc_basic_example.c examples/src/i2c_master_example.c examples/src/pwm_basic_example.c examples/src/timeout_example.c examples/src/usart_basic_example.c src/adc_basic.c src/i2c_master.c src/i2c_simple_master.c src/i2c_types.c src/protected_io.S src/pwm_basic.c src/timeout.c src/usart_basic.c atmel_start.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/examples/src/adc_basic_example.o ${OBJECTDIR}/examples/src/i2c_master_example.o ${OBJECTDIR}/examples/src/pwm_basic_example.o ${OBJECTDIR}/examples/src/timeout_example.o ${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/src/adc_basic.o ${OBJECTDIR}/src/i2c_master.o ${OBJECTDIR}/src/i2c_simple_master.o ${OBJECTDIR}/src/i2c_types.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/pwm_basic.o ${OBJECTDIR}/src/timeout.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/atmel_start.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/src/driver_init.o.d ${OBJECTDIR}/driver_isr.o.d ${OBJECTDIR}/examples/src/adc_basic_example.o.d ${OBJECTDIR}/examples/src/i2c_master_example.o.d ${OBJECTDIR}/examples/src/pwm_basic_example.o.d ${OBJECTDIR}/examples/src/timeout_example.o.d ${OBJECTDIR}/examples/src/usart_basic_example.o.d ${OBJECTDIR}/src/adc_basic.o.d ${OBJECTDIR}/src/i2c_master.o.d ${OBJECTDIR}/src/i2c_simple_master.o.d ${OBJECTDIR}/src/i2c_types.o.d ${OBJECTDIR}/src/protected_io.o.d ${OBJECTDIR}/src/pwm_basic.o.d ${OBJECTDIR}/src/timeout.o.d ${OBJECTDIR}/src/usart_basic.o.d ${OBJECTDIR}/atmel_start.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/examples/src/adc_basic_example.o ${OBJECTDIR}/examples/src/i2c_master_example.o ${OBJECTDIR}/examples/src/pwm_basic_example.o ${OBJECTDIR}/examples/src/timeout_example.o ${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/src/adc_basic.o ${OBJECTDIR}/src/i2c_master.o ${OBJECTDIR}/src/i2c_simple_master.o ${OBJECTDIR}/src/i2c_types.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/pwm_basic.o ${OBJECTDIR}/src/timeout.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/atmel_start.o

# Source Files
SOURCEFILES=main.c src/driver_init.c driver_isr.c examples/src/adc_basic_example.c examples/src/i2c_master_example.c examples/src/pwm_basic_example.c examples/src/timeout_example.c examples/src/usart_basic_example.c src/adc_basic.c src/i2c_master.c src/i2c_simple_master.c src/i2c_types.c src/protected_io.S src/pwm_basic.c src/timeout.c src/usart_basic.c atmel_start.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/4a12c2332c0a055d669cc2821c4ef84c603120e1 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/dd325e7c3bdb282f64c3ca82a0a543bd74573393 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/9a155f3db4cd79b4e69ee7ff9560ec733a471584 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/examples/src/adc_basic_example.o: examples/src/adc_basic_example.c  .generated_files/flags/Default/5a9fe6af0d70418eb30ca3c0860536798b2a52f8 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/adc_basic_example.o -o ${OBJECTDIR}/examples/src/adc_basic_example.o examples/src/adc_basic_example.c 
	
${OBJECTDIR}/examples/src/i2c_master_example.o: examples/src/i2c_master_example.c  .generated_files/flags/Default/9be248494a76fa56d57aecf074067de5f57c718 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT ${OBJECTDIR}/examples/src/i2c_master_example.o -o ${OBJECTDIR}/examples/src/i2c_master_example.o examples/src/i2c_master_example.c 
	
${OBJECTDIR}/examples/src/pwm_basic_example.o: examples/src/pwm_basic_example.c  .generated_files/flags/Default/fa6ed6a9a6c1de039bb2ed260ecf9a44f21b530a .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/pwm_basic_example.o -o ${OBJECTDIR}/examples/src/pwm_basic_example.o examples/src/pwm_basic_example.c 
	
${OBJECTDIR}/examples/src/timeout_example.o: examples/src/timeout_example.c  .generated_files/flags/Default/2fc7862c82313e74882a9e90044036fd121c84fa .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT ${OBJECTDIR}/examples/src/timeout_example.o -o ${OBJECTDIR}/examples/src/timeout_example.o examples/src/timeout_example.c 
	
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/flags/Default/42037b5e59d3aa98b43c352ebebc0e61021d6cd .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/src/adc_basic.o: src/adc_basic.c  .generated_files/flags/Default/955c451ca0d9c92658b52d267267b7f4bf8117c1 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc_basic.o.d 
	@${RM} ${OBJECTDIR}/src/adc_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/adc_basic.o.d" -MT "${OBJECTDIR}/src/adc_basic.o.d" -MT ${OBJECTDIR}/src/adc_basic.o -o ${OBJECTDIR}/src/adc_basic.o src/adc_basic.c 
	
${OBJECTDIR}/src/i2c_master.o: src/i2c_master.c  .generated_files/flags/Default/ff683a1bb6693d53cfb768893d16e8ba3d567a83 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_master.o.d" -MT "${OBJECTDIR}/src/i2c_master.o.d" -MT ${OBJECTDIR}/src/i2c_master.o -o ${OBJECTDIR}/src/i2c_master.o src/i2c_master.c 
	
${OBJECTDIR}/src/i2c_simple_master.o: src/i2c_simple_master.c  .generated_files/flags/Default/554673f2d709279dcff7edd85af105606181ab65 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT ${OBJECTDIR}/src/i2c_simple_master.o -o ${OBJECTDIR}/src/i2c_simple_master.o src/i2c_simple_master.c 
	
${OBJECTDIR}/src/i2c_types.o: src/i2c_types.c  .generated_files/flags/Default/4734a3690fd7a905aa31b33094d438e20caae914 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_types.o.d" -MT "${OBJECTDIR}/src/i2c_types.o.d" -MT ${OBJECTDIR}/src/i2c_types.o -o ${OBJECTDIR}/src/i2c_types.o src/i2c_types.c 
	
${OBJECTDIR}/src/pwm_basic.o: src/pwm_basic.c  .generated_files/flags/Default/1675c0642878ca3705a01e70673df1356664635f .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o.d 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/pwm_basic.o.d" -MT "${OBJECTDIR}/src/pwm_basic.o.d" -MT ${OBJECTDIR}/src/pwm_basic.o -o ${OBJECTDIR}/src/pwm_basic.o src/pwm_basic.c 
	
${OBJECTDIR}/src/timeout.o: src/timeout.c  .generated_files/flags/Default/bf6ead864b3c14c7f91d06709cf60988ff282d69 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timeout.o.d 
	@${RM} ${OBJECTDIR}/src/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/timeout.o.d" -MT "${OBJECTDIR}/src/timeout.o.d" -MT ${OBJECTDIR}/src/timeout.o -o ${OBJECTDIR}/src/timeout.o src/timeout.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/flags/Default/b86e7a809330d17ecc40c21b15b16c4ae080c989 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/d35bbdd8ec0715b5e74b9b7e69ec05b2d684258a .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/5438f5e29477cf251ae3cb7f9afc9580be747dd .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/95ee06d2284817436a9ed309ee4df1e06eb65e29 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/3a9e15dc0f72478b4d80e2c13142d77225fcc65f .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/examples/src/adc_basic_example.o: examples/src/adc_basic_example.c  .generated_files/flags/Default/327957d36709fe46f4fd23f69575d003e3cc6e03 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/adc_basic_example.o -o ${OBJECTDIR}/examples/src/adc_basic_example.o examples/src/adc_basic_example.c 
	
${OBJECTDIR}/examples/src/i2c_master_example.o: examples/src/i2c_master_example.c  .generated_files/flags/Default/624e5f8472785c7dc2378b777d1a287bb9df1bfc .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT ${OBJECTDIR}/examples/src/i2c_master_example.o -o ${OBJECTDIR}/examples/src/i2c_master_example.o examples/src/i2c_master_example.c 
	
${OBJECTDIR}/examples/src/pwm_basic_example.o: examples/src/pwm_basic_example.c  .generated_files/flags/Default/9706465c540893a31add81316bd258e8a5dc2758 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/pwm_basic_example.o -o ${OBJECTDIR}/examples/src/pwm_basic_example.o examples/src/pwm_basic_example.c 
	
${OBJECTDIR}/examples/src/timeout_example.o: examples/src/timeout_example.c  .generated_files/flags/Default/d97e1e4d107fd9669d26e08b114af8812f9e10e4 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT ${OBJECTDIR}/examples/src/timeout_example.o -o ${OBJECTDIR}/examples/src/timeout_example.o examples/src/timeout_example.c 
	
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/flags/Default/68ab6b125c16edf4cd376c74f014ce9e5800b23d .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/src/adc_basic.o: src/adc_basic.c  .generated_files/flags/Default/732bbd0955df4d39502e681a9ecd2c478afe14eb .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc_basic.o.d 
	@${RM} ${OBJECTDIR}/src/adc_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/adc_basic.o.d" -MT "${OBJECTDIR}/src/adc_basic.o.d" -MT ${OBJECTDIR}/src/adc_basic.o -o ${OBJECTDIR}/src/adc_basic.o src/adc_basic.c 
	
${OBJECTDIR}/src/i2c_master.o: src/i2c_master.c  .generated_files/flags/Default/a2796059ae892e95fefee11f7d2847fae1c6fa45 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_master.o.d" -MT "${OBJECTDIR}/src/i2c_master.o.d" -MT ${OBJECTDIR}/src/i2c_master.o -o ${OBJECTDIR}/src/i2c_master.o src/i2c_master.c 
	
${OBJECTDIR}/src/i2c_simple_master.o: src/i2c_simple_master.c  .generated_files/flags/Default/eff2c7888c0a5eade7a05820c968bb707042d05 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT ${OBJECTDIR}/src/i2c_simple_master.o -o ${OBJECTDIR}/src/i2c_simple_master.o src/i2c_simple_master.c 
	
${OBJECTDIR}/src/i2c_types.o: src/i2c_types.c  .generated_files/flags/Default/dc037ea647e5b61041daa5d27bd305111f131682 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/i2c_types.o.d" -MT "${OBJECTDIR}/src/i2c_types.o.d" -MT ${OBJECTDIR}/src/i2c_types.o -o ${OBJECTDIR}/src/i2c_types.o src/i2c_types.c 
	
${OBJECTDIR}/src/pwm_basic.o: src/pwm_basic.c  .generated_files/flags/Default/32a8e1846c6dbb28ed6e21ab596288a978f70ce7 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o.d 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/pwm_basic.o.d" -MT "${OBJECTDIR}/src/pwm_basic.o.d" -MT ${OBJECTDIR}/src/pwm_basic.o -o ${OBJECTDIR}/src/pwm_basic.o src/pwm_basic.c 
	
${OBJECTDIR}/src/timeout.o: src/timeout.c  .generated_files/flags/Default/d3fda25b9d77759a71327bc99af720d3ffcefff1 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timeout.o.d 
	@${RM} ${OBJECTDIR}/src/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/timeout.o.d" -MT "${OBJECTDIR}/src/timeout.o.d" -MT ${OBJECTDIR}/src/timeout.o -o ${OBJECTDIR}/src/timeout.o src/timeout.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/flags/Default/1a67065faaeea0d295a661f7e4fe004a6ff76f20 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/b149428aad67a2fa75436bebf7e90e76415e01d .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/d60e7a9588388673a3da8829aa3a70310cff45e2 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
else
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/fcf860e994998d38b440150ef27cf5531e3dca94 .generated_files/flags/Default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.map  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/IO1_Xplained_PRO_mega324pb.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Default
	${RM} -r dist/Default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
