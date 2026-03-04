#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElemFunction(const svOpenArrayHandle data, int index, svBitVecVal value)
{
    svPutBitArrElem(data, value, index);
}