#include <stdio.h>
#include "..\svdpi.h"

int svGetBitArrElemVec32Function(const svOpenArrayHandle mem)
{
    svBitVec32 val[1];
    val[0] = 0;
    svGetBitArrElemVec32(val, mem, 2);
    return (int)val[0];
}