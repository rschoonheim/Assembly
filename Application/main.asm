section	.text
   global _start

; The main function
; of the program.
_start:
      jmp _helloWorld

      _resume:
      mov	eax,1
      int	0x80

; Prints "Hello, world!"
; to the standard output.
_helloWorld:
   mov edx, len
   mov ecx, msg

   mov ebx, 1
   mov eax, 4
   int 0x80

   jmp _resume


section .data
    msg db 'Hello, world!', 0xa
    len equ $ - msg