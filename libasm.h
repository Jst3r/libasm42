
#ifndef LIBASM
#define LIBASM
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

size_t ft_strlen(char *str);
int ft_write(int fd, const void *buf, size_t count);
char* ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strdup(char *str);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
#endif