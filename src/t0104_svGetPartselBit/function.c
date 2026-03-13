#include <stdio.h>
#include "..\svdpi.h"

int svGetPartselBitFunction(const svBitVecVal* data)
{
    svBitVec32 part[1];
    part[0] = 0;
    svGetPartselBit(part, data, 0, 8);
    return (int)part[0];
}