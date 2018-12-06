/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/06 11:26:35 by tmwalo            #+#    #+#             */
/*   Updated: 2018/12/06 12:29:53 by tmwalo           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

void	print_mem_bytes(char *str, int num_bytes) {
	for (int i = 0; i < num_bytes; ++i) {
		if (str[i] != '\0')
			printf("%c", str[i]);
		else
			printf("%c", '0');
	}
}

int		main(void) {

	char	*str;
	char	*memset_str;
	char	*libc_bzero_str;
	char	*bzero_str;

	str = "battle not with monsters, lest ye become one";
	printf("test str: %s\n\n", str);

	/* ft_memset */

	printf("ft_memset:\n");
	memset_str = strdup(str);
	printf("set 12 bytes to 'x', libc: %s\n", memset(strdup(str), 'x', 12));
	ft_memset(memset_str, 'x', 12);
	printf("set 12 bytes to 'x', nasm: %s\n\n", memset_str);

	/* ft_bzero */

	printf("ft_bzero:\n");
	libc_bzero_str = strdup(str);
	bzero_str = strdup(str);
	bzero(libc_bzero_str, 4);
	printf("set 4 bytes to zero, libc: ");
   	print_mem_bytes(libc_bzero_str, (int) strlen(str));
	printf("\n");
	ft_bzero(bzero_str, 4);
	printf("set 4 bytes to zero, nasm: ");
   	print_mem_bytes(bzero_str, (int) strlen(str));
	printf("\n\n");

	/* cleanup */

	free(memset_str);
	free(bzero_str);
	free(libc_bzero_str);

	return (0);

}
