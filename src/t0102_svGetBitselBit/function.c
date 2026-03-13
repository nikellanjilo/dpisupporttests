#include <stdio.h>
#include "..\svdpi.h"

int svGetBitselBitFunction(const svBitVecVal* data)
{
    return (int)svGetBitselBit(data, 4);
}