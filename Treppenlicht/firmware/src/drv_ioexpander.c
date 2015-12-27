#include "driver/i2c/drv_i2c.h"

typedef enum
{
    DRV_IOEXPANDER_STATE_INIT,
    DRV_IOEXPANDER_STATE_CONFIG,
    DRV_IOEXPANDER_STATE_CONFIG_WAIT,
    DRV_IOEXPANDER_STATE_READ_PORTA,
    DRV_IOEXPANDER_STATE_READ_PORTA_WAIT,
    DRV_IOEXPANDER_STATE_READ_PORTB,
    DRV_IOEXPANDER_STATE_READ_PORTB_WAIT,
} DRV_IOEXPANDER_STATE;

DRV_IOEXPANDER_STATE state;
DRV_HANDLE i2c_driver;

uint8_t device_adress;
uint8_t gpio_register_address;

bool buffer_completed;
uint8_t portA;
uint8_t portB;

void DRV_IOEXPANDER_Initialize()
{
    state = DRV_IOEXPANDER_STATE_INIT;
    device_adress = 0x20;
    //gpio_register_address = 0x12;
    gpio_register_address = 0x00;
}

void _DRV_IOEXPANDER_EventHandler(
    DRV_I2C_BUFFER_EVENT event,
    DRV_I2C_BUFFER_HANDLE bufferHandle,
    uintptr_t context)
{
    switch(event)
    {
        case DRV_I2C_SEND_STOP_EVENT:
        {
            DRV_I2C_StopEventSend(i2c_driver);
            
            break;
        }
        
        case DRV_I2C_SEND_RESTART_EVENT:
        {
            DRV_I2C_RestartEventSend(i2c_driver);
            
            break;
        }

        case DRV_I2C_BUFFER_EVENT_COMPLETE:
        {
            buffer_completed = true;
            
            break;
        }

        case DRV_I2C_BUFFER_EVENT_ERROR:
        {
            break;
        }

        default:
        {
            break;
        }
    }

}

void DRV_IOEXPANDER_Tasks()
{
    switch (state)
    {
        case DRV_IOEXPANDER_STATE_INIT:
        {
            i2c_driver = DRV_I2C_Open(DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE);
            if (i2c_driver == DRV_HANDLE_INVALID)
            {
                break;
            }
            
            DRV_I2C_BufferEventHandlerSet(
                    i2c_driver,
                    _DRV_IOEXPANDER_EventHandler,
                    0);
            
            state = DRV_IOEXPANDER_STATE_CONFIG;
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_CONFIG:
        {
            buffer_completed = false;
            
            DRV_I2C_BufferAddWrite(
                    i2c_driver,
                    &device_adress,
                    &gpio_register_address,
                    sizeof(gpio_register_address),
                    NULL);
            
            state = DRV_IOEXPANDER_STATE_CONFIG_WAIT;
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_CONFIG_WAIT:
        {
            if (buffer_completed)
            {
                state = DRV_IOEXPANDER_STATE_READ_PORTA;
            }
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTA:
        {
            buffer_completed = false;
            
            /*DRV_I2C_BufferAddRead(
                    i2c_driver,
                    &device_adress,
                    &portA,
                    sizeof(portA),
                    NULL);*/
            DRV_I2C_BufferAddWriteRead(
                    i2c_driver,
                    &device_adress,
                    &gpio_register_address,
                    sizeof(gpio_register_address),
                    &portA,
                    sizeof(portA),
                    NULL);
            
            state = DRV_IOEXPANDER_STATE_READ_PORTA_WAIT;
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTA_WAIT:
        {
            if (buffer_completed)
            {
                state = DRV_IOEXPANDER_STATE_READ_PORTB;
            }
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTB:
        {
            buffer_completed = false;
            
            /*DRV_I2C_BufferAddRead(
                    i2c_driver,
                    &device_adress,
                    &portB,
                    sizeof(portB),
                    NULL);*/
            DRV_I2C_BufferAddWriteRead(
                    i2c_driver,
                    &device_adress,
                    &gpio_register_address,
                    sizeof(gpio_register_address),
                    &portB,
                    sizeof(portB),
                    NULL);
            
            state = DRV_IOEXPANDER_STATE_READ_PORTB_WAIT;
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTB_WAIT:
        {
            if (buffer_completed)
            {
                state = DRV_IOEXPANDER_STATE_READ_PORTA;
            }
            
            break;
        }
        
        default:
        {
            break;
        }
    }
}
