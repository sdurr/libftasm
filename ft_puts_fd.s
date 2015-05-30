;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 10:37:33 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/26 10:18:35 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_puts_fd

extern _ft_strlen

section .data
string_null:	db "(null)", 10

section .text

_ft_puts_fd:
	cmp rdi, 0
	je null
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x2000004
	mov r8, rsi
	mov rsi, rdi
	mov rdi, r8
	syscall
	jmp end

null:
	mov rdx, 6
	mov rax, 0x2000004
	lea rsi, [rel string_null]
	mov rdi, r8
	syscall
	jmp end

end:
	mov rdx, 1
	mov rax, 0x2000004
	lea rsi, [rel string_null + 6]
	syscall
	mov rax, rdi
	ret
