#include <stdio.h>
#include "..\svdpi.h"

typedef void (*sv_print_t)(void);

void c_call_sv(void)
{
    // если C вызвали из SV, текущий scope уже валиден:
    svScope saved = svGetScope();

    // на всякий случай можно явно поставить текущий:
    svSetScope(saved);

    sv_print_t sv_print = (sv_print_t)svGetExportedSymbol("sv_print");
    if (!sv_print) {
        printf("C: can't find exported symbol sv_print\n");
        return;
    }

    sv_print();

    // восстановить scope (хорошая привычка)
    svSetScope(saved);
}