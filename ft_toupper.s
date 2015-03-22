;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:53:29 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:17:43 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_toupper

ft_toupper:
	push rbp
	mov rax, rdi
	cmp rdi, 90
	jb end
	cmp rdi, 97
	jb end
	cmp rdi, 122
	ja end
	sub rax, 32

end:
	pop rbp
	ret
