#include "../svdpi.h"

int putbitselbit(const svBitPackedArrRef data, int idx, svBit val) {
	svPutBitselBit(data, idx, val);
}

int getbitselbit(const svBitPackedArrRef data, int idx) {
	return svGetBitselBit(data, idx);
}
