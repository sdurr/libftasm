/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 11:48:38 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/26 14:18:57 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include "libfta.h"
#include <fcntl.h>

int main(int ac, char **av)
{
	int fd;

	if (ac == 1)
		fd = 0;
	fd = open(av[1], O_RDONLY);
	if (fd < 0)
		fd = 0;
	ft_cat(fd);
}
