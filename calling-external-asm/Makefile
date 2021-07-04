LIBCPATH=/lib64/ld-linux-x86-64.so.2

.PHONY: build-and-run clean
build-and-run:
	nasm -g -felf64 sys_call_wrapper.asm
	gcc -g -c main.cpp
	gcc main.o sys_call_wrapper.o
	./a.out

clean:
	rm -f ./*.o ./*.out

