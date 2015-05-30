;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 16:22:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:43:12 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isdigit

section .text

_ft_isdigit:
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
