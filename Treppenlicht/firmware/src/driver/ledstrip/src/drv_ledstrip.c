#include "driver/ledstrip/src/drv_ledstrip_local.h"

DRV_LEDSTRIP_OBJ driver_objects[DRV_LEDSTRIP_INSTANCES_NUMBER];
DRV_LEDSTRIP_CLIENT_OBJ client_objects[DRV_LEDSTRIP_CLIENTS_NUMBER];
DRV_LEDSTRIP_COMMON_DATA_OBJ common_data;

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
    
    obj->inUse = false;
    obj->status = SYS_STATUS_READY;
    obj->periodMs = driver_init->periodMs;
    obj->current_state = DRV_LEDSTRIP_STATE_INIT;
    
    if (common_data.membersAreInitialized == false)
    {
        uint32_t countsPer10MicroSeconds = 
                SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_1) / 100000;
        
        //PLIB_TMR_Period32BitSet()
    }
    
    return (SYS_MODULE_OBJ)index;
}

/*void DRV_LEDSTRIP_TimerCallback(
    uintptr_t context,
    uint32_t currTick)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[context];
}*/

void DRV_LEDSTRIP_Tasks(SYS_MODULE_OBJ object)
{
    DRV_LEDSTRIP_OBJ* obj = &driver_objects[object];
    
    switch (obj->current_state)
    {
        case DRV_LEDSTRIP_STATE_INIT:
        {
            /*SYS_TMR_CallbackPeriodic(
                    obj->periodMs,
                    object,
                    DRV_LEDSTRIP_TimerCallback);*/
            
            obj->current_state = DRV_LEDSTRIP_STATE_READY;
            break;
        }
            
        case DRV_LEDSTRIP_STATE_READY:
        {
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
