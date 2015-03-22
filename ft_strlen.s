;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 09:59:52 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/20 13:48:46 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strlen

section .text

_ft_strlen:
	push rbp
	mov rax, 1
	mov rbp, rdi
	jmp loop

loop:
	cmp rbp, 0
	je end
	inc rax
	inc rbp
	push rbp
	jmp loop

end:
	pop rbp
	ret
