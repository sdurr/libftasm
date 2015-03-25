;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:13 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/25 15:54:00 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcat

extern _ft_strlen
extern _ft_memcpy
extern _ft_bzero

section .text

_ft_strcat:
	push rdi
	call _ft_strlen
	mov r8, rax
	push rsi
	call _ft_strlen
	mov r10, rax
	pop rsi
	pop rdi

loop:
	cmp r10, 0
	je end
	mov [rdi + r8], rsi
	inc rsi
	inc r8
	dec r10
	jmp loop

end:
	mov byte[rdi + r8], 0
	mov rax, rdi
	ret
