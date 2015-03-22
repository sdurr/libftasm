;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 14:33:01 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 09:57:54 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalnum

_ft_isalnum:
	push rbp
	mov rax, 0
	cmp rdi, 122
	ja end
	inc rax
	cmp rdi, 97
	jb dc
	jmp end

test:
	cmp rax, 2
	ja rt
	mov rax, 0

dc:
	dec rax
	cmp rdi, 90
	ja end
	cmp rdi, 65
	jb num
	inc rax
	jmp end

num:
	cmp rdi, 57
	ja end
	cmp rdi, 48
	jb end
	inc rax
	jmp end

rt:
	dec rax

end:
	pop rbp
	ret
