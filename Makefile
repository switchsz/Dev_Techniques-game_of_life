all: ansi sdl

ansi: cell.o celllist.o draw.o main.o
	gcc $^ -o $@

sdl: cell.o celllist.o mainsdl.o sdl.o
	gcc $^ -o $@ -I include -L lib -l sdl2-2.0.0

%.o: %.c
	gcc -c $<

clean:
	rm -f *.o file