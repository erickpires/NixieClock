#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

typedef int8_t int8;
typedef int16_t int16;
typedef int32_t int32;
typedef int64_t int64;

typedef size_t   usize;
typedef uint8_t  uint8;
typedef uint16_t uint16;
typedef uint32_t uint32;
typedef uint64_t uint64;
typedef unsigned int uint;

typedef int bool;
#define FALSE 0
#define TRUE  1

void shuffle(uint* array, usize array_size) {
    for(uint swaps = 0; swaps < 1000 * array_size; swaps++) {
        usize index0 = rand() % array_size;
        usize index1 = rand() % array_size;

        uint tmp = array[index0];
        array[index0] = array[index1];
        array[index1] = tmp;
    }
}

int main(int argc, char** argv) {

    srand(time(NULL));

    uint first[10];
    uint second[10];

    for(uint n = 0; n < 3; n++) {

        for(uint i = 0; i < 10; i++) {
            first[i] = i;
            second[i] = i;
        }

        shuffle(first, 10);
        shuffle(second, 10);

        for(uint i = 0; i < 10; i++) {
            uint number = first[i] << 4 | second[i];
            printf("%d, ", number);
        }

        printf("\n\n");
    }

    return 0;
}
