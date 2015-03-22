#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 10:41:23 by sdurr             #+#    #+#              #
#    Updated: 2015/03/22 17:09:44 by karakhirn        ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = 		libfts.a

CPATH = ./srcs/

SRCS = 		ft_isascii.s \
			ft_isalnum.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isprint.s \
			ft_tolower.s \
			ft_toupper.s \
			ft_bzero.s \
			ft_strlen.s \
			ft_puts.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strcat.s \
			ft_strdup.s \
			ft_cat.s \

OBJS 	= 	$(SRCS:.s=.o)

RM 		= 	rm -rf

all : $(NAME)

$(NAME) :
				nasm -f elf64 ft_isascii.s
				nasm -f elf64 ft_tolower.s
				nasm -f elf64 ft_toupper.s
				nasm -f elf64 ft_isprint.s
				nasm -f elf64 ft_isalnum.s
				nasm -f elf64 ft_isalpha.s
				nasm -f elf64 ft_isdigit.s
				nasm -f elf64 ft_bzero.s
				nasm -f elf64 ft_strlen.s
				nasm -f elf64 ft_puts.s
				nasm -f elf64 ft_memset.s
				nasm -f elf64 ft_memcpy.s
				nasm -f elf64 ft_strcat.s
				nasm -f elf64 ft_strdup.s
				nasm -f elf64 ft_cat.s
				ar rc $(NAME) $(OBJS)
				ranlib $(NAME)


clean :
				$(RM) $(OBJS)

fclean :	clean
				$(RM) $(NAME)

re:			fclean all
