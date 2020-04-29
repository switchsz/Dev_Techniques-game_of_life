all: file	

file: cell.o celllist.o draw.o main.o
	gcc $^ -o $@

%.o: %.c
	gcc -c $<

#cell.o:	cell.c
#	gcc -c cell.c
# celllist.o:	celllist.c
# 	gcc -c celllist.c
# board.o: board.c
# 	gcc -c board.c
# test.o: test.c
# 	gcc -c test.c

clean:
	rm -f *.o file