# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcordeno <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/13 12:51:46 by lcordeno          #+#    #+#              #
#    Updated: 2018/11/19 19:11:11 by lcordeno         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c \
	ft_bzero.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_lstadd.c \
	ft_lstdel.c \
	ft_lstdelone.c \
	ft_lstiter.c \
	ft_lstmap.c \
	ft_lstnew.c \
	ft_memalloc.c \
	ft_memccpy.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memdel.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar.c \
	ft_putchar_fd.c \
	ft_putendl.c \
	ft_putendl_fd.c \
	ft_putnbr.c \
	ft_putnbr_fd.c \
	ft_putstr.c \
	ft_putstr_fd.c \
	ft_strcat.c \
	ft_strchr.c \
	ft_strclr.c \
	ft_strcmp.c \
	ft_strcpy.c \
	ft_strdel.c \
	ft_strdup.c \
	ft_strequ.c \
	ft_striter.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlen.c \
	ft_strmap.c \
	ft_strmapi.c \
	ft_strncat.c \
	ft_strncmp.c \
	ft_strncpy.c \
	ft_strnequ.c \
	ft_strnew.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strsplit.c \
	ft_strstr.c \
	ft_strsub.c \
	ft_strtrim.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_int_length.c \
	ft_count_words.c \
	ft_sort_integer_table.c \
	ft_sqrt.c \
	ft_recursive_power.c \
	ft_count_if.c \
	ft_sort_wordtab.c \
	ft_print_words_tables.c

INCLUDES = libft.h

OBJECTS = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror

RED = \033[0;31m
GREEN = \033[0;32m
BLUE = \033[0;34m

.PHONY: clean

all: $(NAME)

$(NAME):
	@gcc $(FLAGS) -c $(SRC) -I $(INCLUDES)
	@echo "$(GREEN)Compilation: Done"
	@ar rc $(NAME) $(OBJECTS)
	@echo "$(GREEN)$(NAME) library created"
	@ranlib $(NAME)
	@echo "$(BLUE)$(NAME) library indexed"

clean:
	@/bin/rm -f $(OBJECTS)
	@echo "$(RED)All objects .o files removed"

fclean: clean
	@/bin/rm -f $(NAME)
	@echo "$(RED)$(NAME) library has been removed"

re: fclean all
