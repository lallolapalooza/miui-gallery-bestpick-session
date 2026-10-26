#include <stdarg.h>
#include <stddef.h>
typedef struct AAssetManager AAssetManager; typedef struct AAsset AAsset;
int __android_log_print(int prio, const char* tag, const char* fmt, ...){return 0;}
void android_set_abort_message(const char* msg){}
void AAsset_close(AAsset* a){}
const void* AAsset_getBuffer(AAsset* a){return 0;}
AAsset* AAssetManager_open(AAssetManager* m, const char* f, int mode){return 0;}
int AAsset_read(AAsset* a, void* buf, size_t n){return 0;}
int AAsset_seek(AAsset* a, long off, int whence){return 0;}
