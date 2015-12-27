#include "app.h"
#include "driver/ledstrip/drv_ledstrip.h"
#include "drv_ioexpander.h"

APP_DATA appData;

DRV_LEDSTRIP_INIT ledstrip_init = {
    .moduleInit = { .value = SYS_MODULE_POWER_RUN_FULL },
    .timerIndex = DRV_TMR_INDEX_0,
    .frequency = 100,
    .led_port = {
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_A,
            PORT_CHANNEL_A,
            PORT_CHANNEL_B,
            PORT_CHANNEL_A,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B},
    .led_pin_pos = {
            PORTS_BIT_POS_2,
            PORTS_BIT_POS_3,
            PORTS_BIT_POS_2,
            PORTS_BIT_POS_3,
            PORTS_BIT_POS_4,
            PORTS_BIT_POS_4,
            PORTS_BIT_POS_5,
            PORTS_BIT_POS_6,
            PORTS_BIT_POS_7,
            PORTS_BIT_POS_10,
            PORTS_BIT_POS_11,
            PORTS_BIT_POS_12,
            PORTS_BIT_POS_13,
            PORTS_BIT_POS_14,
            PORTS_BIT_POS_15},
};

void APP_Initialize ( void )
{
    appData.state = APP_STATE_INIT;
    
    appData.ledstrip_driver = DRV_LEDSTRIP_Initialize(
            DRV_LEDSTRIP_INDEX_0,
            (SYS_MODULE_INIT*)&ledstrip_init);
    
    DRV_IOEXPANDER_Initialize();
}

void APP_Tasks ( void )
{
    int i_led;
    
    DRV_LEDSTRIP_Tasks(appData.ledstrip_driver);
    DRV_IOEXPANDER_Tasks();
    
    switch ( appData.state )
    {
        case APP_STATE_INIT:
        {
            appData.state = APP_STATE_RUNNING;
            
            appData.ledstrip_client = DRV_LEDSTRIP_Open(
                    DRV_LEDSTRIP_INDEX_0,
                    DRV_IO_INTENT_EXCLUSIVE);
            appData.delay_timer = SYS_TMR_DelayMS(100);
            appData.dim_value = 0;
            appData.dim_value_step = 1;
            
            break;
        }

        case APP_STATE_RUNNING:
        {
            if (SYS_TMR_DelayStatusGet(appData.delay_timer))
            {
                appData.dim_value += appData.dim_value_step;
                if (appData.dim_value >= DRV_LEDSTRIP_MAX_DIMMING_VALUE)
                {
                    appData.dim_value_step = -1;
                }
                if (appData.dim_value <= 0)
                {
                    appData.dim_value_step = +1;
                }
                
                for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
                {
                    DRV_LEDSTRIP_DimLight(appData.ledstrip_client, i_led, appData.dim_value);
                }
                
                appData.delay_timer = SYS_TMR_DelayMS(5);
            }
            
            break;
        }
        
        default:
        {
            break;
        }
    }
}
 