/*
** EPITECH PROJECT, 2021
** check_palindrome
** File description:
** check_palindrome
*/

#include "../include/palindrome.h"

int check_palindrome(int i)
{
    int j = revnb(i);
    if (j - i == 0)
        return (0);
    return (1);
}