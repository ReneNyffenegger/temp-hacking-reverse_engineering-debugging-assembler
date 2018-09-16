#include <windows.h>

HANDLE stdOut;

char  byte_orig;
char* addr_func;

void out(char const* text) {
   DWORD charsWritten;   
   WriteConsole(stdOut, text, lstrlen(text), &charsWritten, NULL);
}

#define switch_(s,r) out("    " #r ": "); switch(s->r)

#define case_out(c) case c: out(#c "\n"); break;

void print_PEXCEPTION_POINTERS(PEXCEPTION_POINTERS exPtr) {

  PEXCEPTION_RECORD exRec = exPtr -> ExceptionRecord;
  PCONTEXT          ctx   = exPtr -> ContextRecord;

  out("  ExceptionRecord\n");

  switch_(exRec,ExceptionCode) {
    case_out(EXCEPTION_ACCESS_VIOLATION)
    case_out(EXCEPTION_ARRAY_BOUNDS_EXCEEDED)
    case_out(EXCEPTION_BREAKPOINT)
    case_out(EXCEPTION_DATATYPE_MISALIGNMENT)
    case_out(EXCEPTION_FLT_DENORMAL_OPERAND)
    case_out(EXCEPTION_FLT_DIVIDE_BY_ZERO)
    case_out(EXCEPTION_FLT_INEXACT_RESULT)
    case_out(EXCEPTION_FLT_INVALID_OPERATION)
    case_out(EXCEPTION_FLT_OVERFLOW)
    case_out(EXCEPTION_FLT_STACK_CHECK)
    case_out(EXCEPTION_FLT_UNDERFLOW)
    case_out(EXCEPTION_ILLEGAL_INSTRUCTION)
    case_out(EXCEPTION_IN_PAGE_ERROR)
    case_out(EXCEPTION_INT_DIVIDE_BY_ZERO)
    case_out(EXCEPTION_INT_OVERFLOW)
    case_out(EXCEPTION_INVALID_DISPOSITION)
    case_out(EXCEPTION_NONCONTINUABLE_EXCEPTION)
    case_out(EXCEPTION_PRIV_INSTRUCTION)
    case_out(EXCEPTION_SINGLE_STEP)
    case_out(EXCEPTION_STACK_OVERFLOW)
    default: out("?\n");

  }

  switch_(exRec,ExceptionFlags) {
    case_out(EXCEPTION_NONCONTINUABLE);
    case_out(0);
    default: out("?\n");
  }

  char buf[123];
  wsprintf(buf, "    ExceptionAddress: %x\n", exRec->ExceptionAddress);
  out(buf);

  out("  ContextRecord\n");

  wsprintf(buf, "    Eip: %x\n", ctx->Eip);
  out(buf);

}


LONG WINAPI ExFilter(PEXCEPTION_POINTERS exPtr) {
    out("Filter\r\n");
   (exPtr->ContextRecord->Eip) += 3;
    print_PEXCEPTION_POINTERS(exPtr);
    return EXCEPTION_CONTINUE_SEARCH;
}

LONG WINAPI ExHandler(PEXCEPTION_POINTERS exPtr) {
    out("Exception handler\r\n");

    print_PEXCEPTION_POINTERS(exPtr);



// *addr_func = byte_orig;
//    char buf[123];
//    char byte_now = *addr_func;
//    wsprintf(buf, "Addr of func = %x, byte now =%c\n", addr_func, byte_now);
//    out(buf);

    return EXCEPTION_CONTINUE_SEARCH;
}

LONG WINAPI ContHandler(PEXCEPTION_POINTERS exPtr) {
    out("Exception continue handler\r\n");

    print_PEXCEPTION_POINTERS(exPtr);

    return EXCEPTION_CONTINUE_SEARCH;
}


int func() {
    return 42; 
}

int main() {
  stdOut = GetStdHandle(STD_OUTPUT_HANDLE);

  LPTOP_LEVEL_EXCEPTION_FILTER pOriginalFilter = SetUnhandledExceptionFilter(ExFilter);

  AddVectoredExceptionHandler(1, ExHandler);
  AddVectoredContinueHandler (1, ContHandler);

  char buf[123];

  addr_func = (char*) func;
  byte_orig = *addr_func;

  wsprintf(buf, "Addr of func = %x, byte=%c\n", addr_func, byte_orig);
  out(buf);

 *addr_func = 3;

  int i = func();

  out("finished\n");
}
