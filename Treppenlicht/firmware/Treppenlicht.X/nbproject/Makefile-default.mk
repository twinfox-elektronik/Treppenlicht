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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../src/driver/ledstrip/src/drv_ledstrip.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ${OBJECTDIR}/_ext/1662110876/osal_freertos.o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ${OBJECTDIR}/_ext/1724681471/croutine.o ${OBJECTDIR}/_ext/1724681471/list.o ${OBJECTDIR}/_ext/1724681471/queue.o ${OBJECTDIR}/_ext/1724681471/tasks.o ${OBJECTDIR}/_ext/1724681471/timers.o ${OBJECTDIR}/_ext/1724681471/event_groups.o ${OBJECTDIR}/_ext/1658875902/heap_1.o ${OBJECTDIR}/_ext/8904213/port.o ${OBJECTDIR}/_ext/8904213/port_asm.o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d ${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d ${OBJECTDIR}/_ext/1724681471/croutine.o.d ${OBJECTDIR}/_ext/1724681471/list.o.d ${OBJECTDIR}/_ext/1724681471/queue.o.d ${OBJECTDIR}/_ext/1724681471/tasks.o.d ${OBJECTDIR}/_ext/1724681471/timers.o.d ${OBJECTDIR}/_ext/1724681471/event_groups.o.d ${OBJECTDIR}/_ext/1658875902/heap_1.o.d ${OBJECTDIR}/_ext/8904213/port.o.d ${OBJECTDIR}/_ext/8904213/port_asm.o.d ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ${OBJECTDIR}/_ext/1662110876/osal_freertos.o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ${OBJECTDIR}/_ext/1724681471/croutine.o ${OBJECTDIR}/_ext/1724681471/list.o ${OBJECTDIR}/_ext/1724681471/queue.o ${OBJECTDIR}/_ext/1724681471/tasks.o ${OBJECTDIR}/_ext/1724681471/timers.o ${OBJECTDIR}/_ext/1724681471/event_groups.o ${OBJECTDIR}/_ext/1658875902/heap_1.o ${OBJECTDIR}/_ext/8904213/port.o ${OBJECTDIR}/_ext/8904213/port_asm.o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../src/driver/ledstrip/src/drv_ledstrip.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX150F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/8904213/port_asm.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/8904213" 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o.ok ${OBJECTDIR}/_ext/8904213/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8904213/port_asm.o.d" "${OBJECTDIR}/_ext/8904213/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/8904213/port_asm.o.d"  -o ${OBJECTDIR}/_ext/8904213/port_asm.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/8904213/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/_ext/8904213/port_asm.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/8904213" 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/8904213/port_asm.o.ok ${OBJECTDIR}/_ext/8904213/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8904213/port_asm.o.d" "${OBJECTDIR}/_ext/8904213/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/8904213/port_asm.o.d"  -o ${OBJECTDIR}/_ext/8904213/port_asm.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/8904213/port_asm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/454928207/drv_ledstrip.o: ../src/driver/ledstrip/src/drv_ledstrip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/454928207" 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" -o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ../src/driver/ledstrip/src/drv_ledstrip.c     
	
${OBJECTDIR}/_ext/410460599/drv_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/410460599" 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1662110876/osal_freertos.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662110876" 
	@${RM} ${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1662110876/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1662110876/osal_freertos.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1742756452" 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1925662983/sys_ports.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1925662983" 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1410081138/sys_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410081138" 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/1724681471/croutine.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/croutine.o.d" -o ${OBJECTDIR}/_ext/1724681471/croutine.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c     
	
${OBJECTDIR}/_ext/1724681471/list.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/list.o.d" -o ${OBJECTDIR}/_ext/1724681471/list.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c     
	
${OBJECTDIR}/_ext/1724681471/queue.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/queue.o.d" -o ${OBJECTDIR}/_ext/1724681471/queue.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c     
	
${OBJECTDIR}/_ext/1724681471/tasks.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/tasks.o.d" -o ${OBJECTDIR}/_ext/1724681471/tasks.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c     
	
${OBJECTDIR}/_ext/1724681471/timers.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/timers.o.d" -o ${OBJECTDIR}/_ext/1724681471/timers.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c     
	
${OBJECTDIR}/_ext/1724681471/event_groups.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/event_groups.o.d" -o ${OBJECTDIR}/_ext/1724681471/event_groups.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c     
	
${OBJECTDIR}/_ext/1658875902/heap_1.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1658875902" 
	@${RM} ${OBJECTDIR}/_ext/1658875902/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658875902/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1658875902/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1658875902/heap_1.o.d" -o ${OBJECTDIR}/_ext/1658875902/heap_1.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c     
	
${OBJECTDIR}/_ext/8904213/port.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/8904213" 
	@${RM} ${OBJECTDIR}/_ext/8904213/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/8904213/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8904213/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/8904213/port.o.d" -o ${OBJECTDIR}/_ext/8904213/port.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c     
	
${OBJECTDIR}/_ext/12144542/drv_i2c_static.o: ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12144542" 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" -o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c     
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c     
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c     
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c     
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c     
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c     
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/454928207/drv_ledstrip.o: ../src/driver/ledstrip/src/drv_ledstrip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/454928207" 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" -o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ../src/driver/ledstrip/src/drv_ledstrip.c     
	
${OBJECTDIR}/_ext/410460599/drv_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/410460599" 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1662110876/osal_freertos.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1662110876" 
	@${RM} ${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1662110876/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1662110876/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1662110876/osal_freertos.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/osal/src/osal_freertos.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1742756452" 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1925662983/sys_ports.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1925662983" 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1410081138/sys_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410081138" 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/1724681471/croutine.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/croutine.o.d" -o ${OBJECTDIR}/_ext/1724681471/croutine.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/croutine.c     
	
${OBJECTDIR}/_ext/1724681471/list.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/list.o.d" -o ${OBJECTDIR}/_ext/1724681471/list.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/list.c     
	
${OBJECTDIR}/_ext/1724681471/queue.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/queue.o.d" -o ${OBJECTDIR}/_ext/1724681471/queue.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/queue.c     
	
${OBJECTDIR}/_ext/1724681471/tasks.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/tasks.o.d" -o ${OBJECTDIR}/_ext/1724681471/tasks.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/tasks.c     
	
${OBJECTDIR}/_ext/1724681471/timers.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/timers.o.d" -o ${OBJECTDIR}/_ext/1724681471/timers.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/timers.c     
	
${OBJECTDIR}/_ext/1724681471/event_groups.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1724681471" 
	@${RM} ${OBJECTDIR}/_ext/1724681471/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1724681471/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1724681471/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1724681471/event_groups.o.d" -o ${OBJECTDIR}/_ext/1724681471/event_groups.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/event_groups.c     
	
${OBJECTDIR}/_ext/1658875902/heap_1.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1658875902" 
	@${RM} ${OBJECTDIR}/_ext/1658875902/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658875902/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1658875902/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1658875902/heap_1.o.d" -o ${OBJECTDIR}/_ext/1658875902/heap_1.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c     
	
${OBJECTDIR}/_ext/8904213/port.o: ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/8904213" 
	@${RM} ${OBJECTDIR}/_ext/8904213/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/8904213/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/8904213/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/8904213/port.o.d" -o ${OBJECTDIR}/_ext/8904213/port.o ../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c     
	
${OBJECTDIR}/_ext/12144542/drv_i2c_static.o: ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12144542" 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" -o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c     
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c     
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c     
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c     
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c     
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../Programme/Microchip/harmony/v1_06_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../Programme/Microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX150F128B_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\Programme\Microchip\harmony\v1_06_01\bin\framework\peripheral\PIC32MX150F128B_peripherals.a          -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../Programme/Microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX150F128B_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\Programme\Microchip\harmony\v1_06_01\bin\framework\peripheral\PIC32MX150F128B_peripherals.a        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Treppenlicht.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
