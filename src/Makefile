# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:24:29 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/12 16:49:39 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

NAME_MAIN = main

ASM = nasm

CC = gcc

MAIN = main.c

FLAGS = -Wall -Wextra -Werror

SRC = ft_memset.s ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s ft_isalnum.s \
		ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s ft_puts.s \
		ft_strlen.s ft_memcpy.s ft_strdup.s ft_cat.s

OBJ = $(SRC:.s=.o)

OBJ_TYPE = macho64

all: $(NAME)

$(NAME): $(SRC) $(OBJ)
	@echo "Create library"
	@ar rc $(NAME) $(OBJ)
	@echo "Index library"
	@ranlib $(NAME)

%.o: %.s
	@echo "Create object file"
	@$(ASM) -f $(OBJ_TYPE) -o $@ $<

main: $(MAIN) $(SRC)
	@echo "Compile main"
	@$(CC) -o $(NAME_MAIN) $(MAIN) -L. -lfts $(FLAGS)

clean:
	@echo "Clean object files"
	@/bin/rm -f $(OBJ)

fclean: clean
	@echo "Clean library"
	@/bin/rm -f $(NAME)

cmain:
	@echo "Clean main"
	@/bin/rm -f $(NAME_MAIN)

re: fclean all
