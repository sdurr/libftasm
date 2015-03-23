;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnew.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 16:51:37 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 16:56:37 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strnew

extern _malloc

section .text

_ft_strnew:
	cmp rdi, 0
	push rbp
	push rdi
	call _malloc
	mov byte[rbp], 0
	cld
	rep stosb

end:
	ret