section .data ; initialize variable section

    ;constant system code
    EXIT_SUCCESS    equ 0
    SYS_EXIT        equ 60
    
    
    ;our variables
    evenMessage db "it is even number"
    lenEvenMess equ $ - evenMessage
    
    oddMessage db "it is odd number"
    lenOddMess equ $ - oddMessage
    
    
    
section .text ; code start this section
global _start
   
_start:
    mov ax,10  ; ax = 10  -> our number
    
    and ax,1   ; ax AND 1 -> logical operation
    jz even    ; jump to even if ax equal zero 
    
    ;if not equal jump odd
    jmp odd
    
    

even:
   mov   eax, 4             ;system call number (sys_write)
   mov   ebx, 1             ;file descriptor (stdout)
   mov   ecx, evenMessage   ;message to wriconstantte
   mov   edx, lenEvenMess   ;length of message
   int   0x80               ;call kernel
   jmp outprogram

odd:
   mov   eax, 4             ;system call number (sys_write)
   mov   ebx, 1             ;file descriptor (stdout)
   mov   ecx, oddMessage    ;message to write
   mov   edx, lenOddMess    ;length of message
   int   0x80               ;call kernel
   jmp outprogram



outprogram:
    mov rax,SYS_EXIT        
    mov rdi,EXIT_SUCCESS
    syscall    


