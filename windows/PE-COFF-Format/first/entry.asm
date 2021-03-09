PUBLIC  entry

EXTRN func:PROC
EXTRN ExitProcess:PROC

_TEXT SEGMENT

ret$ = 32
PEB$ = 64

entry PROC


  mov QWORD PTR [rsp+8], rcx            ; 00000 48 89 4c 24 08
  sub rsp, 56                           ; 00005 48 83 ec 38       ; 00000038H
  call  func                            ; 00009 e8 00 00 00 00    ; Note the place-holder for the destination address.
  mov DWORD PTR ret$[rsp], eax          ; 0000e 89 44 24 20
  mov ecx, DWORD PTR ret$[rsp]          ; 00012 8b 4c 24 20
  call  ExitProcess                     ; 00016 e8 00 00 00 00    ; Note again the place-holder
  add rsp, 56                           ; 0001b 48 83 c4 38
  ret 0                                 ; 0001f c3     ret   0

entry ENDP

_TEXT ENDS

END
