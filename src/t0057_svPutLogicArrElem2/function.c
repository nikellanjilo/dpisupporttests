#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElem2Function(const svOpenArrayHandle data, int index, int index1, unsigned char value)
{
    svLogicVecVal vec[1];

    vec[0].aval = value;
    vec[0].bval = 0;

    svPutLogicArrElem2VecVal(data, vec, index, index1);
}