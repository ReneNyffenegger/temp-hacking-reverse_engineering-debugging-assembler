extern char *message_text;
extern char *message_title;
extern int  buttons;

int MessageBoxA(
  int   hWnd,
  char* lpText,
  char* lpCaption,
  unsigned int   uType
);

static int twice(int x) {
  return 2*x;
}

int func() {

   int ret = MessageBoxA(0, message_text, message_title, buttons);
   return twice(ret);

}
