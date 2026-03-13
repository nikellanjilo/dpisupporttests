#include <stdio.h>
#include "..\svdpi.h"

void svPutBitVec32Function(svBitVecVal* data)
{
    svBitVec32 val[1];
    val[0] = 0xDEADBEEF;
    svPutBitVec32(data, val, 32);
}