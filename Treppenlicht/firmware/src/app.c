#include "app.h"
#include "driver/ledstrip/drv_ledstrip.h"

typedef enum
{
	/* Application's state machine's initial state. */
	APP_STATE_INIT = 0,

    APP_STATE_RUNNING,
    APP_STATE_WAIT_FOR_BUTTON,
            
} APP_STATES;

struct
{
    /* The application's current state */
    APP_STATES state;

    SYS_MODULE_OBJ ledstrip_driver;
    DRV_HANDLE ledstrip_client;
    
    SYS_TMR_HANDLE delay_timer;
    
    int32_t dim_value;
    int32_t dim_value_step;

} appData;

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

#define BUTTON_1 0
#define BUTTON_2 1
#define BUTTON_3 2
#define BUTTON_4 3

void APP_Initialize ( void )
{
    appData.state = APP_STATE_INIT;
    
    appData.ledstrip_driver = DRV_LEDSTRIP_Initialize(
            DRV_LEDSTRIP_INDEX_0,
            (SYS_MODULE_INIT*)&ledstrip_init);
}

bool APP_IsButtonActive(uint8_t button_index)
{
    switch (button_index)
    {
        case BUTTON_1:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_0);
        }
        
        case BUTTON_2:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_1);
        }
        
        case BUTTON_3:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_8);
        }
        
        case BUTTON_4:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_9);
        }
        
        default:
        {
            return false;
        }
    }
}

void APP_Tasks ( void )
{
    int i_led;
    
    DRV_LEDSTRIP_Tasks(appData.ledstrip_driver);
    
    switch ( appData.state )
    {
        case APP_STATE_INIT:
        {
            appData.ledstrip_client = DRV_LEDSTRIP_Open(
                    DRV_LEDSTRIP_INDEX_0,
                    DRV_IO_INTENT_EXCLUSIVE);
            appData.delay_timer = SYS_TMR_DelayMS(100);
            appData.dim_value = 0;
            appData.dim_value_step = 1;
            
            appData.state = APP_STATE_WAIT_FOR_BUTTON;
            
            break;
        }
        
        case APP_STATE_WAIT_FOR_BUTTON:
        {
            if (!PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_0))
            {
                appData.state = APP_STATE_RUNNING;
            }
            else if (!PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_1))
            {
                appData.state = APP_STATE_RUNNING;
            }
            else if (!PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_8))
            {
                appData.state = APP_STATE_RUNNING;
            }
            else if (!PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_9))
            {
                appData.state = APP_STATE_RUNNING;
            }
            
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
                    appData.state = APP_STATE_WAIT_FOR_BUTTON;
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
 