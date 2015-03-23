/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 09:25:23 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/23 17:14:25 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <ctype.h>
#include "libfta.h"
#include <stdlib.h>
#include <stdlib.h>
#include <fcntl.h>

int main()
{
	void *d;
	void *src;
	int fd;
	char *test_new;

	d = (void *)strdup("1111111111111111");
	src = (void *)strdup("222222");
	ft_puts("test memcpy");
	ft_puts("ft = ");
	ft_puts(ft_memcpy(d, src, 5));
	ft_puts("src =");
	ft_puts(memcpy(d, src, 5));
	ft_puts("ft = ");
	ft_puts(ft_memcpy(d, src, 0));
	ft_puts("src =");
	ft_puts(memcpy(d, src, 0));
	ft_puts("ft = ");
	ft_puts(ft_memcpy(d, src, 10));
	ft_puts("src =");
	ft_puts(memcpy(d, src, 10));
	ft_puts("ft = ");
	ft_puts(ft_memcpy(d, src, 50));
	ft_puts("src =");
	ft_puts(memcpy(d, src, 50));
//	ft_puts("ft = ");
	//ft_puts(ft_memcpy(d, src, 12));
	//ft_puts("src =");
	//ft_puts(memcpy(d, src, 12));
//	test_new = ft_strnew(2);
//	test_new = ft_strdup("ttt");
//	test_new = ft_strdup("blabla");
//	ft_puts(test_new);
//	fd = open("test", O_RDONLY);
//	ft_cat(fd);

//	printf("%s", strnstr("abcde", "d", 4));

/*	printf("ft = %d\n", ft_puts(NULL));
	printf("ft = %d\n", ft_puts("test_dup"));
	printf("ft = %d\n", ft_puts("test_dup"));
	printf("ft = %d\n", ft_puts("test_dup"));
*/
//	printf("src = %d\n", puts("test_strdup"));
	return (0);
}
