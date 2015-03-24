;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:46 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/24 16:02:41 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy
extern _ft_bzero
extern _ft_puts

section .text

_ft_strdup:
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	inc rdi
	push rdi
	call _malloc
	pop rdi
	mov rdi, rax
	pop rcx
	pop rsi
	push rdi
	push rsi
	push rcx
	call _ft_memcpy
	pop rdi
	pop rcx
	pop rsi
	ret

end:
	mov rax, 0
	ret
