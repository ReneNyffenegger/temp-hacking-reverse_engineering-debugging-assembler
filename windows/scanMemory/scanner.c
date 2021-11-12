//
//       https://stackoverflow.com/questions/32767725/reading-a-process-memory
//
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

void ReadMemoryInt(HANDLE processHandle, LPCVOID address) {
    char buf[8];

    SIZE_T NumberOfBytesToRead = sizeof(buf) -1;
    SIZE_T NumberOfBytesActuallyRead;

    BOOL err = ReadProcessMemory(processHandle, address, &buf, NumberOfBytesToRead, &NumberOfBytesActuallyRead);

    if (err || NumberOfBytesActuallyRead != NumberOfBytesToRead) {
       printf("number of byte!\n");
    }
    printf("%s\n", buf);
      /*an error occured*/ ;
//  return buf; 
}

int ScanProcess(/* DWORD pid */ HANDLE hProc) {
//  HANDLE hProc;
    SYSTEM_INFO si;
    MEMORY_BASIC_INFORMATION mbi;
    LPVOID minAddress, maxAddress;

    GetSystemInfo(&si);
    minAddress = si.lpMinimumApplicationAddress;
    maxAddress = si.lpMaximumApplicationAddress;

    printf("addr: 0x%" PRIx64 " .. 0x%" PRIx64 "\n", minAddress, maxAddress);


    if (!hProc) {
        printf("[-] OpenProcess() failed.\n");
        return 2;
    }

    while (minAddress < maxAddress) {

        printf("0x%p\n", minAddress);
        if(!VirtualQueryEx(hProc, minAddress, &mbi, sizeof(mbi))) {
           printf("[-] VirtualQueryEx() failed. %d\n", GetLastError());
         }

        if (mbi.State == MEM_COMMIT && mbi.Protect == PAGE_READWRITE) {
         //
         // When the scan would work i will read the memory and work with it.
         //
            printf("MEM_COMMIT\n");
        }

        minAddress = (LPBYTE)mbi.BaseAddress + mbi.RegionSize;
    }

    return 0;
}

int main(int argc, char* argv[]) {

  if (argc < 3) {
     return 1;
  }

  DWORD pid = atoi(argv[1]);

  printf("pid = %d\n", pid);

  HANDLE hProc = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pid);

  ScanProcess(hProc);

  ReadMemoryInt(hProc, _atoi64(argv[2]));
  ReadMemoryInt(hProc, _atoi64(argv[3]));
}
