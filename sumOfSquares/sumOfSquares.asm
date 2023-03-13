section .data
    SYS_EXIT equ 60
    EXIT_SUCCESS equ 0
    
    n     dd 10
    total dq 0
    
    

section .text
global _start

_start:
    
    
    mov rbx,1        ; from 1 to n 
    mov ecx,dword[n] ; iterator of loop
    
sumLoop:
    mov rax,rbx      
    mul rax          ; rax^2
    add qword[total],rax
    inc rbx
    loop sumLoop     ; dec ecx
    
    
last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall