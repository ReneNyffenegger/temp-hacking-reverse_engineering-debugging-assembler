int func();
void ExitProcess(unsigned int);

long long int entry(void* PEB) {
  
     int ret = func();
     ExitProcess(ret);

}
