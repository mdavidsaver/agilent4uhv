#!../../bin/linux-x86_64/agilent4uhv

epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(PWD)/../../db:.")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(PWD)/../../db")

## Register all support components
dbLoadDatabase("../../dbd/agilent4uhv.dbd")
agilent4uhv_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("DEV", "192.168.1.10:2115", 0, 0, 0)

#asynSetTraceMask("DEV",0,0x3f)
#asynSetTraceIOMask("DEV",0,4)

dbLoadRecords("agilent_4UHV.db","P=VTST:,R=4:,PORT=DEV,CH=1")

iocInit()
