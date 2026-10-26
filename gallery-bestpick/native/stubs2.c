#include <string.h>
char __sF[8192];
int* __errno(void){ static int e; return &e; }
size_t __strlen_chk(const char* s, size_t n){ return strlen(s); }
