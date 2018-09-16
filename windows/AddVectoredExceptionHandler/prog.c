#include <windows.h>

#ifdef AS_DLL
  #define func_declspec     __declspec(dllexport)
  #define call_convention   __stdcall
  #define out(txt) MessageBox(0, #txt, 0, 0);
#else
  #include <stdio.h>
  #define func_declspec
  #define call_convention
  #define out(txt) printf(#txt "\r\n");
#endif

int* p;
int  d = 100;

LONG WINAPI MyVectorContinueHandler(PEXCEPTION_POINTERS exPtr) {
    out("in my vectored continue handler\r\n");
    return EXCEPTION_CONTINUE_SEARCH;
}

LONG WINAPI MyVectorExceptionFilter(PEXCEPTION_POINTERS exPtr) {
    out("in my vectored exception filter\r\n");

 // This is a attempt to fix the error condition.
 // It does not work, however...
    p = &d;

    return EXCEPTION_CONTINUE_SEARCH;
}

LONG WINAPI MyUnhandledExceptionFilter(PEXCEPTION_POINTERS exPtr) {
    out("in my unhandled excepiton filter\r\n");
    return EXCEPTION_CONTINUE_SEARCH;
}

LONG MyExceptFilter() {
  out("in my filter\r\n");
  return EXCEPTION_CONTINUE_SEARCH;
}

//int _tmain(int argc, _TCHAR* argv[]) {
#ifdef AS_DLL
func_declspec int call_convention init()
#else
int main(int argc, char* argv[])
#endif
{
  LPTOP_LEVEL_EXCEPTION_FILTER pOriginalFilter = SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
 
  AddVectoredExceptionHandler(1, MyVectorExceptionFilter);
  AddVectoredContinueHandler (1, MyVectorContinueHandler);

// __try
// {
  //trigger an access violation here
     p =  0;
    *p = 10;
// }
// __except(MyExceptFilter())
// {
//  out("in my handler\r\n");
//  out("exception code: 0x%x\r\n",GetExceptionCode());
// } 
}
