
NAME=libasm.a

SRCS=	src/ft_strlen.s\
		src/ft_write.s\
		src/ft_strcpy.s\
		src/ft_strcmp.s\
		src/ft_strdup.s\
		src/ft_read.s


OBJS=$(SRCS:.s=.o)
NASM=nasm
NASMFLAGSLINUX=-f elf64
NASMFLAGSMAC=-f macho64
CC=gcc
CFLAGS=-Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	cc main.c -L. -lasm -no-pie -o tst
%.o: %.s
	$(NASM) $(NASMFLAGSLINUX) $< -o $@
clean:
	rm -rf $(OBJS)
fclean: clean
	rm -rf $(NAME) tst
re: fclean all
