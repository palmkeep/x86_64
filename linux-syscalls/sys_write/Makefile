
hello.out: hello.o
	ld hello.o -o $@

hello.o: hello.asm
	nasm -felf64 hello.asm

.PHONY: clean
clean:
	rm -f ./*.o ./*.out
