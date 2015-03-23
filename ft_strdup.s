;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:46 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:44:56 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strdup

extern malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strdup:
	push rbp
	push rdi
	call _ft_strlen
	push rax
	pop rdi
	call malloc
	mov rbp, rdi
	pop rax

end:
	pop rbp
	ret
