#include <stdio.h>
#include "..\svdpi.h"

void svPutBitArrElem1Function(const svOpenArrayHandle data, int index, svBitVecVal value)
{
    svPutBitArrElem1(data, value, index);
}