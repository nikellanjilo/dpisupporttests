#include <stdio.h>
#include "..\svdpi.h"

const char* getArrayElemPtr2Function(const svOpenArrayHandle arr, int index, int index2) {
	unsigned char* ptr = (unsigned char*) svGetArrElemPtr2(arr, index, index2);
	if (ptr == NULL)
	{
		return "ptr is null";
	}
	char tmp[128];
	snprintf(tmp, sizeof(tmp), "Array index = 0x%02X\n", *ptr);
	return tmp;
}

