#ifndef _DRV_LEDSTRIP_H
#define _DRV_LEDSTRIP_H

#include "system/system.h"
#include "driver/driver_common.h"
#include "driver/tmr/drv_tmr.h"
#include "peripheral/ports/plib_ports.h"

#define DRV_LEDSTRIP_INDEX_0  0

typedef struct
{
    SYS_MODULE_INIT moduleInit;
    TMR_MODULE_ID timerModuleID;
    INT_SOURCE timerInterruptSource;
    uint32_t periodMs;
    PORTS_CHANNEL led_port;
    PORTS_BIT_POS led_pin_pos;
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