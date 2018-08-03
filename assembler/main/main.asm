

segment .text
global   main     ; main must be visible to the linker.
                  ;
main:             ; Entry point for main.
                  ;
  push rbp        ; Set up stack frame.
  mov  rbp, rsp   ; Let rbp point to stack frame.
                  ;
  sub  rsp,  16   ; Create space for local variables.
                  ; Keep rsp on 16 byte boundary.
;                 ;
; insert program  ;
; here            ;
;                 ;
                  ;
  mov  eax,  42   ; Return value.
                  ;
  leave           ; Clean up stack frame. 
  ret             ;

