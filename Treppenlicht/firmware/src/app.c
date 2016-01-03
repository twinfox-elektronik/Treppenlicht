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

typedef enum
{
    APP_LED_STATE_UNKNOWN = 0,
    APP_LED_STATE_ON_DOWN,
    APP_LED_STATE_OFF_DOWN,
    APP_LED_STATE_ON_UP,
    APP_LED_STATE_OFF_UP,
} APP_LED_STATE;

struct
{
    /* The application's current state */
    APP_STATES state;

    SYS_MODULE_OBJ ledstrip_driver;
    DRV_HANDLE ledstrip_client;
    
    SYS_TMR_HANDLE delay_timer;
    
    bool profile_wait_for_finish;
    const Command (*commands)[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    int command_index[DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    CommandState command_state[DRV_LEDSTRIP_MAX_NUMBER_LEDS];
    
    APP_LED_STATE led_state;
    
} appData;

DRV_LEDSTRIP_INIT ledstrip_init = {
    .moduleInit = { .value = SYS_MODULE_POWER_RUN_FULL },
    .timerIndex = DRV_TMR_INDEX_0,
    .frequency = 100,
    .led_port = {
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_A,
            PORT_CHANNEL_B,
            PORT_CHANNEL_A,
            PORT_CHANNEL_A,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
            PORT_CHANNEL_B,
    },
    .led_pin_pos = {
            PORTS_BIT_POS_10,
            PORTS_BIT_POS_3,
            PORTS_BIT_POS_4,
            PORTS_BIT_POS_4,
            PORTS_BIT_POS_3,
            PORTS_BIT_POS_2,
            PORTS_BIT_POS_12,
            PORTS_BIT_POS_2,
            PORTS_BIT_POS_11,
            PORTS_BIT_POS_13,
            PORTS_BIT_POS_15,
            PORTS_BIT_POS_14,
            PORTS_BIT_POS_6,
            PORTS_BIT_POS_7,
            PORTS_BIT_POS_5,
    },
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

void APP_DimValue(int i_led, const Command* command, CommandState* state, uint16_t dim_value_target)
{
    int16_t delta;
    int16_t step = 0;
    
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

    delta = abs(state->current_dim_value - dim_value_target);
    if (step > delta)
    {
        step = delta;
    }
    if (state->current_dim_value > dim_value_target)
    {
        step = -step;
    }
    state->current_dim_value += step;

    if (state->current_dim_value == dim_value_target)
    {
        state->current_rand_dim_value = -1;
        appData.command_index[i_led]++;
    }
}

bool APP_UpdateLedStates()
{
    int i_led;
    const Command* command;
    CommandState* state;
    bool is_everything_finished = true;
    
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
            
            case COMMAND_REPEAT:
            {
                appData.command_index[i_led] = 0;
                
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
            
            case COMMAND_RANDOM_DIM_LED:
            {
                is_everything_finished = false;
                
                if (state->current_rand_dim_value == -1)
                {
                    state->current_rand_dim_value = rand() % DRV_LEDSTRIP_MAX_DIMMING_VALUE;
                }
                APP_DimValue(i_led, command, state, state->current_rand_dim_value);
                
                break;
            }
            
            case COMMAND_DIM_LED:
            {
                is_everything_finished = false;
                
                APP_DimValue(i_led, command, state, command->dim.dim_value_target);
                
                break;
            }
        }
        
        DRV_LEDSTRIP_DimLight(appData.ledstrip_client, i_led, state->current_dim_value);
    }
    
    if (appData.profile_wait_for_finish)
    {
        return is_everything_finished;
    }
    else
    {
        return true;
    }
}

void APP_LoadProfile()
{
    int i_led;
    APP_LED_STATE last_state;
    int profile = 0;
    
    last_state = appData.led_state;
    if (APP_IsChannelActive(BUTTON_1))
    {
        appData.led_state = APP_LED_STATE_ON_UP;
    }
    else if (APP_IsChannelActive(BUTTON_2))
    {
        appData.led_state = APP_LED_STATE_ON_DOWN;
    }
    else
    {
        if (appData.led_state == APP_LED_STATE_ON_UP)
        {
            appData.led_state = APP_LED_STATE_OFF_UP;
        }
        else
        {
            appData.led_state = APP_LED_STATE_OFF_DOWN;
        }
    }
    
    if (APP_IsChannelActive(BUTTON_3) && APP_IsChannelActive(BUTTON_4))
    {
        profile = 4;
    }
    else if (APP_IsChannelActive(BUTTON_4))
    {
        profile = 3;
    }
    else if (APP_IsChannelActive(BUTTON_3))
    {
        profile = 2;
    }
    else
    {
        profile = 1;
    }
    
    if (appData.led_state != last_state)
    {
        appData.profile_wait_for_finish = profile_wait_for_finish[profile-1];
        
        for (i_led = 0; i_led < DRV_LEDSTRIP_MAX_NUMBER_LEDS; i_led++)
        {
            appData.command_index[i_led] = 0;
            appData.command_state[i_led].current_wait_time = 0;
            appData.command_state[i_led].current_rand_dim_value = -1;
        }
        
        switch (appData.led_state)
        {
            case APP_LED_STATE_ON_UP:
            {
                if (profile == 1)
                {
                    appData.commands = &profile1_on_up;
                }
                else if (profile == 2)
                {
                    appData.commands = &profile2_on_up;
                }
                else if (profile == 3)
                {
                    appData.commands = &profile3_on_up;
                }
                else if (profile == 4)
                {
                    appData.commands = &profile4_on_up;
                }
                
                break;
            }
            
            case APP_LED_STATE_OFF_UP:
            {
                if (profile == 1)
                {
                    appData.commands = &profile1_off_up;
                }
                else if (profile == 2)
                {
                    appData.commands = &profile2_off_up;
                }
                else if (profile == 3)
                {
                    appData.commands = &profile3_off_up;
                }
                else if (profile == 4)
                {
                    appData.commands = &profile4_off_up;
                }
                
                break;
            }
            
            case APP_LED_STATE_ON_DOWN:
            {
                if (profile == 1)
                {
                    appData.commands = &profile1_on_down;
                }
                else if (profile == 2)
                {
                    appData.commands = &profile2_on_down;
                }
                else if (profile == 3)
                {
                    appData.commands = &profile3_on_down;
                }
                else if (profile == 4)
                {
                    appData.commands = &profile4_on_down;
                }
                
                break;
            }
            
            case APP_LED_STATE_OFF_DOWN:
            {
                if (profile == 1)
                {
                    appData.commands = &profile1_off_down;
                }
                else if (profile == 2)
                {
                    appData.commands = &profile2_off_down;
                }
                else if (profile == 3)
                {
                    appData.commands = &profile3_off_down;
                }
                else if (profile == 4)
                {
                    appData.commands = &profile4_off_down;
                }
                
                break;
            }
        }
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
 