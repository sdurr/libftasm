;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 16:22:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:16:01 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isdigit

section .text

ft_isdigit:
	push rbp
	mov rax, 0
	cmp rdi, 48
	jb end
	cmp rdi, 57
	ja end
	inc rax

end:
	pop rbp
	ret
