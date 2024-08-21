#include <stdio.h>


void func(signed long long p1, const char* p2) {
   printf("p1 = %lld, p2 = %s\n", p1, p2);
}

void a() { func(42, "forty-two"); }
void b() { func(99, "forty-two"); }
void c() { b(); }

int main() {

  a();
  b();
  c();

  printf("ending\n");

}
