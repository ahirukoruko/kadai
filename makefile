# makefile
.PHONY : clean

kadai1.out : kadai.c
	gcc -o kadai1.out kadai.c

do :
	./kadai1.out

clean :
	rm kadai1.out
