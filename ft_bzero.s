;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 09:58:44 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 10:22:56 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_bzero

section .text

_ft_bzero:
	cmp rdi, 0
	je end
	mov rbx, rdi
	mov rax, rsi

loop:
	cmp rax, 0
	je end
	mov byte[rbx], 0
	inc rbx
	dec rax
	jmp loop

end:
	ret