PUBLIC  message_text
PUBLIC  message_title
PUBLIC  buttons

_DATA SEGMENT

message_text DQ XXX_message_text            ; 0x00  - 0x07

                      ;89abcdef0   1
XXX_message_text  DB  'Is it 42?', 00H      ; 0x08  - 0x11

  ORG $+6                                   ; 0x12  - 0x17

message_title DQ XXX_message_title          ; 0x18  - 0x1f

                      ;0123456789ab   c
XXX_message_title DB  'Hello World.', 00H   ; 0x20  - 0x2c

  ORG $+3                                   ; 0x2d  - 0x2f

;
;   DD: Allocate and initialize 4 bytes, here with
;   the value 0x24 (= MB_YESNO (0x04) + MB_ICONQUESTION (0x20)
;   for MessageBox)
;
buttons DD  24h                             ; 0x30  - 0x33

_DATA ENDS

END
