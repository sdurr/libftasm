;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 13:50:34 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:42:52 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isascii

section .text

_ft_isascii:
	push rbp
	mov rax, 0
	cmp rdi, 127
	ja  end
	cmp rdi, 0
	jb end
	mov rax, 1

end :
	pop rbp
	ret
