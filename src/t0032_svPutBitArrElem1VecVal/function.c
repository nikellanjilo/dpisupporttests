#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem1VecValFunction(const svOpenArrayHandle data, int index, unsigned char value)
{
    svBitVecVal vec[1];
    vec[0] = value;

    svPutBitArrElem1VecVal(data, vec, index);
}