/*
** EPITECH PROJECT, 2021
** main
** File description:
** main
*/

#include "../include/palindrome.h"

void init(var_t *var)
{
    var->base = 10;
    var->imax = 100;
    var->imin = 0;
}

void check_flag_n(int ac, char **av, var_t *var)
{
    int i = 0, nb = 0;
    for (i = 1; av[i] != NULL; i += 2) {
        if (strcmp(av[i], "-n") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            nb = atoi(av[i + 1]);
        } else if (strcmp(av[i], "-b") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) <= 1
            || atoi(av[i + 1]) > 10)
                exit (84);
            var->base = atoi(av[i + 1]);
        } else if (strcmp(av[i], "-imax") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            var->imax = atoi(av[i + 1]);
        } else if (strcmp(av[i], "-imin") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            var->imin = atoi(av[i + 1]);
        } else exit (84);
    } if (var->imin > var->imax) exit (84);
    flag_n(nb, var);
}

void check_flag_p(int ac , char **av, var_t *var)
{
    int i , nb = 0;
    for (i = 1; av[i] != NULL; i += 2) {
        if (strcmp(av[i], "-p") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            nb = atoi(av[i + 1]); } else if (strcmp(av[i], "-b") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) <= 1
            || atoi(av[i + 1]) > 10)
                exit (84);
            var->base = atoi(av[i + 1]); } else if (strcmp(av[i], "-imax") == 0)
            {if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            var->imax = atoi(av[i + 1]);
        } else if (strcmp(av[i], "-imin") == 0) {
            if (my_str_isnum(av[i + 1]) == 1 || atoi(av[i + 1]) < 0) exit (84);
            var->imin = atoi(av[i + 1]);
        } else exit(84);
    }
    if (var->imin > var->imax) exit (84);
    flag_p(nb, var);
}

int main(int ac, char **av)
{
    var_t *var = malloc(sizeof(var_t));
    init(var);
    if (ac == 2 && strcmp(av[1], "-h\0") == 0) {
        usage();
        return (0);
    }
    if ((ac - 1) % 2 != 0 || ac == 1)
        return (84);
    if (strcmp(av[1], "-n") == 0)
        check_flag_n(ac, av, var);
    else if (strcmp(av[1], "-p") == 0)
        check_flag_p(ac, av, var);
    else
        return (84);
}
