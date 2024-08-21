#include <stdio.h>

int func_X() {
   printf("in func_X\n");
}


int func_Y() {
   printf("in func_Y, calling func_X\n");
   func_X();
   printf("in func_Y, func_x returned\n");
}

int main() {

    func_X();
    func_Y();
    func_X();
}
