;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:30:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:17:30 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_tolower

ft_tolower:
	push rbp
	mov rax, rdi
	cmp rdi, 65
	jb tolo
	cmp rdi, 90
	ja tolo
	add rax, 32

tolo:
	cmp rax, 65
	je tmp
	cmp rax, 77
	je tmp
	cmp rax, 90
	je tmp
	jmp end

tmp:
	add rax, 32
	jmp end
end:
	pop rbp
	ret
