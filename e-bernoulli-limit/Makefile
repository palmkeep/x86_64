
e.out: e.o
	gcc -g -no-pie -nostartfiles e.o -o $@

e.o: e.asm
	nasm -g -felf64 e.asm

.PHONY: clean
clean:
	rm -f ./*.o ./*.out
