#include "app.h"
#include "driver/ledstrip/drv_ledstrip.h"
#include "blink_profiles.h"

typedef enum
{
	/* Application's state machine's initial state. */
	APP_STATE_INIT = 0,

    APP_STATE_LOAD_PROFILE,
    APP_STATE_RUNNING,
} APP_STATES;

struct
{
    /* The application's current state */
    APP_STATES state;

    SYS_MODULE_OBJ ledstrip_driver;
    DRV_HANDLE ledstrip_client;
    
    SYS_TMR_HANDLE delay_timer;
    
    const Command (*commands)[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    int command_index[DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    CommandState command_state[DRV_LEDSTRIP_MAX_NUMBER_LEDS];

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

bool APP_IsChannelActive(uint8_t button_index)
{
    switch (button_index)
    {
        case BUTTON_3:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_0);
        }
        
        case BUTTON_2:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_1);
        }
        
        case BUTTON_4:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_8);
        }
        
        case BUTTON_1:
        {
            return !PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_B, PORTS_BIT_POS_9);
        }
        
        default:
        {
            return false;
        }
    }
}

bool APP_UpdateLedStates()
{
    int i_led;
    const Command* command;
    CommandState* state;
    bool is_everything_finished = true;
    int16_t step;
    int16_t delta;
    
    for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
    {
        command = &((*appData.commands)[appData.command_index[i_led]][i_led]);
        state = &appData.command_state[i_led];
        
        switch (command->type)
        {
            case COMMAND_END:
            {
                break;
            }
            
            case COMMAND_WAIT:
            {
                is_everything_finished = false;
                
                state->current_wait_time++;
                
                if (state->current_wait_time >= command->wait_time)
                {
                    state->current_wait_time = 0;
                    appData.command_index[i_led]++;
                }
                
                break;
            }
            
            case COMMAND_DIM_LED:
            {
                is_everything_finished = false;
                
                step = 0;
                if (command->dim.dim_value_wait == 0)
                {
                    step = command->dim.dim_value_step;
                }
                else
                {
                    state->current_wait_time++;
                    
                    if (state->current_wait_time >= command->dim.dim_value_wait)
                    {
                        state->current_wait_time = 0;
                        step = 1;
                    }
                }
                
                delta = abs(state->current_dim_value - command->dim.dim_value_target);
                if (step > delta)
                {
                    step = delta;
                }
                if (state->current_dim_value > command->dim.dim_value_target)
                {
                    step = -step;
                }
                state->current_dim_value += step;
                
                if (state->current_dim_value == command->dim.dim_value_target)
                {
                    appData.command_index[i_led]++;
                }
                
                break;
            }
        }
        
        DRV_LEDSTRIP_DimLight(appData.ledstrip_client, i_led, state->current_dim_value);
    }
    
    return is_everything_finished;
}

void APP_LoadProfile()
{
    int i_led;
    
    for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
    {
        appData.command_index[i_led] = 0;
        appData.command_state[i_led].current_wait_time = 0;
    }

    if (APP_IsChannelActive(BUTTON_1))
    {
        appData.commands = &profile2_on_down;
    }
    else if (APP_IsChannelActive(BUTTON_2))
    {
        appData.commands = &profile3_on_down;
    }
    else if (APP_IsChannelActive(BUTTON_3))
    {
        appData.commands = &profile4_on_down;
    }
    else if (APP_IsChannelActive(BUTTON_4))
    {
        appData.commands = &profile5_on_down;
    }
    else
    {
        appData.commands = &profile1_off_down;
    }
}

void APP_Tasks()
{
    DRV_LEDSTRIP_Tasks(appData.ledstrip_driver);
    
    switch ( appData.state )
    {
        case APP_STATE_INIT:
        {
            appData.ledstrip_client = DRV_LEDSTRIP_Open(
                    DRV_LEDSTRIP_INDEX_0,
                    DRV_IO_INTENT_EXCLUSIVE);
            
            appData.delay_timer = SYS_TMR_DelayMS(10);
            
            appData.state = APP_STATE_LOAD_PROFILE;
            
            break;
        }
        
        case APP_STATE_LOAD_PROFILE:
        {
            APP_LoadProfile();
            
            appData.state = APP_STATE_RUNNING;
            
            break;
        }
        
        case APP_STATE_RUNNING:
        {
            if (SYS_TMR_DelayStatusGet(appData.delay_timer))
            {
                if (APP_UpdateLedStates())
                {
                    appData.state = APP_STATE_LOAD_PROFILE;
                }

                appData.delay_timer = SYS_TMR_DelayMS(10);
            }
            
            break;
        }
        
        default:
        {
            break;
        }
    }
}
 