extern "C" void call_write(char*, int);

int main()
{
    int str_len = 14;
    char str_ptr[str_len] = {"Hello, world!\n"};

    call_write(str_ptr, str_len);
}
