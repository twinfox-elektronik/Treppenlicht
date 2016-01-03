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
SOURCEFILES_QUOTED_IF_SPACED=../src/driver/ledstrip/src/drv_ledstrip.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o

# Source Files
SOURCEFILES=../src/driver/ledstrip/src/drv_ledstrip.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c


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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/454928207/drv_ledstrip.o: ../src/driver/ledstrip/src/drv_ledstrip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/454928207" 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" -o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ../src/driver/ledstrip/src/drv_ledstrip.c     
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c     
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c     
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c     
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/410460599/drv_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/410460599" 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1742756452" 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1925662983/sys_ports.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1925662983" 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1410081138/sys_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410081138" 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
else
${OBJECTDIR}/_ext/454928207/drv_ledstrip.o: ../src/driver/ledstrip/src/drv_ledstrip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/454928207" 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d 
	@${RM} ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/454928207/drv_ledstrip.o.d" -o ${OBJECTDIR}/_ext/454928207/drv_ledstrip.o ../src/driver/ledstrip/src/drv_ledstrip.c     
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c     
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c     
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c     
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/410460599/drv_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/410460599" 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/410460599/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/410460599/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/410460599/drv_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060865150" 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1060865150/sys_devcon_pic32mx.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1742756452" 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1742756452/sys_int_pic32.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1925662983/sys_ports.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1925662983" 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1925662983/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1925662983/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1925662983/sys_ports.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1410081138/sys_tmr.o: ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410081138" 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410081138/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../Programme/Microchip/harmony/v1_06_01/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1410081138/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1410081138/sys_tmr.o ../../../../../Programme/Microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
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
