#include <stdio.h>
#include "..\svdpi.h"

int svGetBitArrElem1Vec32Function(const svOpenArrayHandle mem)
{
    svBitVec32 val[1];
    val[0] = 0;
    svGetBitArrElem1Vec32(val, mem, 2);
    return (int)val[0];
}