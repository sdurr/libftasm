;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:24:07 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/22 14:16:18 by karakhirn        ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isprint

ft_isprint:
	push rbp
	mov rax, 0
	cmp rdi, 32
	jb end
	cmp rdi, 126
	ja end
	inc rax

end:
	pop rbp
	ret
