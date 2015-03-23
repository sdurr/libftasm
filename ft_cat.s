;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:41:58 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 10:53:04 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_cat

extern _ft_strlen
extern _ft_puts
extern _printf

section .data
buffer:  times 20 db 0
section .text

_ft_cat:
	mov rax, 0x2000003
	mov rbx, rdi
	lea rcx, [rel buffer]
	mov rdx, 18
	syscall
	push rcx
	cmp rax, 1
	jb end
	pop rcx

end:
