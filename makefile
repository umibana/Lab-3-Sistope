.DEFAULT_GOAL := install
CC = gcc
CFLAGS = -g -Wall  # Flag to pass to gcc

install:game lab3

game: game.c game.h
	$(CC) $(CFLAGS) -c game.c
	
lab3: lab3.c
	$(CC) $(CFLAGS) -o lab3.o lab3.c game.o

clean:

		rm -f *.o *.out *.txt

