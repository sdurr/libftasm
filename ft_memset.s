;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 11:35:29 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 13:33:34 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memset

section .text

_ft_memset:
	push rdi
	cmp rdi, 0
	je end
	mov rbx, rdi
	mov rax, rdx
	mov rbp, rdx
	jmp loop

loop:
	cmp rax, 0
	je end
	dec rax
	inc rbx
	jmp loop

end:
	pop rax
	ret