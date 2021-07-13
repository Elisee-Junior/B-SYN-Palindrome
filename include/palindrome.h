/*
** EPITECH PROJECT, 2021
** palindrome
** File description:
** palindrome
*/

#ifndef _PALINDROME_
#define _PALINDROME_

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <getopt.h>

typedef struct variable
{
    int imin;
    int imax;
    int base;
}var_t;

void usage(void);
int check_palindrome(int i);
int my_str_isnum (char *str);
int revnb(int nb);
int flag_n(int nb, var_t *var);
int flag_p(int nb, var_t *var);
int base_converter(int nbr, int base1, int base2);
void check_flag_n_cut(var_t *var, char **av, int i, int nb);

#endif /* !_PALINDROME_ */
