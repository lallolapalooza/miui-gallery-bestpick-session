#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
struct Vec { void* begin; void* end; void* cap; };
extern "C" {
void _ZN5MiIQA21ImageQualityInterfaceC1Ev(void*) asm("_ZN5MiIQA21ImageQualityInterfaceC1Ev");
int  _ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv(void*) asm("_ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv");
int  _ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(void*, const unsigned char*, int, int, int, Vec&) asm("_ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE");
int  _ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii(void*, const unsigned char*, int, int, int) asm("_ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii");
void resize_bilinear_c3(const unsigned char*, int, int, unsigned char*, int, int) asm("_Z18resize_bilinear_c3PKhiiPhii");
void _ZN5MiIQA21ImageQualityInterfaceD1Ev(void*) asm("_ZN5MiIQA21ImageQualityInterfaceD1Ev");
}
int main(int argc,char**argv){ setvbuf(stdout,NULL,_IONBF,0);
  FILE*f=fopen(argv[1],"rb"); if(!f){perror("open");return 2;}
  int w,h,ch; fread(&w,4,1,f);fread(&h,4,1,f);fread(&ch,4,1,f);
  long need=(long)w*h*ch; unsigned char*buf=(unsigned char*)malloc(need); fread(buf,1,need,f); fclose(f);
  fprintf(stderr,"img %dx%dx%d\n",w,h,ch);
  void* obj=calloc(1,64);
  _ZN5MiIQA21ImageQualityInterfaceC1Ev(obj);
  int r=_ZN5MiIQA21ImageQualityInterface16LoadDefaultModelEv(obj);
  fprintf(stderr,"load=%d obj=%p\n",r,obj);
  if(argc>2 && !strcmp(argv[2],"resize")){
    unsigned char* out=(unsigned char*)malloc(224*224*3);
    resize_bilinear_c3(buf,w,h,out,224,224);
    FILE*o=fopen(argv[3],"wb"); fwrite(out,1,224*224*3,o); fclose(o); printf("resized\n");
  } else if(argc>2 && !strcmp(argv[2],"blur")){
    int bt=_ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii(obj,buf,w,h,w*3);
    printf("blurType=%d\n",bt);
  } else {
    Vec v={0,0,0};
    fprintf(stderr,"vec before %p %p %p\n",v.begin,v.end,v.cap);
    int pr=_ZN5MiIQA21ImageQualityInterface7PredictEPKhiiiRNSt6__ndk16vectorIfNS3_9allocatorIfEEEE(obj,buf,w,h,w*3,v);
    fprintf(stderr,"vec after %p %p %p\n",v.begin,v.end,v.cap);
    float* data=(float*)v.begin; long cnt=((float*)v.end-data);
    printf("predict=%d n=%ld\n",pr,cnt);
    for(long i=0;i<cnt;i++) printf("%.9g%c",data[i], i+1<cnt?' ':'\n');
    int bt=_ZN5MiIQA21ImageQualityInterface12blur_predictEPKhiii(obj,buf,w,h,w*3);
    printf("blurType=%d\n",bt);
  }
  _ZN5MiIQA21ImageQualityInterfaceD1Ev(obj);
  fflush(stdout); _exit(0);
}
