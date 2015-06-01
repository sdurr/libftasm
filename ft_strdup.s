;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:46 by sdurr             #+#    #+#              ;
;    Updated: 2015/06/01 14:36:42 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy
extern _ft_bzero
extern _ft_puts

section .text
	;; lens- s - &malloc-s
_ft_strdup:
	push rdi					;s sur la stack
	call _ft_strlen				;rax = len s
	push rax					;len s stack
	mov rcx, rax				;rdi = len stack
	inc rdi						;rdi = len stack + i
	push rdi					;len stack
	call _malloc
	pop rdi						;enleve len stack
	mov rdi, rax				;rdi = adresse malloc
	pop rcx						;rcx = len s
	pop rsi						;rsi devient s
	push rdi
	push rsi
	push rcx
	call _ft_memcpy
	pop rcx						;rdi = len
	pop rsi
	pop rdi
	ret

end:
	mov rax, 0
	ret
