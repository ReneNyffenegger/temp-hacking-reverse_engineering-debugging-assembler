.intel_syntax noprefix

.section .data

caption: .asciz "GAS Greeting"
message: .asciz "Hello World!"
.align 4,0

.section .text
.balign 16
.globl _mainCRTStartup
_mainCRTStartup:        # or _WinMainCRTStartup ???

mov eax, 42

# push 3                 # style
# push offset caption    # caption
