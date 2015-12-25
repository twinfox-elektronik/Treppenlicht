#include "driver/ledstrip/src/drv_ledstrip_local.h"

DRV_LEDSTRIP_OBJ driver_objects[DRV_LEDSTRIP_INSTANCES_NUMBER];
DRV_LEDSTRIP_CLIENT_OBJ client_objects[DRV_LEDSTRIP_CLIENTS_NUMBER];

SYS_MODULE_OBJ DRV_LEDSTRIP_Initialize(
    const SYS_MODULE_INDEX index,
    const SYS_MODULE_INIT * const init)
{
    DRV_LEDSTRIP_OBJ* obj = NULL;
    DRV_LEDSTRIP_INIT* driver_init = (DRV_LEDSTRIP_INIT*)init;
    
    if (index >= DRV_LEDSTRIP_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Invalid driver index");
        return SYS_MODULE_OBJ_INVALID;
    }
    
    obj = &driver_objects[index];
    if (obj->inUse)
    {
        SYS_DEBUG(0, "Instance already in use");
        return SYS_MODULE_OBJ_INVALID;
    }
    
    obj->status = SYS_STATUS_READY;
    obj->inUse = false;
    obj->driver_init = *driver_init;
    obj->current_state = DRV_LEDSTRIP_STATE_INIT;
    obj->timer_handle = DRV_HANDLE_INVALID;
    obj->counter = 0;
    obj->counter_max = 10;
    
    return (SYS_MODULE_OBJ)index;
}

void _DRV_LEDSTRIP_AlarmCallback(uintptr_t context, uint32_t alarmCount)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[context];
    
    obj->counter += alarmCount;
}

void DRV_LEDSTRIP_Tasks(SYS_MODULE_OBJ object)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[object];
    
    switch (obj->current_state)
    {
        case DRV_LEDSTRIP_STATE_INIT:
        {
            if (obj->timer_handle == DRV_HANDLE_INVALID)
            {
                obj->timer_handle = DRV_TMR_Open(
                        DRV_TMR_INDEX_0,
                        DRV_IO_INTENT_EXCLUSIVE);
                break;
            }
            if (DRV_TMR_ClientStatus(obj->timer_handle) != DRV_TMR_CLIENT_STATUS_READY)
            {
                break;
            }
            
            DRV_TMR_AlarmRegister(
                    obj->timer_handle,
                    DRV_TMR_CounterFrequencyGet(obj->timer_handle) / 10000,
                    true,
                    object,
                    _DRV_LEDSTRIP_AlarmCallback);
            DRV_TMR_Start(obj->timer_handle);
            
            obj->current_state = DRV_LEDSTRIP_STATE_READY;
            break;
        }
        
        case DRV_LEDSTRIP_STATE_READY:
        {
            PLIB_PORTS_PinToggle(
                PORTS_ID_0,
                PORT_CHANNEL_B,
                PORTS_BIT_POS_14);
            
            //obj->counter += DRV_TMR_AlarmHasElapsed(obj->timer_handle);
            if (obj->counter >= obj->counter_max)
            {
                obj->counter = 0;
                
                PLIB_PORTS_PinToggle(
                        PORTS_ID_0,
                        obj->driver_init.led_port,
                        obj->driver_init.led_pin_pos);
            }
            break;
        }
    }
}

DRV_HANDLE DRV_LEDSTRIP_Open(
    const SYS_MODULE_INDEX index,
    const DRV_IO_INTENT intent)
{
    DRV_LEDSTRIP_OBJ* obj = NULL;
    DRV_LEDSTRIP_CLIENT_OBJ* client_obj = NULL;
    int i_client;
    
    if (index >= DRV_LEDSTRIP_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Invalid driver index");
        return DRV_HANDLE_INVALID;
    }
    
    obj = &driver_objects[index];
    if (obj->status != SYS_STATUS_READY)
    {
        SYS_DEBUG(0, "Driver is not initialized");
        return DRV_HANDLE_INVALID;
    }
    if (obj->inUse)
    {
        SYS_DEBUG(0, "Driver already in use");
        return DRV_HANDLE_INVALID;
    }
    
    for (i_client = 0; i_client < DRV_LEDSTRIP_CLIENTS_NUMBER; i_client++)
    {
        if (client_objects[i_client].inUse == false)
        {
            client_obj = &client_objects[i_client];
            client_obj->inUse = true;
            client_obj->driver = obj;
            
            obj->inUse = true;
            
            return (DRV_HANDLE)client_obj;
        }
    }
    
    return DRV_HANDLE_INVALID;
}

void DRV_LEDSTRIP_DimLight(
    DRV_HANDLE handle,
    int value)
{
    
}
