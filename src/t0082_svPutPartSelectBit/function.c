#include <stdio.h>
#include "..\svdpi.h"

const char* svPutPartSelectBitFunction(svBitPackedArrRef data)
{
    svBitVec32 part = 0xAB;
    svPutPartSelectBit(data, part, 8, 8);
}