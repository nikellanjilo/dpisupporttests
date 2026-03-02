#include <stdio.h>
#include "..\svdpi.h"

const char* getArrayElemPtr3Function(const svOpenArrayHandle arr, int index, int index2, int index3) {
	unsigned char* ptr = (unsigned char*) svGetArrElemPtr3(arr, index, index2, index3);
	if (ptr == NULL)
	{
		return "ptr is null";
	}
	char tmp[128];
	snprintf(tmp, sizeof(tmp), "Array index = 0x%02X\n", *ptr);
	return tmp;
}

