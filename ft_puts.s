;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 10:37:33 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 13:05:59 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_puts

extern _ft_strlen

section .data
not:
	.string_null	db "(null)"
	.newline	db 0x0a

section .text

_ft_puts:
	cmp rdi, 0
	je null
	call _ft_strlen
	mov rdx, rax
	syscall
	mov rax, 0x2000004
	mov rsi, rdi
	mov rdi, 1
	syscall
	jmp end

null:
	syscall
	mov rax, 0x2000004
	lea rsi , [rel not.string_null]
	mov rdx, 6
	mov rdi, 1
	syscall
	jmp end

end:
	syscall
	mov rdx, 1
	mov rax, 0x2000004
	lea rsi, [rel not.newline]
	syscall
	mov rax, 10
	ret