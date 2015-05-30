/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   puts.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 12:47:21 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/26 12:56:15 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfta.h"
#include <stdio.h>

int		main(int ac, char **av)
{
	if (ac > 1)
	{
		ft_puts("ft = ");
		printf("\nret ft = %d\n", ft_puts(av[1]));
		ft_puts("src = ");
		printf("\nret src = %d\n", puts(av[1]));
	}
}
