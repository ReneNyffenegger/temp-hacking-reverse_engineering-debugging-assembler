


int func_1(int param_1, int param_2) {
  int local_1;

  local_1 = param_1 - param_2;

  return local_1;
}

int func_2(int param_1, int param_2, int param_3) {

  int local_1;
  int local_2;

  local_1 = func_1(param_1, param_2);
  local_2 = local_1 + param_3;
  
  return local_2;
}

int go() {

  int f;

  f = func_2(111, 222, 333);

  return f;

}
