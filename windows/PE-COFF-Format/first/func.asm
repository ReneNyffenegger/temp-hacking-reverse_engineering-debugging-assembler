PUBLIC  func


;
;  WinAPI functions
;
EXTRN MessageBoxA:PROC
EXTRN wsprintfA:PROC
EXTRN GetStdHandle:PROC
EXTRN WriteConsoleA:PROC
EXTRN lstrlen:PROC

;
;  Defined in const.asm
;
EXTRN message_text:QWORD
EXTRN message_title:QWORD
EXTRN buttons:DWORD


_DATA SEGMENT

  printf_format   DB  'MessageBox with title %s and text %s returned %d', 0aH, 00H

_DATA ENDS

_TEXT SEGMENT

ret$ = 32

func  PROC

    sub rsp, 56                          ; 00000  48 83 ec 38             00000038H

 ;
 ;  Prepare parameters for
 ;  MessageBoxA() …
 ;
 
    mov r9d, DWORD PTR buttons           ; 00004  44 8b 0d 00 00 00 00
    mov r8 , QWORD PTR message_title     ; 0000b  4c 8b 05 00 00 00 00
    mov rdx, QWORD PTR message_text      ; 00012  48 8b 15 00 00 00 00
    xor ecx, ecx                         ; 00019  33 c9
 ;
 ;  … and call MessageBoxA()
 ;
    call  MessageBoxA                    ; 0001b  e8 00 00 00 00

 ;
 ;  Save returned value on stack:
 ;
    mov DWORD PTR ret$[rsp], eax         ; 00020  89 44 24 20

  ;
  ; Prepare paramter for
  ;   printReturnValue() …
  ;
    mov ecx, DWORD PTR ret$[rsp]         ; 00024  8b 4c 24 20
    call  printReturnValue               ; 00028  e8 00 00 00 00

    mov   eax, DWORD PTR ret$[rsp]       ; 0002d  8b 44 24 20  

    add rsp, 56                          ; 00031  48 83 c4 38            ; 00000038H

    ret 0                                ; 00035  c3
   
func  ENDP

_TEXT ENDS

; --------------------------------------------

_TEXT SEGMENT

charsWritten$ = 48
stdOut = 56
buf     = 64
ret$ = 288

printReturnValue PROC


; 24   : static void printReturnValue(signed int ret) {

  mov   DWORD PTR [rsp+8], ecx ; 00000 89 4c 24 08  
  sub   rsp, 280 ; 00004 48 81 ec 18 01 00 00    ; 00000118H

; 25   : 
; 26   :    char buf[200];
; 27   : 
; 28   :    void* stdOut = GetStdHandle(-11);  // -11 = STD_OUTPUT_HANDLE 

  mov   ecx, -11     ;  0000b b9 f5 ff ff ff
  call  GetStdHandle ;  00010 e8 00 00 00 00
  mov   QWORD PTR [rsp + stdOut], rax ; 00015 48 89 44 24 38

; 29   : // HANDLE stdOut = GetStdHandle(STD_OUTPUT_HANDLE);  // -11 = STD_OUTPUT_HANDLE 
; 30   : 
; 31   :    wsprintfA(buf, "MessageBox with title %s and text %s returned %d\n", message_title, message_text, ret);

  mov   eax, DWORD PTR ret$[rsp] ; 0001a 8b 84 24 20 01 00 00
  mov   DWORD PTR [rsp+32], eax     ; 00021 89 44 24 20
  mov   r9, QWORD PTR message_text    ;  00025 4c 8b 0d 00 00 00 00    
  mov   r8, QWORD PTR message_title   ;  0002c 4c 8b 05 00 00 00 00    
  lea   rdx, printf_format      ;  00033 48 8d 15 00 00 00 00    
  lea   rcx, QWORD PTR [rsp+buf]      ;  0003a 48 8d 4c 24 40          
  call  wsprintfA                     ;  0003f e8 00 00 00 00          

; 32   :    signed int charsWritten;
; 33   :    WriteConsoleA(stdOut, buf, lstrlen(buf), &charsWritten, 0);

  lea   rcx, QWORD PTR [rsp+buf]             ;  00044 48 8d 4c 24 40            
  call  lstrlen                              ;  00049 e8 00 00 00 00            
  mov   QWORD PTR [rsp+32], 0                ;  0004e 48 c7 44 24 20 00 00 00 00
  lea   r9, QWORD PTR charsWritten$[rsp]     ;  00057 4c 8d 4c 24 30            
  mov   r8d, eax                             ;  0005c 44 8b c0                  
  lea   rdx, QWORD PTR [rsp+buf   ]          ;  0005f 48 8d 54 24 40            
  mov   rcx, QWORD PTR [rsp+stdOut]          ;  00064 48 8b 4c 24 38            
  call  WriteConsoleA                        ;  00069 e8 00 00 00 00            

; 34   : // MessageBox(0, buf, "bar", 0);
; 35   : 
; 36   : }

    add   rsp, 280                           ; 0006e 48 81 c4 18 01 00 00      ; 00000118H
    ret   0                                  ; 00075 c3


printReturnValue ENDP


_TEXT ENDS
END
