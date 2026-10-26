
libiqa.so:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000069ac0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)>:
   69ac0:	d10683ff 	sub	sp, sp, #0x1a0
   69ac4:	fd009be8 	str	d8, [sp, #304]
   69ac8:	a9146ffc 	stp	x28, x27, [sp, #320]
   69acc:	a91567fa 	stp	x26, x25, [sp, #336]
   69ad0:	a9165ff8 	stp	x24, x23, [sp, #352]
   69ad4:	a91757f6 	stp	x22, x21, [sp, #368]
   69ad8:	a9184ff4 	stp	x20, x19, [sp, #384]
   69adc:	a9197bfd 	stp	x29, x30, [sp, #400]
   69ae0:	910643fd 	add	x29, sp, #0x190
   69ae4:	d53bd057 	mrs	x23, tpidr_el0
   69ae8:	f94016e8 	ldr	x8, [x23, #40]
   69aec:	f81903a8 	stur	x8, [x29, #-112]
   69af0:	b4000c21 	cbz	x1, 69c74 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1b4>
   69af4:	b9405808 	ldr	w8, [x0, #88]
   69af8:	aa0003f4 	mov	x20, x0
   69afc:	6b02011f 	cmp	w8, w2
   69b00:	54000ba1 	b.ne	69c74 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1b4>  // b.any
   69b04:	b9405e88 	ldr	w8, [x20, #92]
   69b08:	6b03011f 	cmp	w8, w3
   69b0c:	54000b41 	b.ne	69c74 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1b4>  // b.any
   69b10:	f9400088 	ldr	x8, [x4]
   69b14:	aa0103e9 	mov	x9, x1
   69b18:	aa0403f3 	mov	x19, x4
   69b1c:	52800041 	mov	w1, #0x2                   	// #2
   69b20:	f9000488 	str	x8, [x4, #8]
   69b24:	9102e3e8 	add	x8, sp, #0xb8
   69b28:	aa0903e0 	mov	x0, x9
   69b2c:	aa1f03e4 	mov	x4, xzr
   69b30:	94001c57 	bl	70c8c <ncnn::Mat::from_pixels(unsigned char const*, int, int, int, ncnn::Allocator*)>
   69b34:	90005388 	adrp	x8, ad9000 <holistic_net_bin+0x404d48>
   69b38:	90005389 	adrp	x9, ad9000 <holistic_net_bin+0x404d48>
   69b3c:	91383108 	add	x8, x8, #0xe0c
   69b40:	91386129 	add	x9, x9, #0xe18
   69b44:	f940010a 	ldr	x10, [x8]
   69b48:	b9400908 	ldr	w8, [x8, #8]
   69b4c:	f940012b 	ldr	x11, [x9]
   69b50:	b9400929 	ldr	w9, [x9, #8]
   69b54:	9102e3e0 	add	x0, sp, #0xb8
   69b58:	d10203a1 	sub	x1, x29, #0x80
   69b5c:	d10243a2 	sub	x2, x29, #0x90
   69b60:	f81803aa 	stur	x10, [x29, #-128]
   69b64:	b81883a8 	stur	w8, [x29, #-120]
   69b68:	f81703ab 	stur	x11, [x29, #-144]
   69b6c:	b81783a9 	stur	w9, [x29, #-136]
   69b70:	94000eeb 	bl	6d71c <ncnn::Mat::substract_mean_normalize(float const*, float const*)>
   69b74:	91002280 	add	x0, x20, #0x8
   69b78:	9102a3e8 	add	x8, sp, #0xa8
   69b7c:	9400529e 	bl	7e5f4 <ncnn::Net::create_extractor() const>
   69b80:	9102a3e0 	add	x0, sp, #0xa8
   69b84:	52800021 	mov	w1, #0x1                   	// #1
   69b88:	94005489 	bl	7edac <ncnn::Extractor::set_light_mode(bool)>
   69b8c:	9102a3e0 	add	x0, sp, #0xa8
   69b90:	52800021 	mov	w1, #0x1                   	// #1
   69b94:	9400548a 	bl	7edbc <ncnn::Extractor::set_num_threads(int)>
   69b98:	9102a3e0 	add	x0, sp, #0xa8
   69b9c:	9102e3e2 	add	x2, sp, #0xb8
   69ba0:	2a1f03e1 	mov	w1, wzr
   69ba4:	940054db 	bl	7ef10 <ncnn::Extractor::input(int, ncnn::Mat const&)>
   69ba8:	9102a3e0 	add	x0, sp, #0xa8
   69bac:	910183e2 	add	x2, sp, #0x60
   69bb0:	528006c1 	mov	w1, #0x36                  	// #54
   69bb4:	2a1f03e3 	mov	w3, wzr
   69bb8:	f90053ff 	str	xzr, [sp, #160]
   69bbc:	a9067fff 	stp	xzr, xzr, [sp, #96]
   69bc0:	f9003bff 	str	xzr, [sp, #112]
   69bc4:	b9007bff 	str	wzr, [sp, #120]
   69bc8:	a9087fff 	stp	xzr, xzr, [sp, #128]
   69bcc:	f9004bff 	str	xzr, [sp, #144]
   69bd0:	b9009bff 	str	wzr, [sp, #152]
   69bd4:	94005571 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   69bd8:	2951a7e8 	ldp	w8, w9, [sp, #140]
   69bdc:	b9409bea 	ldr	w10, [sp, #152]
   69be0:	a9057fff 	stp	xzr, xzr, [sp, #80]
   69be4:	f90027ff 	str	xzr, [sp, #72]
   69be8:	1b087d2b 	mul	w11, w9, w8
   69bec:	1b0a7d6b 	mul	w11, w11, w10
   69bf0:	340000cb 	cbz	w11, 69c08 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x148>
   69bf4:	93407d61 	sxtw	x1, w11
   69bf8:	910123e0 	add	x0, sp, #0x48
   69bfc:	94000412 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   69c00:	2951a7e8 	ldp	w8, w9, [sp, #140]
   69c04:	b9409bea 	ldr	w10, [sp, #152]
   69c08:	1b0a7d08 	mul	w8, w8, w10
   69c0c:	1b097d01 	mul	w1, w8, w9
   69c10:	910003e8 	mov	x8, sp
   69c14:	910183e0 	add	x0, sp, #0x60
   69c18:	aa1f03e2 	mov	x2, xzr
   69c1c:	94000abf 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   69c20:	f94007e8 	ldr	x8, [sp, #8]
   69c24:	b40000a8 	cbz	x8, 69c38 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x178>
   69c28:	885ffd09 	ldaxr	w9, [x8]
   69c2c:	11000529 	add	w9, w9, #0x1
   69c30:	880afd09 	stlxr	w10, w9, [x8]
   69c34:	35ffffaa 	cbnz	w10, 69c28 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x168>
   69c38:	f94037e8 	ldr	x8, [sp, #104]
   69c3c:	910183f8 	add	x24, sp, #0x60
   69c40:	b40003c8 	cbz	x8, 69cb8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1f8>
   69c44:	885ffd09 	ldaxr	w9, [x8]
   69c48:	71000529 	subs	w9, w9, #0x1
   69c4c:	880afd09 	stlxr	w10, w9, [x8]
   69c50:	35ffffaa 	cbnz	w10, 69c44 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x184>
   69c54:	54000321 	b.ne	69cb8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1f8>  // b.any
   69c58:	f94043e0 	ldr	x0, [sp, #128]
   69c5c:	f94033e1 	ldr	x1, [sp, #96]
   69c60:	b4000260 	cbz	x0, 69cac <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1ec>
   69c64:	f9400008 	ldr	x8, [x0]
   69c68:	f9400d08 	ldr	x8, [x8, #24]
   69c6c:	d63f0100 	blr	x8
   69c70:	14000012 	b	69cb8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1f8>
   69c74:	12800000 	mov	w0, #0xffffffff            	// #-1
   69c78:	f94016e8 	ldr	x8, [x23, #40]
   69c7c:	f85903a9 	ldur	x9, [x29, #-112]
   69c80:	eb09011f 	cmp	x8, x9
   69c84:	54007de1 	b.ne	6ac40 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1180>  // b.any
   69c88:	a9597bfd 	ldp	x29, x30, [sp, #400]
   69c8c:	a9584ff4 	ldp	x20, x19, [sp, #384]
   69c90:	a95757f6 	ldp	x22, x21, [sp, #368]
   69c94:	a9565ff8 	ldp	x24, x23, [sp, #352]
   69c98:	a95567fa 	ldp	x26, x25, [sp, #336]
   69c9c:	a9546ffc 	ldp	x28, x27, [sp, #320]
   69ca0:	fd409be8 	ldr	d8, [sp, #304]
   69ca4:	910683ff 	add	sp, sp, #0x1a0
   69ca8:	d65f03c0 	ret
   69cac:	b4000061 	cbz	x1, 69cb8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1f8>
   69cb0:	aa0103e0 	mov	x0, x1
   69cb4:	97fff38b 	bl	66ae0 <free@plt>
   69cb8:	f94003e8 	ldr	x8, [sp]
   69cbc:	b9401be9 	ldr	w9, [sp, #24]
   69cc0:	3cc083e0 	ldur	q0, [sp, #8]
   69cc4:	3cc283e1 	ldur	q1, [sp, #40]
   69cc8:	f90033e8 	str	x8, [sp, #96]
   69ccc:	f94013e8 	ldr	x8, [sp, #32]
   69cd0:	b9007be9 	str	w9, [sp, #120]
   69cd4:	b9403be9 	ldr	w9, [sp, #56]
   69cd8:	3c8683e0 	stur	q0, [sp, #104]
   69cdc:	f90043e8 	str	x8, [sp, #128]
   69ce0:	f94023e8 	ldr	x8, [sp, #64]
   69ce4:	3c828301 	stur	q1, [x24, #40]
   69ce8:	b9009be9 	str	w9, [sp, #152]
   69cec:	f90053e8 	str	x8, [sp, #160]
   69cf0:	9e660008 	fmov	x8, d0
   69cf4:	b4000208 	cbz	x8, 69d34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x274>
   69cf8:	885ffd09 	ldaxr	w9, [x8]
   69cfc:	71000529 	subs	w9, w9, #0x1
   69d00:	880afd09 	stlxr	w10, w9, [x8]
   69d04:	35ffffaa 	cbnz	w10, 69cf8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x238>
   69d08:	54000161 	b.ne	69d34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x274>  // b.any
   69d0c:	f94013e0 	ldr	x0, [sp, #32]
   69d10:	f94003e1 	ldr	x1, [sp]
   69d14:	b40000a0 	cbz	x0, 69d28 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x268>
   69d18:	f9400008 	ldr	x8, [x0]
   69d1c:	f9400d08 	ldr	x8, [x8, #24]
   69d20:	d63f0100 	blr	x8
   69d24:	14000004 	b	69d34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x274>
   69d28:	b4000061 	cbz	x1, 69d34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x274>
   69d2c:	aa0103e0 	mov	x0, x1
   69d30:	97fff36c 	bl	66ae0 <free@plt>
   69d34:	6951abe8 	ldpsw	x8, x10, [sp, #140]
   69d38:	b9809be9 	ldrsw	x9, [sp, #152]
   69d3c:	b0003359 	adrp	x25, 6d2000 <nima_bin+0x166914>
   69d40:	9b097d08 	mul	x8, x8, x9
   69d44:	9b0a7d08 	mul	x8, x8, x10
   69d48:	7100051f 	cmp	w8, #0x1
   69d4c:	540001eb 	b.lt	69d88 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x2c8>  // b.tstop
   69d50:	f94033ea 	ldr	x10, [sp, #96]
   69d54:	fd46ab21 	ldr	d1, [x25, #3408]
   69d58:	aa1f03e9 	mov	x9, xzr
   69d5c:	9e6703e0 	fmov	d0, xzr
   69d60:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   69d64:	1e220123 	scvtf	s3, w9
   69d68:	91000529 	add	x9, x9, #0x1
   69d6c:	eb08013f 	cmp	x9, x8
   69d70:	1e230842 	fmul	s2, s2, s3
   69d74:	1e22c042 	fcvt	d2, s2
   69d78:	1e610842 	fmul	d2, d2, d1
   69d7c:	1e622800 	fadd	d0, d0, d2
   69d80:	54ffff0b 	b.lt	69d60 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x2a0>  // b.tstop
   69d84:	14000002 	b	69d8c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x2cc>
   69d88:	9e6703e0 	fmov	d0, xzr
   69d8c:	a940a269 	ldp	x9, x8, [x19, #8]
   69d90:	1e624008 	fcvt	s8, d0
   69d94:	eb08013f 	cmp	x9, x8
   69d98:	54000082 	b.cs	69da8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x2e8>  // b.hs, b.nlast
   69d9c:	bc004528 	str	s8, [x9], #4
   69da0:	f9000669 	str	x9, [x19, #8]
   69da4:	14000024 	b	69e34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x374>
   69da8:	f9400274 	ldr	x20, [x19]
   69dac:	cb140135 	sub	x21, x9, x20
   69db0:	9342feba 	asr	x26, x21, #2
   69db4:	91000749 	add	x9, x26, #0x1
   69db8:	d37efd2a 	lsr	x10, x9, #62
   69dbc:	b5006aca 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   69dc0:	cb140108 	sub	x8, x8, x20
   69dc4:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   69dc8:	eb88095f 	cmp	x10, x8, asr #2
   69dcc:	54000103 	b.cc	69dec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x32c>  // b.lo, b.ul, b.last
   69dd0:	9341fd08 	asr	x8, x8, #1
   69dd4:	eb09011f 	cmp	x8, x9
   69dd8:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   69ddc:	b400717b 	cbz	x27, 6ac08 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1148>
   69de0:	d37eff68 	lsr	x8, x27, #62
   69de4:	b4000068 	cbz	x8, 69df0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x330>
   69de8:	1400034b 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   69dec:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   69df0:	d37ef760 	lsl	x0, x27, #2
   69df4:	97fff6ff 	bl	679f0 <operator new(unsigned long)@plt>
   69df8:	aa0003f6 	mov	x22, x0
   69dfc:	8b1a0adc 	add	x28, x22, x26, lsl #2
   69e00:	8b1b0ada 	add	x26, x22, x27, lsl #2
   69e04:	f10006bf 	cmp	x21, #0x1
   69e08:	bc004788 	str	s8, [x28], #4
   69e0c:	540000ab 	b.lt	69e20 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x360>  // b.tstop
   69e10:	aa1603e0 	mov	x0, x22
   69e14:	aa1403e1 	mov	x1, x20
   69e18:	aa1503e2 	mov	x2, x21
   69e1c:	97fff201 	bl	66620 <memcpy@plt>
   69e20:	a9007276 	stp	x22, x28, [x19]
   69e24:	f9000a7a 	str	x26, [x19, #16]
   69e28:	b4000074 	cbz	x20, 69e34 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x374>
   69e2c:	aa1403e0 	mov	x0, x20
   69e30:	97fff270 	bl	667f0 <operator delete(void*)@plt>
   69e34:	9102a3e0 	add	x0, sp, #0xa8
   69e38:	910183e2 	add	x2, sp, #0x60
   69e3c:	52800981 	mov	w1, #0x4c                  	// #76
   69e40:	2a1f03e3 	mov	w3, wzr
   69e44:	940054d5 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   69e48:	2951a7e8 	ldp	w8, w9, [sp, #140]
   69e4c:	b9409bea 	ldr	w10, [sp, #152]
   69e50:	f94027ec 	ldr	x12, [sp, #72]
   69e54:	1b087d2b 	mul	w11, w9, w8
   69e58:	1b0a7d6b 	mul	w11, w11, w10
   69e5c:	f9002bec 	str	x12, [sp, #80]
   69e60:	340000cb 	cbz	w11, 69e78 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x3b8>
   69e64:	93407d61 	sxtw	x1, w11
   69e68:	910123e0 	add	x0, sp, #0x48
   69e6c:	94000376 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   69e70:	2951a7e8 	ldp	w8, w9, [sp, #140]
   69e74:	b9409bea 	ldr	w10, [sp, #152]
   69e78:	1b0a7d08 	mul	w8, w8, w10
   69e7c:	1b097d01 	mul	w1, w8, w9
   69e80:	910003e8 	mov	x8, sp
   69e84:	910183e0 	add	x0, sp, #0x60
   69e88:	aa1f03e2 	mov	x2, xzr
   69e8c:	94000a23 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   69e90:	f94007e8 	ldr	x8, [sp, #8]
   69e94:	b40000a8 	cbz	x8, 69ea8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x3e8>
   69e98:	885ffd09 	ldaxr	w9, [x8]
   69e9c:	11000529 	add	w9, w9, #0x1
   69ea0:	880afd09 	stlxr	w10, w9, [x8]
   69ea4:	35ffffaa 	cbnz	w10, 69e98 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x3d8>
   69ea8:	f94037e8 	ldr	x8, [sp, #104]
   69eac:	b4000208 	cbz	x8, 69eec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x42c>
   69eb0:	885ffd09 	ldaxr	w9, [x8]
   69eb4:	71000529 	subs	w9, w9, #0x1
   69eb8:	880afd09 	stlxr	w10, w9, [x8]
   69ebc:	35ffffaa 	cbnz	w10, 69eb0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x3f0>
   69ec0:	54000161 	b.ne	69eec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x42c>  // b.any
   69ec4:	f94043e0 	ldr	x0, [sp, #128]
   69ec8:	f94033e1 	ldr	x1, [sp, #96]
   69ecc:	b40000a0 	cbz	x0, 69ee0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x420>
   69ed0:	f9400008 	ldr	x8, [x0]
   69ed4:	f9400d08 	ldr	x8, [x8, #24]
   69ed8:	d63f0100 	blr	x8
   69edc:	14000004 	b	69eec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x42c>
   69ee0:	b4000061 	cbz	x1, 69eec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x42c>
   69ee4:	aa0103e0 	mov	x0, x1
   69ee8:	97fff2fe 	bl	66ae0 <free@plt>
   69eec:	f94003e8 	ldr	x8, [sp]
   69ef0:	b9401be9 	ldr	w9, [sp, #24]
   69ef4:	3cc083e0 	ldur	q0, [sp, #8]
   69ef8:	3cc283e1 	ldur	q1, [sp, #40]
   69efc:	f90033e8 	str	x8, [sp, #96]
   69f00:	f94013e8 	ldr	x8, [sp, #32]
   69f04:	b9007be9 	str	w9, [sp, #120]
   69f08:	b9403be9 	ldr	w9, [sp, #56]
   69f0c:	3c8683e0 	stur	q0, [sp, #104]
   69f10:	f90043e8 	str	x8, [sp, #128]
   69f14:	f94023e8 	ldr	x8, [sp, #64]
   69f18:	3c828301 	stur	q1, [x24, #40]
   69f1c:	b9009be9 	str	w9, [sp, #152]
   69f20:	f90053e8 	str	x8, [sp, #160]
   69f24:	9e660008 	fmov	x8, d0
   69f28:	b4000208 	cbz	x8, 69f68 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4a8>
   69f2c:	885ffd09 	ldaxr	w9, [x8]
   69f30:	71000529 	subs	w9, w9, #0x1
   69f34:	880afd09 	stlxr	w10, w9, [x8]
   69f38:	35ffffaa 	cbnz	w10, 69f2c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x46c>
   69f3c:	54000161 	b.ne	69f68 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4a8>  // b.any
   69f40:	f94013e0 	ldr	x0, [sp, #32]
   69f44:	f94003e1 	ldr	x1, [sp]
   69f48:	b40000a0 	cbz	x0, 69f5c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x49c>
   69f4c:	f9400008 	ldr	x8, [x0]
   69f50:	f9400d08 	ldr	x8, [x8, #24]
   69f54:	d63f0100 	blr	x8
   69f58:	14000004 	b	69f68 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4a8>
   69f5c:	b4000061 	cbz	x1, 69f68 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4a8>
   69f60:	aa0103e0 	mov	x0, x1
   69f64:	97fff2df 	bl	66ae0 <free@plt>
   69f68:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   69f6c:	b9809bea 	ldrsw	x10, [sp, #152]
   69f70:	9b087d28 	mul	x8, x9, x8
   69f74:	9b0a7d08 	mul	x8, x8, x10
   69f78:	7100051f 	cmp	w8, #0x1
   69f7c:	5400020b 	b.lt	69fbc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4fc>  // b.tstop
   69f80:	f94033ea 	ldr	x10, [sp, #96]
   69f84:	fd46ab21 	ldr	d1, [x25, #3408]
   69f88:	aa1f03e9 	mov	x9, xzr
   69f8c:	9e6703e0 	fmov	d0, xzr
   69f90:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   69f94:	5100292b 	sub	w11, w9, #0xa
   69f98:	1e220163 	scvtf	s3, w11
   69f9c:	91000529 	add	x9, x9, #0x1
   69fa0:	1e230842 	fmul	s2, s2, s3
   69fa4:	1e22c042 	fcvt	d2, s2
   69fa8:	1e610842 	fmul	d2, d2, d1
   69fac:	eb08013f 	cmp	x9, x8
   69fb0:	1e622800 	fadd	d0, d0, d2
   69fb4:	54fffeeb 	b.lt	69f90 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x4d0>  // b.tstop
   69fb8:	14000002 	b	69fc0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x500>
   69fbc:	9e6703e0 	fmov	d0, xzr
   69fc0:	a940a269 	ldp	x9, x8, [x19, #8]
   69fc4:	1e624008 	fcvt	s8, d0
   69fc8:	eb08013f 	cmp	x9, x8
   69fcc:	54000082 	b.cs	69fdc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x51c>  // b.hs, b.nlast
   69fd0:	bc004528 	str	s8, [x9], #4
   69fd4:	f9000669 	str	x9, [x19, #8]
   69fd8:	14000024 	b	6a068 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x5a8>
   69fdc:	f9400274 	ldr	x20, [x19]
   69fe0:	cb140135 	sub	x21, x9, x20
   69fe4:	9342feba 	asr	x26, x21, #2
   69fe8:	91000749 	add	x9, x26, #0x1
   69fec:	d37efd2a 	lsr	x10, x9, #62
   69ff0:	b500592a 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   69ff4:	cb140108 	sub	x8, x8, x20
   69ff8:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   69ffc:	eb88095f 	cmp	x10, x8, asr #2
   6a000:	54000103 	b.cc	6a020 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x560>  // b.lo, b.ul, b.last
   6a004:	9341fd08 	asr	x8, x8, #1
   6a008:	eb09011f 	cmp	x8, x9
   6a00c:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   6a010:	b400601b 	cbz	x27, 6ac10 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1150>
   6a014:	d37eff68 	lsr	x8, x27, #62
   6a018:	b4000068 	cbz	x8, 6a024 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x564>
   6a01c:	140002be 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a020:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   6a024:	d37ef760 	lsl	x0, x27, #2
   6a028:	97fff672 	bl	679f0 <operator new(unsigned long)@plt>
   6a02c:	aa0003f6 	mov	x22, x0
   6a030:	8b1a0adc 	add	x28, x22, x26, lsl #2
   6a034:	8b1b0ada 	add	x26, x22, x27, lsl #2
   6a038:	f10006bf 	cmp	x21, #0x1
   6a03c:	bc004788 	str	s8, [x28], #4
   6a040:	540000ab 	b.lt	6a054 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x594>  // b.tstop
   6a044:	aa1603e0 	mov	x0, x22
   6a048:	aa1403e1 	mov	x1, x20
   6a04c:	aa1503e2 	mov	x2, x21
   6a050:	97fff174 	bl	66620 <memcpy@plt>
   6a054:	a9007276 	stp	x22, x28, [x19]
   6a058:	f9000a7a 	str	x26, [x19, #16]
   6a05c:	b4000074 	cbz	x20, 6a068 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x5a8>
   6a060:	aa1403e0 	mov	x0, x20
   6a064:	97fff1e3 	bl	667f0 <operator delete(void*)@plt>
   6a068:	9102a3e0 	add	x0, sp, #0xa8
   6a06c:	910183e2 	add	x2, sp, #0x60
   6a070:	52800821 	mov	w1, #0x41                  	// #65
   6a074:	2a1f03e3 	mov	w3, wzr
   6a078:	94005448 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   6a07c:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a080:	b9409bea 	ldr	w10, [sp, #152]
   6a084:	f94027ec 	ldr	x12, [sp, #72]
   6a088:	1b087d2b 	mul	w11, w9, w8
   6a08c:	1b0a7d6b 	mul	w11, w11, w10
   6a090:	f9002bec 	str	x12, [sp, #80]
   6a094:	340000cb 	cbz	w11, 6a0ac <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x5ec>
   6a098:	93407d61 	sxtw	x1, w11
   6a09c:	910123e0 	add	x0, sp, #0x48
   6a0a0:	940002e9 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   6a0a4:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a0a8:	b9409bea 	ldr	w10, [sp, #152]
   6a0ac:	1b0a7d08 	mul	w8, w8, w10
   6a0b0:	1b097d01 	mul	w1, w8, w9
   6a0b4:	910003e8 	mov	x8, sp
   6a0b8:	910183e0 	add	x0, sp, #0x60
   6a0bc:	aa1f03e2 	mov	x2, xzr
   6a0c0:	94000996 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   6a0c4:	f94007e8 	ldr	x8, [sp, #8]
   6a0c8:	b40000a8 	cbz	x8, 6a0dc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x61c>
   6a0cc:	885ffd09 	ldaxr	w9, [x8]
   6a0d0:	11000529 	add	w9, w9, #0x1
   6a0d4:	880afd09 	stlxr	w10, w9, [x8]
   6a0d8:	35ffffaa 	cbnz	w10, 6a0cc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x60c>
   6a0dc:	f94037e8 	ldr	x8, [sp, #104]
   6a0e0:	b4000208 	cbz	x8, 6a120 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x660>
   6a0e4:	885ffd09 	ldaxr	w9, [x8]
   6a0e8:	71000529 	subs	w9, w9, #0x1
   6a0ec:	880afd09 	stlxr	w10, w9, [x8]
   6a0f0:	35ffffaa 	cbnz	w10, 6a0e4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x624>
   6a0f4:	54000161 	b.ne	6a120 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x660>  // b.any
   6a0f8:	f94043e0 	ldr	x0, [sp, #128]
   6a0fc:	f94033e1 	ldr	x1, [sp, #96]
   6a100:	b40000a0 	cbz	x0, 6a114 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x654>
   6a104:	f9400008 	ldr	x8, [x0]
   6a108:	f9400d08 	ldr	x8, [x8, #24]
   6a10c:	d63f0100 	blr	x8
   6a110:	14000004 	b	6a120 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x660>
   6a114:	b4000061 	cbz	x1, 6a120 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x660>
   6a118:	aa0103e0 	mov	x0, x1
   6a11c:	97fff271 	bl	66ae0 <free@plt>
   6a120:	f94003e8 	ldr	x8, [sp]
   6a124:	b9401be9 	ldr	w9, [sp, #24]
   6a128:	3cc083e0 	ldur	q0, [sp, #8]
   6a12c:	3cc283e1 	ldur	q1, [sp, #40]
   6a130:	f90033e8 	str	x8, [sp, #96]
   6a134:	f94013e8 	ldr	x8, [sp, #32]
   6a138:	b9007be9 	str	w9, [sp, #120]
   6a13c:	b9403be9 	ldr	w9, [sp, #56]
   6a140:	3c8683e0 	stur	q0, [sp, #104]
   6a144:	f90043e8 	str	x8, [sp, #128]
   6a148:	f94023e8 	ldr	x8, [sp, #64]
   6a14c:	3c828301 	stur	q1, [x24, #40]
   6a150:	b9009be9 	str	w9, [sp, #152]
   6a154:	f90053e8 	str	x8, [sp, #160]
   6a158:	9e660008 	fmov	x8, d0
   6a15c:	b4000208 	cbz	x8, 6a19c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6dc>
   6a160:	885ffd09 	ldaxr	w9, [x8]
   6a164:	71000529 	subs	w9, w9, #0x1
   6a168:	880afd09 	stlxr	w10, w9, [x8]
   6a16c:	35ffffaa 	cbnz	w10, 6a160 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6a0>
   6a170:	54000161 	b.ne	6a19c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6dc>  // b.any
   6a174:	f94013e0 	ldr	x0, [sp, #32]
   6a178:	f94003e1 	ldr	x1, [sp]
   6a17c:	b40000a0 	cbz	x0, 6a190 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6d0>
   6a180:	f9400008 	ldr	x8, [x0]
   6a184:	f9400d08 	ldr	x8, [x8, #24]
   6a188:	d63f0100 	blr	x8
   6a18c:	14000004 	b	6a19c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6dc>
   6a190:	b4000061 	cbz	x1, 6a19c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x6dc>
   6a194:	aa0103e0 	mov	x0, x1
   6a198:	97fff252 	bl	66ae0 <free@plt>
   6a19c:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   6a1a0:	b9809bea 	ldrsw	x10, [sp, #152]
   6a1a4:	9b087d28 	mul	x8, x9, x8
   6a1a8:	9b0a7d08 	mul	x8, x8, x10
   6a1ac:	7100051f 	cmp	w8, #0x1
   6a1b0:	540001eb 	b.lt	6a1ec <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x72c>  // b.tstop
   6a1b4:	f94033ea 	ldr	x10, [sp, #96]
   6a1b8:	fd46ab21 	ldr	d1, [x25, #3408]
   6a1bc:	aa1f03e9 	mov	x9, xzr
   6a1c0:	9e6703e0 	fmov	d0, xzr
   6a1c4:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   6a1c8:	1e220123 	scvtf	s3, w9
   6a1cc:	91000529 	add	x9, x9, #0x1
   6a1d0:	eb08013f 	cmp	x9, x8
   6a1d4:	1e230842 	fmul	s2, s2, s3
   6a1d8:	1e22c042 	fcvt	d2, s2
   6a1dc:	1e610842 	fmul	d2, d2, d1
   6a1e0:	1e622800 	fadd	d0, d0, d2
   6a1e4:	54ffff0b 	b.lt	6a1c4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x704>  // b.tstop
   6a1e8:	14000002 	b	6a1f0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x730>
   6a1ec:	9e6703e0 	fmov	d0, xzr
   6a1f0:	a940a269 	ldp	x9, x8, [x19, #8]
   6a1f4:	1e624008 	fcvt	s8, d0
   6a1f8:	eb08013f 	cmp	x9, x8
   6a1fc:	54000082 	b.cs	6a20c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x74c>  // b.hs, b.nlast
   6a200:	bc004528 	str	s8, [x9], #4
   6a204:	f9000669 	str	x9, [x19, #8]
   6a208:	14000024 	b	6a298 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x7d8>
   6a20c:	f9400274 	ldr	x20, [x19]
   6a210:	cb140135 	sub	x21, x9, x20
   6a214:	9342feba 	asr	x26, x21, #2
   6a218:	91000749 	add	x9, x26, #0x1
   6a21c:	d37efd2a 	lsr	x10, x9, #62
   6a220:	b50047aa 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a224:	cb140108 	sub	x8, x8, x20
   6a228:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   6a22c:	eb88095f 	cmp	x10, x8, asr #2
   6a230:	54000103 	b.cc	6a250 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x790>  // b.lo, b.ul, b.last
   6a234:	9341fd08 	asr	x8, x8, #1
   6a238:	eb09011f 	cmp	x8, x9
   6a23c:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   6a240:	b4004edb 	cbz	x27, 6ac18 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1158>
   6a244:	d37eff68 	lsr	x8, x27, #62
   6a248:	b4000068 	cbz	x8, 6a254 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x794>
   6a24c:	14000232 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a250:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   6a254:	d37ef760 	lsl	x0, x27, #2
   6a258:	97fff5e6 	bl	679f0 <operator new(unsigned long)@plt>
   6a25c:	aa0003f6 	mov	x22, x0
   6a260:	8b1a0adc 	add	x28, x22, x26, lsl #2
   6a264:	8b1b0ada 	add	x26, x22, x27, lsl #2
   6a268:	f10006bf 	cmp	x21, #0x1
   6a26c:	bc004788 	str	s8, [x28], #4
   6a270:	540000ab 	b.lt	6a284 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x7c4>  // b.tstop
   6a274:	aa1603e0 	mov	x0, x22
   6a278:	aa1403e1 	mov	x1, x20
   6a27c:	aa1503e2 	mov	x2, x21
   6a280:	97fff0e8 	bl	66620 <memcpy@plt>
   6a284:	a9007276 	stp	x22, x28, [x19]
   6a288:	f9000a7a 	str	x26, [x19, #16]
   6a28c:	b4000074 	cbz	x20, 6a298 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x7d8>
   6a290:	aa1403e0 	mov	x0, x20
   6a294:	97fff157 	bl	667f0 <operator delete(void*)@plt>
   6a298:	9102a3e0 	add	x0, sp, #0xa8
   6a29c:	910183e2 	add	x2, sp, #0x60
   6a2a0:	52800c41 	mov	w1, #0x62                  	// #98
   6a2a4:	2a1f03e3 	mov	w3, wzr
   6a2a8:	940053bc 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   6a2ac:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a2b0:	b9409bea 	ldr	w10, [sp, #152]
   6a2b4:	f94027ec 	ldr	x12, [sp, #72]
   6a2b8:	1b087d2b 	mul	w11, w9, w8
   6a2bc:	1b0a7d6b 	mul	w11, w11, w10
   6a2c0:	f9002bec 	str	x12, [sp, #80]
   6a2c4:	340000cb 	cbz	w11, 6a2dc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x81c>
   6a2c8:	93407d61 	sxtw	x1, w11
   6a2cc:	910123e0 	add	x0, sp, #0x48
   6a2d0:	9400025d 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   6a2d4:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a2d8:	b9409bea 	ldr	w10, [sp, #152]
   6a2dc:	1b0a7d08 	mul	w8, w8, w10
   6a2e0:	1b097d01 	mul	w1, w8, w9
   6a2e4:	910003e8 	mov	x8, sp
   6a2e8:	910183e0 	add	x0, sp, #0x60
   6a2ec:	aa1f03e2 	mov	x2, xzr
   6a2f0:	9400090a 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   6a2f4:	f94007e8 	ldr	x8, [sp, #8]
   6a2f8:	b40000a8 	cbz	x8, 6a30c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x84c>
   6a2fc:	885ffd09 	ldaxr	w9, [x8]
   6a300:	11000529 	add	w9, w9, #0x1
   6a304:	880afd09 	stlxr	w10, w9, [x8]
   6a308:	35ffffaa 	cbnz	w10, 6a2fc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x83c>
   6a30c:	f94037e8 	ldr	x8, [sp, #104]
   6a310:	b4000208 	cbz	x8, 6a350 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x890>
   6a314:	885ffd09 	ldaxr	w9, [x8]
   6a318:	71000529 	subs	w9, w9, #0x1
   6a31c:	880afd09 	stlxr	w10, w9, [x8]
   6a320:	35ffffaa 	cbnz	w10, 6a314 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x854>
   6a324:	54000161 	b.ne	6a350 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x890>  // b.any
   6a328:	f94043e0 	ldr	x0, [sp, #128]
   6a32c:	f94033e1 	ldr	x1, [sp, #96]
   6a330:	b40000a0 	cbz	x0, 6a344 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x884>
   6a334:	f9400008 	ldr	x8, [x0]
   6a338:	f9400d08 	ldr	x8, [x8, #24]
   6a33c:	d63f0100 	blr	x8
   6a340:	14000004 	b	6a350 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x890>
   6a344:	b4000061 	cbz	x1, 6a350 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x890>
   6a348:	aa0103e0 	mov	x0, x1
   6a34c:	97fff1e5 	bl	66ae0 <free@plt>
   6a350:	f94003e8 	ldr	x8, [sp]
   6a354:	b9401be9 	ldr	w9, [sp, #24]
   6a358:	3cc083e0 	ldur	q0, [sp, #8]
   6a35c:	3cc283e1 	ldur	q1, [sp, #40]
   6a360:	f90033e8 	str	x8, [sp, #96]
   6a364:	f94013e8 	ldr	x8, [sp, #32]
   6a368:	b9007be9 	str	w9, [sp, #120]
   6a36c:	b9403be9 	ldr	w9, [sp, #56]
   6a370:	3c8683e0 	stur	q0, [sp, #104]
   6a374:	f90043e8 	str	x8, [sp, #128]
   6a378:	f94023e8 	ldr	x8, [sp, #64]
   6a37c:	3c828301 	stur	q1, [x24, #40]
   6a380:	b9009be9 	str	w9, [sp, #152]
   6a384:	f90053e8 	str	x8, [sp, #160]
   6a388:	9e660008 	fmov	x8, d0
   6a38c:	b4000208 	cbz	x8, 6a3cc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x90c>
   6a390:	885ffd09 	ldaxr	w9, [x8]
   6a394:	71000529 	subs	w9, w9, #0x1
   6a398:	880afd09 	stlxr	w10, w9, [x8]
   6a39c:	35ffffaa 	cbnz	w10, 6a390 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x8d0>
   6a3a0:	54000161 	b.ne	6a3cc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x90c>  // b.any
   6a3a4:	f94013e0 	ldr	x0, [sp, #32]
   6a3a8:	f94003e1 	ldr	x1, [sp]
   6a3ac:	b40000a0 	cbz	x0, 6a3c0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x900>
   6a3b0:	f9400008 	ldr	x8, [x0]
   6a3b4:	f9400d08 	ldr	x8, [x8, #24]
   6a3b8:	d63f0100 	blr	x8
   6a3bc:	14000004 	b	6a3cc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x90c>
   6a3c0:	b4000061 	cbz	x1, 6a3cc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x90c>
   6a3c4:	aa0103e0 	mov	x0, x1
   6a3c8:	97fff1c6 	bl	66ae0 <free@plt>
   6a3cc:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   6a3d0:	b9809bea 	ldrsw	x10, [sp, #152]
   6a3d4:	9b087d28 	mul	x8, x9, x8
   6a3d8:	9b0a7d08 	mul	x8, x8, x10
   6a3dc:	7100051f 	cmp	w8, #0x1
   6a3e0:	540001eb 	b.lt	6a41c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x95c>  // b.tstop
   6a3e4:	f94033ea 	ldr	x10, [sp, #96]
   6a3e8:	fd46ab21 	ldr	d1, [x25, #3408]
   6a3ec:	aa1f03e9 	mov	x9, xzr
   6a3f0:	9e6703e0 	fmov	d0, xzr
   6a3f4:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   6a3f8:	1e220123 	scvtf	s3, w9
   6a3fc:	91000529 	add	x9, x9, #0x1
   6a400:	eb08013f 	cmp	x9, x8
   6a404:	1e230842 	fmul	s2, s2, s3
   6a408:	1e22c042 	fcvt	d2, s2
   6a40c:	1e610842 	fmul	d2, d2, d1
   6a410:	1e622800 	fadd	d0, d0, d2
   6a414:	54ffff0b 	b.lt	6a3f4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x934>  // b.tstop
   6a418:	14000002 	b	6a420 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x960>
   6a41c:	9e6703e0 	fmov	d0, xzr
   6a420:	a940a269 	ldp	x9, x8, [x19, #8]
   6a424:	1e624008 	fcvt	s8, d0
   6a428:	eb08013f 	cmp	x9, x8
   6a42c:	54000082 	b.cs	6a43c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x97c>  // b.hs, b.nlast
   6a430:	bc004528 	str	s8, [x9], #4
   6a434:	f9000669 	str	x9, [x19, #8]
   6a438:	14000024 	b	6a4c8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa08>
   6a43c:	f9400274 	ldr	x20, [x19]
   6a440:	cb140135 	sub	x21, x9, x20
   6a444:	9342feba 	asr	x26, x21, #2
   6a448:	91000749 	add	x9, x26, #0x1
   6a44c:	d37efd2a 	lsr	x10, x9, #62
   6a450:	b500362a 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a454:	cb140108 	sub	x8, x8, x20
   6a458:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   6a45c:	eb88095f 	cmp	x10, x8, asr #2
   6a460:	54000103 	b.cc	6a480 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9c0>  // b.lo, b.ul, b.last
   6a464:	9341fd08 	asr	x8, x8, #1
   6a468:	eb09011f 	cmp	x8, x9
   6a46c:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   6a470:	b4003d9b 	cbz	x27, 6ac20 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1160>
   6a474:	d37eff68 	lsr	x8, x27, #62
   6a478:	b4000068 	cbz	x8, 6a484 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9c4>
   6a47c:	140001a6 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a480:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   6a484:	d37ef760 	lsl	x0, x27, #2
   6a488:	97fff55a 	bl	679f0 <operator new(unsigned long)@plt>
   6a48c:	aa0003f6 	mov	x22, x0
   6a490:	8b1a0adc 	add	x28, x22, x26, lsl #2
   6a494:	8b1b0ada 	add	x26, x22, x27, lsl #2
   6a498:	f10006bf 	cmp	x21, #0x1
   6a49c:	bc004788 	str	s8, [x28], #4
   6a4a0:	540000ab 	b.lt	6a4b4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9f4>  // b.tstop
   6a4a4:	aa1603e0 	mov	x0, x22
   6a4a8:	aa1403e1 	mov	x1, x20
   6a4ac:	aa1503e2 	mov	x2, x21
   6a4b0:	97fff05c 	bl	66620 <memcpy@plt>
   6a4b4:	a9007276 	stp	x22, x28, [x19]
   6a4b8:	f9000a7a 	str	x26, [x19, #16]
   6a4bc:	b4000074 	cbz	x20, 6a4c8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa08>
   6a4c0:	aa1403e0 	mov	x0, x20
   6a4c4:	97fff0cb 	bl	667f0 <operator delete(void*)@plt>
   6a4c8:	9102a3e0 	add	x0, sp, #0xa8
   6a4cc:	910183e2 	add	x2, sp, #0x60
   6a4d0:	52800ae1 	mov	w1, #0x57                  	// #87
   6a4d4:	2a1f03e3 	mov	w3, wzr
   6a4d8:	94005330 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   6a4dc:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a4e0:	b9409bea 	ldr	w10, [sp, #152]
   6a4e4:	f94027ec 	ldr	x12, [sp, #72]
   6a4e8:	1b087d2b 	mul	w11, w9, w8
   6a4ec:	1b0a7d6b 	mul	w11, w11, w10
   6a4f0:	f9002bec 	str	x12, [sp, #80]
   6a4f4:	340000cb 	cbz	w11, 6a50c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa4c>
   6a4f8:	93407d61 	sxtw	x1, w11
   6a4fc:	910123e0 	add	x0, sp, #0x48
   6a500:	940001d1 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   6a504:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a508:	b9409bea 	ldr	w10, [sp, #152]
   6a50c:	1b0a7d08 	mul	w8, w8, w10
   6a510:	1b097d01 	mul	w1, w8, w9
   6a514:	910003e8 	mov	x8, sp
   6a518:	910183e0 	add	x0, sp, #0x60
   6a51c:	aa1f03e2 	mov	x2, xzr
   6a520:	9400087e 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   6a524:	f94007e8 	ldr	x8, [sp, #8]
   6a528:	b40000a8 	cbz	x8, 6a53c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa7c>
   6a52c:	885ffd09 	ldaxr	w9, [x8]
   6a530:	11000529 	add	w9, w9, #0x1
   6a534:	880afd09 	stlxr	w10, w9, [x8]
   6a538:	35ffffaa 	cbnz	w10, 6a52c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa6c>
   6a53c:	f94037e8 	ldr	x8, [sp, #104]
   6a540:	b4000208 	cbz	x8, 6a580 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xac0>
   6a544:	885ffd09 	ldaxr	w9, [x8]
   6a548:	71000529 	subs	w9, w9, #0x1
   6a54c:	880afd09 	stlxr	w10, w9, [x8]
   6a550:	35ffffaa 	cbnz	w10, 6a544 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xa84>
   6a554:	54000161 	b.ne	6a580 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xac0>  // b.any
   6a558:	f94043e0 	ldr	x0, [sp, #128]
   6a55c:	f94033e1 	ldr	x1, [sp, #96]
   6a560:	b40000a0 	cbz	x0, 6a574 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xab4>
   6a564:	f9400008 	ldr	x8, [x0]
   6a568:	f9400d08 	ldr	x8, [x8, #24]
   6a56c:	d63f0100 	blr	x8
   6a570:	14000004 	b	6a580 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xac0>
   6a574:	b4000061 	cbz	x1, 6a580 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xac0>
   6a578:	aa0103e0 	mov	x0, x1
   6a57c:	97fff159 	bl	66ae0 <free@plt>
   6a580:	f94003e8 	ldr	x8, [sp]
   6a584:	b9401be9 	ldr	w9, [sp, #24]
   6a588:	3cc083e0 	ldur	q0, [sp, #8]
   6a58c:	3cc283e1 	ldur	q1, [sp, #40]
   6a590:	f90033e8 	str	x8, [sp, #96]
   6a594:	f94013e8 	ldr	x8, [sp, #32]
   6a598:	b9007be9 	str	w9, [sp, #120]
   6a59c:	b9403be9 	ldr	w9, [sp, #56]
   6a5a0:	3c8683e0 	stur	q0, [sp, #104]
   6a5a4:	f90043e8 	str	x8, [sp, #128]
   6a5a8:	f94023e8 	ldr	x8, [sp, #64]
   6a5ac:	3c828301 	stur	q1, [x24, #40]
   6a5b0:	b9009be9 	str	w9, [sp, #152]
   6a5b4:	f90053e8 	str	x8, [sp, #160]
   6a5b8:	9e660008 	fmov	x8, d0
   6a5bc:	b4000208 	cbz	x8, 6a5fc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb3c>
   6a5c0:	885ffd09 	ldaxr	w9, [x8]
   6a5c4:	71000529 	subs	w9, w9, #0x1
   6a5c8:	880afd09 	stlxr	w10, w9, [x8]
   6a5cc:	35ffffaa 	cbnz	w10, 6a5c0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb00>
   6a5d0:	54000161 	b.ne	6a5fc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb3c>  // b.any
   6a5d4:	f94013e0 	ldr	x0, [sp, #32]
   6a5d8:	f94003e1 	ldr	x1, [sp]
   6a5dc:	b40000a0 	cbz	x0, 6a5f0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb30>
   6a5e0:	f9400008 	ldr	x8, [x0]
   6a5e4:	f9400d08 	ldr	x8, [x8, #24]
   6a5e8:	d63f0100 	blr	x8
   6a5ec:	14000004 	b	6a5fc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb3c>
   6a5f0:	b4000061 	cbz	x1, 6a5fc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb3c>
   6a5f4:	aa0103e0 	mov	x0, x1
   6a5f8:	97fff13a 	bl	66ae0 <free@plt>
   6a5fc:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   6a600:	b9809bea 	ldrsw	x10, [sp, #152]
   6a604:	9b087d28 	mul	x8, x9, x8
   6a608:	9b0a7d08 	mul	x8, x8, x10
   6a60c:	7100051f 	cmp	w8, #0x1
   6a610:	540001eb 	b.lt	6a64c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb8c>  // b.tstop
   6a614:	f94033ea 	ldr	x10, [sp, #96]
   6a618:	fd46ab21 	ldr	d1, [x25, #3408]
   6a61c:	aa1f03e9 	mov	x9, xzr
   6a620:	9e6703e0 	fmov	d0, xzr
   6a624:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   6a628:	1e220123 	scvtf	s3, w9
   6a62c:	91000529 	add	x9, x9, #0x1
   6a630:	eb08013f 	cmp	x9, x8
   6a634:	1e230842 	fmul	s2, s2, s3
   6a638:	1e22c042 	fcvt	d2, s2
   6a63c:	1e610842 	fmul	d2, d2, d1
   6a640:	1e622800 	fadd	d0, d0, d2
   6a644:	54ffff0b 	b.lt	6a624 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb64>  // b.tstop
   6a648:	14000002 	b	6a650 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xb90>
   6a64c:	9e6703e0 	fmov	d0, xzr
   6a650:	a940a269 	ldp	x9, x8, [x19, #8]
   6a654:	1e624008 	fcvt	s8, d0
   6a658:	eb08013f 	cmp	x9, x8
   6a65c:	54000082 	b.cs	6a66c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xbac>  // b.hs, b.nlast
   6a660:	bc004528 	str	s8, [x9], #4
   6a664:	f9000669 	str	x9, [x19, #8]
   6a668:	14000024 	b	6a6f8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc38>
   6a66c:	f9400274 	ldr	x20, [x19]
   6a670:	cb140135 	sub	x21, x9, x20
   6a674:	9342feba 	asr	x26, x21, #2
   6a678:	91000749 	add	x9, x26, #0x1
   6a67c:	d37efd2a 	lsr	x10, x9, #62
   6a680:	b50024aa 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a684:	cb140108 	sub	x8, x8, x20
   6a688:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   6a68c:	eb88095f 	cmp	x10, x8, asr #2
   6a690:	54000103 	b.cc	6a6b0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xbf0>  // b.lo, b.ul, b.last
   6a694:	9341fd08 	asr	x8, x8, #1
   6a698:	eb09011f 	cmp	x8, x9
   6a69c:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   6a6a0:	b4002c5b 	cbz	x27, 6ac28 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1168>
   6a6a4:	d37eff68 	lsr	x8, x27, #62
   6a6a8:	b4000068 	cbz	x8, 6a6b4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xbf4>
   6a6ac:	1400011a 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a6b0:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   6a6b4:	d37ef760 	lsl	x0, x27, #2
   6a6b8:	97fff4ce 	bl	679f0 <operator new(unsigned long)@plt>
   6a6bc:	aa0003f6 	mov	x22, x0
   6a6c0:	8b1a0adc 	add	x28, x22, x26, lsl #2
   6a6c4:	8b1b0ada 	add	x26, x22, x27, lsl #2
   6a6c8:	f10006bf 	cmp	x21, #0x1
   6a6cc:	bc004788 	str	s8, [x28], #4
   6a6d0:	540000ab 	b.lt	6a6e4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc24>  // b.tstop
   6a6d4:	aa1603e0 	mov	x0, x22
   6a6d8:	aa1403e1 	mov	x1, x20
   6a6dc:	aa1503e2 	mov	x2, x21
   6a6e0:	97ffefd0 	bl	66620 <memcpy@plt>
   6a6e4:	a9007276 	stp	x22, x28, [x19]
   6a6e8:	f9000a7a 	str	x26, [x19, #16]
   6a6ec:	b4000074 	cbz	x20, 6a6f8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc38>
   6a6f0:	aa1403e0 	mov	x0, x20
   6a6f4:	97fff03f 	bl	667f0 <operator delete(void*)@plt>
   6a6f8:	9102a3e0 	add	x0, sp, #0xa8
   6a6fc:	910183e2 	add	x2, sp, #0x60
   6a700:	52800da1 	mov	w1, #0x6d                  	// #109
   6a704:	2a1f03e3 	mov	w3, wzr
   6a708:	940052a4 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   6a70c:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a710:	b9409bea 	ldr	w10, [sp, #152]
   6a714:	f94027ec 	ldr	x12, [sp, #72]
   6a718:	1b087d2b 	mul	w11, w9, w8
   6a71c:	1b0a7d6b 	mul	w11, w11, w10
   6a720:	f9002bec 	str	x12, [sp, #80]
   6a724:	340000cb 	cbz	w11, 6a73c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc7c>
   6a728:	93407d61 	sxtw	x1, w11
   6a72c:	910123e0 	add	x0, sp, #0x48
   6a730:	94000145 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   6a734:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a738:	b9409bea 	ldr	w10, [sp, #152]
   6a73c:	1b0a7d08 	mul	w8, w8, w10
   6a740:	1b097d01 	mul	w1, w8, w9
   6a744:	910003e8 	mov	x8, sp
   6a748:	910183e0 	add	x0, sp, #0x60
   6a74c:	aa1f03e2 	mov	x2, xzr
   6a750:	940007f2 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   6a754:	f94007e8 	ldr	x8, [sp, #8]
   6a758:	b40000a8 	cbz	x8, 6a76c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcac>
   6a75c:	885ffd09 	ldaxr	w9, [x8]
   6a760:	11000529 	add	w9, w9, #0x1
   6a764:	880afd09 	stlxr	w10, w9, [x8]
   6a768:	35ffffaa 	cbnz	w10, 6a75c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc9c>
   6a76c:	f94037e8 	ldr	x8, [sp, #104]
   6a770:	b4000208 	cbz	x8, 6a7b0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcf0>
   6a774:	885ffd09 	ldaxr	w9, [x8]
   6a778:	71000529 	subs	w9, w9, #0x1
   6a77c:	880afd09 	stlxr	w10, w9, [x8]
   6a780:	35ffffaa 	cbnz	w10, 6a774 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcb4>
   6a784:	54000161 	b.ne	6a7b0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcf0>  // b.any
   6a788:	f94043e0 	ldr	x0, [sp, #128]
   6a78c:	f94033e1 	ldr	x1, [sp, #96]
   6a790:	b40000a0 	cbz	x0, 6a7a4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xce4>
   6a794:	f9400008 	ldr	x8, [x0]
   6a798:	f9400d08 	ldr	x8, [x8, #24]
   6a79c:	d63f0100 	blr	x8
   6a7a0:	14000004 	b	6a7b0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcf0>
   6a7a4:	b4000061 	cbz	x1, 6a7b0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xcf0>
   6a7a8:	aa0103e0 	mov	x0, x1
   6a7ac:	97fff0cd 	bl	66ae0 <free@plt>
   6a7b0:	f94003e8 	ldr	x8, [sp]
   6a7b4:	b9401be9 	ldr	w9, [sp, #24]
   6a7b8:	3cc083e0 	ldur	q0, [sp, #8]
   6a7bc:	3cc283e1 	ldur	q1, [sp, #40]
   6a7c0:	f90033e8 	str	x8, [sp, #96]
   6a7c4:	f94013e8 	ldr	x8, [sp, #32]
   6a7c8:	b9007be9 	str	w9, [sp, #120]
   6a7cc:	b9403be9 	ldr	w9, [sp, #56]
   6a7d0:	3c8683e0 	stur	q0, [sp, #104]
   6a7d4:	f90043e8 	str	x8, [sp, #128]
   6a7d8:	f94023e8 	ldr	x8, [sp, #64]
   6a7dc:	3c828301 	stur	q1, [x24, #40]
   6a7e0:	b9009be9 	str	w9, [sp, #152]
   6a7e4:	f90053e8 	str	x8, [sp, #160]
   6a7e8:	9e660008 	fmov	x8, d0
   6a7ec:	b4000208 	cbz	x8, 6a82c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd6c>
   6a7f0:	885ffd09 	ldaxr	w9, [x8]
   6a7f4:	71000529 	subs	w9, w9, #0x1
   6a7f8:	880afd09 	stlxr	w10, w9, [x8]
   6a7fc:	35ffffaa 	cbnz	w10, 6a7f0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd30>
   6a800:	54000161 	b.ne	6a82c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd6c>  // b.any
   6a804:	f94013e0 	ldr	x0, [sp, #32]
   6a808:	f94003e1 	ldr	x1, [sp]
   6a80c:	b40000a0 	cbz	x0, 6a820 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd60>
   6a810:	f9400008 	ldr	x8, [x0]
   6a814:	f9400d08 	ldr	x8, [x8, #24]
   6a818:	d63f0100 	blr	x8
   6a81c:	14000004 	b	6a82c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd6c>
   6a820:	b4000061 	cbz	x1, 6a82c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd6c>
   6a824:	aa0103e0 	mov	x0, x1
   6a828:	97fff0ae 	bl	66ae0 <free@plt>
   6a82c:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   6a830:	b9809bea 	ldrsw	x10, [sp, #152]
   6a834:	9b087d28 	mul	x8, x9, x8
   6a838:	9b0a7d08 	mul	x8, x8, x10
   6a83c:	7100051f 	cmp	w8, #0x1
   6a840:	540001eb 	b.lt	6a87c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xdbc>  // b.tstop
   6a844:	f94033ea 	ldr	x10, [sp, #96]
   6a848:	fd46ab21 	ldr	d1, [x25, #3408]
   6a84c:	aa1f03e9 	mov	x9, xzr
   6a850:	9e6703e0 	fmov	d0, xzr
   6a854:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   6a858:	1e220123 	scvtf	s3, w9
   6a85c:	91000529 	add	x9, x9, #0x1
   6a860:	eb08013f 	cmp	x9, x8
   6a864:	1e230842 	fmul	s2, s2, s3
   6a868:	1e22c042 	fcvt	d2, s2
   6a86c:	1e610842 	fmul	d2, d2, d1
   6a870:	1e622800 	fadd	d0, d0, d2
   6a874:	54ffff0b 	b.lt	6a854 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xd94>  // b.tstop
   6a878:	14000002 	b	6a880 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xdc0>
   6a87c:	9e6703e0 	fmov	d0, xzr
   6a880:	a940a269 	ldp	x9, x8, [x19, #8]
   6a884:	1e624008 	fcvt	s8, d0
   6a888:	eb08013f 	cmp	x9, x8
   6a88c:	54000082 	b.cs	6a89c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xddc>  // b.hs, b.nlast
   6a890:	bc004528 	str	s8, [x9], #4
   6a894:	f9000669 	str	x9, [x19, #8]
   6a898:	14000024 	b	6a928 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe68>
   6a89c:	f9400274 	ldr	x20, [x19]
   6a8a0:	cb140135 	sub	x21, x9, x20
   6a8a4:	9342feba 	asr	x26, x21, #2
   6a8a8:	91000749 	add	x9, x26, #0x1
   6a8ac:	d37efd2a 	lsr	x10, x9, #62
   6a8b0:	b500132a 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a8b4:	cb140108 	sub	x8, x8, x20
   6a8b8:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   6a8bc:	eb88095f 	cmp	x10, x8, asr #2
   6a8c0:	54000103 	b.cc	6a8e0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe20>  // b.lo, b.ul, b.last
   6a8c4:	9341fd08 	asr	x8, x8, #1
   6a8c8:	eb09011f 	cmp	x8, x9
   6a8cc:	9a88313b 	csel	x27, x9, x8, cc	// cc = lo, ul, last
   6a8d0:	b4001b1b 	cbz	x27, 6ac30 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1170>
   6a8d4:	d37eff68 	lsr	x8, x27, #62
   6a8d8:	b4000068 	cbz	x8, 6a8e4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe24>
   6a8dc:	1400008e 	b	6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6a8e0:	92f8001b 	mov	x27, #0x3fffffffffffffff    	// #4611686018427387903
   6a8e4:	d37ef760 	lsl	x0, x27, #2
   6a8e8:	97fff442 	bl	679f0 <operator new(unsigned long)@plt>
   6a8ec:	aa0003f6 	mov	x22, x0
   6a8f0:	8b1a0adc 	add	x28, x22, x26, lsl #2
   6a8f4:	8b1b0ada 	add	x26, x22, x27, lsl #2
   6a8f8:	f10006bf 	cmp	x21, #0x1
   6a8fc:	bc004788 	str	s8, [x28], #4
   6a900:	540000ab 	b.lt	6a914 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe54>  // b.tstop
   6a904:	aa1603e0 	mov	x0, x22
   6a908:	aa1403e1 	mov	x1, x20
   6a90c:	aa1503e2 	mov	x2, x21
   6a910:	97ffef44 	bl	66620 <memcpy@plt>
   6a914:	a9007276 	stp	x22, x28, [x19]
   6a918:	f9000a7a 	str	x26, [x19, #16]
   6a91c:	b4000074 	cbz	x20, 6a928 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe68>
   6a920:	aa1403e0 	mov	x0, x20
   6a924:	97ffefb3 	bl	667f0 <operator delete(void*)@plt>
   6a928:	9102a3e0 	add	x0, sp, #0xa8
   6a92c:	910183e2 	add	x2, sp, #0x60
   6a930:	52800f01 	mov	w1, #0x78                  	// #120
   6a934:	2a1f03e3 	mov	w3, wzr
   6a938:	94005218 	bl	7f198 <ncnn::Extractor::extract(int, ncnn::Mat&, int)>
   6a93c:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a940:	b9409bea 	ldr	w10, [sp, #152]
   6a944:	f94027ec 	ldr	x12, [sp, #72]
   6a948:	1b087d2b 	mul	w11, w9, w8
   6a94c:	1b0a7d6b 	mul	w11, w11, w10
   6a950:	f9002bec 	str	x12, [sp, #80]
   6a954:	340000cb 	cbz	w11, 6a96c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xeac>
   6a958:	93407d61 	sxtw	x1, w11
   6a95c:	910123e0 	add	x0, sp, #0x48
   6a960:	940000b9 	bl	6ac44 <std::__ndk1::vector<float, std::__ndk1::allocator<float> >::__append(unsigned long)>
   6a964:	2951a7e8 	ldp	w8, w9, [sp, #140]
   6a968:	b9409bea 	ldr	w10, [sp, #152]
   6a96c:	1b0a7d08 	mul	w8, w8, w10
   6a970:	1b097d01 	mul	w1, w8, w9
   6a974:	910003e8 	mov	x8, sp
   6a978:	910183e0 	add	x0, sp, #0x60
   6a97c:	aa1f03e2 	mov	x2, xzr
   6a980:	94000766 	bl	6c718 <ncnn::Mat::reshape(int, ncnn::Allocator*) const>
   6a984:	f94007e8 	ldr	x8, [sp, #8]
   6a988:	b40000a8 	cbz	x8, 6a99c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xedc>
   6a98c:	885ffd09 	ldaxr	w9, [x8]
   6a990:	11000529 	add	w9, w9, #0x1
   6a994:	880afd09 	stlxr	w10, w9, [x8]
   6a998:	35ffffaa 	cbnz	w10, 6a98c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xecc>
   6a99c:	f94037e8 	ldr	x8, [sp, #104]
   6a9a0:	b4000208 	cbz	x8, 6a9e0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf20>
   6a9a4:	885ffd09 	ldaxr	w9, [x8]
   6a9a8:	71000529 	subs	w9, w9, #0x1
   6a9ac:	880afd09 	stlxr	w10, w9, [x8]
   6a9b0:	35ffffaa 	cbnz	w10, 6a9a4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xee4>
   6a9b4:	54000161 	b.ne	6a9e0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf20>  // b.any
   6a9b8:	f94043e0 	ldr	x0, [sp, #128]
   6a9bc:	f94033e1 	ldr	x1, [sp, #96]
   6a9c0:	b40000a0 	cbz	x0, 6a9d4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf14>
   6a9c4:	f9400008 	ldr	x8, [x0]
   6a9c8:	f9400d08 	ldr	x8, [x8, #24]
   6a9cc:	d63f0100 	blr	x8
   6a9d0:	14000004 	b	6a9e0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf20>
   6a9d4:	b4000061 	cbz	x1, 6a9e0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf20>
   6a9d8:	aa0103e0 	mov	x0, x1
   6a9dc:	97fff041 	bl	66ae0 <free@plt>
   6a9e0:	f94003e8 	ldr	x8, [sp]
   6a9e4:	b9401be9 	ldr	w9, [sp, #24]
   6a9e8:	3cc083e0 	ldur	q0, [sp, #8]
   6a9ec:	3cc283e1 	ldur	q1, [sp, #40]
   6a9f0:	f90033e8 	str	x8, [sp, #96]
   6a9f4:	f94013e8 	ldr	x8, [sp, #32]
   6a9f8:	b9007be9 	str	w9, [sp, #120]
   6a9fc:	b9403be9 	ldr	w9, [sp, #56]
   6aa00:	3c8683e0 	stur	q0, [sp, #104]
   6aa04:	f90043e8 	str	x8, [sp, #128]
   6aa08:	f94023e8 	ldr	x8, [sp, #64]
   6aa0c:	3c828301 	stur	q1, [x24, #40]
   6aa10:	b9009be9 	str	w9, [sp, #152]
   6aa14:	f90053e8 	str	x8, [sp, #160]
   6aa18:	9e660008 	fmov	x8, d0
   6aa1c:	b4000208 	cbz	x8, 6aa5c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf9c>
   6aa20:	885ffd09 	ldaxr	w9, [x8]
   6aa24:	71000529 	subs	w9, w9, #0x1
   6aa28:	880afd09 	stlxr	w10, w9, [x8]
   6aa2c:	35ffffaa 	cbnz	w10, 6aa20 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf60>
   6aa30:	54000161 	b.ne	6aa5c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf9c>  // b.any
   6aa34:	f94013e0 	ldr	x0, [sp, #32]
   6aa38:	f94003e1 	ldr	x1, [sp]
   6aa3c:	b40000a0 	cbz	x0, 6aa50 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf90>
   6aa40:	f9400008 	ldr	x8, [x0]
   6aa44:	f9400d08 	ldr	x8, [x8, #24]
   6aa48:	d63f0100 	blr	x8
   6aa4c:	14000004 	b	6aa5c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf9c>
   6aa50:	b4000061 	cbz	x1, 6aa5c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xf9c>
   6aa54:	aa0103e0 	mov	x0, x1
   6aa58:	97fff022 	bl	66ae0 <free@plt>
   6aa5c:	6951a7e8 	ldpsw	x8, x9, [sp, #140]
   6aa60:	b9809bea 	ldrsw	x10, [sp, #152]
   6aa64:	9b087d28 	mul	x8, x9, x8
   6aa68:	9b0a7d08 	mul	x8, x8, x10
   6aa6c:	7100051f 	cmp	w8, #0x1
   6aa70:	540001eb 	b.lt	6aaac <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xfec>  // b.tstop
   6aa74:	f94033ea 	ldr	x10, [sp, #96]
   6aa78:	fd46ab21 	ldr	d1, [x25, #3408]
   6aa7c:	aa1f03e9 	mov	x9, xzr
   6aa80:	9e6703e0 	fmov	d0, xzr
   6aa84:	bc697942 	ldr	s2, [x10, x9, lsl #2]
   6aa88:	1e220123 	scvtf	s3, w9
   6aa8c:	91000529 	add	x9, x9, #0x1
   6aa90:	eb08013f 	cmp	x9, x8
   6aa94:	1e230842 	fmul	s2, s2, s3
   6aa98:	1e22c042 	fcvt	d2, s2
   6aa9c:	1e610842 	fmul	d2, d2, d1
   6aaa0:	1e622800 	fadd	d0, d0, d2
   6aaa4:	54ffff0b 	b.lt	6aa84 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xfc4>  // b.tstop
   6aaa8:	14000002 	b	6aab0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xff0>
   6aaac:	9e6703e0 	fmov	d0, xzr
   6aab0:	a940a269 	ldp	x9, x8, [x19, #8]
   6aab4:	1e624008 	fcvt	s8, d0
   6aab8:	eb08013f 	cmp	x9, x8
   6aabc:	540000c2 	b.cs	6aad4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1014>  // b.hs, b.nlast
   6aac0:	bc004528 	str	s8, [x9], #4
   6aac4:	f9000669 	str	x9, [x19, #8]
   6aac8:	f94027e0 	ldr	x0, [sp, #72]
   6aacc:	b50004e0 	cbnz	x0, 6ab68 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10a8>
   6aad0:	14000028 	b	6ab70 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10b0>
   6aad4:	f9400274 	ldr	x20, [x19]
   6aad8:	cb140135 	sub	x21, x9, x20
   6aadc:	9342feb8 	asr	x24, x21, #2
   6aae0:	91000709 	add	x9, x24, #0x1
   6aae4:	d37efd2a 	lsr	x10, x9, #62
   6aae8:	b500016a 	cbnz	x10, 6ab14 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1054>
   6aaec:	cb140108 	sub	x8, x8, x20
   6aaf0:	b27fefea 	mov	x10, #0x1ffffffffffffffe    	// #2305843009213693950
   6aaf4:	eb88095f 	cmp	x10, x8, asr #2
   6aaf8:	54000103 	b.cc	6ab18 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1058>  // b.lo, b.ul, b.last
   6aafc:	9341fd08 	asr	x8, x8, #1
   6ab00:	eb09011f 	cmp	x8, x9
   6ab04:	9a883139 	csel	x25, x9, x8, cc	// cc = lo, ul, last
   6ab08:	b4000999 	cbz	x25, 6ac38 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1178>
   6ab0c:	d37eff28 	lsr	x8, x25, #62
   6ab10:	b4000068 	cbz	x8, 6ab1c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x105c>
   6ab14:	97fff30b 	bl	67740 <abort@plt>
   6ab18:	92f80019 	mov	x25, #0x3fffffffffffffff    	// #4611686018427387903
   6ab1c:	d37ef720 	lsl	x0, x25, #2
   6ab20:	97fff3b4 	bl	679f0 <operator new(unsigned long)@plt>
   6ab24:	aa0003f6 	mov	x22, x0
   6ab28:	8b180ada 	add	x26, x22, x24, lsl #2
   6ab2c:	8b190ad8 	add	x24, x22, x25, lsl #2
   6ab30:	f10006bf 	cmp	x21, #0x1
   6ab34:	bc004748 	str	s8, [x26], #4
   6ab38:	540000ab 	b.lt	6ab4c <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x108c>  // b.tstop
   6ab3c:	aa1603e0 	mov	x0, x22
   6ab40:	aa1403e1 	mov	x1, x20
   6ab44:	aa1503e2 	mov	x2, x21
   6ab48:	97ffeeb6 	bl	66620 <memcpy@plt>
   6ab4c:	a9006a76 	stp	x22, x26, [x19]
   6ab50:	f9000a78 	str	x24, [x19, #16]
   6ab54:	b4000074 	cbz	x20, 6ab60 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10a0>
   6ab58:	aa1403e0 	mov	x0, x20
   6ab5c:	97ffef25 	bl	667f0 <operator delete(void*)@plt>
   6ab60:	f94027e0 	ldr	x0, [sp, #72]
   6ab64:	b4000060 	cbz	x0, 6ab70 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10b0>
   6ab68:	f9002be0 	str	x0, [sp, #80]
   6ab6c:	97ffef21 	bl	667f0 <operator delete(void*)@plt>
   6ab70:	f94037e8 	ldr	x8, [sp, #104]
   6ab74:	b4000208 	cbz	x8, 6abb4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10f4>
   6ab78:	885ffd09 	ldaxr	w9, [x8]
   6ab7c:	71000529 	subs	w9, w9, #0x1
   6ab80:	880afd09 	stlxr	w10, w9, [x8]
   6ab84:	35ffffaa 	cbnz	w10, 6ab78 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10b8>
   6ab88:	54000161 	b.ne	6abb4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10f4>  // b.any
   6ab8c:	f94043e0 	ldr	x0, [sp, #128]
   6ab90:	f94033e1 	ldr	x1, [sp, #96]
   6ab94:	b40000a0 	cbz	x0, 6aba8 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10e8>
   6ab98:	f9400008 	ldr	x8, [x0]
   6ab9c:	f9400d08 	ldr	x8, [x8, #24]
   6aba0:	d63f0100 	blr	x8
   6aba4:	14000004 	b	6abb4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10f4>
   6aba8:	b4000061 	cbz	x1, 6abb4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x10f4>
   6abac:	aa0103e0 	mov	x0, x1
   6abb0:	97ffefcc 	bl	66ae0 <free@plt>
   6abb4:	9102a3e0 	add	x0, sp, #0xa8
   6abb8:	94004fab 	bl	7ea64 <ncnn::Extractor::~Extractor()>
   6abbc:	f94063e8 	ldr	x8, [sp, #192]
   6abc0:	b4000208 	cbz	x8, 6ac00 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1140>
   6abc4:	885ffd09 	ldaxr	w9, [x8]
   6abc8:	71000529 	subs	w9, w9, #0x1
   6abcc:	880afd09 	stlxr	w10, w9, [x8]
   6abd0:	35ffffaa 	cbnz	w10, 6abc4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1104>
   6abd4:	54000161 	b.ne	6ac00 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1140>  // b.any
   6abd8:	f9406fe0 	ldr	x0, [sp, #216]
   6abdc:	f9405fe1 	ldr	x1, [sp, #184]
   6abe0:	b40000a0 	cbz	x0, 6abf4 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1134>
   6abe4:	f9400008 	ldr	x8, [x0]
   6abe8:	f9400d08 	ldr	x8, [x8, #24]
   6abec:	d63f0100 	blr	x8
   6abf0:	14000004 	b	6ac00 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1140>
   6abf4:	b4000061 	cbz	x1, 6ac00 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1140>
   6abf8:	aa0103e0 	mov	x0, x1
   6abfc:	97ffefb9 	bl	66ae0 <free@plt>
   6ac00:	2a1f03e0 	mov	w0, wzr
   6ac04:	17fffc1d 	b	69c78 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1b8>
   6ac08:	aa1f03f6 	mov	x22, xzr
   6ac0c:	17fffc7c 	b	69dfc <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x33c>
   6ac10:	aa1f03f6 	mov	x22, xzr
   6ac14:	17fffd07 	b	6a030 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x570>
   6ac18:	aa1f03f6 	mov	x22, xzr
   6ac1c:	17fffd91 	b	6a260 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x7a0>
   6ac20:	aa1f03f6 	mov	x22, xzr
   6ac24:	17fffe1b 	b	6a490 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x9d0>
   6ac28:	aa1f03f6 	mov	x22, xzr
   6ac2c:	17fffea5 	b	6a6c0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xc00>
   6ac30:	aa1f03f6 	mov	x22, xzr
   6ac34:	17ffff2f 	b	6a8f0 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0xe30>
   6ac38:	aa1f03f6 	mov	x22, xzr
   6ac3c:	17ffffbb 	b	6ab28 <MiIQA::ImageQuality::ForwardHolistic(unsigned char const*, int, int, std::__ndk1::vector<float, std::__ndk1::allocator<float> >&)+0x1068>
