section .text
global _start



_start:

    ; print section
    mov rdi, 0x1
    mov rsi, hello
    mov rdx, helloLen
    mov rax, 0x1
    syscall

    
    ; return 0 section
    xor rdi, rdi
    mov rax, 0x3c
    syscall
   
    

section .data
    hello db "hello world", 0xa ; initialize variable
    helloLen equ $-hello        ; assign lenght of value