#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
extern "C" {
void _ZN5MiIQA14ImageEsthectisC1Ev(void*) asm("_ZN5MiIQA14ImageEsthectisC1Ev");
int  _ZN5MiIQA14ImageEsthectis16LoadDefaultModelEv(void*) asm("_ZN5MiIQA14ImageEsthectis16LoadDefaultModelEv");
int  _ZN5MiIQA14ImageEsthectis7PredictEPKhiiRf(void*, const unsigned char*, int, int, float&) asm("_ZN5MiIQA14ImageEsthectis7PredictEPKhiiRf");
void _ZN5MiIQA14ImageEsthectisD1Ev(void*) asm("_ZN5MiIQA14ImageEsthectisD1Ev");
void _ZN5MiIQA12ImageQualityC1Ev(void*) asm("_ZN5MiIQA12ImageQualityC1Ev");
int  _ZN5MiIQA12ImageQuality16LoadDefaultModelEv(void*) asm("_ZN5MiIQA12ImageQuality16LoadDefaultModelEv");
int  _ZN5MiIQA12ImageQuality7PredictEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(void*, const unsigned char*, int, int, void*) asm("_ZN5MiIQA12ImageQuality7PredictEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE");
}
struct Vec { void*begin;void*end;void*cap; };
int main(int argc,char**argv){
  setvbuf(stdout,NULL,_IONBF,0);
  FILE*f=fopen(argv[1],"rb"); int w,h,ch; fread(&w,4,1,f);fread(&h,4,1,f);fread(&ch,4,1,f);
  unsigned char*buf=(unsigned char*)malloc((long)w*h*ch); fread(buf,1,(long)w*h*ch,f); fclose(f);
  char mode=argv[2][0];
  if(mode=='e'){
    void*o=calloc(1,0x80); _ZN5MiIQA14ImageEsthectisC1Ev(o); fprintf(stderr,"load=%d\n",_ZN5MiIQA14ImageEsthectis16LoadDefaultModelEv(o));
    float s=-1; int r=_ZN5MiIQA14ImageEsthectis7PredictEPKhiiRf(o,buf,w,h,s); printf("esthe r=%d score=%.9g\n",r,s);
    _ZN5MiIQA14ImageEsthectisD1Ev(o);
  } else {
    void*o=calloc(1,0x80); _ZN5MiIQA12ImageQualityC1Ev(o); fprintf(stderr,"load=%d\n",_ZN5MiIQA12ImageQuality16LoadDefaultModelEv(o));
    Vec v={0,0,0}; int r=_ZN5MiIQA12ImageQuality7PredictEPKhiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(o,buf,w,h,&v);
    float*d=(float*)v.begin; long n=((float*)v.end-d); printf("holistic r=%d n=%ld\n",r,n); for(long i=0;i<n;i++)printf("%.9g%c",d[i],i+1<n?' ':'\n');
  }
  fflush(stdout); _exit(0);
}
