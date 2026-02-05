#include "svdpi.h"
#include <stdio.h>

const char* print_callerinfo() {
	static char buf[512];
    const char *file;
    int line;

    if (svGetCallerInfo(&file, &line)) {
        snprintf(buf, sizeof(buf), "Called from %s:%d (scope %s)", file, line, "emxsimulator");
    } else {
        snprintf(buf, sizeof(buf), "svGetCallerInfo failed");
    }
    return buf;
}
