LD=ld
LDFLAGS=-N -Ttext=0x10000
.SUFFIXES: .o .elf
.o.elf:
	$(LD) $(LDFLAGS) -o $@ $^
CC=gcc
CFLAGS=-ansi -pedantic -Wall -Wextra -mcpu=cortex-a9 -msoft-float -fPIC -mapcs-frame

.SUFFIXES: .s .o
.s.o:
	$(CC) $(CFLAGS) -o $@ -c $^

main.elf: bootstrap.o main.o
