#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 10:41:23 by sdurr             #+#    #+#              #
#    Updated: 2015/03/21 18:32:40 by sdurr            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = 		libfts.a

CPATH = ./srcs/

SRCS = 		ft_isascii.s \
			ft_isalnum.s \
			ft_isdigit.s \
			ft_isprint.s \
			ft_tolower.s \

OBJS 	= 	$(SRCS:.s=.o)

RM 		= 	rm -rf

all : $(NAME)

$(NAME) :
				nasm -f macho64 ft_isascii.s
				nasm -f macho64 ft_tolower.s
				nasm -f macho64 ft_isprint.s
				nasm -f macho64 ft_isalnum.s
				nasm -f macho64 ft_isdigit.s
				ar rc $(NAME) $(OBJS)
				ranlib $(NAME)


clean :
				$(RM) $(OBJS)

fclean :	clean
				$(RM) $(NAME)

re:			fclean all