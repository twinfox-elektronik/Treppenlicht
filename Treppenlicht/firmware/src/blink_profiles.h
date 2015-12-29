#ifndef _BLINK_PROFILES_H
#define _BLINK_PROFILES_H

#define COMMANDS_MAX 64

typedef enum
{
    COMMAND_END,
    COMMAND_WAIT,
    COMMAND_DIM_LED,
} CommandType;

typedef struct
{
    CommandType type;
    union {
        uint16_t wait_time;
        struct
        {
            uint16_t dim_value_target;
            uint16_t dim_value_wait; // wenn 'dim_value_wait' = 0, dann wird 'dim_value_step' genutzt
            uint8_t dim_value_step;
        } dim;
    };
} Command;

typedef struct
{
    uint32_t current_wait_time;
    int32_t current_dim_value;
} CommandState;

#define _LED_WAIT(target) { .type = COMMAND_WAIT, .wait_time = target }
#define _LED_DIM_S(target, step) { .type = COMMAND_DIM_LED, .dim.dim_value_target = target, .dim.dim_value_wait = 0, .dim.dim_value_step = step }
#define _LED_DIM_L(target, wait) { .type = COMMAND_DIM_LED, .dim.dim_value_target = target, .dim.dim_value_wait = wait, .dim.dim_value_step = 0 }
#define LED_WAIT(target_in_sec) _LED_WAIT(target_in_sec*100)
#define LED_DIM(target_in_percent, step_size) _LED_DIM_S(2*target_in_percent, 2*step_size)
#define LED_DIM_LONG(target_in_percent, wait_time_in_sec) _LED_DIM_L(2*target_in_percent, wait_time_in_sec*100)
#define LED_END { .type = COMMAND_END }

const Command profile1_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_WAIT(0),
        LED_WAIT(1),
        LED_WAIT(2),
        LED_WAIT(3),
        LED_WAIT(4),
        LED_WAIT(5),
        LED_WAIT(6),
        LED_WAIT(7),
        LED_WAIT(8),
        LED_WAIT(9),
        LED_WAIT(10),
        LED_WAIT(11),
        LED_WAIT(12),
        LED_WAIT(13),
        LED_WAIT(14),
    },
    {
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

const Command profile1_off_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
        LED_DIM(0, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

const Command profile2_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
        LED_DIM(100, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

const Command profile3_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
        LED_DIM(60, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

const Command profile4_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
        LED_DIM(30, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

const Command profile5_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    {
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
        LED_DIM(10, 1),
    },
    {
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
        LED_END,
    },
};

#endif
