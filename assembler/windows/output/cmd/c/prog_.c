#include <windows.h>

//char helloWorld[] = "hello World.\n";
char buf[200];

int main() {

    DWORD charsWritten;

    HANDLE stdOut = GetStdHandle(STD_OUTPUT_HANDLE);

 // Store current color
    CONSOLE_SCREEN_BUFFER_INFO info;
    GetConsoleScreenBufferInfo(stdOut, &info);
    DWORD currentColor = info.wAttributes;

//  wsprintfA(buf, "stdOut = %d\n", stdOut);
    wsprintfA(buf, "%04x\n", 1029);

    SetConsoleTextAttribute(stdOut,
        FOREGROUND_RED  |                                       FOREGROUND_INTENSITY |
    //  BACKGROUND_RED  | BACKGROUND_GREEN | BACKGROUND_BLUE  | BACKGROUND_INTENSITY
    //  BACKGROUND_RED  | BACKGROUND_GREEN |                    BACKGROUND_INTENSITY
        0
    );

    WriteConsole(stdOut, buf, sizeof(buf), &charsWritten, NULL);

 // Restore color
    SetConsoleTextAttribute(stdOut, currentColor);

}
