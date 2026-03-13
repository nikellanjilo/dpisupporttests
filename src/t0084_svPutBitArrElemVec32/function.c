#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElemVec32Function(const svOpenArrayHandle mem)
{
    svBitVec32 value[1];

    value[0] = 0xDEADBEEF;

    svPutBitArrElem1Vec32(mem, &value, 2);
}