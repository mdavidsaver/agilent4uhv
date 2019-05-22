TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = agilent4uhv
# agilent4uhv.dbd will be created and installed
DBD += agilent4uhv.dbd

# agilent4uhv.dbd will be made up from these files:
agilent4uhv_DBD += base.dbd

agilent4uhv_DBD += asyn.dbd
agilent4uhv_DBD += drvAsynSerialPort.dbd
agilent4uhv_DBD += drvAsynIPPort.dbd
agilent4uhv_DBD += stream.dbd

agilent4uhv_LIBS += stream
agilent4uhv_LIBS += asyn

# agilent4uhv_registerRecordDeviceDriver.cpp derives from agilent4uhv.dbd
agilent4uhv_SRCS += agilent4uhv_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
agilent4uhv_SRCS_DEFAULT += agilent4uhvMain.cpp
agilent4uhv_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#agilent4uhv_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
agilent4uhv_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

