#include <stdio.h>
#include "..\svdpi.h"

int svGetBitselLogicFunction(const svLogicVecVal* data)
{
    svLogic bit;

    bit = svGetBitselLogic(data, 4);

    return (int)bit;
}