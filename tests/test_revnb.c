/*
** EPITECH PROJECT, 2021
** test_revnb
** File description:
** test_revnb
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/palindrome.h"

Test(test_revnb, revnb)
{
    int i = revnb(123);
    cr_assert_eq(321, i);
}

Test(test_revnb1, revnb)
{
    int i = revnb(123456);
    cr_assert_eq(654321, i);
}