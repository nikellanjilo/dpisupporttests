#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElemVecValFunction(const svOpenArrayHandle data, int index, const svLogicVecVal* value)
{
    svPutLogicArrElemVecVal(data, value, index);
}