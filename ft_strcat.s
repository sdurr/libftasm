global ft_strcat

extern ft_strlen
	
section .text
	
ft_strcat:
	push rdi
	call ft_strlen
	cld
	rep movsb

end:
	pop rax
	ret
