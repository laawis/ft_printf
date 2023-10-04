#include "ft_printf.h"

int    print_percent(void)
{
    if (ft_putchar('%') <= 0)
        return (-1);
    return (1);    
}
