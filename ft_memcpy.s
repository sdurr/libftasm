;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 13:50:10 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:43:38 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memcpy

section .text

_ft_memcpy:
	push rdi
	cmp rdi, 0
	je end
	mov rcx, rdx
	mov rax, rsi
	cld
	rep movsb

end:
	pop rax
	ret
