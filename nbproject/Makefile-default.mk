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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=main.c KIT_IO.c EXTERNAL_INTERRUPTS.c mLCD.c mADC.c Timer.c mUART.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/KIT_IO.o ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/Timer.o ${OBJECTDIR}/mUART.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/KIT_IO.o.d ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d ${OBJECTDIR}/mLCD.o.d ${OBJECTDIR}/mADC.o.d ${OBJECTDIR}/Timer.o.d ${OBJECTDIR}/mUART.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/KIT_IO.o ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/Timer.o ${OBJECTDIR}/mUART.o

# Source Files
SOURCEFILES=main.c KIT_IO.c EXTERNAL_INTERRUPTS.c mLCD.c mADC.c Timer.c mUART.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/KIT_IO.o: KIT_IO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/KIT_IO.o.d 
	@${RM} ${OBJECTDIR}/KIT_IO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/KIT_IO.o.d" -MT "${OBJECTDIR}/KIT_IO.o.d" -MT ${OBJECTDIR}/KIT_IO.o -o ${OBJECTDIR}/KIT_IO.o KIT_IO.c 
	
${OBJECTDIR}/EXTERNAL_INTERRUPTS.o: EXTERNAL_INTERRUPTS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d 
	@${RM} ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d" -MT "${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d" -MT ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o -o ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o EXTERNAL_INTERRUPTS.c 
	
${OBJECTDIR}/mLCD.o: mLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD.o.d 
	@${RM} ${OBJECTDIR}/mLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD.o.d" -MT "${OBJECTDIR}/mLCD.o.d" -MT ${OBJECTDIR}/mLCD.o -o ${OBJECTDIR}/mLCD.o mLCD.c 
	
${OBJECTDIR}/mADC.o: mADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/Timer.o: Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Timer.o.d" -MT "${OBJECTDIR}/Timer.o.d" -MT ${OBJECTDIR}/Timer.o -o ${OBJECTDIR}/Timer.o Timer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/KIT_IO.o: KIT_IO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/KIT_IO.o.d 
	@${RM} ${OBJECTDIR}/KIT_IO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/KIT_IO.o.d" -MT "${OBJECTDIR}/KIT_IO.o.d" -MT ${OBJECTDIR}/KIT_IO.o -o ${OBJECTDIR}/KIT_IO.o KIT_IO.c 
	
${OBJECTDIR}/EXTERNAL_INTERRUPTS.o: EXTERNAL_INTERRUPTS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d 
	@${RM} ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d" -MT "${OBJECTDIR}/EXTERNAL_INTERRUPTS.o.d" -MT ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o -o ${OBJECTDIR}/EXTERNAL_INTERRUPTS.o EXTERNAL_INTERRUPTS.c 
	
${OBJECTDIR}/mLCD.o: mLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD.o.d 
	@${RM} ${OBJECTDIR}/mLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD.o.d" -MT "${OBJECTDIR}/mLCD.o.d" -MT ${OBJECTDIR}/mLCD.o -o ${OBJECTDIR}/mLCD.o mLCD.c 
	
${OBJECTDIR}/mADC.o: mADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/Timer.o: Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Timer.o.d" -MT "${OBJECTDIR}/Timer.o.d" -MT ${OBJECTDIR}/Timer.o -o ${OBJECTDIR}/Timer.o Timer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__  -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="/opt/microchip/mplabx/v5.25/packs/Microchip/ATmega_DFP/2.0.12"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX20_TASKS.${IMAGE_TYPE}.hex"
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
