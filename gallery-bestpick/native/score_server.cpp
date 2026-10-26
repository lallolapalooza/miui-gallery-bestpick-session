// Exact scorer: runs Xiaomi's original libiqa.so under an aarch64 loader.
// stdin records: int32 width, height, channels; then width*height*channels bytes (BGR).
// stdout lines: 8 doubles + blurType.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>

struct Vec { void* begin; void* end; void* cap; };

extern "C" {
void  _ZN5MiIQA21ImageQualityInterfaceC1Ev(void*) asm("_ZN5MiIQA21ImageQualityInterfaceC1Ev");
int   _ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv(void*) asm("_ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv");
int   _ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(void*, const unsigned char*, int, int, int, Vec&) asm("_ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE");
int   _ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii(void*, const unsigned char*, int, int, int) asm("_ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii");
}

int main() {
    setvbuf(stdin, nullptr, _IONBF, 0);
    setvbuf(stdout, nullptr, _IONBF, 0);
    void* obj = calloc(1, 64);
    _ZN5MiIQA21ImageQualityInterfaceC1Ev(obj);
    if (_ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv(obj) < 0) {
        fprintf(stderr, "model load failed\n");
        return 2;
    }
    for (;;) {
        int w = 0, h = 0, ch = 0;
        if (fread(&w, 4, 1, stdin) != 1) break;
        if (fread(&h, 4, 1, stdin) != 1) break;
        if (fread(&ch, 4, 1, stdin) != 1) break;
        if (w <= 0 || h <= 0 || ch != 3) { fprintf(stderr, "bad header\n"); return 3; }
        size_t n = (size_t)w * h * ch;
        unsigned char* buf = (unsigned char*)malloc(n);
        if (!buf) return 4;
        if (fread(buf, 1, n, stdin) != n) { free(buf); break; }
        Vec v = {nullptr, nullptr, nullptr};
        int rc = _ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(obj, buf, w, h, w * 3, v);
        int bt = _ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii(obj, buf, w, h, w * 3);
        float* d = (float*)v.begin;
        long cnt = d ? (((float*)v.end) - d) : 0;
        if (rc != 0 || cnt < 8) {
            printf("ERR\n");
            free(v.begin);
            free(buf);
            continue;
        }
        for (int i = 0; i < 8; i++) printf("%.9g ", (double)d[i]);
        printf("%d\n", bt);
        free(v.begin);
        free(buf);
    }
    _exit(0);
}
