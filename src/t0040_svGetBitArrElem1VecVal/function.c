#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetBitArrElem1VecValFunction(const svOpenArrayHandle data, int index)
{
    svBitVecVal vec[1];
    svGetBitArrElem1VecVal(vec, data, index);

    return (unsigned char)(vec[0]);
}