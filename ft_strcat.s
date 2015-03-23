;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:13 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:44:36 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcat

extern _ft_strlen

section .text

_ft_strcat:
	push rdi
	call _ft_strlen
	cld
	rep movsb

end:
	pop rax
	ret
