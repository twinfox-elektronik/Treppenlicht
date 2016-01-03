#ifndef _BLINK_PROFILES_H
#define _BLINK_PROFILES_H

#define COMMANDS_MAX 20

typedef enum
{
    COMMAND_END,
    COMMAND_REPEAT,
    COMMAND_WAIT,
    COMMAND_DIM_LED,
    COMMAND_RANDOM_DIM_LED,
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
    int32_t current_rand_dim_value;
} CommandState;

#define _LED_WAIT(target) { .type = COMMAND_WAIT, .wait_time = target }
#define _LED_DIM_S(cmd, target, step) { .type = cmd, .dim.dim_value_target = target, .dim.dim_value_wait = 0, .dim.dim_value_step = step }
#define _LED_DIM_L(cmd, target, wait) { .type = cmd, .dim.dim_value_target = target, .dim.dim_value_wait = wait, .dim.dim_value_step = 0 }
#define LED_WAIT(target_in_sec) _LED_WAIT(target_in_sec*100)
#define LED_DIM(target_in_percent, step_size) _LED_DIM_S(COMMAND_DIM_LED, 2*target_in_percent, 2*step_size)
#define LED_DIM_LONG(target_in_percent, wait_time_in_sec) _LED_DIM_L(COMMAND_DIM_LED, 2*target_in_percent, wait_time_in_sec*100)
#define LED_END { .type = COMMAND_END }
#define LED_REPEAT { .type = COMMAND_REPEAT }
#define LED_DIM_RANDOM(step) _LED_DIM_S(COMMAND_RANDOM_DIM_LED, 0, 2*step)
#define LED_DIM_RANDOM_LONG(wait_time_in_sec) _LED_DIM_L(COMMAND_RANDOM_DIM_LED, 0, wait_time_in_sec*100)

#define FULL_LED_DIM_VALUE 100
#define DIMMED_LED_DIM_VALUE 30

#define LED_WAIT15(wait) \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait), \
    LED_WAIT(wait),

#define LED_WAIT15_LINEAR(step) \
    LED_WAIT(0*step), \
    LED_WAIT(1*step), \
    LED_WAIT(2*step), \
    LED_WAIT(3*step), \
    LED_WAIT(4*step), \
    LED_WAIT(5*step), \
    LED_WAIT(6*step), \
    LED_WAIT(7*step), \
    LED_WAIT(8*step), \
    LED_WAIT(9*step), \
    LED_WAIT(10*step), \
    LED_WAIT(11*step), \
    LED_WAIT(12*step), \
    LED_WAIT(13*step), \
    LED_WAIT(14*step),

#define LED_WAIT15_LINEAR_REV(step) \
    LED_WAIT(14*step), \
    LED_WAIT(13*step), \
    LED_WAIT(12*step), \
    LED_WAIT(11*step), \
    LED_WAIT(10*step), \
    LED_WAIT(9*step), \
    LED_WAIT(8*step), \
    LED_WAIT(7*step), \
    LED_WAIT(6*step), \
    LED_WAIT(5*step), \
    LED_WAIT(4*step), \
    LED_WAIT(3*step), \
    LED_WAIT(2*step), \
    LED_WAIT(1*step), \
    LED_WAIT(0*step),

#define LED_DIM15(target_in_percent, step_size) \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size), \
    LED_DIM(target_in_percent, step_size),

#define LED_DIM15_RANDOM(step) \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step), \
    LED_DIM_RANDOM(step),

#define LED_END15 \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END, \
    LED_END,

#define LED_REPEAT15 \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT, \
    LED_REPEAT,

/* has profile to be finished before a new profile can be used? */
const bool profile_wait_for_finish[4] = {
    true, true, true, false,
};

/* Profil 1 */
const Command profile1_on_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR(0.3) },
    { LED_DIM15(FULL_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile1_off_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

const Command profile1_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR_REV(0.3) },
    { LED_DIM15(FULL_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile1_off_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

/* Profil 2 */
const Command profile2_on_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR(0.3) },
    { LED_DIM15(DIMMED_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile2_off_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

const Command profile2_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR_REV(0.3) },
    { LED_DIM15(DIMMED_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile2_off_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

/* Profil 3 */
const Command profile3_on_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR(0.3) },
    { LED_DIM15(FULL_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile3_off_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR_REV(0.3) },
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

const Command profile3_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR_REV(0.3) },
    { LED_DIM15(FULL_LED_DIM_VALUE, 1) },
    { LED_END15 },
};

const Command profile3_off_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_WAIT15_LINEAR(0.3) },
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

/* Profil 4 */
const Command profile4_on_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15_RANDOM(1) },
    { LED_REPEAT15 },
    { LED_END15 },
};

const Command profile4_off_up[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

const Command profile4_on_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM_RANDOM_LONG(5) },
    { LED_REPEAT15 },
    { LED_END15 },
};

const Command profile4_off_down[COMMANDS_MAX][DRV_LEDSTRIP_MAX_NUMBER_LEDS] = {
    { LED_DIM15(0, 1) },
    { LED_END15 },
};

#endif
