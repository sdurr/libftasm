;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 14:33:01 by sdurr             #+#    #+#              ;
;    Updated: 2015/03/20 16:21:42 by sdurr            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalnum

_ft_isalnum:
	push rbp
	mov rax, 0
	cmp rdi, 48
	jb end
	cmp rdi, 122
	ja end
	inc rax

end:
	pop rbp
	ret
