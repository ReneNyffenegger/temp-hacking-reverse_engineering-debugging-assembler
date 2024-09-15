void writestring(char*);

int main(int argc, char* argv[]) {

    for (int i=0; i<argc; i++) {
       writestring(argv[i]);
       writestring("\n");
    }

//  size_t len = 0;
//  while (argv[0][len] != '\0') {  // find length of string
//      len++;
//  }
//  syscall(SYS_write, STDOUT_FILENO, argv[0], len); 

   return 42;
}
