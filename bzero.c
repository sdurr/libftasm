/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bzero.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdurr <sdurr@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 13:06:36 by sdurr             #+#    #+#             */
/*   Updated: 2015/03/26 13:10:18 by sdurr            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libfta.h"
#include <unistd.h>

int main()
{
	char *s;

	s = strdup("eejjjjjjkkeeeee");
	ft_bzero((void *)&s, 2);
	write(1, &s[0], 1);
}
