#ifndef _DRV_LEDSTRIP_H
#define _DRV_LEDSTRIP_H

#include "system/system.h"
#include "driver/driver_common.h"

#define DRV_LEDSTRIP_INDEX_0  0
#define DRV_LEDSTRIP_INDEX_1  1
#define DRV_LEDSTRIP_INDEX_2  2
#define DRV_LEDSTRIP_INDEX_3  3
#define DRV_LEDSTRIP_INDEX_4  4
#define DRV_LEDSTRIP_INDEX_5  5
#define DRV_LEDSTRIP_INDEX_6  6
#define DRV_LEDSTRIP_INDEX_7  7
#define DRV_LEDSTRIP_INDEX_8  8
#define DRV_LEDSTRIP_INDEX_9  9
#define DRV_LEDSTRIP_INDEX_10 10
#define DRV_LEDSTRIP_INDEX_11 11
#define DRV_LEDSTRIP_INDEX_12 12
#define DRV_LEDSTRIP_INDEX_13 13
#define DRV_LEDSTRIP_INDEX_14 14

typedef struct
{
    SYS_MODULE_INIT moduleInit;
    TMR_MODULE_ID timerModuleID;
    uint32_t periodMs;
} DRV_LEDSTRIP_INIT;

SYS_MODULE_OBJ DRV_LEDSTRIP_Initialize(
    const SYS_MODULE_INDEX index,
    const SYS_MODULE_INIT * const init);

//void DRV_LEDSTRIP_Deinitialize(SYS_MODULE_OBJ object);

//SYS_STATUS DRV_LEDSTRIP_Status(SYS_MODULE_OBJ object);

void DRV_LEDSTRIP_Tasks(SYS_MODULE_OBJ object);

DRV_HANDLE DRV_LEDSTRIP_Open(
    const SYS_MODULE_INDEX index,
    const DRV_IO_INTENT intent);

void DRV_LEDSTRIP_DimLight(
    DRV_HANDLE handle,
    int value);

#endif