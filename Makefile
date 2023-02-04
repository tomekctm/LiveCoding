CC=gcc
CFLAGS=-I. -Wall --std=c99
DEPS =
OBJEX1 = main.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: main

main: $(OBJEX1)
	$(CC) -o $@ $^ $(CFLAGS)

clean :
	-rm *.o $(objects) main