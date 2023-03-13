section .data
	array dd 1000,1001,1002,1003,1004
	len dd 5
	sum dd 0

section .data
	SYS_EXIT     equ 60
	EXIT_SUCCESS equ 0



section .text
global _start

_start:
	mov ecx,dword[len] ;loop counter -> ecx--
	mov rsi,0          ;loop index iterator

	sumLoop:
	mov eax,dword[array+(rsi*4)]
	add dword[sum],eax
	inc rsi
	loop sumLoop

last:
	mov rax,SYS_EXIT
	mov rdi,EXIT_SUCCESS
	syscall
