;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 09:58:44 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/26 13:57:44 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_bzero

section .text

_ft_bzero:
	mov rax, 0

loop:
	cmp rsi, 0
	je end
	mov [rdi + rax], byte 0
	inc rax
	dec rsi
	jmp loop

end:
	mov rax, rdi
	ret
