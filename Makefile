# egg Makefile

# OpenBSD defaults
CC ?= cc
CFLAGS = -O2 -pipe -Wall -Wextra
PREFIX ?= /usr/local

all: egg

install: all
	install -c -S -s  -o root -g bin  -m 555 egg ${PREFIX}/bin
	install -c -S  -o root -g bin  -m 444 egg.1 ${PREFIX}/man/man1

clean:
	rm -rf egg *.o *~ *.core
