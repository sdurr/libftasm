;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 16:22:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/21 18:20:38 by sdurr            ###   ########.fr        ;
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