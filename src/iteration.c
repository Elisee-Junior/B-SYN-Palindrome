/*
** EPITECH PROJECT, 2021
** iteration
** File description:
** iteration
*/

#include "../include/palindrome.h"

int flag_n(int nb, var_t *var)
{
    int a = 0, b = 0, c = 0, d = base_converter(nb, 10, var->base);
    int itt = 0, k = 0, i = 0, e = 0;
    if (check_palindrome(d) == 0 && var->imin == 0 && var->imax >= 0) {
        printf("%d leads to %d in 0 iteration(s) in base %d\n", \
        nb, nb, var->base);
        return (0);
    }
    for ( ;c < var->imax; c++) {
        a = revnb(d), b = base_converter(a, var->base, 10);
        i = base_converter(d, var->base, 10), itt = b + i;
        k = base_converter(itt, 10, var->base), d = k;
        if (check_palindrome(k) == 0 && c + 1 >= var->imin) {
            printf("%d leads to %d in %d iteration(s) in base %d\n", \
            nb, itt, c + 1, var->base);
            e++;
            break;
        }
    } if (e == 0)
        printf("no solution\n");
}

int flag_p(int nb, var_t *var)
{
    if (check_palindrome(base_converter(nb, 10, var->base)) != 0) exit (84);
    int a = 0, b = 0, c = 0, itt = 0, d = 0, ii = 0, pf = 0;
    for (int i = 0; i <= nb; i++) {
        c = base_converter(i, 10, var->base);
        for (int j = 0; j < var->imax; j++) {
            a = revnb(c), b = base_converter(a, var->base, 10);
            ii = base_converter(c, var->base, 10), pf = b + ii;
            itt = base_converter(pf, 10, var->base), c = itt;
            if (itt == base_converter(nb, 10, var->base) &&
            j + 1 >= var->imin) {
                printf("%d leads to %d in %d iteration(s) in base %d\n", i, \
                nb, j + 1, var->base);
                d++;
                break;
            } else if (i == nb && var->imin == 0) {
                printf("%d leads to %d in %d iteration(s) in base %d\n", i, \
                nb, j, var->base);
                d++;
                break; } }
    } if (d == 0) printf ("no solution\n");
}
