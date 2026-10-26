#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
extern "C" {
void _ZN5MiIQA5CBlurC1Ev(void*) asm("_ZN5MiIQA5CBlurC1Ev");
int  _ZN5MiIQA5CBlur16LoadModelDefaultEv(void*) asm("_ZN5MiIQA5CBlur16LoadModelDefaultEv");
float _ZN5MiIQA5CBlur10PredictBGREPKhii(void*, const unsigned char*, int, int) asm("_ZN5MiIQA5CBlur10PredictBGREPKhii");
}
int main(int argc,char**argv){
  setvbuf(stdout,NULL,_IONBF,0);
  FILE*f=fopen(argv[1],"rb"); int w,h,ch; fread(&w,4,1,f);fread(&h,4,1,f);fread(&ch,4,1,f);
  unsigned char*buf=(unsigned char*)malloc((long)w*h*ch); fread(buf,1,(long)w*h*ch,f); fclose(f);
  void*o=calloc(1,0x90); _ZN5MiIQA5CBlurC1Ev(o);
  printf("fields:"); for(int i=80;i<128;i+=4) printf(" +%d=%d/%g",i,*(int*)((char*)o+i),*(float*)((char*)o+i)); printf("\n");
  int r=_ZN5MiIQA5CBlur16LoadModelDefaultEv(o); printf("load=%d\n",r);
  float s=_ZN5MiIQA5CBlur10PredictBGREPKhii(o,buf,w,h); printf("cblur=%.9g\n",s);
  fflush(stdout); _exit(0);
}
