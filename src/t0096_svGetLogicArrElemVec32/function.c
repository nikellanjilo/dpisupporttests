#include <stdio.h>
#include "..\svdpi.h"

int svGetLogicArrElemVec32Function(const svOpenArrayHandle mem)
{
    svLogicVec32 val[1];

    val[0].c = 0;
    val[0].d = 0;

    svGetLogicArrElemVec32(val, mem, 2);

    return (int)val[0].c;
}