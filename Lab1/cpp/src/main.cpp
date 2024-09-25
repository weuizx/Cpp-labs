#include "html.h"
#include "io.h"
#include "dialog.h"

const char *msgs[] = {"0. Quit", "1. Array", "2. Vector"};
const int NMsgs = sizeof(msgs) / sizeof(msgs[0]);
void (*fptr[])() = {NULL, dialogArrays, dialogVectors};

int main()
{

    int rc;
    while (rc = dialog(msgs, NMsgs))
        fptr[rc]();
    printf("That's all. Bye!\n");

    return 0;
}