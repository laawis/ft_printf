#include <unistd.h>


#include "ft_printf.h"


size_t    ft_strlen(char *str)
{
    size_t    i;

    i = 0;
    while (str[i] != '\0')
        i++;
    return (i);
}

int print_str(char *str)
{
    if (str == NULL)
    {
        return (-1);
    }
	return (write(1, str, ft_strlen(str)));
}

