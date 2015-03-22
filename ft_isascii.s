;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 13:50:34 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:15:47 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isascii

section .text

ft_isascii:
	push rbp
	mov rax, 0
	cmp rdi, 127
	ja  end
	cmp rdi, 0
	jb end
	mov rax, 1

end :
	pop rbp
	ret
