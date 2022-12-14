%include "macros.asm"
	
section .data
   STDIN equ 0
   STDOUT equ 1
   SYS_READ equ 3
   SYS_WRITE equ 4
   LINE_SHIFT equ 10
   buf_size equ 4096

section .bss
   input_buffer resb buf_size


section .text
global _start
_start:

	call reverseInputLines

	mov ebx, 0
	mov eax, 0x01
	int 0x80

%include "readLine.asm"

%include "reverseInputLines.asm"
