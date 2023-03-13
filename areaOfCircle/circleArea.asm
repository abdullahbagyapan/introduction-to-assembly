section .data
    radius dd 10
    area dq 0      
            
    SYS_EXIT equ 60
    EXIT_SUCCESS equ 0
    


section .text
global _start

_start:
    
    fild dword[radius]  ; loading INT  ->  st0 = radius
    fmul st0,st0        ; r^2
    
    fldpi               ; loading Pi  ->  st1 = pi
    fmulp               ; st0 = st0 * st1   AND     pop st1
    fstp qword[area]    ; store st0 in area AND     pop st0

        
last:
    mov rax,SYS_EXIT
    mov rdi,EXIT_SUCCESS
    syscall    
