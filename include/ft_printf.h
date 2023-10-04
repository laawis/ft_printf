#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdlib.h>

int    ft_printf(const char *format, ...);
int    print_str(char *str);
int    print_ptr(unsigned long long nb);
int    print_int(int nb);
char    *ft_itoa(int n);
int    print_unsigned_dec(unsigned int nb);
int    print_low_hex(unsigned int nb);
int    print_up_hex(unsigned int nb);
size_t    ft_strlen(char *str);
int    hex_len(unsigned int nb);

#endif
