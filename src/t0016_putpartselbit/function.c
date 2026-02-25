#include "..\svdpi.h"

void putpartselbit(const svBitPackedArrRef dst, const svBitVecVal src, int idx, int width) {
	svPutPartselBit(dst, src, idx, width);
}

