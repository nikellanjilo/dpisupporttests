#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicVec32Function(svLogicVecVal* data)
{
    svLogicVec32 val[1];
    val[0].c = 0xDEADBEEF;
    val[0].d = 0x00000000;
    svPutLogicVec32(data, val, 32);
}