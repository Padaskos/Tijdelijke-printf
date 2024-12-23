# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pdaskalo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/18 14:19:19 by pdaskalo          #+#    #+#              #
#    Updated: 2024/10/24 15:04:59 by pdaskalo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
cc = gcc
CFLAGS = -Wall -Wextra -Werror -I.
SRCS = ft_printf.c srcs/ft_put.c srcs/ft_puthex.c srcs/ft_functions.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)
