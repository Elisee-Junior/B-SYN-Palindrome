/*
** EPITECH PROJECT, 2021
** test_base_converter
** File description:
** test_base_converter
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/palindrome.h"

Test(test_base_converter, base_converter)
{
    int i = base_converter(16, 10, 3);
    cr_assert_eq(121, i);
}

Test(test_base_converter1, base_converter)
{
    int i = base_converter(101, 2, 10);
    cr_assert_eq(5, i);
}