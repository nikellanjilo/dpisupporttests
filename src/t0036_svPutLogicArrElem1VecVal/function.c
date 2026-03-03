#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElem1VecValFunction(const svOpenArrayHandle data, int index, const svLogicVecVal* value)
{
    svPutLogicArrElem1VecVal(data, value, index);
}