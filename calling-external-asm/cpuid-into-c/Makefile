.PHONY: run clean
run:
	nasm -g -felf64 instr.asm
	g++ -g -c main.cpp
	g++ -g main.o instr.o
	./a.out

clean:
	rm -f ./*.o ./*.out

