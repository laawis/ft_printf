#include <stdlib.h>

#include "ft_printf.h"

int    print_int(int nb)
{
    char   *str;
    int    len;
    
    str = ft_itoa(nb);
    if (str == NULL)
        return (-1);
    len = print_str(str);
    free(str);
    if (len < 0)
        return (-1);
    return (len);
}
