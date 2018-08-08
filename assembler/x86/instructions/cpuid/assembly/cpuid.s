# The sysenter/syscall instruction is supported on the Pentium and on later
# versions of the CPU and is called "Fast Transition to System Call Entry
# Point". Bit 11 (SEP) of the EDX register from the result of a CPUID
# instruction tells if the the processor supports sysenter/syscall
# instructions.


.intel_syntax noprefix

.section .text
    .global _WinMain
_WinMain:

xor edx,edx
cpuid

ret
