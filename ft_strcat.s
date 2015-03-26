;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 08:44:13 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/26 09:47:37 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcat

extern _ft_strlen
extern _ft_memcpy
extern _ft_bzero
extern _ft_puts

section .text

_ft_strcat:
	push rdi					;dest sur la stack
	call _ft_strlen				;rax = len dest
	mov r8, rax					;r8 = len dest
	mov rdi, rsi
	call _ft_strlen				;rax = len de source
	mov r10, rax				;r10 = len de source
	pop rdi						;rdi = dest

loop:
	cmp r10, 0					;condition arret len src
	je end
	mov bl, byte[rsi]
	mov [rdi + r8], bl			;ajout rsi a rdi + lem
	inc rsi						;inc rsi
	inc r8						;inc len rdi
	dec r10						;dec r10
	jmp loop					;boucle

end:
	mov byte[rdi + r8], 0		;ajout a la fin un '\0'
	mov rax, rdi				;met dest dans rax
	ret
