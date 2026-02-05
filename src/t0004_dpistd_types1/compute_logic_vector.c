#include "svdpi.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char* compute_logic_vector(const svBitVecVal* i_value) {
    char* string = (char*)malloc(100 * sizeof(char));
    strcpy(string, "");
    uint8_t* buf = (uint8_t*) i_value;
    for(int i=0; i<16; i++)
    {
        char current[10];
        sprintf(current, "0x%x ", *buf++);
        strcat(string, current);
    }
    return string;
}