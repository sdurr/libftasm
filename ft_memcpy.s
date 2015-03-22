;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 13:50:10 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 16:24:15 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_memcpy

section .text

ft_memcpy:
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
