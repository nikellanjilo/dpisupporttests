#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElem2VecValFunction(const svOpenArrayHandle data, int index, int index2, const svLogicVecVal* value)
{
    svPutLogicArrElem2VecVal(data, value, index, index2);
}