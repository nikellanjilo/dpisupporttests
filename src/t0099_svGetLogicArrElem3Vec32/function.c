#include <stdio.h>
#include "..\svdpi.h"

int svGetLogicArrElem3Vec32Function(const svOpenArrayHandle mem)
{
    svLogicVec32 val[1];

    val[0].c = 0;
    val[0].d = 0;

    svGetLogicArrElem3Vec32(val, mem, 2, 1, 0);

    return (int)val[0].c;
}