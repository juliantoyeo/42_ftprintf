# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jyeo <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/18 05:51:11 by jyeo              #+#    #+#              #
#    Updated: 2017/12/18 07:36:14 by jyeo             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FLAG = -Wall -Wextra -Werror

SRC = ft_flag.c\
      ft_format.c\
      ft_length.c\
      ft_length_2.c\
      ft_hash.c\
      ft_printf.c\
      ft_type.c\
      ft_unicode.c\
      ft_width.c\

LIB  =libft/ft_atoi.c\
      libft/ft_atoi_base.c\
      libft/ft_capitalize.c\
      libft/ft_isdigit.c\
      libft/ft_itoa.c\
      libft/ft_itoa_base.c\
      libft/ft_ltoa_base.c\
      libft/ft_ltoa.c\
      libft/ft_lltoa_base.c\
      libft/ft_lltoa.c\
      libft/ft_putstr.c\
      libft/ft_strchr.c\
      libft/ft_strcmp.c\
      libft/ft_strncmp.c\
      libft/ft_strdup.c\
      libft/ft_strjoin.c\
      libft/ft_strlen.c\
      libft/ft_strndup.c\
      libft/ft_strnew.c\
      libft/ft_strsub.c\
      libft/ft_utoa.c\
      libft/ft_ultoa.c\
      libft/ft_ulltoa.c\
      libft/ft_intlen.c\
      libft/ft_intlen_base.c\
      libft/ft_memalloc.c\
      libft/ft_putchar.c\
      libft/ft_strcat.c\
      libft/ft_strcpy.c\
      libft/ft_toupper.c\
      libft/ft_bzero.c\
      libft/ft_memset.c\


INCLUDE = ft_printf.h 

INCLUDELIB = libft/ft_libft.h 

OBJ = $(SRC:.c=.o)

LOBJ = ft_atoi.o\
       ft_atoi_base.o\
       ft_capitalize.o\
       ft_isdigit.o\
       ft_itoa.o\
       ft_itoa_base.o\
       ft_ltoa_base.o\
       ft_ltoa.o\
       ft_lltoa_base.o\
       ft_lltoa.o\
       ft_putstr.o\
       ft_strchr.o\
       ft_strcmp.o\
       ft_strncmp.o\
       ft_strdup.o\
       ft_strjoin.o\
       ft_strlen.o\
       ft_strndup.o\
       ft_strnew.o\
       ft_strsub.o\
       ft_utoa.o\
       ft_ultoa.o\
       ft_ulltoa.o\
       ft_intlen.o\
       ft_intlen_base.o\
       ft_memalloc.o\
       ft_putchar.o\
       ft_strcat.o\
       ft_strcpy.o\
       ft_toupper.o\
       ft_bzero.o\
       ft_memset.o\

all: $(NAME)

$(NAME):
	@gcc $(FLAG) -c $(SRC) -I $(INCLUDE)
	@gcc $(FLAG) -c $(LIB) -I $(INCLUDELIB)
	@ar rc $(NAME) $(OBJ) $(LOBJ)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(OBJ)
	@/bin/rm -f $(LOBJ)

fclean:	clean
	@/bin/rm -f $(NAME)

re:	fclean all
