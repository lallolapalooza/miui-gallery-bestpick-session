
libiqa.so:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000068f08 <MiIQA::Blur_classifier::Blur_classifier()>:
   68f08:	f81e0ff3 	str	x19, [sp, #-32]!
   68f0c:	a9017bfd 	stp	x29, x30, [sp, #16]
   68f10:	910043fd 	add	x29, sp, #0x10
   68f14:	d0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   68f18:	f946ed08 	ldr	x8, [x8, #3544]
   68f1c:	aa0003f3 	mov	x19, x0
   68f20:	91004108 	add	x8, x8, #0x10
   68f24:	f8008408 	str	x8, [x0], #8
   68f28:	940046d4 	bl	7aa78 <ncnn::Net::Net()>
   68f2c:	0f070400 	movi	v0.2s, #0xe0
   68f30:	52800068 	mov	w8, #0x3                   	// #3
   68f34:	fd002e60 	str	d0, [x19, #88]
   68f38:	b9006268 	str	w8, [x19, #96]
   68f3c:	a9417bfd 	ldp	x29, x30, [sp, #16]
   68f40:	f84207f3 	ldr	x19, [sp], #32
   68f44:	d65f03c0 	ret

0000000000068f48 <MiIQA::Blur_classifier::~Blur_classifier()>:
   68f48:	d0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   68f4c:	f946ed08 	ldr	x8, [x8, #3544]
   68f50:	91004108 	add	x8, x8, #0x10
   68f54:	f8008408 	str	x8, [x0], #8
   68f58:	140046e6 	b	7aaf0 <ncnn::Net::~Net()>

0000000000068f5c <MiIQA::Blur_classifier::~Blur_classifier()>:
   68f5c:	f81e0ff3 	str	x19, [sp, #-32]!
   68f60:	a9017bfd 	stp	x29, x30, [sp, #16]
   68f64:	910043fd 	add	x29, sp, #0x10
   68f68:	d0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   68f6c:	f946ed08 	ldr	x8, [x8, #3544]
   68f70:	aa0003f3 	mov	x19, x0
   68f74:	91004108 	add	x8, x8, #0x10
   68f78:	f8008408 	str	x8, [x0], #8
   68f7c:	940046dd 	bl	7aaf0 <ncnn::Net::~Net()>
   68f80:	a9417bfd 	ldp	x29, x30, [sp, #16]
   68f84:	aa1303e0 	mov	x0, x19
   68f88:	f84207f3 	ldr	x19, [sp], #32
   68f8c:	17fff619 	b	667f0 <operator delete(void*)@plt>

0000000000068f90 <MiIQA::Blur_classifier::LoadModelDefault()>:
   68f90:	f81e0ff3 	str	x19, [sp, #-32]!
   68f94:	a9017bfd 	stp	x29, x30, [sp, #16]
   68f98:	910043fd 	add	x29, sp, #0x10
   68f9c:	91002013 	add	x19, x0, #0x8
   68fa0:	f0002361 	adrp	x1, 4d7000 <blurnet_bin+0x944d0>
   68fa4:	910dc021 	add	x1, x1, #0x370
   68fa8:	aa1303e0 	mov	x0, x19
   68fac:	9400544f 	bl	7e0e8 <ncnn::Net::load_param(unsigned char const*)>
   68fb0:	7100041f 	cmp	w0, #0x1
   68fb4:	5400012b 	b.lt	68fd8 <MiIQA::Blur_classifier::LoadModelDefault()+0x48>  // b.tstop
   68fb8:	d0002381 	adrp	x1, 4da000 <blur_param_bin+0x2c90>
   68fbc:	91060021 	add	x1, x1, #0x180
   68fc0:	aa1303e0 	mov	x0, x19
   68fc4:	94005468 	bl	7e164 <ncnn::Net::load_model(unsigned char const*)>
   68fc8:	7100041f 	cmp	w0, #0x1
   68fcc:	128000e8 	mov	w8, #0xfffffff8            	// #-8
   68fd0:	1a9fb100 	csel	w0, w8, wzr, lt	// lt = tstop
   68fd4:	14000002 	b	68fdc <MiIQA::Blur_classifier::LoadModelDefault()+0x4c>
   68fd8:	128000c0 	mov	w0, #0xfffffff9            	// #-7
   68fdc:	a9417bfd 	ldp	x29, x30, [sp, #16]
   68fe0:	f84207f3 	ldr	x19, [sp], #32
   68fe4:	d65f03c0 	ret

0000000000068fe8 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)>:
   68fe8:	d10503ff 	sub	sp, sp, #0x140
   68fec:	f9008bfc 	str	x28, [sp, #272]
   68ff0:	a9124ff4 	stp	x20, x19, [sp, #288]
   68ff4:	a9137bfd 	stp	x29, x30, [sp, #304]
   68ff8:	9104c3fd 	add	x29, sp, #0x130
   68ffc:	d53bd054 	mrs	x20, tpidr_el0
   69000:	f9401688 	ldr	x8, [x20, #40]
   69004:	aa0003f3 	mov	x19, x0
   69008:	aa1f03e6 	mov	x6, xzr
   6900c:	f81d83a8 	stur	x8, [x29, #-40]
   69010:	294b1404 	ldp	w4, w5, [x0, #88]
   69014:	aa0103e0 	mov	x0, x1
   69018:	d10243a8 	sub	x8, x29, #0x90
   6901c:	52800041 	mov	w1, #0x2                   	// #2
   69020:	940027c8 	bl	72f40 <ncnn::Mat::from_pixels_resize(unsigned char const*, int, int, int, int, int, ncnn::Allocator*)>
   69024:	f00027e8 	adrp	x8, 568000 <blur_bin+0x8de80>
   69028:	9122e108 	add	x8, x8, #0x8b8
   6902c:	f9400109 	ldr	x9, [x8]
   69030:	b9400908 	ldr	w8, [x8, #8]
   69034:	d10243a0 	sub	x0, x29, #0x90
   69038:	d100e3a1 	sub	x1, x29, #0x38
   6903c:	d10123a2 	sub	x2, x29, #0x48
   69040:	b81d03bf 	stur	wzr, [x29, #-48]
   69044:	f81c83bf 	stur	xzr, [x29, #-56]
   69048:	f81b83a9 	stur	x9, [x29, #-72]
   6904c:	b81c03a8 	stur	w8, [x29, #-64]
   69050:	940011b3 	bl	6d71c <ncnn::Mat::substract_mean_normalize(float const*, float const*)>
   69054:	91002260 	add	x0, x19, #0x8
   69058:	910243e8 	add	x8, sp, #0x90
   6905c:	94005566 	bl	7e5f4 <ncnn::Net::create_extractor() const>
   69060:	910243e0 	add	x0, sp, #0x90
   69064:	52800021 	mov	w1, #0x1                   	// #1
   69068:	94005751 	bl	7edac <ncnn::Extractor::set_light_mode(bool)>
   6906c:	910243e0 	add	x0, sp, #0x90
   69070:	d10243a2 	sub	x2, x29, #0x90
   69074:	2a1f03e1 	mov	w1, wzr
   69078:	940057a6 	bl	7ef10 <ncnn::Extractor::input(int, ncnn::Mat const&)>
   6907c:	910243e0 	add	x0, sp, #0x90
   69080:	910123e2 	add	x2, sp, #0x48
   69084:	52802281 	mov	w1, #0x114                 	// #276
   69088:	2a1f03e3 	mov	w3, wzr
   6908c:	f90047ff 	str	xzr, [sp, #136]
   69090:	a904ffff 	stp	xzr, xzr, [sp, #72]
   69094:	f9002fff 	str	xzr, [sp, #88]
   69098:	b90063ff 	str	wzr, [sp, #96]
   6909c:	a906ffff 	stp	xzr, xzr, [sp, #104]
   690a0:	f9003fff 	str	xzr, [sp, #120]
   690a4:	b90083ff 	str	wzr, [sp, #128]
   690a8:	9400583c 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   690ac:	294ea7e8 	ldp	w8, w9, [sp, #116]
   690b0:	b94083ea 	ldr	w10, [sp, #128]
   690b4:	910123e0 	add	x0, sp, #0x48
   690b8:	aa1f03e2 	mov	x2, xzr
   690bc:	1b087d28 	mul	w8, w9, w8
   690c0:	1b0a7d01 	mul	w1, w8, w10
   690c4:	910003e8 	mov	x8, sp
   690c8:	94000d94 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   690cc:	694ea7e8 	ldpsw	x8, x9, [sp, #116]
   690d0:	b98083ea 	ldrsw	x10, [sp, #128]
   690d4:	9b087d28 	mul	x8, x9, x8
   690d8:	9b0a7d08 	mul	x8, x8, x10
   690dc:	7100051f 	cmp	w8, #0x1
   690e0:	540001eb 	b.lt	6911c <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x134>  // b.tstop
   690e4:	f94003ea 	ldr	x10, [sp]
   690e8:	aa1f03e9 	mov	x9, xzr
   690ec:	2a1f03f3 	mov	w19, wzr
   690f0:	1e2703e0 	fmov	s0, wzr
   690f4:	bc697941 	ldr	s1, [x10, x9, lsl #2]
   690f8:	1e202020 	fcmp	s1, s0
   690fc:	1a93c133 	csel	w19, w9, w19, gt
   69100:	91000529 	add	x9, x9, #0x1
   69104:	1e20cc20 	fcsel	s0, s1, s0, gt
   69108:	eb08013f 	cmp	x9, x8
   6910c:	54ffff4b 	b.lt	690f4 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x10c>  // b.tstop
   69110:	f94007e8 	ldr	x8, [sp, #8]
   69114:	b50000a8 	cbnz	x8, 69128 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x140>
   69118:	14000015 	b	6916c <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x184>
   6911c:	2a1f03f3 	mov	w19, wzr
   69120:	f94007e8 	ldr	x8, [sp, #8]
   69124:	b4000248 	cbz	x8, 6916c <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x184>
   69128:	885ffd09 	ldaxr	w9, [x8]
   6912c:	71000529 	subs	w9, w9, #0x1
   69130:	880afd09 	stlxr	w10, w9, [x8]
   69134:	35ffffaa 	cbnz	w10, 69128 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x140>
   69138:	540001a1 	b.ne	6916c <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x184>  // b.any
   6913c:	f94013e0 	ldr	x0, [sp, #32]
   69140:	f94003e1 	ldr	x1, [sp]
   69144:	b40000e0 	cbz	x0, 69160 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x178>
   69148:	f9400008 	ldr	x8, [x0]
   6914c:	f9400d08 	ldr	x8, [x8, #24]
   69150:	d63f0100 	blr	x8
   69154:	f9402be8 	ldr	x8, [sp, #80]
   69158:	b50000e8 	cbnz	x8, 69174 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x18c>
   6915c:	14000015 	b	691b0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1c8>
   69160:	b4000061 	cbz	x1, 6916c <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x184>
   69164:	aa0103e0 	mov	x0, x1
   69168:	97fff65e 	bl	66ae0 <free@plt>
   6916c:	f9402be8 	ldr	x8, [sp, #80]
   69170:	b4000208 	cbz	x8, 691b0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1c8>
   69174:	885ffd09 	ldaxr	w9, [x8]
   69178:	71000529 	subs	w9, w9, #0x1
   6917c:	880afd09 	stlxr	w10, w9, [x8]
   69180:	35ffffaa 	cbnz	w10, 69174 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x18c>
   69184:	54000161 	b.ne	691b0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1c8>  // b.any
   69188:	f94037e0 	ldr	x0, [sp, #104]
   6918c:	f94027e1 	ldr	x1, [sp, #72]
   69190:	b40000a0 	cbz	x0, 691a4 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1bc>
   69194:	f9400008 	ldr	x8, [x0]
   69198:	f9400d08 	ldr	x8, [x8, #24]
   6919c:	d63f0100 	blr	x8
   691a0:	14000004 	b	691b0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1c8>
   691a4:	b4000061 	cbz	x1, 691b0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1c8>
   691a8:	aa0103e0 	mov	x0, x1
   691ac:	97fff64d 	bl	66ae0 <free@plt>
   691b0:	910243e0 	add	x0, sp, #0x90
   691b4:	9400562c 	bl	7ea64 <ncnn::Extractor::~Extractor()>
   691b8:	f85783a8 	ldur	x8, [x29, #-136]
   691bc:	b4000208 	cbz	x8, 691fc <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x214>
   691c0:	885ffd09 	ldaxr	w9, [x8]
   691c4:	71000529 	subs	w9, w9, #0x1
   691c8:	880afd09 	stlxr	w10, w9, [x8]
   691cc:	35ffffaa 	cbnz	w10, 691c0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x1d8>
   691d0:	54000161 	b.ne	691fc <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x214>  // b.any
   691d4:	f85903a0 	ldur	x0, [x29, #-112]
   691d8:	f85703a1 	ldur	x1, [x29, #-144]
   691dc:	b40000a0 	cbz	x0, 691f0 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x208>
   691e0:	f9400008 	ldr	x8, [x0]
   691e4:	f9400d08 	ldr	x8, [x8, #24]
   691e8:	d63f0100 	blr	x8
   691ec:	14000004 	b	691fc <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x214>
   691f0:	b4000061 	cbz	x1, 691fc <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x214>
   691f4:	aa0103e0 	mov	x0, x1
   691f8:	97fff63a 	bl	66ae0 <free@plt>
   691fc:	f9401688 	ldr	x8, [x20, #40]
   69200:	f85d83a9 	ldur	x9, [x29, #-40]
   69204:	eb09011f 	cmp	x8, x9
   69208:	540000e1 	b.ne	69224 <MiIQA::Blur_classifier::Predict(unsigned char const*, int, int)+0x23c>  // b.any
   6920c:	2a1303e0 	mov	w0, w19
   69210:	a9537bfd 	ldp	x29, x30, [sp, #304]
   69214:	a9524ff4 	ldp	x20, x19, [sp, #288]
   69218:	f9408bfc 	ldr	x28, [sp, #272]
   6921c:	910503ff 	add	sp, sp, #0x140
   69220:	d65f03c0 	ret
   69224:	97fffa8f 	bl	67c60 <__stack_chk_fail@plt>

0000000000069228 <MiIQA::ImageEsthectis::ImageEsthectis()>:
   69228:	f81e0ff3 	str	x19, [sp, #-32]!
   6922c:	a9017bfd 	stp	x29, x30, [sp, #16]
   69230:	910043fd 	add	x29, sp, #0x10
   69234:	b0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   69238:	f945b108 	ldr	x8, [x8, #2912]
   6923c:	aa0003f3 	mov	x19, x0
   69240:	91004108 	add	x8, x8, #0x10
   69244:	f8008408 	str	x8, [x0], #8
   69248:	9400460c 	bl	7aa78 <ncnn::Net::Net()>
   6924c:	0f070400 	movi	v0.2s, #0xe0
   69250:	52800068 	mov	w8, #0x3                   	// #3
   69254:	fd002e60 	str	d0, [x19, #88]
   69258:	b9006268 	str	w8, [x19, #96]
   6925c:	a9417bfd 	ldp	x29, x30, [sp, #16]
   69260:	f84207f3 	ldr	x19, [sp], #32
   69264:	d65f03c0 	ret

0000000000069268 <MiIQA::ImageEsthectis::~ImageEsthectis()>:
   69268:	b0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   6926c:	f945b108 	ldr	x8, [x8, #2912]
   69270:	91004108 	add	x8, x8, #0x10
   69274:	f8008408 	str	x8, [x0], #8
   69278:	1400461e 	b	7aaf0 <ncnn::Net::~Net()>

000000000006927c <MiIQA::ImageEsthectis::~ImageEsthectis()>:
   6927c:	f81e0ff3 	str	x19, [sp, #-32]!
   69280:	a9017bfd 	stp	x29, x30, [sp, #16]
   69284:	910043fd 	add	x29, sp, #0x10
   69288:	b0005668 	adrp	x8, b36000 <posix_memalign@LIBC>
   6928c:	f945b108 	ldr	x8, [x8, #2912]
   69290:	aa0003f3 	mov	x19, x0
   69294:	91004108 	add	x8, x8, #0x10
   69298:	f8008408 	str	x8, [x0], #8
   6929c:	94004615 	bl	7aaf0 <ncnn::Net::~Net()>
   692a0:	a9417bfd 	ldp	x29, x30, [sp, #16]
   692a4:	aa1303e0 	mov	x0, x19
   692a8:	f84207f3 	ldr	x19, [sp], #32
   692ac:	17fff551 	b	667f0 <operator delete(void*)@plt>

00000000000692b0 <MiIQA::ImageEsthectis::LoadDefaultModel()>:
   692b0:	f81e0ff3 	str	x19, [sp, #-32]!
   692b4:	a9017bfd 	stp	x29, x30, [sp, #16]
   692b8:	910043fd 	add	x29, sp, #0x10
   692bc:	91002013 	add	x19, x0, #0x8
   692c0:	f00027e1 	adrp	x1, 568000 <blur_bin+0x8de80>
   692c4:	91231021 	add	x1, x1, #0x8c4
   692c8:	aa1303e0 	mov	x0, x19
   692cc:	94005387 	bl	7e0e8 <ncnn::Net::load_param(unsigned char const*)>
   692d0:	7100041f 	cmp	w0, #0x1
   692d4:	5400012b 	b.lt	692f8 <MiIQA::ImageEsthectis::LoadDefaultModel()+0x48>  // b.tstop
   692d8:	d0002801 	adrp	x1, 56b000 <nima_param_bin+0x273c>
   692dc:	911bb021 	add	x1, x1, #0x6ec
   692e0:	aa1303e0 	mov	x0, x19
   692e4:	940053a0 	bl	7e164 <ncnn::Net::load_model(unsigned char const*)>
   692e8:	7100041f 	cmp	w0, #0x1
   692ec:	12800068 	mov	w8, #0xfffffffc            	// #-4
   692f0:	1a9fb100 	csel	w0, w8, wzr, lt	// lt = tstop
   692f4:	14000002 	b	692fc <MiIQA::ImageEsthectis::LoadDefaultModel()+0x4c>
   692f8:	12800040 	mov	w0, #0xfffffffd            	// #-3
   692fc:	a9417bfd 	ldp	x29, x30, [sp, #16]
   69300:	f84207f3 	ldr	x19, [sp], #32
   69304:	d65f03c0 	ret

0000000000069308 <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)>:
   69308:	a9bb67fa 	stp	x26, x25, [sp, #-80]!
   6930c:	a9015ff8 	stp	x24, x23, [sp, #16]
   69310:	a90257f6 	stp	x22, x21, [sp, #32]
   69314:	a9034ff4 	stp	x20, x19, [sp, #48]
   69318:	a9047bfd 	stp	x29, x30, [sp, #64]
   6931c:	910103fd 	add	x29, sp, #0x40
   69320:	b4000461 	cbz	x1, 693ac <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)+0xa4>
   69324:	b9405818 	ldr	w24, [x0, #88]
   69328:	2a0203f6 	mov	w22, w2
   6932c:	aa0003f4 	mov	x20, x0
   69330:	6b02031f 	cmp	w24, w2
   69334:	540003cc 	b.gt	693ac <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)+0xa4>
   69338:	b9405e9a 	ldr	w26, [x20, #92]
   6933c:	2a0303f5 	mov	w21, w3
   69340:	6b03035f 	cmp	w26, w3
   69344:	5400034c 	b.gt	693ac <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)+0xa4>
   69348:	b9806288 	ldrsw	x8, [x20, #96]
   6934c:	1b187f49 	mul	w9, w26, w24
   69350:	93407d29 	sxtw	x9, w9
   69354:	aa0403f3 	mov	x19, x4
   69358:	9b087d20 	mul	x0, x9, x8
   6935c:	aa0103f7 	mov	x23, x1
   69360:	97fff538 	bl	66840 <operator new[](unsigned long)@plt>
   69364:	aa0003f9 	mov	x25, x0
   69368:	aa1703e0 	mov	x0, x23
   6936c:	2a1603e1 	mov	w1, w22
   69370:	2a1503e2 	mov	w2, w21
   69374:	aa1903e3 	mov	x3, x25
   69378:	2a1803e4 	mov	w4, w24
   6937c:	2a1a03e5 	mov	w5, w26
   69380:	97fff70c 	bl	66fb0 <resize_bilinear_c3(unsigned char const*, int, int, unsigned char*, int, int)@plt>
   69384:	294b0e82 	ldp	w2, w3, [x20, #88]
   69388:	aa1403e0 	mov	x0, x20
   6938c:	aa1903e1 	mov	x1, x25
   69390:	aa1303e4 	mov	x4, x19
   69394:	97fffabf 	bl	67e90 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)@plt>
   69398:	37f800a0 	tbnz	w0, #31, 693ac <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)+0xa4>
   6939c:	aa1903e0 	mov	x0, x25
   693a0:	97fff824 	bl	67430 <operator delete[](void*)@plt>
   693a4:	2a1f03e0 	mov	w0, wzr
   693a8:	14000002 	b	693b0 <MiIQA::ImageEsthectis::Predict(unsigned char const*, int, int, float&)+0xa8>
   693ac:	12800000 	mov	w0, #0xffffffff            	// #-1
   693b0:	a9447bfd 	ldp	x29, x30, [sp, #64]
   693b4:	a9434ff4 	ldp	x20, x19, [sp, #48]
   693b8:	a94257f6 	ldp	x22, x21, [sp, #32]
   693bc:	a9415ff8 	ldp	x24, x23, [sp, #16]
   693c0:	a8c567fa 	ldp	x26, x25, [sp], #80
   693c4:	d65f03c0 	ret

00000000000693c8 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)>:
   693c8:	d10503ff 	sub	sp, sp, #0x140
   693cc:	a91157fc 	stp	x28, x21, [sp, #272]
   693d0:	a9124ff4 	stp	x20, x19, [sp, #288]
   693d4:	a9137bfd 	stp	x29, x30, [sp, #304]
   693d8:	9104c3fd 	add	x29, sp, #0x130
   693dc:	d53bd055 	mrs	x21, tpidr_el0
   693e0:	f94016a8 	ldr	x8, [x21, #40]
   693e4:	f81d83a8 	stur	x8, [x29, #-40]
   693e8:	b4000a41 	cbz	x1, 69530 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x168>
   693ec:	b9405808 	ldr	w8, [x0, #88]
   693f0:	aa0003f4 	mov	x20, x0
   693f4:	6b02011f 	cmp	w8, w2
   693f8:	540009c1 	b.ne	69530 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x168>  // b.any
   693fc:	b9405e88 	ldr	w8, [x20, #92]
   69400:	6b03011f 	cmp	w8, w3
   69404:	54000961 	b.ne	69530 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x168>  // b.any
   69408:	aa0103e9 	mov	x9, x1
   6940c:	aa0403f3 	mov	x19, x4
   69410:	d10243a8 	sub	x8, x29, #0x90
   69414:	52800041 	mov	w1, #0x2                   	// #2
   69418:	52801c04 	mov	w4, #0xe0                  	// #224
   6941c:	52801c05 	mov	w5, #0xe0                  	// #224
   69420:	aa0903e0 	mov	x0, x9
   69424:	aa1f03e6 	mov	x6, xzr
   69428:	940026c6 	bl	72f40 <ncnn::Mat::from_pixels_resize(unsigned char const*, int, int, int, int, int, ncnn::Allocator*)>
   6942c:	b0003348 	adrp	x8, 6d2000 <nima_bin+0x166914>
   69430:	91350108 	add	x8, x8, #0xd40
   69434:	f9400109 	ldr	x9, [x8]
   69438:	b9400908 	ldr	w8, [x8, #8]
   6943c:	b81d03bf 	stur	wzr, [x29, #-48]
   69440:	f81c83bf 	stur	xzr, [x29, #-56]
   69444:	f81b83a9 	stur	x9, [x29, #-72]
   69448:	b81c03a8 	stur	w8, [x29, #-64]
   6944c:	97fff5b9 	bl	66b30 <getCurrentTime()@plt>
   69450:	d10243a0 	sub	x0, x29, #0x90
   69454:	d100e3a1 	sub	x1, x29, #0x38
   69458:	d10123a2 	sub	x2, x29, #0x48
   6945c:	940010b0 	bl	6d71c <ncnn::Mat::substract_mean_normalize(float const*, float const*)>
   69460:	97fff5b4 	bl	66b30 <getCurrentTime()@plt>
   69464:	91002280 	add	x0, x20, #0x8
   69468:	910243e8 	add	x8, sp, #0x90
   6946c:	94005462 	bl	7e5f4 <ncnn::Net::create_extractor() const>
   69470:	910243e0 	add	x0, sp, #0x90
   69474:	52800021 	mov	w1, #0x1                   	// #1
   69478:	9400564d 	bl	7edac <ncnn::Extractor::set_light_mode(bool)>
   6947c:	910243e0 	add	x0, sp, #0x90
   69480:	d10243a2 	sub	x2, x29, #0x90
   69484:	2a1f03e1 	mov	w1, wzr
   69488:	f90047ff 	str	xzr, [sp, #136]
   6948c:	a904ffff 	stp	xzr, xzr, [sp, #72]
   69490:	f9002fff 	str	xzr, [sp, #88]
   69494:	b90063ff 	str	wzr, [sp, #96]
   69498:	a906ffff 	stp	xzr, xzr, [sp, #104]
   6949c:	f9003fff 	str	xzr, [sp, #120]
   694a0:	b90083ff 	str	wzr, [sp, #128]
   694a4:	9400569b 	bl	7ef10 <ncnn::Extractor::input(int, ncnn::Mat const&)>
   694a8:	910243e0 	add	x0, sp, #0x90
   694ac:	910123e2 	add	x2, sp, #0x48
   694b0:	528022a1 	mov	w1, #0x115                 	// #277
   694b4:	2a1f03e3 	mov	w3, wzr
   694b8:	94005738 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   694bc:	b900027f 	str	wzr, [x19]
   694c0:	294eabe8 	ldp	w8, w10, [sp, #116]
   694c4:	b94083e9 	ldr	w9, [sp, #128]
   694c8:	910123e0 	add	x0, sp, #0x48
   694cc:	aa1f03e2 	mov	x2, xzr
   694d0:	1b097d08 	mul	w8, w8, w9
   694d4:	1b0a7d01 	mul	w1, w8, w10
   694d8:	910003e8 	mov	x8, sp
   694dc:	94000c8f 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   694e0:	f94007e8 	ldr	x8, [sp, #8]
   694e4:	b40000a8 	cbz	x8, 694f8 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x130>
   694e8:	885ffd09 	ldaxr	w9, [x8]
   694ec:	11000529 	add	w9, w9, #0x1
   694f0:	880afd09 	stlxr	w10, w9, [x8]
   694f4:	35ffffaa 	cbnz	w10, 694e8 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x120>
   694f8:	f9402be8 	ldr	x8, [sp, #80]
   694fc:	b4000348 	cbz	x8, 69564 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x19c>
   69500:	885ffd09 	ldaxr	w9, [x8]
   69504:	71000529 	subs	w9, w9, #0x1
   69508:	880afd09 	stlxr	w10, w9, [x8]
   6950c:	35ffffaa 	cbnz	w10, 69500 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x138>
   69510:	540002a1 	b.ne	69564 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x19c>  // b.any
   69514:	f94037e0 	ldr	x0, [sp, #104]
   69518:	f94027e1 	ldr	x1, [sp, #72]
   6951c:	b40001e0 	cbz	x0, 69558 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x190>
   69520:	f9400008 	ldr	x8, [x0]
   69524:	f9400d08 	ldr	x8, [x8, #24]
   69528:	d63f0100 	blr	x8
   6952c:	1400000e 	b	69564 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x19c>
   69530:	12800000 	mov	w0, #0xffffffff            	// #-1
   69534:	f94016a8 	ldr	x8, [x21, #40]
   69538:	f85d83a9 	ldur	x9, [x29, #-40]
   6953c:	eb09011f 	cmp	x8, x9
   69540:	54000ec1 	b.ne	69718 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x350>  // b.any
   69544:	a9537bfd 	ldp	x29, x30, [sp, #304]
   69548:	a9524ff4 	ldp	x20, x19, [sp, #288]
   6954c:	a95157fc 	ldp	x28, x21, [sp, #272]
   69550:	910503ff 	add	sp, sp, #0x140
   69554:	d65f03c0 	ret
   69558:	b4000061 	cbz	x1, 69564 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x19c>
   6955c:	aa0103e0 	mov	x0, x1
   69560:	97fff560 	bl	66ae0 <free@plt>
   69564:	f94003e8 	ldr	x8, [sp]
   69568:	b9401be9 	ldr	w9, [sp, #24]
   6956c:	3cc083e0 	ldur	q0, [sp, #8]
   69570:	3cc283e1 	ldur	q1, [sp, #40]
   69574:	f90027e8 	str	x8, [sp, #72]
   69578:	f94013e8 	ldr	x8, [sp, #32]
   6957c:	b90063e9 	str	w9, [sp, #96]
   69580:	b9403be9 	ldr	w9, [sp, #56]
   69584:	3c8503e0 	stur	q0, [sp, #80]
   69588:	f90037e8 	str	x8, [sp, #104]
   6958c:	f94023e8 	ldr	x8, [sp, #64]
   69590:	b90083e9 	str	w9, [sp, #128]
   69594:	3c8703e1 	stur	q1, [sp, #112]
   69598:	f90047e8 	str	x8, [sp, #136]
   6959c:	9e660008 	fmov	x8, d0
   695a0:	b4000208 	cbz	x8, 695e0 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x218>
   695a4:	885ffd09 	ldaxr	w9, [x8]
   695a8:	71000529 	subs	w9, w9, #0x1
   695ac:	880afd09 	stlxr	w10, w9, [x8]
   695b0:	35ffffaa 	cbnz	w10, 695a4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x1dc>
   695b4:	54000161 	b.ne	695e0 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x218>  // b.any
   695b8:	f94013e0 	ldr	x0, [sp, #32]
   695bc:	f94003e1 	ldr	x1, [sp]
   695c0:	b40000a0 	cbz	x0, 695d4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x20c>
   695c4:	f9400008 	ldr	x8, [x0]
   695c8:	f9400d08 	ldr	x8, [x8, #24]
   695cc:	d63f0100 	blr	x8
   695d0:	14000004 	b	695e0 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x218>
   695d4:	b4000061 	cbz	x1, 695e0 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x218>
   695d8:	aa0103e0 	mov	x0, x1
   695dc:	97fff541 	bl	66ae0 <free@plt>
   695e0:	694eabe8 	ldpsw	x8, x10, [sp, #116]
   695e4:	b98083e9 	ldrsw	x9, [sp, #128]
   695e8:	9b097d08 	mul	x8, x8, x9
   695ec:	9b0a7d08 	mul	x8, x8, x10
   695f0:	7100051f 	cmp	w8, #0x1
   695f4:	5400018b 	b.lt	69624 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x25c>  // b.tstop
   695f8:	f94027e9 	ldr	x9, [sp, #72]
   695fc:	bd400260 	ldr	s0, [x19]
   69600:	aa1f03ea 	mov	x10, xzr
   69604:	bc6a7921 	ldr	s1, [x9, x10, lsl #2]
   69608:	9100054a 	add	x10, x10, #0x1
   6960c:	1e220142 	scvtf	s2, w10
   69610:	eb08015f 	cmp	x10, x8
   69614:	1e220821 	fmul	s1, s1, s2
   69618:	1e212800 	fadd	s0, s0, s1
   6961c:	bd000260 	str	s0, [x19]
   69620:	54ffff2b 	b.lt	69604 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x23c>  // b.tstop
   69624:	b0005673 	adrp	x19, b36000 <posix_memalign@LIBC>
   69628:	f944ca73 	ldr	x19, [x19, #2448]
   6962c:	f9400268 	ldr	x8, [x19]
   69630:	f85e8108 	ldur	x8, [x8, #-24]
   69634:	8b080260 	add	x0, x19, x8
   69638:	910003e8 	mov	x8, sp
   6963c:	97fff96d 	bl	67bf0 <std::__ndk1::ios_base::getloc() const@plt>
   69640:	b0005661 	adrp	x1, b36000 <posix_memalign@LIBC>
   69644:	f944c421 	ldr	x1, [x1, #2440]
   69648:	910003e0 	mov	x0, sp
   6964c:	97fff9dd 	bl	67dc0 <std::__ndk1::locale::use_facet(std::__ndk1::locale::id&) const@plt>
   69650:	f9400008 	ldr	x8, [x0]
   69654:	52800141 	mov	w1, #0xa                   	// #10
   69658:	f9401d08 	ldr	x8, [x8, #56]
   6965c:	d63f0100 	blr	x8
   69660:	2a0003f4 	mov	w20, w0
   69664:	910003e0 	mov	x0, sp
   69668:	97fff9ca 	bl	67d90 <std::__ndk1::locale::~locale()@plt>
   6966c:	aa1303e0 	mov	x0, x19
   69670:	2a1403e1 	mov	w1, w20
   69674:	97fff53f 	bl	66b70 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)@plt>
   69678:	aa1303e0 	mov	x0, x19
   6967c:	97fff9c9 	bl	67da0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()@plt>
   69680:	f9402be8 	ldr	x8, [sp, #80]
   69684:	b4000208 	cbz	x8, 696c4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2fc>
   69688:	885ffd09 	ldaxr	w9, [x8]
   6968c:	71000529 	subs	w9, w9, #0x1
   69690:	880afd09 	stlxr	w10, w9, [x8]
   69694:	35ffffaa 	cbnz	w10, 69688 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2c0>
   69698:	54000161 	b.ne	696c4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2fc>  // b.any
   6969c:	f94037e0 	ldr	x0, [sp, #104]
   696a0:	f94027e1 	ldr	x1, [sp, #72]
   696a4:	b40000a0 	cbz	x0, 696b8 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2f0>
   696a8:	f9400008 	ldr	x8, [x0]
   696ac:	f9400d08 	ldr	x8, [x8, #24]
   696b0:	d63f0100 	blr	x8
   696b4:	14000004 	b	696c4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2fc>
   696b8:	b4000061 	cbz	x1, 696c4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x2fc>
   696bc:	aa0103e0 	mov	x0, x1
   696c0:	97fff508 	bl	66ae0 <free@plt>
   696c4:	910243e0 	add	x0, sp, #0x90
   696c8:	940054e7 	bl	7ea64 <ncnn::Extractor::~Extractor()>
   696cc:	f85783a8 	ldur	x8, [x29, #-136]
   696d0:	b4000208 	cbz	x8, 69710 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x348>
   696d4:	885ffd09 	ldaxr	w9, [x8]
   696d8:	71000529 	subs	w9, w9, #0x1
   696dc:	880afd09 	stlxr	w10, w9, [x8]
   696e0:	35ffffaa 	cbnz	w10, 696d4 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x30c>
   696e4:	54000161 	b.ne	69710 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x348>  // b.any
   696e8:	f85903a0 	ldur	x0, [x29, #-112]
   696ec:	f85703a1 	ldur	x1, [x29, #-144]
   696f0:	b40000a0 	cbz	x0, 69704 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x33c>
   696f4:	f9400008 	ldr	x8, [x0]
   696f8:	f9400d08 	ldr	x8, [x8, #24]
   696fc:	d63f0100 	blr	x8
   69700:	14000004 	b	69710 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x348>
   69704:	b4000061 	cbz	x1, 69710 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x348>
   69708:	aa0103e0 	mov	x0, x1
   6970c:	97fff4f5 	bl	66ae0 <free@plt>
   69710:	2a1f03e0 	mov	w0, wzr
   69714:	17ffff88 	b	69534 <MiIQA::ImageEsthectis::Forward(unsigned char const*, int, int, float&)+0x16c>
   69718:	97fff952 	bl	67c60 <__stack_chk_fail@plt>

000000000006971c <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)>:
   6971c:	a9be4ff4 	stp	x20, x19, [sp, #-32]!
   69720:	a9017bfd 	stp	x29, x30, [sp, #16]
   69724:	910043fd 	add	x29, sp, #0x10
   69728:	f9400008 	ldr	x8, [x0]
   6972c:	aa0003f3 	mov	x19, x0
   69730:	f85e8109 	ldur	x9, [x8, #-24]
   69734:	8b09000a 	add	x10, x0, x9
   69738:	b940214b 	ldr	w11, [x10, #32]
   6973c:	350003ab 	cbnz	w11, 697b0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x94>
   69740:	f9404540 	ldr	x0, [x10, #136]
   69744:	2a0103f4 	mov	w20, w1
   69748:	b4000080 	cbz	x0, 69758 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x3c>
   6974c:	97fff995 	bl	67da0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()@plt>
   69750:	f9400268 	ldr	x8, [x19]
   69754:	f85e8109 	ldur	x9, [x8, #-24]
   69758:	8b090269 	add	x9, x19, x9
   6975c:	f9401520 	ldr	x0, [x9, #40]
   69760:	b40001e0 	cbz	x0, 6979c <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x80>
   69764:	a9432408 	ldp	x8, x9, [x0, #48]
   69768:	eb09011f 	cmp	x8, x9
   6976c:	540000a0 	b.eq	69780 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x64>  // b.none
   69770:	91000509 	add	x9, x8, #0x1
   69774:	f9001809 	str	x9, [x0, #48]
   69778:	39000114 	strb	w20, [x8]
   6977c:	1400000d 	b	697b0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x94>
   69780:	f9400008 	ldr	x8, [x0]
   69784:	12001e81 	and	w1, w20, #0xff
   69788:	f9403508 	ldr	x8, [x8, #104]
   6978c:	d63f0100 	blr	x8
   69790:	3100041f 	cmn	w0, #0x1
   69794:	540000e1 	b.ne	697b0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0x94>  // b.any
   69798:	f9400268 	ldr	x8, [x19]
   6979c:	f85e8108 	ldur	x8, [x8, #-24]
   697a0:	8b080260 	add	x0, x19, x8
   697a4:	b9402008 	ldr	w8, [x0, #32]
   697a8:	32000101 	orr	w1, w8, #0x1
   697ac:	97fff451 	bl	668f0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   697b0:	f9400268 	ldr	x8, [x19]
   697b4:	f85e8108 	ldur	x8, [x8, #-24]
   697b8:	8b080268 	add	x8, x19, x8
   697bc:	f9401509 	ldr	x9, [x8, #40]
   697c0:	b40002c9 	cbz	x9, 69818 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0xfc>
   697c4:	b9402109 	ldr	w9, [x8, #32]
   697c8:	35000289 	cbnz	w9, 69818 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0xfc>
   697cc:	39402508 	ldrb	w8, [x8, #9]
   697d0:	36280248 	tbz	w8, #5, 69818 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0xfc>
   697d4:	97fff98b 	bl	67e00 <std::uncaught_exception()@plt>
   697d8:	37000200 	tbnz	w0, #0, 69818 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0xfc>
   697dc:	f9400268 	ldr	x8, [x19]
   697e0:	f85e8108 	ldur	x8, [x8, #-24]
   697e4:	8b080268 	add	x8, x19, x8
   697e8:	f9401500 	ldr	x0, [x8, #40]
   697ec:	f9400008 	ldr	x8, [x0]
   697f0:	f9401908 	ldr	x8, [x8, #48]
   697f4:	d63f0100 	blr	x8
   697f8:	3100041f 	cmn	w0, #0x1
   697fc:	540000e1 	b.ne	69818 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::put(char)+0xfc>  // b.any
   69800:	f9400268 	ldr	x8, [x19]
   69804:	f85e8108 	ldur	x8, [x8, #-24]
   69808:	8b080260 	add	x0, x19, x8
   6980c:	b9402008 	ldr	w8, [x0, #32]
   69810:	32000101 	orr	w1, w8, #0x1
   69814:	97fff437 	bl	668f0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   69818:	a9417bfd 	ldp	x29, x30, [sp, #16]
   6981c:	aa1303e0 	mov	x0, x19
   69820:	a8c24ff4 	ldp	x20, x19, [sp], #32
   69824:	d65f03c0 	ret

0000000000069828 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()>:
   69828:	f81e0ff3 	str	x19, [sp, #-32]!
   6982c:	a9017bfd 	stp	x29, x30, [sp, #16]
   69830:	910043fd 	add	x29, sp, #0x10
   69834:	f9400008 	ldr	x8, [x0]
   69838:	aa0003f3 	mov	x19, x0
   6983c:	f85e8108 	ldur	x8, [x8, #-24]
   69840:	8b080008 	add	x8, x0, x8
   69844:	f9401500 	ldr	x0, [x8, #40]
   69848:	b4000600 	cbz	x0, 69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>
   6984c:	b9402109 	ldr	w9, [x8, #32]
   69850:	35000289 	cbnz	w9, 698a0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0x78>
   69854:	f9404508 	ldr	x8, [x8, #136]
   69858:	b40000e8 	cbz	x8, 69874 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0x4c>
   6985c:	aa0803e0 	mov	x0, x8
   69860:	97fff950 	bl	67da0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()@plt>
   69864:	f9400268 	ldr	x8, [x19]
   69868:	f85e8108 	ldur	x8, [x8, #-24]
   6986c:	8b080268 	add	x8, x19, x8
   69870:	f9401500 	ldr	x0, [x8, #40]
   69874:	f9400008 	ldr	x8, [x0]
   69878:	f9401908 	ldr	x8, [x8, #48]
   6987c:	d63f0100 	blr	x8
   69880:	3100041f 	cmn	w0, #0x1
   69884:	540000e1 	b.ne	698a0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0x78>  // b.any
   69888:	f9400268 	ldr	x8, [x19]
   6988c:	f85e8108 	ldur	x8, [x8, #-24]
   69890:	8b080260 	add	x0, x19, x8
   69894:	b9402008 	ldr	w8, [x0, #32]
   69898:	32000101 	orr	w1, w8, #0x1
   6989c:	97fff415 	bl	668f0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   698a0:	f9400268 	ldr	x8, [x19]
   698a4:	f85e8108 	ldur	x8, [x8, #-24]
   698a8:	8b080268 	add	x8, x19, x8
   698ac:	f9401509 	ldr	x9, [x8, #40]
   698b0:	b40002c9 	cbz	x9, 69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>
   698b4:	b9402109 	ldr	w9, [x8, #32]
   698b8:	35000289 	cbnz	w9, 69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>
   698bc:	39402508 	ldrb	w8, [x8, #9]
   698c0:	36280248 	tbz	w8, #5, 69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>
   698c4:	97fff94f 	bl	67e00 <std::uncaught_exception()@plt>
   698c8:	37000200 	tbnz	w0, #0, 69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>
   698cc:	f9400268 	ldr	x8, [x19]
   698d0:	f85e8108 	ldur	x8, [x8, #-24]
   698d4:	8b080268 	add	x8, x19, x8
   698d8:	f9401500 	ldr	x0, [x8, #40]
   698dc:	f9400008 	ldr	x8, [x0]
   698e0:	f9401908 	ldr	x8, [x8, #48]
   698e4:	d63f0100 	blr	x8
   698e8:	3100041f 	cmn	w0, #0x1
   698ec:	540000e1 	b.ne	69908 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()+0xe0>  // b.any
   698f0:	f9400268 	ldr	x8, [x19]
   698f4:	f85e8108 	ldur	x8, [x8, #-24]
   698f8:	8b080260 	add	x0, x19, x8
   698fc:	b9402008 	ldr	w8, [x0, #32]
   69900:	32000101 	orr	w1, w8, #0x1
   69904:	97fff3fb 	bl	668f0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   69908:	a9417bfd 	ldp	x29, x30, [sp, #16]
   6990c:	aa1303e0 	mov	x0, x19
   69910:	f84207f3 	ldr	x19, [sp], #32
   69914:	d65f03c0 	ret
