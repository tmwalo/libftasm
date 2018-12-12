/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/06 11:26:35 by tmwalo            #+#    #+#             */
/*   Updated: 2018/12/12 17:05:35 by tmwalo           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <ctype.h>

void	ft_putchar(char c);

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
	printf("set 12 bytes to 'x', libc: %s\n", (char *) memset(strdup(str), 'x', 12));
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

	/* ft_strcat */

//	char	str1[4] = "C";
//	char	str2[3] = "at";
//	char	str3[4] = "C";
//	char	str4[3] = "at";
	char	str1[37] = "Capture the gods, ";
	char	str2[19] = "advance the troops";
	char	str3[37] = "Capture the gods, ";
	char	str4[19] = "advance the troops";

	printf("ft_strcat:\n");
	printf("str1: %s\n", str1);
	printf("str2: %s\n", str2);
	printf("libc strcat: %s\n", strcat(str1, str2));
	printf("nasm strcat: %s\n\n", ft_strcat(str3, str4));

	/* ft_isalpha */

	printf("ft_isalpha:\n");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'c', (isalpha('c')) ? "True" : "False", (ft_isalpha('c')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'X', (isalpha('X')) ? "True" : "False", (ft_isalpha('X')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '1', (isalpha('1')) ? "True" : "False", (ft_isalpha('1')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '[', (isalpha('[')) ? "True" : "False", (ft_isalpha('[')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n\n", '}', (isalpha('}')) ? "True" : "False", (ft_isalpha('}')) ? "True" : "False");

	/* ft_isdigit */

	printf("ft_isdigit:\n");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'c', (isdigit('c')) ? "True" : "False", (ft_isdigit('c')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'X', (isdigit('X')) ? "True" : "False", (ft_isdigit('X')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '1', (isdigit('1')) ? "True" : "False", (ft_isdigit('1')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '[', (isdigit('[')) ? "True" : "False", (ft_isdigit('[')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n\n", '}', (isdigit('}')) ? "True" : "False", (ft_isdigit('}')) ? "True" : "False");

	/* ft_isalnum */

	printf("ft_isalnum:\n");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'c', (isalnum('c')) ? "True" : "False", (ft_isalnum('c')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'X', (isalnum('X')) ? "True" : "False", (ft_isalnum('X')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '7', (isalnum('1')) ? "True" : "False", (ft_isalnum('1')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '[', (isalnum('[')) ? "True" : "False", (ft_isalnum('[')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n\n", '}', (isalnum('}')) ? "True" : "False", (ft_isalnum('}')) ? "True" : "False");
	
	/* ft_isascii */

	printf("ft_isascii:\n");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'c', (isascii('c')) ? "True" : "False", (ft_isascii('c')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'X', (isascii('X')) ? "True" : "False", (ft_isascii('X')) ? "True" : "False");
	printf("test val = %s, libc ret = %s, nasm ret = %s\n", "-1", (isascii(-1)) ? "True" : "False", (ft_isascii(-1)) ? "True" : "False");
	printf("test val = %s, libc ret = %s, nasm ret = %s\n", "200", (isascii(200)) ? "True" : "False", (ft_isascii(200)) ? "True" : "False");
	printf("test val = %s, libc ret = %s, nasm ret = %s\n\n", "300", (isascii(300)) ? "True" : "False", (ft_isascii(300)) ? "True" : "False");
	
	/* ft_isprint */

	printf("ft_isprint:\n");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", 'c', (isprint('c')) ? "True" : "False", (ft_isprint('c')) ? "True" : "False");
	printf("test char = %s, libc ret = %s, nasm ret = %s\n", "\\n", (isprint('\n')) ? "True" : "False", (ft_isprint('\n')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n", '7', (isprint('1')) ? "True" : "False", (ft_isprint('1')) ? "True" : "False");
	printf("test char = %s, libc ret = %s, nasm ret = %s\n", "\\0", (isprint('\0')) ? "True" : "False", (ft_isprint('\0')) ? "True" : "False");
	printf("test char = %c, libc ret = %s, nasm ret = %s\n\n", '}', (isprint('}')) ? "True" : "False", (ft_isprint('}')) ? "True" : "False");
	
	/* ft_toupper */

	printf("ft_toupper:\n");
	printf("test char = %c, libc = %c, nasm = %c\n", 'B', toupper('B'), ft_toupper('B'));
	printf("test char = %c, libc = %c, nasm = %c\n", 'a', toupper('a'), ft_toupper('a'));
	printf("test char = %c, libc = %c, nasm = %c\n", '3', toupper('3'), ft_toupper('3'));
	printf("test char = %c, libc = %c, nasm = %c\n", '?', toupper('?'), ft_toupper('?'));
	printf("test char = %c, libc = %c, nasm = %c\n\n", '!', toupper('!'), ft_toupper('!'));
	
	/* ft_tolower */

	printf("ft_tolower:\n");
	printf("test char = %c, libc = %c, nasm = %c\n", 'B', tolower('B'), ft_tolower('B'));
	printf("test char = %c, libc = %c, nasm = %c\n", 'a', tolower('a'), ft_tolower('a'));
	printf("test char = %c, libc = %c, nasm = %c\n", '3', tolower('3'), ft_tolower('3'));
	printf("test char = %c, libc = %c, nasm = %c\n", '?', tolower('?'), ft_tolower('?'));
	printf("test char = %c, libc = %c, nasm = %c\n\n", '!', tolower('!'), ft_tolower('!'));

	/* ft_puts */

	printf("ft_puts:\n");
	printf("test str: %s\n", str);
	puts(str);
	ft_puts(str);
	printf("\n");

	/* ft_strlen */

	printf("ft_strlen:\n");
	printf("test str: %s\nlibc len = %lu\nnasm len = %lu\n\n", str, strlen(str), ft_strlen(str));

	/* ft_memcpy */

	char		lelouch[33] = "Obey me subjects; obey me world.";
	char		lelouch_copy[33];
	char		libc_lelouch_copy[33];

	printf("ft_memcpy:\n");
	printf("test str: %s\nCopy 9 bytes into new array:\n", lelouch);
	bzero(lelouch_copy, 33);
	bzero(libc_lelouch_copy, 33);
	printf("libc = %s\nnasm = %s\n\n", (char *) memcpy(libc_lelouch_copy, lelouch, 9), (char *) ft_memcpy(lelouch_copy, lelouch, 9));

	/* ft_strdup */

	char	dupstr[25] = "The flames of war unify.";

	printf("ft_strdup:\ntest str: %s\n", dupstr);
	printf("%s\n", strdup(dupstr));
	printf("%s\n\n", ft_strdup(dupstr));

	/* cleanup */

	free(memset_str);
	free(bzero_str);
	free(libc_bzero_str);

	return (0);

}
