##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Makefile
##

ECHO	=	/bin/echo -e
DEFAULT	=	"\e[0m"
BOLD_T	=	"\e[1m"
CLIG_T	=	"\e[5m"
DIM_T	=	"\e[2m"
UNDLN_T	=	"\e[4m"
BLACK_C	=	"\e[30m"
RED_C	=	"\e[31m"
GREEN_C	=	"\e[32m"
YELLO_C	=	"\e[33m"
BLUE_C	=	"\e[34m"
MAGEN_C	=	"\e[35m"
CYAN_C	=	"\e[36m"
WHITE_C	=	"\e[97m"
DEFAULT_C	=	"\e[39m"
LIGHT_GREY	=	"\e[37m"
DARK_GREY	=	"\e[90m"
LIGHT_RED	=	"\e[91m"
LIGHT_GREEN	=	"\e[92m"
LIGHT_YELLO	=	"\e[93m"
LIGHT_BLUE	=	"\e[94m"
LIGHT_MAGEN	=	"\e[95m"
LIGHT_CYAN	=	"\e[96m"
LINE_RETURN	=	$(ECHO) ""

SRC	=	$(shell find src/ -name '*.c')

TEST= 	src/revnb.c	\
		src/check_palindrome.c	\
		src/convert.c	\
		$(shell find tests/ -name '*.c')

OBJ	=	$(SRC:.c=.o)

NAME	=	palindrome

TNAME	=	unit_tests

RM	=	rm -f

CFLAGS	=	 -g3

all:	$(NAME)
		@$(ECHO) $(GREEN_C) " ____  ____  ____  _     ____  ____  _     _  _      ____  ____  ____  _      _____ " $(DEFAULT)
		@$(ECHO) $(GREEN_C) "/  __\/  _ \/  _ \/ \   /  __\/  _ \/ \   / \/ \  /|/  _ \/  __\/  _ \/ \__/|/  __/ " $(DEFAULT)
		@$(ECHO) $(GREEN_C) "|  \/|| / \|| / \|| |   |  \/|| / \|| |   | || |\ ||| | \||  \/|| / \|| |\/|||  \   " $(DEFAULT)
		@$(ECHO) $(GREEN_C) "|  __/| \_/|| \_/|| |_/\|  __/| |-||| |_/\| || | \||| |_/||    /| \_/|| |  |||  /_  " $(DEFAULT)
		@$(ECHO) $(GREEN_C) "\_/   \____/\____/\____/\_/   \_/ \|\____/\_/\_/  \|\____/\_/\_\\____/\_/  \|\____\ " $(DEFAULT)


$(NAME):	$(OBJ)
	gcc -o 	$(NAME) $(OBJ) $(CFLAGS)
	$(RM) $(OBJ)
clean:
		rm -f $(OBJ)
		rm -f src/*~
		rm -f *~
		rm -f *.gc*


fclean: 	clean
		rm -f $(NAME)
		rm -f $(TNAME)

re:	$(NAME)


tests_run:	$(TEST)
			gcc -o $(TNAME) $(TEST) -lcriterion --coverage
			./unit_tests

.PHONY: all clean fclean re
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─▄▀▀▀▀▄─█──█────▄▀▀█─▄▀▀▀▀▄─█▀▀▄ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─█────█─█──█────█────█────█─█──█ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─█────█─█▀▀█────█─▄▄─█────█─█──█ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─▀▄▄▄▄▀─█──█────▀▄▄█─▀▄▄▄▄▀─█▄▄▀ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "                                 " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────────▄██████▀▀▀▀▀▀▄ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────▄█████████▄───────▀▀▄▄" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "──▄█████████████───────────▀▀▄" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "▄██████████████─▄▀───▀▄─▀▄▄▄──▀▄" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "███████████████──▄▀─▀▄▄▄▄▄▄────█ " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "█████████████████▀█──▄█▄▄▄──────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "███████████──█▀█──▀▄─█─█─█───────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "████████████████───▀█─▀██▄▄──────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "█████████████████──▄─▀█▄─────▄───█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "█████████████████▀███▀▀─▀▄────█──█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "████████████████──────────█──▄▀──█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "████████████████▄▀▀▀▀▀▀▄──█──────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "████████████████▀▀▀▀▀▀▀▄──█──────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "▀████████████████▀▀▀▀▀▀──────────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "──███████████████▀▀─────█──────▄▀" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "──▀█████████████────────█────▄▀" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────▀████████████▄───▄▄█▀─▄█▀" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "──────▀████████████▀▀▀──▄███" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "──────████████████████████─█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────████████████████████──█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────████████████████████───█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────██████████████████─────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────██████████████████─────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────██████████████████─────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────██████████████████─────█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "────██████████████████▄▄▄▄▄█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "                            " $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────────────█─────█─█──█─█───█" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────────────█─────█─█──█─▀█─█▀" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────────────█─▄█▄─█─█▀▀█──▀█▀" $(DEFAULT)
	 @$(ECHO) $(LIGHT_GREY)$(CLIG_T) "─────────────██▀─▀██─█──█───█" $(DEFAULT)