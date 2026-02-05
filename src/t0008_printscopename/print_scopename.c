#include "svdpi.h"
#include <stdint.h>
#include <string.h>

const char* print_scopename() {
    static char buf[256];
    svScope sc = svGetScope();
    const char* name = svGetNameFromScope(sc);
    snprintf(buf, sizeof(buf), "DPI scope: %s", name);
    return buf;
}
