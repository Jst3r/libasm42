
NAME=libasm.a

SRCS=	ft_strlen.s ft_write.s 
# 		ft_strcpy.s \
# 		ft_strcmp.s \
# 		ft_read.s \
# 		ft_strdup.s

OBJS=$(SRCS:.s=.o)
NASM=nasm
NASMFLAGS=-f elf64
CC=gcc
CFLAGS=-Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	cc main.c -L. -lasm -no-pie -o rev
%.o: %.s
	$(NASM) $(NASMFLAGS) $< -o $@
clean:
	rm -rf $(OBJS)
fclean: clean
	rm -rf $(NAME)
	rm -rf rev
re: fclean all