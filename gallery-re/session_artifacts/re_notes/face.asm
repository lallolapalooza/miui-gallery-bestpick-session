
libs/libJNI_SimilarImgCluster.so:     file format elf64-littleaarch64


Disassembly of section .text:

00000000000668b8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)>:
   668b8:	d106c3ff 	sub	sp, sp, #0x1b0
   668bc:	f900b3fc 	str	x28, [sp, #352]
   668c0:	a9175ff8 	stp	x24, x23, [sp, #368]
   668c4:	a91857f6 	stp	x22, x21, [sp, #384]
   668c8:	a9194ff4 	stp	x20, x19, [sp, #400]
   668cc:	a91a7bfd 	stp	x29, x30, [sp, #416]
   668d0:	910683fd 	add	x29, sp, #0x1a0
   668d4:	d53bd058 	mrs	x24, tpidr_el0
   668d8:	f9401708 	ldr	x8, [x24, #40]
   668dc:	2a0403f5 	mov	w21, w4
   668e0:	2a0303f6 	mov	w22, w3
   668e4:	aa0503f3 	mov	x19, x5
   668e8:	aa0103e4 	mov	x4, x1
   668ec:	aa0003f4 	mov	x20, x0
   668f0:	d102a3a0 	sub	x0, x29, #0xa8
   668f4:	321c03e3 	orr	w3, wzr, #0x10
   668f8:	2a1503e1 	mov	w1, w21
   668fc:	2a1603e2 	mov	w2, w22
   66900:	aa1f03e5 	mov	x5, xzr
   66904:	d102a3b7 	sub	x23, x29, #0xa8
   66908:	f90007e8 	str	x8, [sp, #8]
   6690c:	94000158 	bl	66e6c <cv::Mat::Mat(int, int, int, void*, unsigned long)>
   66910:	52a02028 	mov	w8, #0x1010000             	// #16842752
   66914:	52a04029 	mov	w9, #0x2010000             	// #33619968
   66918:	a90bfff7 	stp	x23, xzr, [sp, #184]
   6691c:	a9077ff7 	stp	x23, xzr, [sp, #112]
   66920:	b900b3e8 	str	w8, [sp, #176]
   66924:	b9006be9 	str	w9, [sp, #104]
   66928:	9102c3e0 	add	x0, sp, #0xb0
   6692c:	9101a3e1 	add	x1, sp, #0x68
   66930:	321e03e2 	orr	w2, wzr, #0x4
   66934:	2a1f03e3 	mov	w3, wzr
   66938:	97ffdd7e 	bl	5df30 <cv::cvtColor(cv::_InputArray const&, cv::_OutputArray const&, int, int)@plt>
   6693c:	f9007bff 	str	xzr, [sp, #240]
   66940:	b900cbff 	str	wzr, [sp, #200]
   66944:	a90bffff 	stp	xzr, xzr, [sp, #184]
   66948:	f9005bff 	str	xzr, [sp, #176]
   6694c:	b900ebff 	str	wzr, [sp, #232]
   66950:	a90dffff 	stp	xzr, xzr, [sp, #216]
   66954:	f9006bff 	str	xzr, [sp, #208]
   66958:	f85683a1 	ldur	x1, [x29, #-152]
   6695c:	29451684 	ldp	w4, w5, [x20, #40]
   66960:	9102c3e6 	add	x6, sp, #0xb0
   66964:	aa1403e0 	mov	x0, x20
   66968:	2a1603e2 	mov	w2, w22
   6696c:	2a1503e3 	mov	w3, w21
   66970:	97ffe154 	bl	5eec0 <MiCluster::ImageCluster::preprocess(unsigned char*, int, int, int, int, ncnn::Mat&)@plt>
   66974:	f90057ff 	str	xzr, [sp, #168]
   66978:	a9077fff 	stp	xzr, xzr, [sp, #112]
   6697c:	b90083ff 	str	wzr, [sp, #128]
   66980:	f90037ff 	str	xzr, [sp, #104]
   66984:	a9097fff 	stp	xzr, xzr, [sp, #144]
   66988:	b900a3ff 	str	wzr, [sp, #160]
   6698c:	f90047ff 	str	xzr, [sp, #136]
   66990:	f9401a80 	ldr	x0, [x20, #48]
   66994:	910163e8 	add	x8, sp, #0x58
   66998:	97ffd81e 	bl	5ca10 <ncnn::Net::create_extractor() const@plt>
   6699c:	910163e0 	add	x0, sp, #0x58
   669a0:	320003e1 	orr	w1, wzr, #0x1
   669a4:	97ffd8c3 	bl	5ccb0 <ncnn::Extractor::set_light_mode(bool)@plt>
   669a8:	910163e0 	add	x0, sp, #0x58
   669ac:	320003e1 	orr	w1, wzr, #0x1
   669b0:	97ffdb98 	bl	5d810 <ncnn::Extractor::set_num_threads(int)@plt>
   669b4:	910163e0 	add	x0, sp, #0x58
   669b8:	9102c3e2 	add	x2, sp, #0xb0
   669bc:	2a1f03e1 	mov	w1, wzr
   669c0:	97ffe0d0 	bl	5ed00 <ncnn::Extractor::input(int, ncnn::Mat const&)@plt>
   669c4:	910163e0 	add	x0, sp, #0x58
   669c8:	52801e41 	mov	w1, #0xf2                  	// #242
   669cc:	9101a3e2 	add	x2, sp, #0x68
   669d0:	2a1f03e3 	mov	w3, wzr
   669d4:	97ffe1f3 	bl	5f1a0 <ncnn::Extractor::extract(int, ncnn::Mat&, int)@plt>
   669d8:	2952a7e8 	ldp	w8, w9, [sp, #148]
   669dc:	b940a3ea 	ldr	w10, [sp, #160]
   669e0:	1b087d28 	mul	w8, w9, w8
   669e4:	1b0a7d01 	mul	w1, w8, w10
   669e8:	910043e8 	add	x8, sp, #0x10
   669ec:	9101a3e0 	add	x0, sp, #0x68
   669f0:	aa1f03e2 	mov	x2, xzr
   669f4:	97ffda3f 	bl	5d2f0 <ncnn::Mat::reshape(int, ncnn::Allocator*) const@plt>
   669f8:	b9403fe8 	ldr	w8, [sp, #60]
   669fc:	7100011f 	cmp	w8, #0x0
   66a00:	540003ad 	b.le	66a74 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x1bc>
   66a04:	aa1f03f5 	mov	x21, xzr
   66a08:	aa1f03f6 	mov	x22, xzr
   66a0c:	91002274 	add	x20, x19, #0x8
   66a10:	a940ae69 	ldp	x9, x11, [x19, #8]
   66a14:	f9400bea 	ldr	x10, [sp, #16]
   66a18:	eb0b013f 	cmp	x9, x11
   66a1c:	54000120 	b.eq	66a40 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x188>  // b.none
   66a20:	b875694a 	ldr	w10, [x10, x21]
   66a24:	b800452a 	str	w10, [x9], #4
   66a28:	f9000289 	str	x9, [x20]
   66a2c:	910006d6 	add	x22, x22, #0x1
   66a30:	eb28c2df 	cmp	x22, w8, sxtw
   66a34:	910012b5 	add	x21, x21, #0x4
   66a38:	54fffecb 	b.lt	66a10 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x158>  // b.tstop
   66a3c:	14000009 	b	66a60 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x1a8>
   66a40:	8b150141 	add	x1, x10, x21
   66a44:	aa1303e0 	mov	x0, x19
   66a48:	97ffd5c2 	bl	5c150 <void std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__push_back_slow_path<float const&>(float const&)@plt>
   66a4c:	b9403fe8 	ldr	w8, [sp, #60]
   66a50:	910006d6 	add	x22, x22, #0x1
   66a54:	eb28c2df 	cmp	x22, w8, sxtw
   66a58:	910012b5 	add	x21, x21, #0x4
   66a5c:	54fffdab 	b.lt	66a10 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x158>  // b.tstop
   66a60:	f9400289 	ldr	x9, [x20]
   66a64:	f9400268 	ldr	x8, [x19]
   66a68:	eb080129 	subs	x9, x9, x8
   66a6c:	540000e1 	b.ne	66a88 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x1d0>  // b.any
   66a70:	1400002a 	b	66b18 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x260>
   66a74:	91002274 	add	x20, x19, #0x8
   66a78:	f9400289 	ldr	x9, [x20]
   66a7c:	f9400268 	ldr	x8, [x19]
   66a80:	eb080129 	subs	x9, x9, x8
   66a84:	540004a0 	b.eq	66b18 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x260>  // b.none
   66a88:	aa1f03ea 	mov	x10, xzr
   66a8c:	9342fd29 	asr	x9, x9, #2
   66a90:	1e2703e0 	fmov	s0, wzr
   66a94:	bc6a7901 	ldr	s1, [x8, x10, lsl #2]
   66a98:	9100054a 	add	x10, x10, #0x1
   66a9c:	eb0a013f 	cmp	x9, x10
   66aa0:	1e210821 	fmul	s1, s1, s1
   66aa4:	1e212800 	fadd	s0, s0, s1
   66aa8:	54ffff68 	b.hi	66a94 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x1dc>  // b.pmore
   66aac:	1e21c000 	fsqrt	s0, s0
   66ab0:	1e2e1001 	fmov	s1, #1.000000000000000000e+00
   66ab4:	f1001d3f 	cmp	x9, #0x7
   66ab8:	1e201820 	fdiv	s0, s1, s0
   66abc:	54000068 	b.hi	66ac8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x210>  // b.pmore
   66ac0:	aa1f03ea 	mov	x10, xzr
   66ac4:	1400000e 	b	66afc <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x244>
   66ac8:	927df12a 	and	x10, x9, #0xfffffffffffffff8
   66acc:	4e040401 	dup	v1.4s, v0.s[0]
   66ad0:	9100410b 	add	x11, x8, #0x10
   66ad4:	aa0a03ec 	mov	x12, x10
   66ad8:	ad7f8d62 	ldp	q2, q3, [x11, #-16]
   66adc:	f100218c 	subs	x12, x12, #0x8
   66ae0:	6e22dc22 	fmul	v2.4s, v1.4s, v2.4s
   66ae4:	6e23dc23 	fmul	v3.4s, v1.4s, v3.4s
   66ae8:	ad3f8d62 	stp	q2, q3, [x11, #-16]
   66aec:	9100816b 	add	x11, x11, #0x20
   66af0:	54ffff41 	b.ne	66ad8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x220>  // b.any
   66af4:	eb0a013f 	cmp	x9, x10
   66af8:	54000100 	b.eq	66b18 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x260>  // b.none
   66afc:	cb0a0129 	sub	x9, x9, x10
   66b00:	8b0a0908 	add	x8, x8, x10, lsl #2
   66b04:	bd400101 	ldr	s1, [x8]
   66b08:	f1000529 	subs	x9, x9, #0x1
   66b0c:	1e210801 	fmul	s1, s0, s1
   66b10:	bc004501 	str	s1, [x8], #4
   66b14:	54ffff81 	b.ne	66b04 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x24c>  // b.any
   66b18:	f9400fe8 	ldr	x8, [sp, #24]
   66b1c:	b4000208 	cbz	x8, 66b5c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2a4>
   66b20:	885ffd09 	ldaxr	w9, [x8]
   66b24:	71000529 	subs	w9, w9, #0x1
   66b28:	880afd09 	stlxr	w10, w9, [x8]
   66b2c:	35ffffaa 	cbnz	w10, 66b20 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x268>
   66b30:	54000161 	b.ne	66b5c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2a4>  // b.any
   66b34:	f9401be0 	ldr	x0, [sp, #48]
   66b38:	f9400be1 	ldr	x1, [sp, #16]
   66b3c:	b40000a0 	cbz	x0, 66b50 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x298>
   66b40:	f9400008 	ldr	x8, [x0]
   66b44:	f9400d08 	ldr	x8, [x8, #24]
   66b48:	d63f0100 	blr	x8
   66b4c:	14000004 	b	66b5c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2a4>
   66b50:	b4000061 	cbz	x1, 66b5c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2a4>
   66b54:	aa0103e0 	mov	x0, x1
   66b58:	97ffd72a 	bl	5c800 <free@plt>
   66b5c:	910163e0 	add	x0, sp, #0x58
   66b60:	97ffd690 	bl	5c5a0 <ncnn::Extractor::~Extractor()@plt>
   66b64:	f9403be8 	ldr	x8, [sp, #112]
   66b68:	b4000208 	cbz	x8, 66ba8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2f0>
   66b6c:	885ffd09 	ldaxr	w9, [x8]
   66b70:	71000529 	subs	w9, w9, #0x1
   66b74:	880afd09 	stlxr	w10, w9, [x8]
   66b78:	35ffffaa 	cbnz	w10, 66b6c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2b4>
   66b7c:	54000161 	b.ne	66ba8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2f0>  // b.any
   66b80:	f94047e0 	ldr	x0, [sp, #136]
   66b84:	f94037e1 	ldr	x1, [sp, #104]
   66b88:	b40000a0 	cbz	x0, 66b9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2e4>
   66b8c:	f9400008 	ldr	x8, [x0]
   66b90:	f9400d08 	ldr	x8, [x8, #24]
   66b94:	d63f0100 	blr	x8
   66b98:	14000004 	b	66ba8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2f0>
   66b9c:	b4000061 	cbz	x1, 66ba8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2f0>
   66ba0:	aa0103e0 	mov	x0, x1
   66ba4:	97ffd717 	bl	5c800 <free@plt>
   66ba8:	f9405fe8 	ldr	x8, [sp, #184]
   66bac:	b4000208 	cbz	x8, 66bec <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x334>
   66bb0:	885ffd09 	ldaxr	w9, [x8]
   66bb4:	71000529 	subs	w9, w9, #0x1
   66bb8:	880afd09 	stlxr	w10, w9, [x8]
   66bbc:	35ffffaa 	cbnz	w10, 66bb0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x2f8>
   66bc0:	54000161 	b.ne	66bec <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x334>  // b.any
   66bc4:	f9406be0 	ldr	x0, [sp, #208]
   66bc8:	f9405be1 	ldr	x1, [sp, #176]
   66bcc:	b40000a0 	cbz	x0, 66be0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x328>
   66bd0:	f9400008 	ldr	x8, [x0]
   66bd4:	f9400d08 	ldr	x8, [x8, #24]
   66bd8:	d63f0100 	blr	x8
   66bdc:	14000004 	b	66bec <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x334>
   66be0:	b4000061 	cbz	x1, 66bec <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x334>
   66be4:	aa0103e0 	mov	x0, x1
   66be8:	97ffd706 	bl	5c800 <free@plt>
   66bec:	f85903a8 	ldur	x8, [x29, #-112]
   66bf0:	b4000128 	cbz	x8, 66c14 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x35c>
   66bf4:	91005108 	add	x8, x8, #0x14
   66bf8:	885ffd09 	ldaxr	w9, [x8]
   66bfc:	71000529 	subs	w9, w9, #0x1
   66c00:	880afd09 	stlxr	w10, w9, [x8]
   66c04:	35ffffaa 	cbnz	w10, 66bf8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x340>
   66c08:	54000061 	b.ne	66c14 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x35c>  // b.any
   66c0c:	d102a3a0 	sub	x0, x29, #0xa8
   66c10:	97ffd1c8 	bl	5b330 <cv::Mat::deallocate()@plt>
   66c14:	910042e8 	add	x8, x23, #0x10
   66c18:	6f00e400 	movi	v0.2d, #0x0
   66c1c:	f81903bf 	stur	xzr, [x29, #-112]
   66c20:	ad000100 	stp	q0, q0, [x8]
   66c24:	b855c3a8 	ldur	w8, [x29, #-164]
   66c28:	7100051f 	cmp	w8, #0x1
   66c2c:	5400010b 	b.lt	66c4c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x394>  // b.tstop
   66c30:	f85983a8 	ldur	x8, [x29, #-104]
   66c34:	aa1f03e9 	mov	x9, xzr
   66c38:	b829791f 	str	wzr, [x8, x9, lsl #2]
   66c3c:	b895c3aa 	ldursw	x10, [x29, #-164]
   66c40:	91000529 	add	x9, x9, #0x1
   66c44:	eb0a013f 	cmp	x9, x10
   66c48:	54ffff8b 	b.lt	66c38 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x380>  // b.tstop
   66c4c:	f85a03a0 	ldur	x0, [x29, #-96]
   66c50:	d102a3a8 	sub	x8, x29, #0xa8
   66c54:	91014108 	add	x8, x8, #0x50
   66c58:	eb08001f 	cmp	x0, x8
   66c5c:	54000040 	b.eq	66c64 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x3ac>  // b.none
   66c60:	97ffe0fc 	bl	5f050 <cv::fastFree(void*)@plt>
   66c64:	f9401708 	ldr	x8, [x24, #40]
   66c68:	f94007e9 	ldr	x9, [sp, #8]
   66c6c:	eb09011f 	cmp	x8, x9
   66c70:	54000101 	b.ne	66c90 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x3d8>  // b.any
   66c74:	a95a7bfd 	ldp	x29, x30, [sp, #416]
   66c78:	a9594ff4 	ldp	x20, x19, [sp, #400]
   66c7c:	a95857f6 	ldp	x22, x21, [sp, #384]
   66c80:	a9575ff8 	ldp	x24, x23, [sp, #368]
   66c84:	f940b3fc 	ldr	x28, [sp, #352]
   66c88:	9106c3ff 	add	sp, sp, #0x1b0
   66c8c:	d65f03c0 	ret
   66c90:	97ffd44c 	bl	5bdc0 <__stack_chk_fail@plt>
   66c94:	97ffec38 	bl	61d74 <__clang_call_terminate>
   66c98:	97ffec37 	bl	61d74 <__clang_call_terminate>
   66c9c:	97ffec36 	bl	61d74 <__clang_call_terminate>
   66ca0:	97ffec35 	bl	61d74 <__clang_call_terminate>
   66ca4:	1400000d 	b	66cd8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x420>
   66ca8:	aa0003f3 	mov	x19, x0
   66cac:	f9403be8 	ldr	x8, [sp, #112]
   66cb0:	b5000588 	cbnz	x8, 66d60 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4a8>
   66cb4:	1400003a 	b	66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>
   66cb8:	aa0003f3 	mov	x19, x0
   66cbc:	f9405fe8 	ldr	x8, [sp, #184]
   66cc0:	b5000728 	cbnz	x8, 66da4 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4ec>
   66cc4:	14000047 	b	66de0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x528>
   66cc8:	aa0003f3 	mov	x19, x0
   66ccc:	f85903a8 	ldur	x8, [x29, #-112]
   66cd0:	b50008c8 	cbnz	x8, 66de8 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x530>
   66cd4:	1400004d 	b	66e08 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x550>
   66cd8:	aa0003f3 	mov	x19, x0
   66cdc:	910163e0 	add	x0, sp, #0x58
   66ce0:	97ffd630 	bl	5c5a0 <ncnn::Extractor::~Extractor()@plt>
   66ce4:	f9403be8 	ldr	x8, [sp, #112]
   66ce8:	b50003c8 	cbnz	x8, 66d60 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4a8>
   66cec:	1400002c 	b	66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>
   66cf0:	f9400fe8 	ldr	x8, [sp, #24]
   66cf4:	aa0003f3 	mov	x19, x0
   66cf8:	b4000208 	cbz	x8, 66d38 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x480>
   66cfc:	885ffd09 	ldaxr	w9, [x8]
   66d00:	71000529 	subs	w9, w9, #0x1
   66d04:	880afd09 	stlxr	w10, w9, [x8]
   66d08:	35ffffaa 	cbnz	w10, 66cfc <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x444>
   66d0c:	54000161 	b.ne	66d38 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x480>  // b.any
   66d10:	f9401be0 	ldr	x0, [sp, #48]
   66d14:	f9400be1 	ldr	x1, [sp, #16]
   66d18:	b40000a0 	cbz	x0, 66d2c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x474>
   66d1c:	f9400008 	ldr	x8, [x0]
   66d20:	f9400d08 	ldr	x8, [x8, #24]
   66d24:	d63f0100 	blr	x8
   66d28:	14000004 	b	66d38 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x480>
   66d2c:	b4000061 	cbz	x1, 66d38 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x480>
   66d30:	aa0103e0 	mov	x0, x1
   66d34:	97ffd6b3 	bl	5c800 <free@plt>
   66d38:	f9002bff 	str	xzr, [sp, #80]
   66d3c:	a901ffff 	stp	xzr, xzr, [sp, #24]
   66d40:	b9002bff 	str	wzr, [sp, #40]
   66d44:	f9000bff 	str	xzr, [sp, #16]
   66d48:	a903ffff 	stp	xzr, xzr, [sp, #56]
   66d4c:	b9004bff 	str	wzr, [sp, #72]
   66d50:	910163e0 	add	x0, sp, #0x58
   66d54:	97ffd613 	bl	5c5a0 <ncnn::Extractor::~Extractor()@plt>
   66d58:	f9403be8 	ldr	x8, [sp, #112]
   66d5c:	b4000208 	cbz	x8, 66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>
   66d60:	885ffd09 	ldaxr	w9, [x8]
   66d64:	71000529 	subs	w9, w9, #0x1
   66d68:	880afd09 	stlxr	w10, w9, [x8]
   66d6c:	35ffffaa 	cbnz	w10, 66d60 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4a8>
   66d70:	54000161 	b.ne	66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>  // b.any
   66d74:	f94047e0 	ldr	x0, [sp, #136]
   66d78:	f94037e1 	ldr	x1, [sp, #104]
   66d7c:	b40000a0 	cbz	x0, 66d90 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4d8>
   66d80:	f9400008 	ldr	x8, [x0]
   66d84:	f9400d08 	ldr	x8, [x8, #24]
   66d88:	d63f0100 	blr	x8
   66d8c:	14000004 	b	66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>
   66d90:	b4000061 	cbz	x1, 66d9c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4e4>
   66d94:	aa0103e0 	mov	x0, x1
   66d98:	97ffd69a 	bl	5c800 <free@plt>
   66d9c:	f9405fe8 	ldr	x8, [sp, #184]
   66da0:	b4000208 	cbz	x8, 66de0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x528>
   66da4:	885ffd09 	ldaxr	w9, [x8]
   66da8:	71000529 	subs	w9, w9, #0x1
   66dac:	880afd09 	stlxr	w10, w9, [x8]
   66db0:	35ffffaa 	cbnz	w10, 66da4 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x4ec>
   66db4:	54000161 	b.ne	66de0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x528>  // b.any
   66db8:	f9406be0 	ldr	x0, [sp, #208]
   66dbc:	f9405be1 	ldr	x1, [sp, #176]
   66dc0:	b40000a0 	cbz	x0, 66dd4 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x51c>
   66dc4:	f9400008 	ldr	x8, [x0]
   66dc8:	f9400d08 	ldr	x8, [x8, #24]
   66dcc:	d63f0100 	blr	x8
   66dd0:	14000004 	b	66de0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x528>
   66dd4:	b4000061 	cbz	x1, 66de0 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x528>
   66dd8:	aa0103e0 	mov	x0, x1
   66ddc:	97ffd689 	bl	5c800 <free@plt>
   66de0:	f85903a8 	ldur	x8, [x29, #-112]
   66de4:	b4000128 	cbz	x8, 66e08 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x550>
   66de8:	91005108 	add	x8, x8, #0x14
   66dec:	885ffd09 	ldaxr	w9, [x8]
   66df0:	71000529 	subs	w9, w9, #0x1
   66df4:	880afd09 	stlxr	w10, w9, [x8]
   66df8:	35ffffaa 	cbnz	w10, 66dec <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x534>
   66dfc:	54000061 	b.ne	66e08 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x550>  // b.any
   66e00:	d102a3a0 	sub	x0, x29, #0xa8
   66e04:	97ffd14b 	bl	5b330 <cv::Mat::deallocate()@plt>
   66e08:	6f00e400 	movi	v0.2d, #0x0
   66e0c:	f81903bf 	stur	xzr, [x29, #-112]
   66e10:	ad0082e0 	stp	q0, q0, [x23, #16]
   66e14:	b855c3a8 	ldur	w8, [x29, #-164]
   66e18:	7100051f 	cmp	w8, #0x1
   66e1c:	5400010b 	b.lt	66e3c <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x584>  // b.tstop
   66e20:	f85983a8 	ldur	x8, [x29, #-104]
   66e24:	aa1f03e9 	mov	x9, xzr
   66e28:	b829791f 	str	wzr, [x8, x9, lsl #2]
   66e2c:	b895c3aa 	ldursw	x10, [x29, #-164]
   66e30:	91000529 	add	x9, x9, #0x1
   66e34:	eb0a013f 	cmp	x9, x10
   66e38:	54ffff8b 	b.lt	66e28 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x570>  // b.tstop
   66e3c:	f85a03a0 	ldur	x0, [x29, #-96]
   66e40:	d102a3a8 	sub	x8, x29, #0xa8
   66e44:	91014108 	add	x8, x8, #0x50
   66e48:	eb08001f 	cmp	x0, x8
   66e4c:	54000040 	b.eq	66e54 <MiCluster::ImageCluster::getFaceFeature(unsigned char*, int, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x59c>  // b.none
   66e50:	97ffe080 	bl	5f050 <cv::fastFree(void*)@plt>
   66e54:	aa1303e0 	mov	x0, x19
   66e58:	97ffd7b6 	bl	5cd30 <_Unwind_Resume@plt>
   66e5c:	97ffebc6 	bl	61d74 <__clang_call_terminate>
   66e60:	97ffebc5 	bl	61d74 <__clang_call_terminate>
   66e64:	97ffebc4 	bl	61d74 <__clang_call_terminate>
   66e68:	97ffebc3 	bl	61d74 <__clang_call_terminate>

0000000000066e6c <cv::Mat::Mat(int, int, int, void*, unsigned long)>:
   66e6c:	d10183ff 	sub	sp, sp, #0x60
   66e70:	f90013f7 	str	x23, [sp, #32]
   66e74:	a90357f6 	stp	x22, x21, [sp, #48]
   66e78:	a9044ff4 	stp	x20, x19, [sp, #64]
   66e7c:	a9057bfd 	stp	x29, x30, [sp, #80]
   66e80:	910143fd 	add	x29, sp, #0x50
   66e84:	d53bd056 	mrs	x22, tpidr_el0
   66e88:	f94016c8 	ldr	x8, [x22, #40]
   66e8c:	52a85fe9 	mov	w9, #0x42ff0000            	// #1124007936
   66e90:	33002c69 	bfxil	w9, w3, #0, #12
   66e94:	6f00e400 	movi	v0.2d, #0x0
   66e98:	f9000fe8 	str	x8, [sp, #24]
   66e9c:	321f03e8 	orr	w8, wzr, #0x2
   66ea0:	29002009 	stp	w9, w8, [x0]
   66ea4:	aa0003e8 	mov	x8, x0
   66ea8:	b8008d01 	str	w1, [x8, #8]!
   66eac:	f9002008 	str	x8, [x0, #64]
   66eb0:	aa0003e8 	mov	x8, x0
   66eb4:	b9000c02 	str	w2, [x0, #12]
   66eb8:	a9011004 	stp	x4, x4, [x0, #16]
   66ebc:	ad010000 	stp	q0, q0, [x0, #32]
   66ec0:	f8050d1f 	str	xzr, [x8, #80]!
   66ec4:	aa0503f4 	mov	x20, x5
   66ec8:	2a0303f5 	mov	w21, w3
   66ecc:	aa0003f3 	mov	x19, x0
   66ed0:	9b217c49 	smull	x9, w2, w1
   66ed4:	f9002408 	str	x8, [x0, #72]
   66ed8:	93407c48 	sxtw	x8, w2
   66edc:	f9002c1f 	str	xzr, [x0, #88]
   66ee0:	b40002c9 	cbz	x9, 66f38 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0xcc>
   66ee4:	b50002a4 	cbnz	x4, 66f38 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0xcc>
   66ee8:	910023e0 	add	x0, sp, #0x8
   66eec:	321e0be1 	orr	w1, wzr, #0x1c
   66ef0:	a900ffff 	stp	xzr, xzr, [sp, #8]
   66ef4:	97ffd8d7 	bl	5d250 <cv::String::allocate(unsigned long)@plt>
   66ef8:	d0001d48 	adrp	x8, 410000 <mobilenet_v2_bin+0x27b26c>
   66efc:	912e1908 	add	x8, x8, #0xb86
   66f00:	3cc0c100 	ldur	q0, [x8, #12]
   66f04:	3dc00101 	ldr	q1, [x8]
   66f08:	3c80c000 	stur	q0, [x0, #12]
   66f0c:	3d800001 	str	q1, [x0]
   66f10:	d0001d42 	adrp	x2, 410000 <mobilenet_v2_bin+0x27b26c>
   66f14:	912e0c42 	add	x2, x2, #0xb83
   66f18:	12801ac0 	mov	w0, #0xffffff29            	// #-215
   66f1c:	910023e1 	add	x1, sp, #0x8
   66f20:	52806024 	mov	w4, #0x301                 	// #769
   66f24:	aa0203e3 	mov	x3, x2
   66f28:	97ffd292 	bl	5b970 <cv::error(int, cv::String const&, char const*, char const*, int)@plt>
   66f2c:	910023e0 	add	x0, sp, #0x8
   66f30:	97ffde18 	bl	5e790 <cv::String::deallocate()@plt>
   66f34:	b9800e68 	ldrsw	x8, [x19, #12]
   66f38:	12000aa9 	and	w9, w21, #0x7
   66f3c:	531f792b 	lsl	w11, w9, #1
   66f40:	529f4a0c 	mov	w12, #0xfa50                	// #64080
   66f44:	53032eaa 	ubfx	w10, w21, #3, #9
   66f48:	9acb258b 	lsr	x11, x12, x11
   66f4c:	1100054a 	add	w10, w10, #0x1
   66f50:	1200056b 	and	w11, w11, #0x3
   66f54:	1acb2157 	lsl	w23, w10, w11
   66f58:	9b177d15 	mul	x21, x8, x23
   66f5c:	b40003b4 	cbz	x20, 66fd0 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0x164>
   66f60:	531e7528 	lsl	w8, w9, #2
   66f64:	52844229 	mov	w9, #0x2211                	// #8721
   66f68:	72b10889 	movk	w9, #0x8844, lsl #16
   66f6c:	9ac82528 	lsr	x8, x9, x8
   66f70:	92400d08 	and	x8, x8, #0xf
   66f74:	9ac80a89 	udiv	x9, x20, x8
   66f78:	9b08d128 	msub	x8, x9, x8, x20
   66f7c:	b40002c8 	cbz	x8, 66fd4 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0x168>
   66f80:	910023e0 	add	x0, sp, #0x8
   66f84:	320013e1 	orr	w1, wzr, #0x1f
   66f88:	a900ffff 	stp	xzr, xzr, [sp, #8]
   66f8c:	97ffd8b1 	bl	5d250 <cv::String::allocate(unsigned long)@plt>
   66f90:	d0001d48 	adrp	x8, 410000 <mobilenet_v2_bin+0x27b26c>
   66f94:	912e8d08 	add	x8, x8, #0xba3
   66f98:	3cc0f100 	ldur	q0, [x8, #15]
   66f9c:	3dc00101 	ldr	q1, [x8]
   66fa0:	3c80f000 	stur	q0, [x0, #15]
   66fa4:	3d800001 	str	q1, [x0]
   66fa8:	d0001d42 	adrp	x2, 410000 <mobilenet_v2_bin+0x27b26c>
   66fac:	912e0c42 	add	x2, x2, #0xb83
   66fb0:	321c77e0 	orr	w0, wzr, #0xfffffff3
   66fb4:	910023e1 	add	x1, sp, #0x8
   66fb8:	52806144 	mov	w4, #0x30a                 	// #778
   66fbc:	aa0203e3 	mov	x3, x2
   66fc0:	97ffd26c 	bl	5b970 <cv::error(int, cv::String const&, char const*, char const*, int)@plt>
   66fc4:	910023e0 	add	x0, sp, #0x8
   66fc8:	97ffddf2 	bl	5e790 <cv::String::deallocate()@plt>
   66fcc:	14000002 	b	66fd4 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0x168>
   66fd0:	aa1503f4 	mov	x20, x21
   66fd4:	f9402668 	ldr	x8, [x19, #72]
   66fd8:	aa1303e0 	mov	x0, x19
   66fdc:	a9005d14 	stp	x20, x23, [x8]
   66fe0:	f9400e68 	ldr	x8, [x19, #24]
   66fe4:	b9800a69 	ldrsw	x9, [x19, #8]
   66fe8:	d503201f 	nop
   66fec:	9b092288 	madd	x8, x20, x9, x8
   66ff0:	cb140109 	sub	x9, x8, x20
   66ff4:	8b150129 	add	x9, x9, x21
   66ff8:	a9022269 	stp	x9, x8, [x19, #32]
   66ffc:	97ffde4d 	bl	5e930 <cv::Mat::updateContinuityFlag()@plt>
   67000:	f94016c8 	ldr	x8, [x22, #40]
   67004:	f9400fe9 	ldr	x9, [sp, #24]
   67008:	eb09011f 	cmp	x8, x9
   6700c:	540000e1 	b.ne	67028 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0x1bc>  // b.any
   67010:	a9457bfd 	ldp	x29, x30, [sp, #80]
   67014:	a9444ff4 	ldp	x20, x19, [sp, #64]
   67018:	a94357f6 	ldp	x22, x21, [sp, #48]
   6701c:	f94013f7 	ldr	x23, [sp, #32]
   67020:	910183ff 	add	sp, sp, #0x60
   67024:	d65f03c0 	ret
   67028:	97ffd366 	bl	5bdc0 <__stack_chk_fail@plt>
   6702c:	97ffeb52 	bl	61d74 <__clang_call_terminate>
   67030:	aa0003f3 	mov	x19, x0
   67034:	910023e0 	add	x0, sp, #0x8
   67038:	97ffddd6 	bl	5e790 <cv::String::deallocate()@plt>
   6703c:	14000006 	b	67054 <cv::Mat::Mat(int, int, int, void*, unsigned long)+0x1e8>
   67040:	97ffeb4d 	bl	61d74 <__clang_call_terminate>
   67044:	97ffeb4c 	bl	61d74 <__clang_call_terminate>
   67048:	aa0003f3 	mov	x19, x0
   6704c:	910023e0 	add	x0, sp, #0x8
   67050:	97ffddd0 	bl	5e790 <cv::String::deallocate()@plt>
   67054:	aa1303e0 	mov	x0, x19
   67058:	97ffd736 	bl	5cd30 <_Unwind_Resume@plt>
   6705c:	97ffeb46 	bl	61d74 <__clang_call_terminate>

0000000000067060 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)>:
   67060:	a9402408 	ldp	x8, x9, [x0]
   67064:	eb08012a 	subs	x10, x9, x8
   67068:	9342fd49 	asr	x9, x10, #2
   6706c:	54000480 	b.eq	670fc <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9c>  // b.none
   67070:	aa1f03eb 	mov	x11, xzr
   67074:	1e2703e0 	fmov	s0, wzr
   67078:	bc6b7901 	ldr	s1, [x8, x11, lsl #2]
   6707c:	9100056b 	add	x11, x11, #0x1
   67080:	eb0b013f 	cmp	x9, x11
   67084:	1e210821 	fmul	s1, s1, s1
   67088:	1e212800 	fadd	s0, s0, s1
   6708c:	54ffff68 	b.hi	67078 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x18>  // b.pmore
   67090:	1e21c000 	fsqrt	s0, s0
   67094:	1e2e1001 	fmov	s1, #1.000000000000000000e+00
   67098:	f1001d3f 	cmp	x9, #0x7
   6709c:	1e201820 	fdiv	s0, s1, s0
   670a0:	54000068 	b.hi	670ac <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4c>  // b.pmore
   670a4:	aa1f03eb 	mov	x11, xzr
   670a8:	1400000e 	b	670e0 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x80>
   670ac:	927df12b 	and	x11, x9, #0xfffffffffffffff8
   670b0:	4e040401 	dup	v1.4s, v0.s[0]
   670b4:	9100410c 	add	x12, x8, #0x10
   670b8:	aa0b03ed 	mov	x13, x11
   670bc:	ad7f8d82 	ldp	q2, q3, [x12, #-16]
   670c0:	f10021ad 	subs	x13, x13, #0x8
   670c4:	6e22dc22 	fmul	v2.4s, v1.4s, v2.4s
   670c8:	6e23dc23 	fmul	v3.4s, v1.4s, v3.4s
   670cc:	ad3f8d82 	stp	q2, q3, [x12, #-16]
   670d0:	9100818c 	add	x12, x12, #0x20
   670d4:	54ffff41 	b.ne	670bc <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x5c>  // b.any
   670d8:	eb0b013f 	cmp	x9, x11
   670dc:	54000100 	b.eq	670fc <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9c>  // b.none
   670e0:	cb0b012c 	sub	x12, x9, x11
   670e4:	8b0b090b 	add	x11, x8, x11, lsl #2
   670e8:	bd400161 	ldr	s1, [x11]
   670ec:	f100058c 	subs	x12, x12, #0x1
   670f0:	1e210801 	fmul	s1, s0, s1
   670f4:	bc004561 	str	s1, [x11], #4
   670f8:	54ffff81 	b.ne	670e8 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x88>  // b.any
   670fc:	a940302b 	ldp	x11, x12, [x1]
   67100:	eb0b018c 	subs	x12, x12, x11
   67104:	540004a0 	b.eq	67198 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x138>  // b.none
   67108:	aa1f03ed 	mov	x13, xzr
   6710c:	9342fd8c 	asr	x12, x12, #2
   67110:	1e2703e0 	fmov	s0, wzr
   67114:	bc6d7961 	ldr	s1, [x11, x13, lsl #2]
   67118:	910005ad 	add	x13, x13, #0x1
   6711c:	eb0d019f 	cmp	x12, x13
   67120:	1e210821 	fmul	s1, s1, s1
   67124:	1e212800 	fadd	s0, s0, s1
   67128:	54ffff68 	b.hi	67114 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb4>  // b.pmore
   6712c:	1e21c000 	fsqrt	s0, s0
   67130:	1e2e1001 	fmov	s1, #1.000000000000000000e+00
   67134:	f1001d9f 	cmp	x12, #0x7
   67138:	1e201820 	fdiv	s0, s1, s0
   6713c:	54000068 	b.hi	67148 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe8>  // b.pmore
   67140:	aa1f03ed 	mov	x13, xzr
   67144:	1400000e 	b	6717c <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x11c>
   67148:	927df18d 	and	x13, x12, #0xfffffffffffffff8
   6714c:	4e040401 	dup	v1.4s, v0.s[0]
   67150:	9100416e 	add	x14, x11, #0x10
   67154:	aa0d03ef 	mov	x15, x13
   67158:	ad7f8dc2 	ldp	q2, q3, [x14, #-16]
   6715c:	f10021ef 	subs	x15, x15, #0x8
   67160:	6e22dc22 	fmul	v2.4s, v1.4s, v2.4s
   67164:	6e23dc23 	fmul	v3.4s, v1.4s, v3.4s
   67168:	ad3f8dc2 	stp	q2, q3, [x14, #-16]
   6716c:	910081ce 	add	x14, x14, #0x20
   67170:	54ffff41 	b.ne	67158 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf8>  // b.any
   67174:	eb0d019f 	cmp	x12, x13
   67178:	54000100 	b.eq	67198 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x138>  // b.none
   6717c:	cb0d018c 	sub	x12, x12, x13
   67180:	8b0d096d 	add	x13, x11, x13, lsl #2
   67184:	bd4001a1 	ldr	s1, [x13]
   67188:	f100058c 	subs	x12, x12, #0x1
   6718c:	1e210801 	fmul	s1, s0, s1
   67190:	bc0045a1 	str	s1, [x13], #4
   67194:	54ffff81 	b.ne	67184 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x124>  // b.any
   67198:	b400020a 	cbz	x10, 671d8 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x178>
   6719c:	aa1f03ea 	mov	x10, xzr
   671a0:	9e6703e0 	fmov	d0, xzr
   671a4:	d37ef54c 	lsl	x12, x10, #2
   671a8:	bc6c6901 	ldr	s1, [x8, x12]
   671ac:	bc6c6962 	ldr	s2, [x11, x12]
   671b0:	9100054a 	add	x10, x10, #0x1
   671b4:	eb0a013f 	cmp	x9, x10
   671b8:	1e223821 	fsub	s1, s1, s2
   671bc:	1e22c021 	fcvt	d1, s1
   671c0:	1e610821 	fmul	d1, d1, d1
   671c4:	1e612800 	fadd	d0, d0, d1
   671c8:	54fffee8 	b.hi	671a4 <MiCluster::distL2(std::__ndk1::vector<float, std::__ndk1::allocator<float> >&, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x144>  // b.pmore
   671cc:	1e624000 	fcvt	s0, d0
   671d0:	1e21c000 	fsqrt	s0, s0
   671d4:	d65f03c0 	ret
   671d8:	1e2703e0 	fmov	s0, wzr
   671dc:	1e21c000 	fsqrt	s0, s0
   671e0:	d65f03c0 	ret

00000000000671e4 <MiCluster::copyFile(char const*, char const*)>:
   671e4:	f81a0ffc 	str	x28, [sp, #-96]!
   671e8:	a90167fa 	stp	x26, x25, [sp, #16]
   671ec:	a9025ff8 	stp	x24, x23, [sp, #32]
   671f0:	a90357f6 	stp	x22, x21, [sp, #48]
   671f4:	a9044ff4 	stp	x20, x19, [sp, #64]
   671f8:	a9057bfd 	stp	x29, x30, [sp, #80]
   671fc:	910143fd 	add	x29, sp, #0x50
   67200:	d10ac3ff 	sub	sp, sp, #0x2b0
   67204:	b0002629 	adrp	x9, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   67208:	d53bd059 	mrs	x25, tpidr_el0
   6720c:	f9467d29 	ldr	x9, [x9, #3320]
   67210:	f940172a 	ldr	x10, [x25, #40]
   67214:	910543e8 	add	x8, sp, #0x150
   67218:	6f00e400 	movi	v0.2d, #0x0
   6721c:	9100612b 	add	x11, x9, #0x18
   67220:	aa0103f7 	mov	x23, x1
   67224:	aa0003f5 	mov	x21, x0
   67228:	4e081d60 	mov	v0.d[0], x11
   6722c:	9102e113 	add	x19, x8, #0xb8
   67230:	91004114 	add	x20, x8, #0x10
   67234:	91010128 	add	x8, x9, #0x40
   67238:	f81a83aa 	stur	x10, [x29, #-88]
   6723c:	f90107e8 	str	x8, [sp, #520]
   67240:	3d8057e0 	str	q0, [sp, #336]
   67244:	aa1303e0 	mov	x0, x19
   67248:	aa1403e1 	mov	x1, x20
   6724c:	97ffdc5d 	bl	5e3c0 <std::__ndk1::ios_base::init(void*)@plt>
   67250:	f9014bff 	str	xzr, [sp, #656]
   67254:	b0002638 	adrp	x24, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   67258:	f9465f18 	ldr	x24, [x24, #3256]
   6725c:	12800008 	mov	w8, #0xffffffff            	// #-1
   67260:	b9029be8 	str	w8, [sp, #664]
   67264:	91006308 	add	x8, x24, #0x18
   67268:	91010309 	add	x9, x24, #0x40
   6726c:	f900abe8 	str	x8, [sp, #336]
   67270:	f90107e9 	str	x9, [sp, #520]
   67274:	aa1403e0 	mov	x0, x20
   67278:	94001468 	bl	6c418 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::basic_filebuf()>
   6727c:	f940efe8 	ldr	x8, [sp, #472]
   67280:	b4000128 	cbz	x8, 672a4 <MiCluster::copyFile(char const*, char const*)+0xc0>
   67284:	f940abe8 	ldr	x8, [sp, #336]
   67288:	910543e9 	add	x9, sp, #0x150
   6728c:	f85e8108 	ldur	x8, [x8, #-24]
   67290:	8b080120 	add	x0, x9, x8
   67294:	b9402008 	ldr	w8, [x0, #32]
   67298:	321e0101 	orr	w1, w8, #0x4
   6729c:	97ffdd4d 	bl	5e7d0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   672a0:	14000009 	b	672c4 <MiCluster::copyFile(char const*, char const*)+0xe0>
   672a4:	b0001d41 	adrp	x1, 410000 <mobilenet_v2_bin+0x27b26c>
   672a8:	912f1821 	add	x1, x1, #0xbc6
   672ac:	aa1503e0 	mov	x0, x21
   672b0:	97ffde44 	bl	5ebc0 <fopen@plt>
   672b4:	f900efe0 	str	x0, [sp, #472]
   672b8:	b4fffe60 	cbz	x0, 67284 <MiCluster::copyFile(char const*, char const*)+0xa0>
   672bc:	321e07e8 	orr	w8, wzr, #0xc
   672c0:	b901fbe8 	str	w8, [sp, #504]
   672c4:	b0002629 	adrp	x9, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   672c8:	f946a929 	ldr	x9, [x9, #3408]
   672cc:	910023e8 	add	x8, sp, #0x8
   672d0:	9102c115 	add	x21, x8, #0xb0
   672d4:	91002116 	add	x22, x8, #0x8
   672d8:	91006128 	add	x8, x9, #0x18
   672dc:	91010129 	add	x9, x9, #0x40
   672e0:	f90007e8 	str	x8, [sp, #8]
   672e4:	f9005fe9 	str	x9, [sp, #184]
   672e8:	aa1503e0 	mov	x0, x21
   672ec:	aa1603e1 	mov	x1, x22
   672f0:	97ffdc34 	bl	5e3c0 <std::__ndk1::ios_base::init(void*)@plt>
   672f4:	f900a3ff 	str	xzr, [sp, #320]
   672f8:	b000263a 	adrp	x26, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   672fc:	f947bb5a 	ldr	x26, [x26, #3952]
   67300:	12800008 	mov	w8, #0xffffffff            	// #-1
   67304:	b9014be8 	str	w8, [sp, #328]
   67308:	91006348 	add	x8, x26, #0x18
   6730c:	91010349 	add	x9, x26, #0x40
   67310:	f90007e8 	str	x8, [sp, #8]
   67314:	f9005fe9 	str	x9, [sp, #184]
   67318:	aa1603e0 	mov	x0, x22
   6731c:	9400143f 	bl	6c418 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::basic_filebuf()>
   67320:	f94047e8 	ldr	x8, [sp, #136]
   67324:	b4000128 	cbz	x8, 67348 <MiCluster::copyFile(char const*, char const*)+0x164>
   67328:	f94007e8 	ldr	x8, [sp, #8]
   6732c:	910023e9 	add	x9, sp, #0x8
   67330:	f85e8108 	ldur	x8, [x8, #-24]
   67334:	8b080120 	add	x0, x9, x8
   67338:	b9402008 	ldr	w8, [x0, #32]
   6733c:	321e0101 	orr	w1, w8, #0x4
   67340:	97ffdd24 	bl	5e7d0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   67344:	14000009 	b	67368 <MiCluster::copyFile(char const*, char const*)+0x184>
   67348:	b0001d41 	adrp	x1, 410000 <mobilenet_v2_bin+0x27b26c>
   6734c:	912f0c21 	add	x1, x1, #0xbc3
   67350:	aa1703e0 	mov	x0, x23
   67354:	97ffde1b 	bl	5ebc0 <fopen@plt>
   67358:	f90047e0 	str	x0, [sp, #136]
   6735c:	b4fffe60 	cbz	x0, 67328 <MiCluster::copyFile(char const*, char const*)+0x144>
   67360:	52800288 	mov	w8, #0x14                  	// #20
   67364:	b900abe8 	str	w8, [sp, #168]
   67368:	910023e0 	add	x0, sp, #0x8
   6736c:	aa1403e1 	mov	x1, x20
   67370:	97ffd2b8 	bl	5be50 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)@plt>
   67374:	f940abe8 	ldr	x8, [sp, #336]
   67378:	910543e9 	add	x9, sp, #0x150
   6737c:	f85e8108 	ldur	x8, [x8, #-24]
   67380:	8b080128 	add	x8, x9, x8
   67384:	39408109 	ldrb	w9, [x8, #32]
   67388:	528000a8 	mov	w8, #0x5                   	// #5
   6738c:	6a08013f 	tst	w9, w8
   67390:	54000060 	b.eq	6739c <MiCluster::copyFile(char const*, char const*)+0x1b8>  // b.none
   67394:	2a1f03f7 	mov	w23, wzr
   67398:	14000008 	b	673b8 <MiCluster::copyFile(char const*, char const*)+0x1d4>
   6739c:	f94007e9 	ldr	x9, [sp, #8]
   673a0:	910023ea 	add	x10, sp, #0x8
   673a4:	f85e8129 	ldur	x9, [x9, #-24]
   673a8:	8b090149 	add	x9, x10, x9
   673ac:	39408129 	ldrb	w9, [x9, #32]
   673b0:	6a08013f 	tst	w9, w8
   673b4:	1a9f17f7 	cset	w23, eq	// eq = none
   673b8:	91006348 	add	x8, x26, #0x18
   673bc:	91010349 	add	x9, x26, #0x40
   673c0:	aa1603e0 	mov	x0, x22
   673c4:	f90007e8 	str	x8, [sp, #8]
   673c8:	f9005fe9 	str	x9, [sp, #184]
   673cc:	94000d5b 	bl	6a938 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::~basic_filebuf()>
   673d0:	aa1503e0 	mov	x0, x21
   673d4:	97ffdeef 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   673d8:	91006308 	add	x8, x24, #0x18
   673dc:	91010309 	add	x9, x24, #0x40
   673e0:	aa1403e0 	mov	x0, x20
   673e4:	f900abe8 	str	x8, [sp, #336]
   673e8:	f90107e9 	str	x9, [sp, #520]
   673ec:	94000d53 	bl	6a938 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::~basic_filebuf()>
   673f0:	aa1303e0 	mov	x0, x19
   673f4:	97ffdee7 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   673f8:	f9401728 	ldr	x8, [x25, #40]
   673fc:	f85a83a9 	ldur	x9, [x29, #-88]
   67400:	eb09011f 	cmp	x8, x9
   67404:	54000141 	b.ne	6742c <MiCluster::copyFile(char const*, char const*)+0x248>  // b.any
   67408:	2a1703e0 	mov	w0, w23
   6740c:	910ac3ff 	add	sp, sp, #0x2b0
   67410:	a9457bfd 	ldp	x29, x30, [sp, #80]
   67414:	a9444ff4 	ldp	x20, x19, [sp, #64]
   67418:	a94357f6 	ldp	x22, x21, [sp, #48]
   6741c:	a9425ff8 	ldp	x24, x23, [sp, #32]
   67420:	a94167fa 	ldp	x26, x25, [sp, #16]
   67424:	f84607fc 	ldr	x28, [sp], #96
   67428:	d65f03c0 	ret
   6742c:	97ffd265 	bl	5bdc0 <__stack_chk_fail@plt>
   67430:	aa0003f7 	mov	x23, x0
   67434:	14000008 	b	67454 <MiCluster::copyFile(char const*, char const*)+0x270>
   67438:	aa0003f7 	mov	x23, x0
   6743c:	14000011 	b	67480 <MiCluster::copyFile(char const*, char const*)+0x29c>
   67440:	aa0003f7 	mov	x23, x0
   67444:	91006348 	add	x8, x26, #0x18
   67448:	91010349 	add	x9, x26, #0x40
   6744c:	f90007e8 	str	x8, [sp, #8]
   67450:	f9005fe9 	str	x9, [sp, #184]
   67454:	aa1603e0 	mov	x0, x22
   67458:	94000d38 	bl	6a938 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::~basic_filebuf()>
   6745c:	14000003 	b	67468 <MiCluster::copyFile(char const*, char const*)+0x284>
   67460:	14000001 	b	67464 <MiCluster::copyFile(char const*, char const*)+0x280>
   67464:	aa0003f7 	mov	x23, x0
   67468:	aa1503e0 	mov	x0, x21
   6746c:	97ffdec9 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   67470:	91006308 	add	x8, x24, #0x18
   67474:	91010309 	add	x9, x24, #0x40
   67478:	f900abe8 	str	x8, [sp, #336]
   6747c:	f90107e9 	str	x9, [sp, #520]
   67480:	aa1403e0 	mov	x0, x20
   67484:	94000d2d 	bl	6a938 <std::__ndk1::basic_filebuf<char, std::__ndk1::char_traits<char> >::~basic_filebuf()>
   67488:	aa1303e0 	mov	x0, x19
   6748c:	97ffdec1 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   67490:	aa1703e0 	mov	x0, x23
   67494:	97ffd627 	bl	5cd30 <_Unwind_Resume@plt>
   67498:	aa0003f7 	mov	x23, x0
   6749c:	aa1303e0 	mov	x0, x19
   674a0:	97ffdebc 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   674a4:	aa1703e0 	mov	x0, x23
   674a8:	97ffd622 	bl	5cd30 <_Unwind_Resume@plt>
   674ac:	aa0003f7 	mov	x23, x0
   674b0:	aa1303e0 	mov	x0, x19
   674b4:	97ffdeb7 	bl	5ef90 <std::__ndk1::ios_base::~ios_base()@plt>
   674b8:	aa1703e0 	mov	x0, x23
   674bc:	97ffd61d 	bl	5cd30 <_Unwind_Resume@plt>

00000000000674c0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)>:
   674c0:	d10183ff 	sub	sp, sp, #0x60
   674c4:	f90013f7 	str	x23, [sp, #32]
   674c8:	a90357f6 	stp	x22, x21, [sp, #48]
   674cc:	a9044ff4 	stp	x20, x19, [sp, #64]
   674d0:	a9057bfd 	stp	x29, x30, [sp, #80]
   674d4:	910143fd 	add	x29, sp, #0x50
   674d8:	d53bd056 	mrs	x22, tpidr_el0
   674dc:	f94016c8 	ldr	x8, [x22, #40]
   674e0:	aa0003f3 	mov	x19, x0
   674e4:	f9000fe8 	str	x8, [sp, #24]
   674e8:	390023ff 	strb	wzr, [sp, #8]
   674ec:	f9000be0 	str	x0, [sp, #16]
   674f0:	f9400008 	ldr	x8, [x0]
   674f4:	f85e8d09 	ldr	x9, [x8, #-24]!
   674f8:	8b090009 	add	x9, x0, x9
   674fc:	b940212a 	ldr	w10, [x9, #32]
   67500:	340001ca 	cbz	w10, 67538 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x78>
   67504:	910023e0 	add	x0, sp, #0x8
   67508:	97ffe9f3 	bl	61cd4 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::sentry::~sentry()>
   6750c:	f94016c8 	ldr	x8, [x22, #40]
   67510:	f9400fe9 	ldr	x9, [sp, #24]
   67514:	eb09011f 	cmp	x8, x9
   67518:	540010e1 	b.ne	67734 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x274>  // b.any
   6751c:	aa1303e0 	mov	x0, x19
   67520:	a9457bfd 	ldp	x29, x30, [sp, #80]
   67524:	a9444ff4 	ldp	x20, x19, [sp, #64]
   67528:	a94357f6 	ldp	x22, x21, [sp, #48]
   6752c:	f94013f7 	ldr	x23, [sp, #32]
   67530:	910183ff 	add	sp, sp, #0x60
   67534:	d65f03c0 	ret
   67538:	f9404520 	ldr	x0, [x9, #136]
   6753c:	aa0103f4 	mov	x20, x1
   67540:	b4000080 	cbz	x0, 67550 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x90>
   67544:	97ffea0f 	bl	61d80 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()>
   67548:	f9400268 	ldr	x8, [x19]
   6754c:	d1006108 	sub	x8, x8, #0x18
   67550:	320003e9 	orr	w9, wzr, #0x1
   67554:	390023e9 	strb	w9, [sp, #8]
   67558:	f9400108 	ldr	x8, [x8]
   6755c:	8b080260 	add	x0, x19, x8
   67560:	b40007b4 	cbz	x20, 67654 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x194>
   67564:	f9401415 	ldr	x21, [x0, #40]
   67568:	b40007f5 	cbz	x21, 67664 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x1a4>
   6756c:	aa1f03f7 	mov	x23, xzr
   67570:	a941a688 	ldp	x8, x9, [x20, #24]
   67574:	eb09011f 	cmp	x8, x9
   67578:	540001a1 	b.ne	675ac <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0xec>  // b.any
   6757c:	14000005 	b	67590 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0xd0>
   67580:	d10006f7 	sub	x23, x23, #0x1
   67584:	a941a688 	ldp	x8, x9, [x20, #24]
   67588:	eb09011f 	cmp	x8, x9
   6758c:	54000101 	b.ne	675ac <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0xec>  // b.any
   67590:	f9400288 	ldr	x8, [x20]
   67594:	f9402508 	ldr	x8, [x8, #72]
   67598:	aa1403e0 	mov	x0, x20
   6759c:	d63f0100 	blr	x8
   675a0:	3100041f 	cmn	w0, #0x1
   675a4:	9a9403f4 	csel	x20, xzr, x20, eq	// eq = none
   675a8:	b4000534 	cbz	x20, 6764c <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x18c>
   675ac:	a941a688 	ldp	x8, x9, [x20, #24]
   675b0:	eb09011f 	cmp	x8, x9
   675b4:	540000c0 	b.eq	675cc <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x10c>  // b.none
   675b8:	39400100 	ldrb	w0, [x8]
   675bc:	a94326a8 	ldp	x8, x9, [x21, #48]
   675c0:	eb09011f 	cmp	x8, x9
   675c4:	54000121 	b.ne	675e8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x128>  // b.any
   675c8:	1400000f 	b	67604 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x144>
   675cc:	f9400288 	ldr	x8, [x20]
   675d0:	f9402508 	ldr	x8, [x8, #72]
   675d4:	aa1403e0 	mov	x0, x20
   675d8:	d63f0100 	blr	x8
   675dc:	a94326a8 	ldp	x8, x9, [x21, #48]
   675e0:	eb09011f 	cmp	x8, x9
   675e4:	54000100 	b.eq	67604 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x144>  // b.none
   675e8:	91000509 	add	x9, x8, #0x1
   675ec:	f9001aa9 	str	x9, [x21, #48]
   675f0:	39000100 	strb	w0, [x8]
   675f4:	a941a688 	ldp	x8, x9, [x20, #24]
   675f8:	eb09011f 	cmp	x8, x9
   675fc:	54000181 	b.ne	6762c <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(std::__ndk1::basic_streambuf<char, std::__ndk1::char_traits<char> >*)+0x16c>  // b.any
