#ifndef _DRV_LEDSTRIP_LOCAL_H
#define _DRV_LEDSTRIP_LOCAL_H

#include <stdint.h>
#include <stddef.h>
#include "driver/ledstrip/drv_ledstrip.h"
#include "driver/ledstrip/config/drv_ledstrip_config.h"
#include "driver/tmr/drv_tmr.h"
#include "system/debug/sys_debug.h"
#include "system/tmr/sys_tmr.h"
#include "system/int/sys_int.h"

typedef enum
{
    DRV_LEDSTRIP_STATE_INIT = 0,
    DRV_LEDSTRIP_STATE_READY,
} DRV_LEDSTRIP_STATE;

typedef struct
{
    SYS_STATUS status;
    bool inUse;
    DRV_LEDSTRIP_INIT driver_init;
    DRV_LEDSTRIP_STATE current_state;
    DRV_HANDLE timer_handle;
    uint32_t counter;
    uint32_t counter_max;
} DRV_LEDSTRIP_OBJ;

typedef struct
{
    DRV_LEDSTRIP_OBJ *driver;
    bool inUse;
} DRV_LEDSTRIP_CLIENT_OBJ;

#endif