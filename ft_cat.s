;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:41:58 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 16:50:24 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_cat

extern _ft_strlen
extern _ft_puts
extern _printf

section .bss
buffer resb 15

section .text

_ft_cat:
	mov rax, 0x2000003
	mov rbx, rdi
	lea rcx, [rel buffer]
	mov rdx, 15
	syscall
	push rcx
	call _ft_puts
	cmp rax, 1
	jb end
	pop rcx

end:
