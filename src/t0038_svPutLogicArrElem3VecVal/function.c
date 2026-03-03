#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElem3VecValFunction(const svOpenArrayHandle data, int index, int index2, int index3, const svLogicVecVal* value)
{
    svPutLogicArrElem3VecVal(data, value, index, index2, index3);
}