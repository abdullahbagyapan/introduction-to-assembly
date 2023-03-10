section .bss ; uninitialize variable section
     byteResult     resb 1


section .data ; initialize variable section

    ;constant system code
    EXIT_SUCCESS    equ 0
    SYS_EXIT        equ 60
    
    ;our variables
    byteVariable1   db  17
    byteVariable2   db  23


section .text ; code start this section
global _start

_start:
    mov al,byte[byteVariable1] ; al = 17
    add al,byte[byteVariable2] ; al = al + 23
    mov byte[byteResult],al    ; result = al
    
    
last: ; to terminate program successfully
    mov rax,SYS_EXIT
    mov rdi,EXIT_SUCCESS
    syscall    
