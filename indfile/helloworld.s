section .note.openbsd.ident
	align 2
	dd 8, 4, 1
	db 'OpenBSD',0
	dd 0
	align 2

section .data

	msg  db      "Hello world!", 10
	len  equ $-msg

;syscalls
	%define SYS_exit        1
	%define SYS_write       4

section .text

global  _start
_start:

	mov  rax, SYS_write
	mov rdi, 1 ;stdout
	mov rsi, msg
	mov rdx, len

	syscall

	mov rax, SYS_exit
	xor   rdi, rdi

	syscall
