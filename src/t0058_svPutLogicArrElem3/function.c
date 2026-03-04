#include <stdio.h>
#include "..\svdpi.h"

void svPutLogicArrElem3Function(const svOpenArrayHandle data, int index, int index1, int index2, unsigned char value)
{
    svLogicVecVal vec[1];

    vec[0].aval = value;
    vec[0].bval = 0;

    svPutLogicArrElem3VecVal(data, vec, index, index1, index2);
}