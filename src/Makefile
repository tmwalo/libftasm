# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:24:29 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/05 15:54:56 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

CC = nasm

SRC = ft_memset.s ft_bzero.s

OBJ = ft_memset.o ft_bzero.o

all: $(NAME)

$(NAME): $(SRC)
	@echo "Create object files"
	@$(CC) -f macho64 $(OBJ) $(SRC)
	@echo "Create library"
	@ar rc $(NAME) $(OBJ)
	@echo "Index library"
	@ranlib $(NAME)

clean:
	@echo "Clean object files"
	@/bin/rm -f $(OBJ)

fclean: clean
	@echo "Clean library"
	@/bin/rm -f $(NAME)

re: fclean all
