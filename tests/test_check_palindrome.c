/*
** EPITECH PROJECT, 2021
** test_check_palindrome
** File description:
** test_check_palindrome
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/palindrome.h"

Test(test_check_palindrome, check_palindrome)
{
    int i = check_palindrome(636);
    cr_assert_eq(0, i);
}

Test(test_check_palindrome1, check_palindrome)
{
    int i = check_palindrome(1595);
    cr_assert_eq(1, i);
}