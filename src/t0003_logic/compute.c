#include "svdpi.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char* compute(int length, const svLogicVecVal* value) {
    char* string = (char*)malloc(22 * sizeof(char) * length);
    strcpy(string, "");
    for(int i = 0; i < length; i++)
    {
        char current[22];
        sprintf(current, "0x%x 0x%x ", value->aval, value->bval);
        value++;
        strcat(string, current);
    }
    return string;
}