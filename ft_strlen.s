;                                                         :::      ::::::::    ;
;    _ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 09:59:52 by sdurr             #+#    #+#              ;
;    Updated: 2015/06/01 16:09:57 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strlen

section .text

_ft_strlen:
	push rdi
	xor rcx, rcx
	not rcx
	xor al, al
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret