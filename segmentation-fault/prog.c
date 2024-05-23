#include <string.h>


void a() {
   memset((char *)0x0, 1, 100);
}
void b() { a(); }
void c() { b(); }
void d() { c(); }

int main() {
   d();
}

