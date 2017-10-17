// Wiring
// PORTD is used as the data bus. The latches data is written to this port.
// PORTB{0-2} are the pins used as latch select. Selection is HIGH.
// PORTB{3,4} are used to decode the information of the Rotary Encoder. The internal pull-up resistors are used.
// PORTB5 is used to switch the display ON and OFF. Active LOW.
// PORTC{0,1} are the pins used for H_M_S selection. The internal pull-up resistors are used. Read below for more information.
// PORTC2 is used to switch between DISPLAY_MODE and ADJUST_MODE. The internal pull-up resistor is used.
// PORTC3 is used to switch the sound ON and OFF. The internal pull-up resistor is used.
// PORTC4 is used to switch between TIME_DISPLAY and DATE_DISPLAY. The internal pull-up resistor is used.
//
// H_M_S Selection

// Inputs
// The inputs are read once every millisecond. Because of the way the inputs of the clock are physically made, very fast
//  reads are unlikely to be needed.
// An software debouncing is implemented using a "count" scheme. 16 samples of the input port are gathered and stored. After the
//  16th sample a variable is set to the value of the last sample and a variable receives a bitfield which tells us the bits that
//  are valid i.e. the bits that did not change across the 16 samples.

// TODO(erick): Move all the constants to the .h file.
#include "NixieClock.h"

// --- Tables ---
const uint8 days_in_mounths[] =
{
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
};

const static uint8 div10_quot_rem_table[] PROGMEM =
{
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
    16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
    32, 33, 34, 35, 36, 37, 38, 39, 40, 41,
    48, 49, 50, 51, 52, 53, 54, 55, 56, 57,
    64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
    80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
    96, 97, 98, 99, 100, 101, 102, 103, 104, 105,
    112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
    128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
    144, 145, 146, 147, 148, 149, 150, 151, 152, 153
};

#define N_INPUT_SAMPLES 16
static uint8 input_array[N_INPUT_SAMPLES];

static uint8 input_valid_bits;
static uint8 input_bitfield;
static uint8 input_array_current_index = 0;
static uint8 new_input_flag = 0;

#define turn_display_on()  PORTB |=  (1 << 5)
#define turn_display_off() PORTB &= ~(1 << 5)
#define is_display_on() PINB &= ~(1 << 5)

static volatile uint16 milliseconds = 0;
static volatile uint8 seconds_flag = 0;


static int8 clock_current_second = 0;
static int8 clock_current_minute = 0;
static int8 clock_current_hour = 0;

static int8 clock_current_day = 1;
static int8 clock_current_month = 1;
static int8 clock_current_year = 0;

static uint8 display_mode = DISPLAY_TIME;
static uint8 clock_is_running = 1;

// This Rotary Encoder code is base on the code by mathertel
// https://github.com/mathertel/RotaryEncoder
// http://www.mathertel.de/Arduino/RotaryEncoderLibrary.aspx

#define ROTARY_ENCODER_LATCH_STATE 3
static uint8 __rotary_encoder_old_state;
static int8 __rotary_encoder_internal_position;     // Internal position (4 times position)
static int8 __rotary_encoder_old_internal_position;
static int rotary_encoder_position;  // External position


//
// Animation Stuff
//

// NOTE(erick): HOW THE ANIMATION WORKS
//
// The animation scrolls all the digits on all the nixies.
// ANIMATION_LOOPS is the number of scrolls that the animation will have.
// Since the animation scrolls through ten digits, we have `10 * ANIMATION_LOOPS`
// steps in the animation. Every step lasts MILLISECONDS_PER_ANIMATION_STEP milliseconds.
//
// `is_animating` is a boolean variable that indicates whether the clock is aninating
// or not. An animation starts every exact minutes (i.e. when seconds are zero) and
// the clock is not in adjust mode (the `clock_is_running` variable is true). If the
// clock changes to adjust mode and an animation is in progress, the animation is aborted.
//
// `animation_milliseconds` is a helper variable to count modulo MILLISECONDS_PER_ANIMATION_STEP
// without having to do any division (or working modulo some power of two). This variable is
// incremented every millisecond only if `is_animating` is true. Every time reaches zero the
// `animation_counter` is incremented until it reaches ANIMATION_STEPS, then the animation is ended.
//
// Every time the clock has a new animation step it sets the `new_animation_step_flag` so the
// animation can be handled on the main loop.
//
// The animation itself is done by the `update_display` function, that checks whether `is_animating`
// is true and if it is, calculates the value in each digit based on the `animation_counter` variable.

