NAME	= libasm.a


SRCS	= ft_write.s ft_read.s ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s


OBJ	= $(SRCS:.s=.o)
OBJDIR	= objs/
OBJS	= $(addprefix $(OBJDIR), $(OBJ))


MACHO	= nasm -f macho64
FLAGS	= -Wall -Wextra -Werror


$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)


$(OBJDIR)%.o:	%.s Makefile
				@mkdir -p $(OBJDIR)
				$(MACHO) $< -o $@

all:		$(NAME)

clean:
			rm -rf $(OBJDIR)

fclean:		clean
			rm -f $(NAME)

re:		fclean all

.PHONY:	fclean clean re all
