#include <stdio.h>
#include "..\svdpi.h"

int svGet64BitsFunction(const svBitPackedArrRef data, int idx)
{  
	return svGet64Bits(data, idx);
}