#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElemVecValFunction(const svOpenArrayHandle data, int index, unsigned char value)
{
    svBitVecVal vec[1];
    vec[0] = value;

    svPutBitArrElemVecVal(data, vec, index);
}