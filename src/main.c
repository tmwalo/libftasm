
#include "libfts.h"
#include <stdio.h>

int		main(void) {

	char	*str;
	char	*memset_str;
	char	*bzero_str;

	str = "battle not with monsters, lest ye become one";
	printf("test str: %s\n\n", str);

	/* ft_memset */

	printf("ft_memset:\n");
	memset_str = strdup(str);
	printf("memset_str: %s\n\n", memset_str);
	memset(memset_str, 'x', 10);
	printf("set 4 bytes to 'x': %s\n\n", memset_str);

	/* ft_bzero */

	printf("ft_bzero:\n");
	bzero_str = strdup(str);
	ft_bzero(bzero_str, 4);
	printf("set 4 bytes to zero: %s\n\n", bzero_str);

	/* cleanup */

	free(memset_str);
	free(bzero_str);

	return (0);

}