#define ANIMATION_LOOPS 3
#define ANIMATION_STEPS (10 * ANIMATION_LOOPS)
#define MILLISECONDS_PER_ANIMATION_STEP 16
static uint8 is_animating = 0;
static uint8 new_animation_step_flag = 0;
static uint8 animation_counter;
static uint8 animation_milliseconds = 0;

const static uint8 animation_table[] PROGMEM =
{
    34, 52, 145, 89, 21, 135, 102, 112, 67, 8,
    2, 85, 150, 23, 56, 137, 100, 65, 112, 35,
    80, 40, 3, 133, 25, 114, 65, 151, 54, 100,

    146, 3, 39, 69, 84, 105, 24, 113, 134, 48,
    97, 57, 83, 7, 146, 40, 70, 16, 132, 117,
    18, 36, 73, 7, 115, 128, 101, 88, 145, 54,

    3, 129, 18, 117, 54, 73, 84, 151, 40, 96,
    100, 72, 114, 134, 32, 53, 25, 81, 147, 7,
    6, 18, 136, 119, 57, 83, 97, 68, 32, 149
};

//NOTE(erick): TURNING OFF THE DISPLAY AT NIGHT
#define HOUR_TO_TURN_OFF 00
#define HOUR_TO_TURN_ON  06

// NOTE(erick): We set the `new_animation_step_flag` every time we start and stop an animation
// so the display changes imediately.
void start_animation() {
    is_animating = 1;
    animation_counter = 0;
    animation_milliseconds = 0;
    new_animation_step_flag = 1;
}

void stop_animation() {
    is_animating = 0;
    new_animation_step_flag = 1;
}

uint8 is_in_display_off_range() {
    return clock_current_hour >= HOUR_TO_TURN_OFF &&
        clock_current_hour < HOUR_TO_TURN_ON;
}

void setup() {
    noInterrupts();

    // Configuring output pins
    DDRB = 0x27; // 00100111
    DDRC = 0x20; // 00100000 -- PORTC5 is unconnected and configured as output to avoid a floating state.

    DDRD = 0xff;

    // Internal pull-ups
    PORTB |= 0x18; // 00011000
    PORTC |= 0x1f; // 00011111

    turn_display_on();

    // Initialize rotary encoder

    // when not started in motion, the current state of the encoder should be ROTARY_ENCODER_LATCH_STATE
    __rotary_encoder_old_state = ROTARY_ENCODER_LATCH_STATE;

    // start with position 0;
    __rotary_encoder_internal_position = 0;
    rotary_encoder_position = 0;
    __rotary_encoder_old_internal_position = 0;

    // Interrupts for the rotary encoder
    PCICR |= (1 << PCIE0);
    PCMSK0 |= (1 << PCINT3) | (1 << PCINT4);

    // --- Timer 1 initialization ---
    TCCR1A = 0;
    TCCR1B = 0;
    TCNT1 = 0;

    OCR1A = 15998;
    TCCR1B |= (1 << WGM12);
    TCCR1B |= (1 << CS10);
    TIMSK1 |= (1 << OCIE1A);

    interrupts();

    update_display(change_all);
}

// --- Timer 1 interrupt routine ---
ISR(TIMER1_COMPA_vect) {
    milliseconds++;
    if(milliseconds >= 1000) {
        milliseconds -= 1000;
        seconds_flag = 1;
    }

    if(is_animating) {
        animation_milliseconds++;
        if(animation_milliseconds == MILLISECONDS_PER_ANIMATION_STEP) {
            animation_milliseconds = 0;
            animation_counter++;
            new_animation_step_flag = 1;
            if(animation_counter == ANIMATION_STEPS) {
                stop_animation();
            }

        }
    }

    read_inputs();
}

// --- Pin change interrupt routine used by the rotary encoder ---
ISR(PCINT0_vect) {
    static int rotary_encoder_current_position = 0;

    read_rotary_encoder();
    if (rotary_encoder_current_position != rotary_encoder_position) {
        int8 diff = (int8) (rotary_encoder_current_position - rotary_encoder_position);
        rotary_encoder_current_position = rotary_encoder_position;

        if(!clock_is_running) {
            adjust_time(diff);
        }
    }
}

