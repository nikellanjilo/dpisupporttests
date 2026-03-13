#include <stdio.h>
#include "..\svdpi.h"

int svGetBitArrElem2Vec32Function(const svOpenArrayHandle mem)
{
    svBitVec32 val[1];
    val[0] = 0;
    svGetBitArrElem2Vec32(val, mem, 2, 1);
    return (int)val[0];
}