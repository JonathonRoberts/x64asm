global add

section .data

section .text

add:
	mov rax, rdi ; argument 1
	add rax, rsi ; argument 2
	ret
