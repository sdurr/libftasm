;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:30:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/21 18:52:59 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_tolower

_ft_tolower:
	push rbp
	mov rax, 0
	cmp rdi, 64
	jbe tolo
	cmp rdi, 90
	ja tolo
	mov rax, rdi
	add rax, 32

tolo:
	mov rax, rdi
	jmp end
end:
	pop rbp
	ret