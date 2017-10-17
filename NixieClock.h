#ifndef NIXIECLOCK_H
#define NIXIECLOCK_H 1

// --- Variable types defined by length ---
typedef char int8;
typedef byte uint8;
typedef short int16;
typedef unsigned short uint16;
typedef long int32;
typedef unsigned long uint32;

enum time_change {
    seconds_change = 1,
    minutes_change = 2,
    hours_change = 4,

    years_change = 1,
    months_change = 2,
    days_change = 4,

    change_all = 7
};

#define IN_HMS0 0
#define IN_HMS1 1
#define IN_ADJUST 2
#define IN_SOUND 3
#define IN_DATE_TIME 4

#define DISPLAY_TIME 1 << IN_DATE_TIME
#define DISPLAY_DATE 0

#define nop() __asm__("nop\n\t")

// --- Forward declaration ---
uint8 increment_seconds(void);
void increment_days(void);
void adjust_time(int8);

void display(int8, uint8);
void update_display(uint8, uint8);

void read_inputs(void);

void read_rotary_encoder(void);

uint8 verify_and_correct_date(void);
#endif
