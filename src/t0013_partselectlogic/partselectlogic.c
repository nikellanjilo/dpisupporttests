//#include <stdlib.h>
#include "../svdpi.h"

svLogicVec32 partselectlogic2(const svLogicPackedArrRef data, int idx, int width) {
	svLogicVec32 tmp[1];
	svGetPartSelectLogic(tmp, data, idx, width);
	return tmp[0];
}
