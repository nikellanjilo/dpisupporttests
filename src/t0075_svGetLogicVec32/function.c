#include <stdio.h>
#include "..\svdpi.h"

int svGetLogicVec32Function(const svLogicVecVal* data)
{
    svLogicVec32 val[1];
    val[0].c = 0;
    val[0].d = 0;
    svGetLogicVec32(val, data, 32);
    return (int)val[0].c;
}