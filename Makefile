all: file	

file: cell.o celllist.o draw.o main.o
	gcc $^ -o $@

%.o: %.c
	gcc -c $<

clean:
	rm -f *.o file