;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:24:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:43:25 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isprint

_ft_isprint:
	push rbp
	mov rax, 0
	cmp rdi, 32
	jb end
	cmp rdi, 126
	ja end
	inc rax

end:
	pop rbp
	ret
