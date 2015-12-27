#include "driver/i2c/drv_i2c.h"
#include "driver/i2c/drv_i2c_static.h"

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
    device_adress = 0x40;
    gpio_register_address = 0x12;
}

void DRV_IOEXPANDER_Tasks()
{
    switch (state)
    {
        case DRV_IOEXPANDER_STATE_INIT:
        {
            if (!DRV_I2C0_MasterStart())
                break;
            DRV_I2C0_WaitForStartComplete();
            if (!DRV_I2C0_ByteWrite(device_adress))
                break;
            DRV_I2C0_WaitForByteWriteToComplete();
            if (DRV_I2C0_WriteByteAcknowledged())
            {
                //
                /*while (!DRV_I2C0_ByteWrite(0x0C));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_ByteWrite(0xFF));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_ByteWrite(0xFF));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_MasterRestart());
                DRV_I2C0_WaitForStartComplete();
                
                while (!DRV_I2C0_ByteWrite(device_adress));
                DRV_I2C0_WaitForByteWriteToComplete();*/
                //
                
                //
                while (!DRV_I2C0_ByteWrite(0x00));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_ByteWrite(0b01111111));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_MasterRestart());
                DRV_I2C0_WaitForStartComplete();
                
                while (!DRV_I2C0_ByteWrite(device_adress));
                DRV_I2C0_WaitForByteWriteToComplete();
                if (!DRV_I2C0_WriteByteAcknowledged())
                    break;
                //
                while (!DRV_I2C0_ByteWrite(0x14));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_ByteWrite(0b10000000));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                while (!DRV_I2C0_MasterRestart());
                DRV_I2C0_WaitForStartComplete();
                
                while (!DRV_I2C0_ByteWrite(device_adress));
                DRV_I2C0_WaitForByteWriteToComplete();
                if (!DRV_I2C0_WriteByteAcknowledged())
                    break;
                //
                
                //while (!DRV_I2C0_ByteWrite(gpio_register_address));
                while (!DRV_I2C0_ByteWrite(0x14));
                DRV_I2C0_WaitForByteWriteToComplete();
                
                if (DRV_I2C0_WriteByteAcknowledged())
                {
                    while (!DRV_I2C0_MasterRestart());
                    DRV_I2C0_WaitForStartComplete();
                    while (!DRV_I2C0_ByteWrite(device_adress | 0x01));
                    DRV_I2C0_WaitForByteWriteToComplete();
                    if (DRV_I2C0_WriteByteAcknowledged())
                    {
                        state = DRV_IOEXPANDER_STATE_READ_PORTA;
                    }
                }
            }
            
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTA:
        {
            while (!DRV_I2C0_SetUpByteRead());
            while (!DRV_I2C0_WaitForReadByteAvailable());
            portA = DRV_I2C0_ByteRead();

            DRV_I2C0_MasterACKSend();
            DRV_I2C0_WaitForACKOrNACKComplete();
            
            state = DRV_IOEXPANDER_STATE_READ_PORTB;
                        
            break;
        }
        
        case DRV_IOEXPANDER_STATE_READ_PORTB:
        {
            while (!DRV_I2C0_SetUpByteRead());
            while (!DRV_I2C0_WaitForReadByteAvailable());
            portB = DRV_I2C0_ByteRead();

            DRV_I2C0_MasterACKSend();
            DRV_I2C0_WaitForACKOrNACKComplete();
            
            state = DRV_IOEXPANDER_STATE_READ_PORTA;
            
            break;
        }
        
        default:
        {
            break;
        }
    }
}

uint8_t DRV_IOEXPANDER_GetButtonStates()
{
    return portA;
}
