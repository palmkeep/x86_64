#include <stdio.h>

extern "C" char* cpuid_vendor_name(char*);

int main()
{
    char s[14];
    printf("%s", cpuid_vendor_name(s));
    return 0;
}
