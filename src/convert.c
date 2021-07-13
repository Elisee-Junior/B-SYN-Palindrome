/*
** EPITECH PROJECT, 2021
** palindrom
** File description:
** synthesis pool
*/

#include "../include/palindrome.h"

int base_converter(int nbr, int base1, int base2)
{
    int a = 0, cvrt = 0, mat[100];
    for (; nbr > 0; mat[a] = nbr % base2, nbr = nbr / base2, a++);
    for (a = a - 1; a >= 0; cvrt = (cvrt * base1) + mat[a], a--);
    return (cvrt);
}
