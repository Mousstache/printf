# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: motroian <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/25 17:51:04 by motroian          #+#    #+#              #
#    Updated: 2022/11/27 20:15:38 by motroian         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_printf.c\
		ft_printf_utils.c\

OBJS = ${SRCS:.c=.o}


NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -g
RM = rm -f

all: ${NAME}

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME): $(OBJS)
			ar -rcs $(NAME) $(OBJS)

bonus: ${OBJS} ${OBJSBONUS}
			ar -rcs ${NAME} ${OBJS} ${OBJSBONUS}

clean:
			${RM} ${OBJS} ${OBJSBONUS}

fclean: clean
			${RM} ${NAME}

re: fclean all


.PHONY:  all clean fclean re
