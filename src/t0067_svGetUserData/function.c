#include <stdio.h>
#include "..\svdpi.h"

typedef struct {
    int counter;
} my_data;
static int user_key;
void init_data(void)
{
    svScope scope = svGetScope();

    my_data *data = (my_data *)malloc(sizeof(my_data));
    if (!data) {
        fprintf(stderr, "malloc failed\n");
        return;
    }
    data->counter = 0;
    if (svPutUserData(scope, &user_key, data) != 0) {
        fprintf(stderr, "svPutUserData failed\n");
    }
}
int get_counter(void)
{
    svScope scope = svGetScope();

    my_data *data = (my_data *)svGetUserData(scope, &user_key);
    if (!data) {
        fprintf(stderr, "svGetUserData returned NULL\n");
        return -1;
    }
    data->counter++;
    return data->counter;
}