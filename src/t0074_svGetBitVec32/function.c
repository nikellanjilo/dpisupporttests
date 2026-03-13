#include <stdio.h>
#include "..\svdpi.h"

int svGetBitVec32Function(const svBitVecVal* data)
{
    svBitVec32 val[1];
    val[0] = 0;
    svGetBitVec32(val, data, 32);
    return (int)val[0];
}