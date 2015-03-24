/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfta.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 14:24:13 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/24 11:01:57 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef		LIBFTA_H
# define	LIBFTA_H

# include <string.h>
# include <stdlib.h>

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
char		*ft_strcat(char *dest, const char *src);
char 		*ft_strdup(const char *s);
char		*ft_strnew(int c);

void		ft_cat(int fd);
#endif
