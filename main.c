/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/20 09:25:23 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/22 13:28:38 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <ctype.h>
#include "libfta.h"
#include <stdlib.h>
#include <stdlib.h>

int main()
{
	void *d;

	d = (void *)strdup("dddddd");
	printf("ft = %s\n", (char *)ft_memset(d, 'a', 3));
	printf("src = %s\n", memset(d, 3, 'a'));
	return (0);
}
