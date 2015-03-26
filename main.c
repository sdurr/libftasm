/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 09:25:23 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/26 09:42:56 by sdurr            ###   ########.fr       */
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
	char *test;

	test = ft_strdup("ddd");
//	fd = open(__FILE__, O_RDONLY);
//	ft_cat(fd);
//	ft_cat(0);
	ft_puts(ft_strcat(test, "123"));
	return (0);
}
