#ifndef _DRV_LEDSTRIP_LOCAL_H
#define _DRV_LEDSTRIP_LOCAL_H

#include <stdint.h>
#include <stddef.h>
#include "driver/ledstrip/drv_ledstrip.h"
#include "driver/ledstrip/config/drv_ledstrip_config.h"
#include "system/debug/sys_debug.h"
#include "system/tmr/sys_tmr.h"
#include "peripheral/ports/plib_ports.h"

typedef struct
{
    bool membersAreInitialized;
    uint32_t countsPer10MicroSeconds;
} DRV_LEDSTRIP_COMMON_DATA_OBJ;

typedef enum
{
    DRV_LEDSTRIP_STATE_INIT = 0,
    DRV_LEDSTRIP_STATE_READY,
} DRV_LEDSTRIP_STATE;

typedef struct
{
    SYS_STATUS status;
    bool inUse;
    DRV_LEDSTRIP_STATE current_state;
    uint32_t periodMs;
} DRV_LEDSTRIP_OBJ;

typedef struct
{
    DRV_LEDSTRIP_OBJ *driver;
    bool inUse;
} DRV_LEDSTRIP_CLIENT_OBJ;

#endif