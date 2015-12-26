#include "driver/ledstrip/src/drv_ledstrip_local.h"

DRV_LEDSTRIP_OBJ driver_objects[DRV_LEDSTRIP_INSTANCES_NUMBER];
DRV_LEDSTRIP_CLIENT_OBJ client_objects[DRV_LEDSTRIP_CLIENTS_NUMBER];

uint32_t value_mapping[DRV_LEDSTRIP_MAX_DIMMING_VALUE] = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23, 24, 24, 25, 25, 26, 26, 27, 28, 28, 29, 29, 30, 30, 31, 32, 32, 33, 34, 34, 35, 36, 36, 37, 38, 38, 39, 40, 40, 41, 42, 43, 43, 44, 45, 46, 46, 47, 48, 49, 50, 51, 51, 52, 53, 54, 55, 56, 57, 58, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 73, 74, 75, 76, 77, 78, 79, 81, 82, 83, 84, 85, 87, 88, 89, 90, 92, 93, 94, 96, 97, 99, 100, 101, 103, 104, 106, 107, 109, 110, 112, 113, 115, 116, 118, 120, 121, 123, 125, 126, 128, 130, 132, 133, 135, 137, 139, 141, 143, 144, 146, 148, 150, 152, 154, 156, 158, 160, 163, 165, 167, 169, 171, 174, 176, 178, 180, 183, 185, 188, 190, 192, 195, 197};

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
    obj->counter_max = DRV_LEDSTRIP_MAX_DIMMING_VALUE;
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
                        obj->driver_init.frequency / 1000,
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
        if (value < DRV_LEDSTRIP_MAX_DIMMING_VALUE)
        {
            client_obj->driver->counter_toggle[led_index] = value_mapping[value];
        }
    }
}