inline void increment_days() {
    clock_current_day++;
    if(clock_current_day <= days_in_mounths[clock_current_month - 1]) {
        return;
    }

    if(clock_current_day == 29 && (clock_current_year & 0x03) == 0) { // If the year is divisible by 4 we have a leap year
        return;
    }

    clock_current_day = 1;
    clock_current_month++;
    if(clock_current_month < 13) {
        return;
    }

    clock_current_month = 1;
    clock_current_year++;
    if(clock_current_year < 100) {
        return;
    }

    clock_current_year = 0;
}

inline uint8 increment_seconds() {
    clock_current_second++;
    if(clock_current_second < 60) {
        return seconds_change;
    }

    clock_current_second = 0;
    clock_current_minute++;
    if(clock_current_minute < 60) {
        return seconds_change | minutes_change;
    }

    clock_current_minute = 0;
    clock_current_hour++;
    if(clock_current_hour < 24) {
        return seconds_change | minutes_change | hours_change;
    }

    clock_current_hour = 0;
    increment_days();
    return seconds_change | minutes_change | hours_change;
}

inline void adjust_time(int8 diff) {
    uint8 change;
    if(display_mode == DISPLAY_TIME) {
        switch (input_bitfield & ((1 << IN_HMS0) | (1 << IN_HMS1))) {
            case 0x01 : // seconds
                clock_current_second += diff;
                if(clock_current_second == 60) clock_current_second = 0;
                if(clock_current_second == -1) clock_current_second = 59;

                change = seconds_change;
                break;
            case 0x02 : // minutes
                clock_current_minute += diff;
                if(clock_current_minute == 60) clock_current_minute = 0;
                if(clock_current_minute == -1) clock_current_minute = 59;

                change = minutes_change;
                break;
            case 0x03 : // hours
                clock_current_hour += diff;
                if(clock_current_hour == 24) clock_current_hour = 0;
                if(clock_current_hour == -1) clock_current_hour = 23;

                change = hours_change;
                break;
        }
    } else { // DISPLAY_DATE
        switch (input_bitfield & ((1 << IN_HMS0) | (1 << IN_HMS1))) {
            case 0x01 : // years
                clock_current_year += diff;
                if(clock_current_year == 100) clock_current_year = 0;
                if(clock_current_year == -1)  clock_current_year = 99;

                change = years_change;
                break;
            case 0x02 : // months
                clock_current_month += diff;
                if(clock_current_month == 13) clock_current_month = 1;
                if(clock_current_month == 0)  clock_current_month = 12;

                change = months_change;
                break;
            case 0x03 : // days
                uint8 n_days = days_in_mounths[clock_current_month - 1];
                if(clock_current_month == 2 && (clock_current_year & 0x03) == 0) {
                    n_days = 29;
                }

                clock_current_day += diff;
                if(clock_current_day == n_days + 1) clock_current_day = 1;
                if(clock_current_day == 0) clock_current_day = n_days;

                change = days_change;
                break;
        }

        change |= verify_and_correct_date();
    }

    update_display(change);
}

inline void display(int8 value, uint8 latch_selector) {
    PORTD = value;
    nop();
    nop();

    PORTB |= 1 << latch_selector;
    nop();

    PORTB &= ~(1 << latch_selector);
}

inline void update_display(uint8 change) {
    // NOTE(erick): Display is not updated while animating.
    if(is_animating) {
        // NOTE(erick): Getting the corect number from the corect part of the table.
        display(pgm_read_byte_near(animation_table + (ANIMATION_STEPS * 0) + animation_counter), 0);
        display(pgm_read_byte_near(animation_table + (ANIMATION_STEPS * 1) + animation_counter), 1);
        display(pgm_read_byte_near(animation_table + (ANIMATION_STEPS * 2) + animation_counter), 2);

    } else if(display_mode == DISPLAY_TIME) {
        if(change & seconds_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_second), 0);
        }
        if(change & minutes_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_minute), 1);
        }
        if(change & hours_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_hour), 2);
        }

    } else { // DISPLAY_DATE
        if(change & seconds_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_year), 0);
        }
        if(change & minutes_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_month), 1);
        }
        if(change & hours_change) {
            display(pgm_read_byte_near(div10_quot_rem_table + clock_current_day), 2);
        }
    }
}

