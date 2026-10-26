
libs/libJNI_SimilarImgCluster.so:     file format elf64-littleaarch64


Disassembly of section .text:

00000000000664b4 <MiCluster::ImageCluster::initialize(float, float, float, float, int, float, float, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, int)>:
   664b4:	6db933ed 	stp	d13, d12, [sp, #-112]!
   664b8:	6d012beb 	stp	d11, d10, [sp, #16]
   664bc:	6d0223e9 	stp	d9, d8, [sp, #32]
   664c0:	f9001bf7 	str	x23, [sp, #48]
   664c4:	a90457f6 	stp	x22, x21, [sp, #64]
   664c8:	a9054ff4 	stp	x20, x19, [sp, #80]
   664cc:	a9067bfd 	stp	x29, x30, [sp, #96]
   664d0:	910183fd 	add	x29, sp, #0x60
   664d4:	aa0003f4 	mov	x20, x0
   664d8:	52800a00 	mov	w0, #0x50                  	// #80
   664dc:	2a0303f3 	mov	w19, w3
   664e0:	aa0203f5 	mov	x21, x2
   664e4:	4ea51ca8 	mov	v8.16b, v5.16b
   664e8:	4ea41c89 	mov	v9.16b, v4.16b
   664ec:	2a0103f6 	mov	w22, w1
   664f0:	4ea31c6a 	mov	v10.16b, v3.16b
   664f4:	4ea21c4b 	mov	v11.16b, v2.16b
   664f8:	4ea11c2c 	mov	v12.16b, v1.16b
   664fc:	4ea01c0d 	mov	v13.16b, v0.16b
   66500:	97ffd548 	bl	5ba20 <operator new(unsigned long)@plt>
   66504:	aa0003f7 	mov	x23, x0
   66508:	97ffdd6a 	bl	5dab0 <ncnn::Net::Net()@plt>
   6650c:	90000961 	adrp	x1, 192000 <typeinfo name for cv::String+0x15>
   66510:	91024021 	add	x1, x1, #0x90
   66514:	aa1703e0 	mov	x0, x23
   66518:	f9001a97 	str	x23, [x20, #48]
   6651c:	97ffe4a5 	bl	5f7b0 <ncnn::Net::load_param(unsigned char const*)@plt>
   66520:	f9401a80 	ldr	x0, [x20, #48]
   66524:	d0000961 	adrp	x1, 194000 <mobilenet_v2_param_bin+0x1f70>
   66528:	91365021 	add	x1, x1, #0xd94
   6652c:	97ffdc31 	bl	5d5f0 <ncnn::Net::load_model(unsigned char const*)@plt>
   66530:	91012280 	add	x0, x20, #0x48
   66534:	0f070400 	movi	v0.2s, #0xe0
   66538:	eb15001f 	cmp	x0, x21
   6653c:	2d03328d 	stp	s13, s12, [x20, #24]
   66540:	2d042a8b 	stp	s11, s10, [x20, #32]
   66544:	b9003a96 	str	w22, [x20, #56]
   66548:	2d07a289 	stp	s9, s8, [x20, #60]
   6654c:	fd001680 	str	d0, [x20, #40]
   66550:	54000100 	b.eq	66570 <MiCluster::ImageCluster::initialize(float, float, float, float, int, float, float, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, int)+0xbc>  // b.none
   66554:	394002a8 	ldrb	w8, [x21]
   66558:	a940a6aa 	ldp	x10, x9, [x21, #8]
   6655c:	d341fd0b 	lsr	x11, x8, #1
   66560:	7200011f 	tst	w8, #0x1
   66564:	9a951521 	csinc	x1, x9, x21, ne	// ne = any
   66568:	9a8a0162 	csel	x2, x11, x10, eq	// eq = none
   6656c:	97fffec5 	bl	66080 <std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >::assign(char const*, unsigned long)>
   66570:	93407e68 	sxtw	x8, w19
   66574:	f9003288 	str	x8, [x20, #96]
   66578:	a9467bfd 	ldp	x29, x30, [sp, #96]
   6657c:	a9454ff4 	ldp	x20, x19, [sp, #80]
   66580:	a94457f6 	ldp	x22, x21, [sp, #64]
   66584:	f9401bf7 	ldr	x23, [sp, #48]
   66588:	6d4223e9 	ldp	d9, d8, [sp, #32]
   6658c:	6d412beb 	ldp	d11, d10, [sp, #16]
   66590:	6cc733ed 	ldp	d13, d12, [sp], #112
   66594:	d65f03c0 	ret
   66598:	aa0003f3 	mov	x19, x0
   6659c:	aa1703e0 	mov	x0, x23
   665a0:	97ffd728 	bl	5c240 <operator delete(void*)@plt>
   665a4:	aa1303e0 	mov	x0, x19
   665a8:	97ffd9e2 	bl	5cd30 <_Unwind_Resume@plt>

00000000000665ac <MiCluster::ImageCluster::finalize()>:
   665ac:	a9bd57f6 	stp	x22, x21, [sp, #-48]!
   665b0:	a9014ff4 	stp	x20, x19, [sp, #16]
   665b4:	a9027bfd 	stp	x29, x30, [sp, #32]
   665b8:	910083fd 	add	x29, sp, #0x20
   665bc:	aa0003f3 	mov	x19, x0
   665c0:	f9401800 	ldr	x0, [x0, #48]
   665c4:	b4000100 	cbz	x0, 665e4 <MiCluster::ImageCluster::finalize()+0x38>
   665c8:	97ffe16a 	bl	5eb70 <ncnn::Net::clear()@plt>
   665cc:	f9401a60 	ldr	x0, [x19, #48]
   665d0:	b4000080 	cbz	x0, 665e0 <MiCluster::ImageCluster::finalize()+0x34>
   665d4:	f9400008 	ldr	x8, [x0]
   665d8:	f9400508 	ldr	x8, [x8, #8]
   665dc:	d63f0100 	blr	x8
   665e0:	f9001a7f 	str	xzr, [x19, #48]
   665e4:	a9405674 	ldp	x20, x21, [x19]
   665e8:	eb1402bf 	cmp	x21, x20
   665ec:	540001c0 	b.eq	66624 <MiCluster::ImageCluster::finalize()+0x78>  // b.none
   665f0:	f85d82a0 	ldur	x0, [x21, #-40]
   665f4:	f81e02a0 	stur	x0, [x21, #-32]
   665f8:	b4000060 	cbz	x0, 66604 <MiCluster::ImageCluster::finalize()+0x58>
   665fc:	f81e02a0 	stur	x0, [x21, #-32]
   66600:	97ffd710 	bl	5c240 <operator delete(void*)@plt>
   66604:	385b82a8 	ldurb	w8, [x21, #-72]
   66608:	d10122b6 	sub	x22, x21, #0x48
   6660c:	36000068 	tbz	w8, #0, 66618 <MiCluster::ImageCluster::finalize()+0x6c>
   66610:	f85c82a0 	ldur	x0, [x21, #-56]
   66614:	97ffd70b 	bl	5c240 <operator delete(void*)@plt>
   66618:	eb16029f 	cmp	x20, x22
   6661c:	aa1603f5 	mov	x21, x22
   66620:	54fffe81 	b.ne	665f0 <MiCluster::ImageCluster::finalize()+0x44>  // b.any
   66624:	f9000674 	str	x20, [x19, #8]
   66628:	a9427bfd 	ldp	x29, x30, [sp, #32]
   6662c:	a9414ff4 	ldp	x20, x19, [sp, #16]
   66630:	a8c357f6 	ldp	x22, x21, [sp], #48
   66634:	d65f03c0 	ret

0000000000066638 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)>:
   66638:	a9402408 	ldp	x8, x9, [x0]
   6663c:	eb08012a 	subs	x10, x9, x8
   66640:	540004c0 	b.eq	666d8 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa0>  // b.none
   66644:	aa1f03eb 	mov	x11, xzr
   66648:	9342fd49 	asr	x9, x10, #2
   6664c:	1e2703e0 	fmov	s0, wzr
   66650:	bc6b7901 	ldr	s1, [x8, x11, lsl #2]
   66654:	9100056b 	add	x11, x11, #0x1
   66658:	eb0b013f 	cmp	x9, x11
   6665c:	1e210821 	fmul	s1, s1, s1
   66660:	1e212800 	fadd	s0, s0, s1
   66664:	54ffff68 	b.hi	66650 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x18>  // b.pmore
   66668:	b400038a 	cbz	x10, 666d8 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa0>
   6666c:	1e21c000 	fsqrt	s0, s0
   66670:	1e2e1001 	fmov	s1, #1.000000000000000000e+00
   66674:	f1001d3f 	cmp	x9, #0x7
   66678:	1e201820 	fdiv	s0, s1, s0
   6667c:	54000068 	b.hi	66688 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x50>  // b.pmore
   66680:	aa1f03ea 	mov	x10, xzr
   66684:	1400000e 	b	666bc <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x84>
   66688:	927df12a 	and	x10, x9, #0xfffffffffffffff8
   6668c:	4e040401 	dup	v1.4s, v0.s[0]
   66690:	9100410b 	add	x11, x8, #0x10
   66694:	aa0a03ec 	mov	x12, x10
   66698:	ad7f8d62 	ldp	q2, q3, [x11, #-16]
   6669c:	f100218c 	subs	x12, x12, #0x8
   666a0:	6e22dc22 	fmul	v2.4s, v1.4s, v2.4s
   666a4:	6e23dc23 	fmul	v3.4s, v1.4s, v3.4s
   666a8:	ad3f8d62 	stp	q2, q3, [x11, #-16]
   666ac:	9100816b 	add	x11, x11, #0x20
   666b0:	54ffff41 	b.ne	66698 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x60>  // b.any
   666b4:	eb0a013f 	cmp	x9, x10
   666b8:	54000100 	b.eq	666d8 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa0>  // b.none
   666bc:	8b0a0908 	add	x8, x8, x10, lsl #2
   666c0:	cb0a0129 	sub	x9, x9, x10
   666c4:	bd400101 	ldr	s1, [x8]
   666c8:	f1000529 	subs	x9, x9, #0x1
   666cc:	1e210801 	fmul	s1, s0, s1
   666d0:	bc004501 	str	s1, [x8], #4
   666d4:	54ffff81 	b.ne	666c4 <MiCluster::normlizeL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x8c>  // b.any
   666d8:	d65f03c0 	ret

00000000000666dc <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)>:
   666dc:	d10203ff 	sub	sp, sp, #0x80
   666e0:	a90557f6 	stp	x22, x21, [sp, #80]
   666e4:	a9064ff4 	stp	x20, x19, [sp, #96]
   666e8:	a9077bfd 	stp	x29, x30, [sp, #112]
   666ec:	9101c3fd 	add	x29, sp, #0x70
   666f0:	d53bd055 	mrs	x21, tpidr_el0
   666f4:	f94016a8 	ldr	x8, [x21, #40]
   666f8:	aa0103e9 	mov	x9, x1
   666fc:	aa0603f3 	mov	x19, x6
   66700:	aa0003f4 	mov	x20, x0
   66704:	f81d83a8 	stur	x8, [x29, #-40]
   66708:	910003e8 	mov	x8, sp
   6670c:	320003e1 	orr	w1, wzr, #0x1
   66710:	aa0903e0 	mov	x0, x9
   66714:	aa1f03e6 	mov	x6, xzr
   66718:	910003f6 	mov	x22, sp
   6671c:	97ffdc05 	bl	5d730 <ncnn::Mat::from_pixels_resize(unsigned char const*, int, int, int, int, int, ncnn::Allocator*)@plt>
   66720:	eb1302df 	cmp	x22, x19
   66724:	540002a0 	b.eq	66778 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x9c>  // b.none
   66728:	f94007e8 	ldr	x8, [sp, #8]
   6672c:	b40000a8 	cbz	x8, 66740 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x64>
   66730:	885ffd09 	ldaxr	w9, [x8]
   66734:	11000529 	add	w9, w9, #0x1
   66738:	880afd09 	stlxr	w10, w9, [x8]
   6673c:	35ffffaa 	cbnz	w10, 66730 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x54>
   66740:	f9400668 	ldr	x8, [x19, #8]
   66744:	b4000268 	cbz	x8, 66790 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xb4>
   66748:	885ffd09 	ldaxr	w9, [x8]
   6674c:	71000529 	subs	w9, w9, #0x1
   66750:	880afd09 	stlxr	w10, w9, [x8]
   66754:	35ffffaa 	cbnz	w10, 66748 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x6c>
   66758:	540001c1 	b.ne	66790 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xb4>  // b.any
   6675c:	f9401260 	ldr	x0, [x19, #32]
   66760:	f9400261 	ldr	x1, [x19]
   66764:	b4000100 	cbz	x0, 66784 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xa8>
   66768:	f9400008 	ldr	x8, [x0]
   6676c:	f9400d08 	ldr	x8, [x8, #24]
   66770:	d63f0100 	blr	x8
   66774:	14000007 	b	66790 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xb4>
   66778:	f9400668 	ldr	x8, [x19, #8]
   6677c:	b50002a8 	cbnz	x8, 667d0 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xf4>
   66780:	14000023 	b	6680c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x130>
   66784:	b4000061 	cbz	x1, 66790 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xb4>
   66788:	aa0103e0 	mov	x0, x1
   6678c:	97ffd81d 	bl	5c800 <free@plt>
   66790:	f94003e8 	ldr	x8, [sp]
   66794:	f9000268 	str	x8, [x19]
   66798:	3cc083e0 	ldur	q0, [sp, #8]
   6679c:	3c808260 	stur	q0, [x19, #8]
   667a0:	b9401be8 	ldr	w8, [sp, #24]
   667a4:	b9001a68 	str	w8, [x19, #24]
   667a8:	f94013e8 	ldr	x8, [sp, #32]
   667ac:	f9001268 	str	x8, [x19, #32]
   667b0:	3cc283e1 	ldur	q1, [sp, #40]
   667b4:	3c828261 	stur	q1, [x19, #40]
   667b8:	b9403be8 	ldr	w8, [sp, #56]
   667bc:	b9003a68 	str	w8, [x19, #56]
   667c0:	f94023e8 	ldr	x8, [sp, #64]
   667c4:	f9002268 	str	x8, [x19, #64]
   667c8:	9e660008 	fmov	x8, d0
   667cc:	b4000208 	cbz	x8, 6680c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x130>
   667d0:	885ffd09 	ldaxr	w9, [x8]
   667d4:	71000529 	subs	w9, w9, #0x1
   667d8:	880afd09 	stlxr	w10, w9, [x8]
   667dc:	35ffffaa 	cbnz	w10, 667d0 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0xf4>
   667e0:	54000161 	b.ne	6680c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x130>  // b.any
   667e4:	f94013e0 	ldr	x0, [sp, #32]
   667e8:	f94003e1 	ldr	x1, [sp]
   667ec:	b40000a0 	cbz	x0, 66800 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x124>
   667f0:	f9400008 	ldr	x8, [x0]
   667f4:	f9400d08 	ldr	x8, [x8, #24]
   667f8:	d63f0100 	blr	x8
   667fc:	14000004 	b	6680c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x130>
   66800:	b4000061 	cbz	x1, 6680c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x130>
   66804:	aa0103e0 	mov	x0, x1
   66808:	97ffd7fe 	bl	5c800 <free@plt>
   6680c:	d0001d48 	adrp	x8, 410000 <mobilenet_v2_bin+0x27b26c>
   66810:	912dd108 	add	x8, x8, #0xb74
   66814:	b9400909 	ldr	w9, [x8, #8]
   66818:	f9400108 	ldr	x8, [x8]
   6681c:	91006281 	add	x1, x20, #0x18
   66820:	910003e2 	mov	x2, sp
   66824:	aa1303e0 	mov	x0, x19
   66828:	b9000be9 	str	w9, [sp, #8]
   6682c:	f90003e8 	str	x8, [sp]
   66830:	97ffdbd0 	bl	5d770 <ncnn::Mat::substract_mean_normalize(float const*, float const*)@plt>
   66834:	f94016a8 	ldr	x8, [x21, #40]
   66838:	f85d83a9 	ldur	x9, [x29, #-40]
   6683c:	eb09011f 	cmp	x8, x9
   66840:	540000c1 	b.ne	66858 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x17c>  // b.any
   66844:	a9477bfd 	ldp	x29, x30, [sp, #112]
   66848:	a9464ff4 	ldp	x20, x19, [sp, #96]
   6684c:	a94557f6 	ldp	x22, x21, [sp, #80]
   66850:	910203ff 	add	sp, sp, #0x80
   66854:	d65f03c0 	ret
   66858:	97ffd55a 	bl	5bdc0 <__stack_chk_fail@plt>
   6685c:	f94007e8 	ldr	x8, [sp, #8]
   66860:	aa0003f3 	mov	x19, x0
   66864:	b4000228 	cbz	x8, 668a8 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x1cc>
   66868:	885ffd09 	ldaxr	w9, [x8]
   6686c:	71000529 	subs	w9, w9, #0x1
   66870:	880afd09 	stlxr	w10, w9, [x8]
   66874:	35ffffaa 	cbnz	w10, 66868 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x18c>
   66878:	54000181 	b.ne	668a8 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x1cc>  // b.any
   6687c:	f94013e0 	ldr	x0, [sp, #32]
   66880:	f94003e1 	ldr	x1, [sp]
   66884:	b50000c0 	cbnz	x0, 6689c <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x1c0>
   66888:	b4000101 	cbz	x1, 668a8 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)+0x1cc>
   6688c:	aa0103e0 	mov	x0, x1
   66890:	97ffd7dc 	bl	5c800 <free@plt>
   66894:	aa1303e0 	mov	x0, x19
   66898:	97ffd926 	bl	5cd30 <_Unwind_Resume@plt>
   6689c:	f9400008 	ldr	x8, [x0]
   668a0:	f9400d08 	ldr	x8, [x8, #24]
   668a4:	d63f0100 	blr	x8
   668a8:	aa1303e0 	mov	x0, x19
   668ac:	97ffd921 	bl	5cd30 <_Unwind_Resume@plt>
   668b0:	97ffed31 	bl	61d74 <__clang_call_terminate>
   668b4:	97ffed30 	bl	61d74 <__clang_call_terminate>
