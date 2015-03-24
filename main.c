/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 09:25:23 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/24 16:19:14 by sdurr            ###   ########.fr       */
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

	test_new = strdup("    dddddd ");
	//printf("%s>", memcpy(test_new, "ddddddddddf", 100));
	ft_puts(ft_strcat(test_new, "adda"));
	ft_puts("\n");
	//ft_puts(strcat(test_new, "adda"));
	return (0);
}
