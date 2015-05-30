;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    _ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42._fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 09:27:45 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/26 12:43:01 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalpha

_ft_isalpha:
	cmp rdi, 97
	jb middle

test_1:
	cmp rdi, 122
	ja stop
	mov rax, 1
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
	cmp rdi, 65
	je ok
	cmp rax, 2
	je rt
	cmp rax, 3
	je ok
	cmp rdi, 97
	je end
	mov rax, 0
	jmp end

rt:
	dec rax
	jmp  end
ok:
	mov rax, 1
	jmp end

middle:
	cmp rdi, 90
	ja stop
	jmp test_1

stop:
	mov rax, 0

end:
	ret
