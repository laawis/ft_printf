NAME = ft_printf

LIST_SRC = ft_itoa.c 			\
    	   print_int.c    		\
           print_low_hex.c		\
		   print_ptr.c			\
		   print_str.c			\
		   print_unsigned_dec.c	\
	       print_up_hex.c		\
		   ft_printf.c	
		   
LIST_OBJ = $(LIST_SRC:.c=.o)
LIST_HEADER = ft_printf.h

# Dont work
#DIR_BUILD = .build/
#DIR_SRC = src/ 
#DIR_HEADER = include/

DIR_BUILD = .build/
DIR_SRC = src/
DIR_HEADER = include/

# Shortcuts
SRC = $(addprefix $(DIR_SRC), $(LIST_SRC))
OBJ = $(addprefix $(DIR_BUILD), $(LIST_OBJ))
HEADER = $(addprefix $(DIR_HEADER), $(LIST_HEADER))

CFLAGS = -Wall -Wextra -Werror -g3 -fsanitize=address

.PHONY: all 
all: $(NAME)

$(NAME): $(DIR_BUILD) $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ) 

$(DIR_BUILD)%.o: $(DIR_SRC)%.c $(HEADER)
	$(CC) $(CFLAGS) $< -c -I $(DIR_HEADER) -o $@

$(DIR_BUILD):
	mkdir -p $(DIR_BUILD)

.PHONY: clean
clean:
	$(RM) $(OBJ)

.PHONY: fclean
fclean:	clean
	$(RM) $(NAME)

.PHONY: re
re:	fclean
	$(MAKE) all

#DIR_BUILD = .nom du dossier/ (= dossier cache)
# $@ permet d'obtenir le nom de la cibe
# -o (compilateur)permet de donner un chemin et un nom au fichier qu'on compile
# $< permet de récupérer la première dépendance
# Compilateur GCC
# -I (compilateur)pour préciser le dossier d'include (path) seulement pour gcc
# -c (option du compilateur) pour créer des fichiers .o (sans le binaire final) seulement pour gcc
# -C (option de make) precise le chemin pour executer un autre makefile
# -L (option compilateur)precise le dossier vers lequel se trouve la lib
# -l (compilateur)precise le nom de la lib a inclure ex: ft pour libft
# Target -> Date         Dependance -> Date
#stack_instructions.o: src/stack_instructions.c
#	$(CC) $(CFLAGS) src/stack_instructions.c -c -I include/
#addprefix  ajouter un prefix pour avoir le chemin du dossier
#La commande make -C, permet d’expliquer à make, d’aller exécuter un autre Makefile situé dans un autre dossier. 
