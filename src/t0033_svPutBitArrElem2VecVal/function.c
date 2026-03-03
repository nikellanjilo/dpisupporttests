#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem2VecValFunction(const svOpenArrayHandle data, int index, int index2, unsigned char value)
{
    svBitVecVal vec[1];
    vec[0] = value;

    svPutBitArrElem2VecVal(data, vec, index, index2);
}