/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfta.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 14:24:13 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/22 13:53:37 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef		LIBFTA_H
# define	LIBFTA_H

# include <string.h>

int			ft_isascii(int c);
int			ft_isalnum(int c);
int			ft_isdigit(int c);
int			ft_isprint(int c);
int			ft_tolower(int c);
int			ft_toupper(int c);
int			ft_isalpha(int c);
void		ft_bzero(void *s, size_t n);
size_t		ft_strlen(char *s);
int			ft_puts(const char *s);
void		*ft_memset(void *b, int c, size_t len);
void		*ft_memcpy(void *dst, const void *src, size_t n);
#endif
