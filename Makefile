#
#Makefile#

CC=gcc
CFLAGS=LIBS=-lm

calcul: calculate.0 main.o
		gcc calculate.o main.o -o calcul $(LIBS)
	calculate.o: calculate.c calculate.h gcc -c
		calculate.c $(CFLAGS)
	main.o: main.c calculate.h
		gcc -c main.c $(CFLAGS)
clean:
	-rm calcul *.o*~

#End Makefile
