;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:46 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/24 11:39:57 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy
extern _ft_bzero
extern _strcpy

section .text

_ft_strdup:
	push rdi
	mov rax, 0
	call _ft_strlen
	pop rdi
	mov rcx, rax
	inc rax
	push rax
	call _malloc
	pop rdx
	mov rcx, 0

copy:
	mov bl, byte[rdi]
	push bx
	mov byte[rax], bl
	inc rax
	inc rdi
	pop bx
	test bl, bl
	jz copy

end:
	ret
