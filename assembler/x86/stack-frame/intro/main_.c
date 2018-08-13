#include <stdio.h>


int func(int arg_one, int arg_two, int arg_three, int arg_four) {

  unsigned long long l = 256;
  unsigned long long m = 256;
  l *= m;
  l *= m;
  l *= m;
  l *= m;
  l *= m;
  l *= m;

  printf("%s, %s = %016x\n", "foo", "bar", l);

  int var_one   = 0x11;
  int var_two   = 0x22;
  int var_three = 0x33;
  int var_four  = 0x44;

  return arg_one   * var_one   +
         arg_two   * var_two   +
         arg_three * var_three +
         arg_four  * var_four;

}


int main() {

  func(1, 2, 3, 4);

}
