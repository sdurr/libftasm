global ft_strdup

extern malloc
extern ft_strlen
extern ft_memcpy

ft_strdup:
	push rbp
	push rdi
	call ft_strlen
	push rax
	pop rdi
	call malloc
	mov rbp, rdi
	pop rax

end:
	pop rbp
	ret
