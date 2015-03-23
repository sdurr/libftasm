;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 09:27:45 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/23 08:42:39 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalpha

_ft_isalpha:
	push rbp
	mov rax, 0
	cmp rdi, 65
	jb test
	inc rax
	cmp rdi, 90
	ja test
	inc rax
	cmp rdi, 97
	jb test
	inc rax
	cmp rdi, 122
	ja test
	inc rax

test:
	cmp rdi, 97
	je end
	cmp rdi, 109
	je end
	cmp rdi, 122
	je end
	cmp rax, 2
	je rt
	mov rax, 0
	jmp end

rt:
	dec rax

end:
	pop rbp
	ret
