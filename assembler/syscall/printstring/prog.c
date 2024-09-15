
void printstring(const char *str);
int main(int argc, char* argv[]) {

  for (int i=0; i<argc; i++) {
     printstring(argv[i]);
     printstring("\n");
  }
}
