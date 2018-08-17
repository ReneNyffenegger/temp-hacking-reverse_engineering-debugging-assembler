#include <stdio.h>

//
//   Note: »bbs« symbols need not be in the same order in memory as
//          they appear in the c source file.
//
char hundred_bytes[100];
int  an_int;
char a_char;
int  another_int;
char another_char;

int main() {
    printf("a_hundred_bytes: 0x%x\n"      , (void*)  hundred_bytes);
    printf("an_int         : 0x%x (%+4d)\n", (void*) &an_int       ,  ((void*) &an_int      ) - ((void*)  hundred_bytes));
    printf("a_char         : 0x%x (%+4d)\n", (void*) &a_char       ,  ((void*) &a_char      ) - ((void*) &an_int       ));
    printf("another_int    : 0x%x (%+4d)\n", (void*) &another_int  ,  ((void*) &another_int ) - ((void*) &a_char       ));
    printf("another_char   : 0x%x (%+4d)\n", (void*) &another_char ,  ((void*) &another_char) - ((void*) &another_int  ));

    return 0;
}
