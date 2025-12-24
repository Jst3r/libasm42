#include "libasm.h"
#include <errno.h>
int main()
{
    // printf("%ld\n", ft_strlen("HEllo World!"));
    int a = ft_write(2, "Hello World!\n", 13);
    // printf("errno = %d\n", errno);
    // if (a == -1)
    //     perror("ft_write");
    return 0;
}