inline void read_inputs() {
    input_array[input_array_current_index] = PINC & 0x1f;
    input_array_current_index = (input_array_current_index + 1) & 0x0f; // increment modulo 16

    if(input_array_current_index == 0) {
        input_bitfield = input_array[N_INPUT_SAMPLES - 1]; // Last read sample

        // README: This loop would be very happy been unrolled
        uint8 tmp0;
        uint8 tmp1;

        tmp0 = input_array[0] & input_array[1];
        tmp1 = (~input_array[0]) & (~input_array[1]);
        for(uint8 input_index = 2; input_index < N_INPUT_SAMPLES; input_index++) {
            tmp0 &= input_array[input_index];
            tmp1 &= (~input_array[input_index]);
        }

        input_valid_bits = tmp0 | tmp1;
        new_input_flag = 1;
    }
}

void loop() {
    if(new_input_flag) {
        new_input_flag = 0;

        if(input_valid_bits & (1 << IN_DATE_TIME)) {
            // TODO: Document this. Seriously, stop being lazy!!!
            uint8 new_diplay_mode = input_bitfield & (1 << IN_DATE_TIME);
            uint8 should_update_display = new_diplay_mode ^ display_mode;

            display_mode = new_diplay_mode;
            if(should_update_display) {
                update_display(change_all);
            }
        }

        if(input_valid_bits & (1 << IN_ADJUST)) {
            clock_is_running = input_bitfield & (1 << IN_ADJUST);
            // NOTE(erick): If we are animating and change to adujust
            // mode the animation has to stop.
            if(!clock_is_running && is_animating) {
                stop_animation();
            }
        }
    }

    if(seconds_flag) {
        seconds_flag = 0;
        // digitalWrite(13, !digitalRead(13));

        if(clock_is_running) {
            uint8 change = increment_seconds();

            if(change & change_hour) {
                if(is_in_display_off_range() && is_display_on()) {
                    turn_off_display();
                }
                if(!is_in_display_off_range() && !is_display_on()) {
                    turn_on_display();
                }
            }
            // NOTE(erick): If we are here the clock
            // is running (i.e. not adjusting) and we have an
            // exact minute. These are the conditions to start
            // an animation.
            if(clock_current_second == 0) {
                start_animation();

            } else if(change) {
                update_display(change);
            }
        }
    }

    if(new_animation_step_flag) {
        new_animation_step_flag = 0;
        update_display(change_all);
    }
}

uint8 verify_and_correct_date() {
    if(clock_current_day > days_in_mounths[clock_current_month - 1]) {
        if(clock_current_month == 2 && (clock_current_year & 0x03) == 0) {
            clock_current_day = 29;
        } else {
            clock_current_day = days_in_mounths[clock_current_month - 1];
        }

        return days_change;
    }

    return 0;
}

inline void read_rotary_encoder() {
    uint8 current_state = (PINB >> 3) & 3;

    if(__rotary_encoder_old_state != current_state) {
        uint8 state = (__rotary_encoder_old_state << 2 ) | current_state;

        switch(state) {
            case (0 << 2 | 1) :
                __rotary_encoder_internal_position += -1;
                break;
            case (0 << 2 | 2) :
                __rotary_encoder_internal_position += 1;
                break;
            case (1 << 2 | 0) :
                __rotary_encoder_internal_position += 1;
                break;
            case (1 << 2 | 3) :
                __rotary_encoder_internal_position += -1;
                break;
            case (2 << 2 | 0) :
                __rotary_encoder_internal_position += -1;
                break;
            case (2 << 2 | 3) :
                __rotary_encoder_internal_position += 1;
                break;
            case (3 << 2 | 1) :
                __rotary_encoder_internal_position += 1;
                break;
            case (3 << 2 | 2) :
                __rotary_encoder_internal_position += -1;
                break;
            default:
                break;
        }

        if(current_state == ROTARY_ENCODER_LATCH_STATE) {
            int diff = (__rotary_encoder_internal_position - __rotary_encoder_old_internal_position) >> 2;

            if(diff > 0) {
                rotary_encoder_position++;
            } else if(diff < 0) {
                rotary_encoder_position--;
            }

            __rotary_encoder_old_internal_position = __rotary_encoder_internal_position;
        }

        __rotary_encoder_old_state = current_state;
    }
}
