#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem3VecValFunction(const svOpenArrayHandle data, int index, int index2, int index3, unsigned char value)
{
    svBitVecVal vec[1];
    vec[0] = value;

    svPutBitArrElem3VecVal(data, vec, index, index2, index3);
}