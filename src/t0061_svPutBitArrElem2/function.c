#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem2Function(const svOpenArrayHandle data, int index, int index2, svBitVecVal value)
{
    svPutBitArrElem2(data, value, index, index2);
}