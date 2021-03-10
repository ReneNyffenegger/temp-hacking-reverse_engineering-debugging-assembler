// #include<windows.h>

extern char *message_text;
extern char *message_title;
extern int  buttons;

int MessageBoxA(
  int            hWnd,
  char*          lpText,
  char*          lpCaption,
  unsigned int   uType
);

int __cdecl wsprintfA(
  LPSTR  ,
  LPCSTR ,
  ...    
);

void* GetStdHandle(signed int);

int WriteConsoleA(void*, char*, int, int*, void*);

static void printReturnValue(signed int ret) {

   char buf[200];

   void* stdOut = GetStdHandle(-11);  // -11 = STD_OUTPUT_HANDLE 
// HANDLE stdOut = GetStdHandle(STD_OUTPUT_HANDLE);  // -11 = STD_OUTPUT_HANDLE 

   wsprintfA(buf, "MessageBox with title %s and text %s returned %d\n", message_title, message_text, ret);
   signed int charsWritten;
   WriteConsoleA(stdOut, buf, lstrlen(buf), &charsWritten, 0);
// MessageBox(0, buf, "bar", 0);

}

int func() {
   char buf[200];

   signed int ret;
   ret = MessageBoxA(0, message_text, message_title, buttons);
  
   printReturnValue(ret);

   return ret;
}
