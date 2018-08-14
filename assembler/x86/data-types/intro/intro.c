#include <stdio.h>

#define size_of_datatype(dt) printf("%-15s: %d\n", #dt, sizeof(dt))

int main() {

  size_of_datatype(          char);
  size_of_datatype(  signed  char);
  size_of_datatype(unsigned  char);

  size_of_datatype(         short);
  size_of_datatype(  signed short);
  size_of_datatype(unsigned short);

  size_of_datatype(           int);
  size_of_datatype(  signed   int);

  size_of_datatype(          long);
  size_of_datatype(  signed  long);
  size_of_datatype(    long  long);

  size_of_datatype(         float);
  size_of_datatype(        double);
  size_of_datatype(  long  double);

  size_of_datatype(         void*);

//size_of_datatype(          enum);

}
