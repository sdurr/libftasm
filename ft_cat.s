;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/26 09:19:00 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/26 09:19:01 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_cat

extern _ft_strlen

section .data
buffer times 1 db 0
bufsize equ $ - buffer

section .text

_ft_cat:
	push rbp
	mov rbp, rsp

read:
	push rdi					;fd stack
	lea rsi, [rel buffer]		;buffer dans rsi
	mov rdx, bufsize			;taille buffer ds rdx
	mov rax, 0x2000003			;syscall read
	syscall
	jc end						;si le syscall marche pas
	cmp rax, 0					;controle retour syscall
	je end
	mov rdi, 1					;sortie standard dans write
	mov rdx, rax				;nombre de char a write
	mov rax, 0x2000004			;syscall write
	syscall
	pop rdi						;met dans rdi le fd
	jmp read					;jmp

end:
	mov rsp, rbp
	pop rbp
	ret
