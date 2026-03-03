#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem1VecValFunction(const svOpenArrayHandle data, int index)
{
	svLogicVecVal value[1];
	value[0].aval = 0;
	value[0].bval = 0;
    svGetLogicArrElem1VecVal(value, data, index);
	return (unsigned char)(value[0].aval & 0xFF);
}