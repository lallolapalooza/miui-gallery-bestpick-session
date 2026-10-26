import ncnn, numpy as np, struct, sys
from PIL import Image
def load_net(p,m):
    net=ncnn.Net(); assert net.load_param_bin(p)==0; assert net.load_model(m)==0; return net
def weighted(a,idx0=0,scale=1.0):
    a=np.asarray(a).ravel().astype(np.float64)
    return float((a*np.arange(idx0,len(a)+idx0)).sum()*scale)
hol=load_net('models/holistic_param.bin','models/holistic_model.bin')
nima=load_net('models/nima_param.bin','models/nima_model.bin')
blur=load_net('models/blur_param.bin','models/blur_model.bin')
blurnet=load_net('models/blurnet_param.bin','models/blurnet_model.bin')
bgr=open('armtest/test.bgr','rb').read()[12:]
w,h=768,512
raw=np.frombuffer(bgr,np.uint8).reshape(h,w,3)
# holistic: use library-dumped resized 224
res=open('armtest/resized.bgr','rb').read()
hm=ncnn.Mat.from_pixels(res,ncnn.Mat.PixelType.PIXEL_BGR,224,224)
hm.substract_mean_normalize([103.94,116.78,123.68],[0.017,0.017,0.017])
ex=hol.create_extractor(); ex.input(0,hm); ex.set_light_mode(False)
rv=[weighted(ex.extract(i)[1],0,0.1) for i in [54,76,65,98,87,109,120]]
# nima
nm=ncnn.Mat.from_pixels_resize(bgr,ncnn.Mat.PixelType.PIXEL_BGR,w,h,224,224)
nm.substract_mean_normalize([0,0,0],[1/255,1/255,1/255])
exn=nima.create_extractor(); exn.input(0,nm); nr=weighted(exn.extract(277)[1],1,1.0)*10
# blur type
exb=blur.create_extractor(); exb.input(0,nm); ba=np.asarray(exb.extract(276)[1]).ravel(); bt=int(ba.argmax())
# cblur: resize to min side 300 using ncnn Mat resize? use PIL bilinear
im=Image.fromarray(raw[:,:,::-1])
scale=300.0/min(w,h)
nw,nh=int(w*scale),int(h*scale)
im2=im.resize((nw,nh),Image.BILINEAR)
arr=np.array(im2)[:,:,::-1].copy()
crops=[]
for gy in range(3):
    for gx in range(3):
        x=gx*((nw-48)//2); y=gy*((nh-48)//2)
        crops.append(arr[y:y+48,x:x+48])
vals=[]
for c in crops:
    m=ncnn.Mat.from_pixels(np.ascontiguousarray(c).tobytes(),ncnn.Mat.PixelType.PIXEL_BGR,48,48)
    m.substract_mean_normalize([127.5]*3,[1/127.5]*3)
    e=blurnet.create_extractor(); e.input(0,m); v=weighted(e.extract(14)[1],0,0.25); vals.append(v)
cb=float(np.mean(vals))
def tr(x): return 100.0*(1.0-x)
out=[tr(rv[0]), 100-abs(100*rv[1]), tr(rv[2]), tr(rv[3]), tr(rv[4]), 100-100*(0.5*rv[5]+0.5*cb), tr(rv[6]), nr]
print('python ', ['%.6f'%x for x in out])
print('native  87.2060242 87.1461868 89.2769394 89.2346039 93.1792603 94.4255905 76.565918 51.9361305')
print('raw holistic',rv,'cblur',cb,'nima',nr,'blurType',bt, 'crop scores',vals)
