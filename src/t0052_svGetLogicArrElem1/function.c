#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem1Function(const svOpenArrayHandle data, int index)
{
	svLogicVecVal vec[1];
    vec[0].aval = 0;
    vec[0].bval = 0;
    svGetLogicArrElem1VecVal(vec, data, index);
    return (unsigned char)(vec[0].aval & 0xFF);
}