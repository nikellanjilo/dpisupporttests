#include <stdio.h>
#include "..\svdpi.h"

int svGetSelectBitFunction(const svBitVecVal* data)
{
    return (int)svGetBitselBit(data, 4);
}