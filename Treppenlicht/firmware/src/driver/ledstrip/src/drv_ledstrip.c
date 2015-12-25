#include "driver/ledstrip/src/drv_ledstrip_local.h"

DRV_LEDSTRIP_OBJ driver_objects[DRV_LEDSTRIP_INSTANCES_NUMBER];
DRV_LEDSTRIP_CLIENT_OBJ client_objects[DRV_LEDSTRIP_CLIENTS_NUMBER];

SYS_MODULE_OBJ DRV_LEDSTRIP_Initialize(
    const SYS_MODULE_INDEX index,
    const SYS_MODULE_INIT * const init)
{
    DRV_LEDSTRIP_OBJ* obj = NULL;
    DRV_LEDSTRIP_INIT* driver_init = (DRV_LEDSTRIP_INIT*)init;
    int i_led;
    
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
    obj->counter_max = 100;
    for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
    {
        obj->counter_toggle[i_led] = 0;
    }
    
    return (SYS_MODULE_OBJ)index;
}

void _DRV_LEDSTRIP_AlarmCallback(uintptr_t context, uint32_t alarmCount)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[context];
    
    obj->counter++;
    if (obj->counter >= obj->counter_max)
    {
        obj->counter = 0;
    }
}

void DRV_LEDSTRIP_Tasks(SYS_MODULE_OBJ object)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[object];
    int i_led;
    
    switch (obj->current_state)
    {
        case DRV_LEDSTRIP_STATE_INIT:
        {
            if (obj->timer_handle == DRV_HANDLE_INVALID)
            {
                obj->timer_handle = DRV_TMR_Open(
                        obj->driver_init.timerIndex,
                        DRV_IO_INTENT_EXCLUSIVE);
                break;
            }
            if (DRV_TMR_ClientStatus(obj->timer_handle) != DRV_TMR_CLIENT_STATUS_READY)
            {
                break;
            }
            
            DRV_TMR_AlarmRegister(
                    obj->timer_handle,
                    DRV_TMR_CounterFrequencyGet(obj->timer_handle) /
                        obj->driver_init.frequency / 100,
                    true,
                    object,
                    _DRV_LEDSTRIP_AlarmCallback);
            DRV_TMR_Start(obj->timer_handle);
            
            obj->current_state = DRV_LEDSTRIP_STATE_READY;
            break;
        }
        
        case DRV_LEDSTRIP_STATE_READY:
        {
            for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
            {
                if (obj->counter < obj->counter_toggle[i_led])
                {
                    PLIB_PORTS_PinSet(
                            PORTS_ID_0,
                            obj->driver_init.led_port[i_led],
                            obj->driver_init.led_pin_pos[i_led]);
                }
                else
                {
                    PLIB_PORTS_PinClear(
                            PORTS_ID_0,
                            obj->driver_init.led_port[i_led],
                            obj->driver_init.led_pin_pos[i_led]);
                }
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
    uint32_t led_index,
    uint32_t value)
{
    DRV_LEDSTRIP_CLIENT_OBJ* client_obj = (DRV_LEDSTRIP_CLIENT_OBJ*)handle;
    
    if (led_index < DRV_LEDSTRIP_MAX_NUMBER_LEDS)
    {
        client_obj->driver->counter_toggle[led_index] = value;
    }
}
