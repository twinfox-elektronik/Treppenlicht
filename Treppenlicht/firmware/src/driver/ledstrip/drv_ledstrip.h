#ifndef _DRV_LEDSTRIP_H
#define _DRV_LEDSTRIP_H

#include "system/system.h"
#include "driver/driver_common.h"
#include "driver/tmr/drv_tmr.h"
#include "peripheral/ports/plib_ports.h"

#define DRV_LEDSTRIP_INDEX_0  0
#define DRV_LEDSTRIP_MAX_NUMBER_LEDS 15
#define DRV_LEDSTRIP_MAX_DIMMING_VALUE 200

typedef struct
{
    SYS_MODULE_INIT moduleInit;
    SYS_MODULE_INDEX timerIndex;
    uint32_t frequency;
    PORTS_CHANNEL led_port[DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    PORTS_BIT_POS led_pin_pos[DRV_LEDSTRIP_MAX_NUMBER_LEDS];
} DRV_LEDSTRIP_INIT;

SYS_MODULE_OBJ DRV_LEDSTRIP_Initialize(
    const SYS_MODULE_INDEX index,
    const SYS_MODULE_INIT * const init);

void DRV_LEDSTRIP_Tasks(SYS_MODULE_OBJ object);

DRV_HANDLE DRV_LEDSTRIP_Open(
    const SYS_MODULE_INDEX index,
    const DRV_IO_INTENT intent);

void DRV_LEDSTRIP_DimLight(
    DRV_HANDLE handle,
    uint32_t led_index,
    uint32_t value);

#endif