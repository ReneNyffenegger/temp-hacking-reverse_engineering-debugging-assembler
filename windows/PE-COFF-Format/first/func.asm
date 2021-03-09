PUBLIC  func

EXTRN MessageBoxA:PROC
EXTRN message_text:QWORD
EXTRN message_title:QWORD
EXTRN buttons:DWORD

_TEXT SEGMENT

ret$ = 32

func  PROC
  sub rsp, 56                          ; 00000  48 83 ec 38             00000038H
  mov r9d, DWORD PTR buttons           ; 00004  44 8b 0d 00 00 00 00
  mov r8 , QWORD PTR message_title     ; 0000b	4c 8b 05 00 00 00 00
  mov rdx, QWORD PTR message_text      ; 00012  48 8b 15 00 00 00 00
  xor ecx, ecx                         ; 00019	33 c9
  call  MessageBoxA                    ; 0001b	e8 00 00 00 00
  mov DWORD PTR ret$[rsp], eax         ; 00020	89 44 24 20

  mov ecx, DWORD PTR ret$[rsp]
  call  twice

  add rsp, 56         ; 00000038H
  ret 0
func  ENDP

;q _TEXT  ENDS
;q ; Function compile flags: /Odtp
;q 
;q _TEXT  SEGMENT

x$ = 8

twice PROC
  ;
  ;   Function that returns its only int-argument doubled.
  ;
  ;   Note: unike func, twice is not declared 'PUBLIC'
  ;


; File C:\Users\Rene\github\temp\hacking-reverse-engineering-deubgging-assembler\windows\PE-COFF-Format\first\func.c
; Line 12
  mov DWORD PTR [rsp+8], ecx
; Line 13
  mov eax, DWORD PTR x$[rsp]
  shl eax, 1
; Line 14
  ret 0
twice ENDP

_TEXT ENDS
END
