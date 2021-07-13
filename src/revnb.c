/*
** EPITECH PROJECT, 2021
** revstr
** File description:
** revstr
*/

#include "../include/palindrome.h"

int revnb(int nb)
{
    int rev = nb % 10;
    nb = nb/10;
    for (; nb > 0; ) {
        rev = rev * 10 + nb % 10;
        nb = nb/10;
    }
    return (rev);
}