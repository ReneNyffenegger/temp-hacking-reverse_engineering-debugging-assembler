**Comments**: in nasm with `;` in gas with `#`.

`.segment .text`: put text following this into .text segment.

`global _start` is an *assembler directive* (or pseudo opcode) which tells the assembler to make the label `_start` visible to the linker.

`_start`: the entry point for a linux program to which execution control is transferred when a program is started up.
<br>
The default location for `_start` is `/usr/lib/crt1.o`.
<br>
The `main` function of a c program is invoked via `_start`.
