#include <stdio.h>
#include "..\svdpi.h"

void svPutPartSelectLogicFunction(svLogicVecVal* data)
{
    svLogicVec32 src;
    src.c = 0xAA;
    src.d = 0x00;
    svPutPartSelectLogic(data, src, 8, 8);
}