;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 09:58:44 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:14:33 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_bzero

section .text

ft_bzero:
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
