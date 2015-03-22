global ft_cat

extern ft_strlen
extern ft_puts
	
section .data
buf:	
	.buf_size db 600

section .text
	
ft_cat:
	syscall
	mov rax, 0x2000003
	mov rsi, rdi
	lea rdi, [rel buf.buf_size]
	syscall
	push rdi
	call ft_puts
	rep rcx
	
end:
	ret
