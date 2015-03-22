;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 11:35:29 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 16:18:17 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_memset

section .text

ft_memset:
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
