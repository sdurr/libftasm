;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 09:59:52 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:17:17 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strlen

section .text

ft_strlen:
	cmp rdi, 0
	je end
	mov rbx, rdi
	mov rax, 0

loop:
	cmp byte[rbx], 0
	je end
	inc rbx
	inc rax
	jmp loop

end:
	ret
