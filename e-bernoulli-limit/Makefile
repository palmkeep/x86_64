LIBCPATH=/lib64/ld-linux-x86-64.so.2

e.out: e.o
	ld -pic -dynamic-linker $(LIBCPATH) -o $@ -lc e.o

e.o: e.asm
	nasm -g -felf64 e.asm

.PHONY: run
run: e.out
	./e.out

.PHONY: clean
clean:
	rm -f ./*.o ./*.out
