int func();
void ExitProcess(unsigned int);

void entry(void* PEB) {
  
     int ret = func();
     ExitProcess(ret);
}
