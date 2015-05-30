;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 11:35:29 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:43:50 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memset

section .text

_ft_memset:
	push rdi
	cmp rdi, 0
	je end
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb

end:
	pop rax
	ret
