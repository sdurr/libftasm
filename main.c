/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 09:25:23 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/23 10:39:20 by sdurr            ###   ########.fr       */
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

	fd = open("test", O_RDONLY);
	ft_cat(fd);

	printf("ft = %d\n", ft_puts(NULL));
	printf("ft = %d\n", ft_puts("test_dup"));
	printf("ft = %d\n", ft_puts("test_dup"));
	printf("ft = %d\n", ft_puts("test_dup"));

//	printf("src = %d\n", puts("test_strdup"));
	return (0);
}
