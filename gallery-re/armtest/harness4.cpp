#include <cstdio>
#include <cstdlib>
#include <unistd.h>
extern "C" {
void _ZN5MiIQA12ImageQualityC1Ev(void*) asm("_ZN5MiIQA12ImageQualityC1Ev");
int  _ZN5MiIQA12ImageQuality16LoadDefaultModelEv(void*) asm("_ZN5MiIQA12ImageQuality16LoadDefaultModelEv");
int  _ZN5MiIQA12ImageQuality15ForwardHolisticEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(void*, const unsigned char*, int, int, void*) asm("_ZN5MiIQA12ImageQuality15ForwardHolisticEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE");
}
struct Vec { void*begin;void*end;void*cap; };
int main(int argc,char**argv){
  setvbuf(stdout,NULL,_IONBF,0);
  unsigned char*buf=(unsigned char*)malloc(224*224*3); FILE*f=fopen(argv[1],"rb"); fread(buf,1,224*224*3,f); fclose(f);
  void*o=calloc(1,0x80); _ZN5MiIQA12ImageQualityC1Ev(o); printf("load=%d\n",_ZN5MiIQA12ImageQuality16LoadDefaultModelEv(o));
  Vec v={0,0,0}; int r=_ZN5MiIQA12ImageQuality15ForwardHolisticEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(o,buf,224,224,&v);
  float*d=(float*)v.begin; long n=((float*)v.end-d); printf("r=%d n=%ld\n",r,n); for(long i=0;i<n;i++)printf("%.9g%c",d[i],i+1<n?' ':'\n');
  fflush(stdout); _exit(0);
}
