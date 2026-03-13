#include <stdio.h>
#include "..\svdpi.h"

int svGetBitArrElem3Vec32Function(const svOpenArrayHandle mem)
{
    svBitVec32 val[1];
    val[0] = 0;
    svGetBitArrElem3Vec32(val, mem, 2, 1, 0);
    return (int)val[0];
}