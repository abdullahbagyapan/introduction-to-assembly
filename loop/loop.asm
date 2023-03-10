section .data
    sumOfNumbers db 0
    
    EXIT_SUCCESS    equ 0
    SYS_EXIT        equ 60
    
    
   
section .text
global _start

_start:
    mov al,0 ; sumOfNumbers = 0
    mov ah,0 ; iterator = 0
    
    
    startPoint:
    
    cmp al,10 ; if al >= 10 go to endPoint 
    jge endPoint
    
    add ah,al ; ah += al
    inc al    ; al++
    
    
    endPoint:
    mov byte[sumOfNumbers],al ; sumOfNumbers = al
    
last:
    mov rax,SYS_EXIT
    mov rdi,EXIT_SUCCESS
    syscall    
