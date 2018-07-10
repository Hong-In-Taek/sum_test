all: sum_test

main.o : sum.h main.cpp
	g++ -c main.cpp

sum.o : sum.h sum.cpp
	g++ -c sum.cpp

sum_test : main.o sum.o
	g++ -o sum_test main.o sum.o

clean :
	rm -f *.o
	rm -f sum_test
