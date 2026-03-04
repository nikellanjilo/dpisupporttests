#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem3Function(const svOpenArrayHandle data, int index, int index2, int index3, svBitVecVal value)
{
    svPutBitArrElem3(data, value, index, index2, index3);
}