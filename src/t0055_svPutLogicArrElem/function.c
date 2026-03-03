#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElemFunction(const svOpenArrayHandle data, int index, unsigned char value)
{
    svLogicVecVal vec[1];

    vec[0].aval = value;
    vec[0].bval = 0;

    svPutLogicArrElemVecVal(data, vec, index);
}