;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:46 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 17:17:16 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy
section .text

_ft_strdup:
	push rbp
	cmp rdi, 0
	je end
	push rdi
	call _ft_strlen
	inc rax
	push rax
	pop rdi
	call _malloc
	mov rbp, rdi
	pop rax

end:
	pop rbp
	ret
