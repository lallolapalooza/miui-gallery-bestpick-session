
libs/libJNI_SimilarImgCluster.so:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000068cdc <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)>:
   68cdc:	d102c3ff 	sub	sp, sp, #0xb0
   68ce0:	a9056ffc 	stp	x28, x27, [sp, #80]
   68ce4:	a90667fa 	stp	x26, x25, [sp, #96]
   68ce8:	a9075ff8 	stp	x24, x23, [sp, #112]
   68cec:	a90857f6 	stp	x22, x21, [sp, #128]
   68cf0:	a9094ff4 	stp	x20, x19, [sp, #144]
   68cf4:	a90a7bfd 	stp	x29, x30, [sp, #160]
   68cf8:	910283fd 	add	x29, sp, #0xa0
   68cfc:	d53bd051 	mrs	x17, tpidr_el0
   68d00:	f9401628 	ldr	x8, [x17, #40]
   68d04:	aa0103f6 	mov	x22, x1
   68d08:	aa0203fb 	mov	x27, x2
   68d0c:	f90027e8 	str	x8, [sp, #72]
   68d10:	a9406438 	ldp	x24, x25, [x1]
   68d14:	f9000bf1 	str	x17, [sp, #16]
   68d18:	eb180328 	subs	x8, x25, x24
   68d1c:	54000061 	b.ne	68d28 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4c>  // b.any
   68d20:	2a1f03f7 	mov	w23, wzr
   68d24:	14000028 	b	68dc4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0xe8>
   68d28:	d291c729 	mov	x9, #0x8e39                	// #36409
   68d2c:	f2a71c69 	movk	x9, #0x38e3, lsl #16
   68d30:	f2dc71c9 	movk	x9, #0xe38e, lsl #32
   68d34:	9343fd08 	asr	x8, x8, #3
   68d38:	f2f1c709 	movk	x9, #0x8e38, lsl #48
   68d3c:	9b097d08 	mul	x8, x8, x9
   68d40:	f100051f 	cmp	x8, #0x1
   68d44:	9a9f850a 	csinc	x10, x8, xzr, hi	// hi = pmore
   68d48:	f100095f 	cmp	x10, #0x2
   68d4c:	54000082 	b.cs	68d5c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x80>  // b.hs, b.nlast
   68d50:	aa1f03e9 	mov	x9, xzr
   68d54:	2a1f03f7 	mov	w23, wzr
   68d58:	14000012 	b	68da0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0xc4>
   68d5c:	927ff949 	and	x9, x10, #0xfffffffffffffffe
   68d60:	2a1f03eb 	mov	w11, wzr
   68d64:	2a1f03ec 	mov	w12, wzr
   68d68:	9101830d 	add	x13, x24, #0x60
   68d6c:	aa0903ee 	mov	x14, x9
   68d70:	b85b81af 	ldur	w15, [x13, #-72]
   68d74:	b84905b0 	ldr	w16, [x13], #144
   68d78:	6b0f017f 	cmp	w11, w15
   68d7c:	1a8bb1eb 	csel	w11, w15, w11, lt	// lt = tstop
   68d80:	6b10019f 	cmp	w12, w16
   68d84:	1a8cb20c 	csel	w12, w16, w12, lt	// lt = tstop
   68d88:	f10009ce 	subs	x14, x14, #0x2
   68d8c:	54ffff21 	b.ne	68d70 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x94>  // b.any
   68d90:	6b0c017f 	cmp	w11, w12
   68d94:	1a8cc177 	csel	w23, w11, w12, gt
   68d98:	eb09015f 	cmp	x10, x9
   68d9c:	54000140 	b.eq	68dc4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0xe8>  // b.none
   68da0:	5280090a 	mov	w10, #0x48                  	// #72
   68da4:	9b0a612a 	madd	x10, x9, x10, x24
   68da8:	9100614a 	add	x10, x10, #0x18
   68dac:	b844854b 	ldr	w11, [x10], #72
   68db0:	91000529 	add	x9, x9, #0x1
   68db4:	6b0b02ff 	cmp	w23, w11
   68db8:	1a97b177 	csel	w23, w11, w23, lt	// lt = tstop
   68dbc:	eb09011f 	cmp	x8, x9
   68dc0:	54ffff68 	b.hi	68dac <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0xd0>  // b.pmore
   68dc4:	110006f5 	add	w21, w23, #0x1
   68dc8:	321d07e8 	orr	w8, wzr, #0x18
   68dcc:	93407eb4 	sxtw	x20, w21
   68dd0:	9bc87e88 	umulh	x8, x20, x8
   68dd4:	8b35c689 	add	x9, x20, w21, sxtw #1
   68dd8:	eb0803ff 	cmp	xzr, x8
   68ddc:	d37df133 	lsl	x19, x9, #3
   68de0:	1a9f07e8 	cset	w8, ne	// ne = any
   68de4:	b1002269 	adds	x9, x19, #0x8
   68de8:	1a9f37ea 	cset	w10, cs	// cs = hs, nlast
   68dec:	2a0a0108 	orr	w8, w8, w10
   68df0:	7100011f 	cmp	w8, #0x0
   68df4:	da9f0120 	csinv	x0, x9, xzr, eq	// eq = none
   68df8:	97ffce3a 	bl	5c6e0 <operator new[](unsigned long)@plt>
   68dfc:	aa0003fc 	mov	x28, x0
   68e00:	f8008794 	str	x20, [x28], #8
   68e04:	f90007e0 	str	x0, [sp, #8]
   68e08:	f90017fc 	str	x28, [sp, #40]
   68e0c:	340005f5 	cbz	w21, 68ec8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1ec>
   68e10:	b201f3e9 	mov	x9, #0xaaaaaaaaaaaaaaaa    	// #-6148914691236517206
   68e14:	d1006268 	sub	x8, x19, #0x18
   68e18:	f2955569 	movk	x9, #0xaaab
   68e1c:	9bc97d08 	umulh	x8, x8, x9
   68e20:	321d07ea 	orr	w10, wzr, #0x18
   68e24:	d344fd08 	lsr	x8, x8, #4
   68e28:	b27d07e9 	orr	x9, xzr, #0x18
   68e2c:	9b0a2502 	madd	x2, x8, x10, x9
   68e30:	aa1c03e0 	mov	x0, x28
   68e34:	2a1f03e1 	mov	w1, wzr
   68e38:	97ffd1a6 	bl	5d4d0 <memset@plt>
   68e3c:	37f80477 	tbnz	w23, #31, 68ec8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1ec>
   68e40:	aa1f03f3 	mov	x19, xzr
   68e44:	531f7ef4 	lsr	w20, w23, #31
   68e48:	2a1503f5 	mov	w21, w21
   68e4c:	321d07f8 	orr	w24, wzr, #0x18
   68e50:	f90013fb 	str	x27, [sp, #32]
   68e54:	9b187e68 	mul	x8, x19, x24
   68e58:	8b080399 	add	x25, x28, x8
   68e5c:	f8686b9a 	ldr	x26, [x28, x8]
   68e60:	f8408f3b 	ldr	x27, [x25, #8]!
   68e64:	eb1a037f 	cmp	x27, x26
   68e68:	540001c0 	b.eq	68ea0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1c4>  // b.none
   68e6c:	f85d8360 	ldur	x0, [x27, #-40]
   68e70:	f81e0360 	stur	x0, [x27, #-32]
   68e74:	b4000060 	cbz	x0, 68e80 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1a4>
   68e78:	f81e0360 	stur	x0, [x27, #-32]
   68e7c:	97ffccf1 	bl	5c240 <operator delete(void*)@plt>
   68e80:	385b8368 	ldurb	w8, [x27, #-72]
   68e84:	d101237c 	sub	x28, x27, #0x48
   68e88:	36000068 	tbz	w8, #0, 68e94 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1b8>
   68e8c:	f85c8360 	ldur	x0, [x27, #-56]
   68e90:	97ffccec 	bl	5c240 <operator delete(void*)@plt>
   68e94:	eb1c035f 	cmp	x26, x28
   68e98:	aa1c03fb 	mov	x27, x28
   68e9c:	54fffe81 	b.ne	68e6c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x190>  // b.any
   68ea0:	f94017fc 	ldr	x28, [sp, #40]
   68ea4:	91000673 	add	x19, x19, #0x1
   68ea8:	eb15027f 	cmp	x19, x21
   68eac:	f900033a 	str	x26, [x25]
   68eb0:	54fffd21 	b.ne	68e54 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x178>  // b.any
   68eb4:	a94066d8 	ldp	x24, x25, [x22]
   68eb8:	f94013fb 	ldr	x27, [sp, #32]
   68ebc:	eb18033f 	cmp	x25, x24
   68ec0:	540000a1 	b.ne	68ed4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x1f8>  // b.any
   68ec4:	14000022 	b	68f4c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x270>
   68ec8:	320003f4 	orr	w20, wzr, #0x1
   68ecc:	eb18033f 	cmp	x25, x24
   68ed0:	540003e0 	b.eq	68f4c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x270>  // b.none
   68ed4:	d291c739 	mov	x25, #0x8e39                	// #36409
   68ed8:	f2a71c79 	movk	x25, #0x38e3, lsl #16
   68edc:	f2dc71d9 	movk	x25, #0xe38e, lsl #32
   68ee0:	aa1f03f3 	mov	x19, xzr
   68ee4:	321d07f5 	orr	w21, wzr, #0x18
   68ee8:	f2f1c719 	movk	x25, #0x8e38, lsl #48
   68eec:	321d07fa 	orr	w26, wzr, #0x18
   68ef0:	8b1a0301 	add	x1, x24, x26
   68ef4:	b89e8428 	ldrsw	x8, [x1], #-24
   68ef8:	d503201f 	nop
   68efc:	9b157118 	madd	x24, x8, x21, x28
   68f00:	f8408f00 	ldr	x0, [x24, #8]!
   68f04:	f9400709 	ldr	x9, [x24, #8]
   68f08:	eb09001f 	cmp	x0, x9
   68f0c:	540000c0 	b.eq	68f24 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x248>  // b.none
   68f10:	97ffd15c 	bl	5d480 <MiCluster::ImageStruct::ImageStruct(MiCluster::ImageStruct const&)@plt>
   68f14:	f9400308 	ldr	x8, [x24]
   68f18:	91012108 	add	x8, x8, #0x48
   68f1c:	f9000308 	str	x8, [x24]
   68f20:	14000003 	b	68f2c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x250>
   68f24:	9b157100 	madd	x0, x8, x21, x28
   68f28:	97ffda62 	bl	5f8b0 <void std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >::__push_back_slow_path<MiCluster::ImageStruct const&>(MiCluster::ImageStruct const&)@plt>
   68f2c:	a94022d8 	ldp	x24, x8, [x22]
   68f30:	91000673 	add	x19, x19, #0x1
   68f34:	9101235a 	add	x26, x26, #0x48
   68f38:	cb180108 	sub	x8, x8, x24
   68f3c:	9343fd08 	asr	x8, x8, #3
   68f40:	9b197d08 	mul	x8, x8, x25
   68f44:	eb13011f 	cmp	x8, x19
   68f48:	54fffd48 	b.hi	68ef0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x214>  // b.pmore
   68f4c:	a9405b73 	ldp	x19, x22, [x27]
   68f50:	eb1302df 	cmp	x22, x19
   68f54:	540002e0 	b.eq	68fb0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2d4>  // b.none
   68f58:	aa1603f5 	mov	x21, x22
   68f5c:	f85e8eb8 	ldr	x24, [x21, #-24]!
   68f60:	b4000238 	cbz	x24, 68fa4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2c8>
   68f64:	f85f02c8 	ldur	x8, [x22, #-16]
   68f68:	eb18011f 	cmp	x8, x24
   68f6c:	54000160 	b.eq	68f98 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2bc>  // b.none
   68f70:	aa0803f9 	mov	x25, x8
   68f74:	385e8f29 	ldrb	w9, [x25, #-24]!
   68f78:	36000069 	tbz	w9, #0, 68f84 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2a8>
   68f7c:	f85f8100 	ldur	x0, [x8, #-8]
   68f80:	97ffccb0 	bl	5c240 <operator delete(void*)@plt>
   68f84:	eb19031f 	cmp	x24, x25
   68f88:	aa1903e8 	mov	x8, x25
   68f8c:	54ffff41 	b.ne	68f74 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x298>  // b.any
   68f90:	f94002a0 	ldr	x0, [x21]
   68f94:	14000002 	b	68f9c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2c0>
   68f98:	aa1803e0 	mov	x0, x24
   68f9c:	f81f02d8 	stur	x24, [x22, #-16]
   68fa0:	97ffcca8 	bl	5c240 <operator delete(void*)@plt>
   68fa4:	eb1302bf 	cmp	x21, x19
   68fa8:	aa1503f6 	mov	x22, x21
   68fac:	54fffd81 	b.ne	68f5c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x280>  // b.any
   68fb0:	f9000773 	str	x19, [x27, #8]
   68fb4:	37000f14 	tbnz	w20, #0, 69194 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4b8>
   68fb8:	aa1f03fc 	mov	x28, xzr
   68fbc:	93407ee8 	sxtw	x8, w23
   68fc0:	a901efe8 	stp	x8, x27, [sp, #24]
   68fc4:	f94017e8 	ldr	x8, [sp, #40]
   68fc8:	321d07e9 	orr	w9, wzr, #0x18
   68fcc:	d291c72a 	mov	x10, #0x8e39                	// #36409
   68fd0:	f2a71c6a 	movk	x10, #0x38e3, lsl #16
   68fd4:	9b092394 	madd	x20, x28, x9, x8
   68fd8:	a9402688 	ldp	x8, x9, [x20]
   68fdc:	f2dc71ca 	movk	x10, #0xe38e, lsl #32
   68fe0:	f2f1c70a 	movk	x10, #0x8e38, lsl #48
   68fe4:	a903ffff 	stp	xzr, xzr, [sp, #56]
   68fe8:	cb080129 	sub	x9, x9, x8
   68fec:	9343fd29 	asr	x9, x9, #3
   68ff0:	9b0a7d2a 	mul	x10, x9, x10
   68ff4:	7100055f 	cmp	w10, #0x1
   68ff8:	f9001bff 	str	xzr, [sp, #48]
   68ffc:	540007ab 	b.lt	690f0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x414>  // b.tstop
   69000:	aa1f03fb 	mov	x27, xzr
   69004:	aa1f03e9 	mov	x9, xzr
   69008:	aa1f03f6 	mov	x22, xzr
   6900c:	93407d53 	sxtw	x19, w10
   69010:	320003f5 	orr	w21, wzr, #0x1
   69014:	eb0902df 	cmp	x22, x9
   69018:	8b1b0101 	add	x1, x8, x27
   6901c:	54000121 	b.ne	69040 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x364>  // b.any
   69020:	14000030 	b	690e0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x404>
   69024:	f9400288 	ldr	x8, [x20]
   69028:	a943a7f6 	ldp	x22, x9, [sp, #56]
   6902c:	9101237b 	add	x27, x27, #0x48
   69030:	910006b5 	add	x21, x21, #0x1
   69034:	eb0902df 	cmp	x22, x9
   69038:	8b1b0101 	add	x1, x8, x27
   6903c:	54000520 	b.eq	690e0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x404>  // b.none
   69040:	a900fedf 	stp	xzr, xzr, [x22, #8]
   69044:	f90002df 	str	xzr, [x22]
   69048:	39400029 	ldrb	w9, [x1]
   6904c:	370000c9 	tbnz	w9, #0, 69064 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x388>
   69050:	f9400828 	ldr	x8, [x1, #16]
   69054:	3dc00020 	ldr	q0, [x1]
   69058:	f9000ac8 	str	x8, [x22, #16]
   6905c:	3d8002c0 	str	q0, [x22]
   69060:	1400001a 	b	690c8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x3ec>
   69064:	8b1b0108 	add	x8, x8, x27
   69068:	f9400517 	ldr	x23, [x8, #8]
   6906c:	b10042ff 	cmn	x23, #0x10
   69070:	54000f42 	b.cs	69258 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x57c>  // b.hs, b.nlast
   69074:	f9400918 	ldr	x24, [x8, #16]
   69078:	f1005eff 	cmp	x23, #0x17
   6907c:	540000c2 	b.cs	69094 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x3b8>  // b.hs, b.nlast
   69080:	531f7ae8 	lsl	w8, w23, #1
   69084:	910006d9 	add	x25, x22, #0x1
   69088:	390002c8 	strb	w8, [x22]
   6908c:	b5000157 	cbnz	x23, 690b4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x3d8>
   69090:	1400000d 	b	690c4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x3e8>
   69094:	910042e8 	add	x8, x23, #0x10
   69098:	927ced1a 	and	x26, x8, #0xfffffffffffffff0
   6909c:	aa1a03e0 	mov	x0, x26
   690a0:	97ffca60 	bl	5ba20 <operator new(unsigned long)@plt>
   690a4:	b2400348 	orr	x8, x26, #0x1
   690a8:	aa0003f9 	mov	x25, x0
   690ac:	a90082d7 	stp	x23, x0, [x22, #8]
   690b0:	f90002c8 	str	x8, [x22]
   690b4:	aa1903e0 	mov	x0, x25
   690b8:	aa1803e1 	mov	x1, x24
   690bc:	aa1703e2 	mov	x2, x23
   690c0:	97ffd734 	bl	5ed90 <memcpy@plt>
   690c4:	38376b3f 	strb	wzr, [x25, x23]
   690c8:	f9401fe8 	ldr	x8, [sp, #56]
   690cc:	91006108 	add	x8, x8, #0x18
   690d0:	f9001fe8 	str	x8, [sp, #56]
   690d4:	eb1302bf 	cmp	x21, x19
   690d8:	54fffa6b 	b.lt	69024 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x348>  // b.tstop
   690dc:	14000005 	b	690f0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x414>
   690e0:	9100c3e0 	add	x0, sp, #0x30
   690e4:	94000ee3 	bl	6cc70 <void std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >::__push_back_slow_path<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&>(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&)>
   690e8:	eb1302bf 	cmp	x21, x19
   690ec:	54fff9cb 	b.lt	69024 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x348>  // b.tstop
   690f0:	f94013fb 	ldr	x27, [sp, #32]
   690f4:	a940a360 	ldp	x0, x8, [x27, #8]
   690f8:	eb08001f 	cmp	x0, x8
   690fc:	540002a0 	b.eq	69150 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x474>  // b.none
   69100:	9100c3e1 	add	x1, sp, #0x30
   69104:	940010a6 	bl	6d39c <std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >::vector(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > const&)>
   69108:	f9400768 	ldr	x8, [x27, #8]
   6910c:	91006108 	add	x8, x8, #0x18
   69110:	f9000768 	str	x8, [x27, #8]
   69114:	f9401bf3 	ldr	x19, [sp, #48]
   69118:	b4000273 	cbz	x19, 69164 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x488>
   6911c:	f9401fe8 	ldr	x8, [sp, #56]
   69120:	eb13011f 	cmp	x8, x19
   69124:	540002a0 	b.eq	69178 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x49c>  // b.none
   69128:	aa0803f4 	mov	x20, x8
   6912c:	385e8e89 	ldrb	w9, [x20, #-24]!
   69130:	36000069 	tbz	w9, #0, 6913c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x460>
   69134:	f85f8100 	ldur	x0, [x8, #-8]
   69138:	97ffcc42 	bl	5c240 <operator delete(void*)@plt>
   6913c:	eb14027f 	cmp	x19, x20
   69140:	aa1403e8 	mov	x8, x20
   69144:	54ffff41 	b.ne	6912c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x450>  // b.any
   69148:	f9401be0 	ldr	x0, [sp, #48]
   6914c:	1400000c 	b	6917c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4a0>
   69150:	9100c3e1 	add	x1, sp, #0x30
   69154:	aa1b03e0 	mov	x0, x27
   69158:	97ffcc16 	bl	5c1b0 <void std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >::__push_back_slow_path<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > const&>(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > const&)@plt>
   6915c:	f9401bf3 	ldr	x19, [sp, #48]
   69160:	b5fffdf3 	cbnz	x19, 6911c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x440>
   69164:	f9400fe8 	ldr	x8, [sp, #24]
   69168:	eb08039f 	cmp	x28, x8
   6916c:	9100079c 	add	x28, x28, #0x1
   69170:	54fff2ab 	b.lt	68fc4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2e8>  // b.tstop
   69174:	14000008 	b	69194 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4b8>
   69178:	aa1303e0 	mov	x0, x19
   6917c:	f9001ff3 	str	x19, [sp, #56]
   69180:	97ffcc30 	bl	5c240 <operator delete(void*)@plt>
   69184:	f9400fe8 	ldr	x8, [sp, #24]
   69188:	eb08039f 	cmp	x28, x8
   6918c:	9100079c 	add	x28, x28, #0x1
   69190:	54fff1ab 	b.lt	68fc4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x2e8>  // b.tstop
   69194:	f94007f8 	ldr	x24, [sp, #8]
   69198:	f94017f9 	ldr	x25, [sp, #40]
   6919c:	f9400308 	ldr	x8, [x24]
   691a0:	8b080508 	add	x8, x8, x8, lsl #1
   691a4:	d37df108 	lsl	x8, x8, #3
   691a8:	b40003a8 	cbz	x8, 6921c <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x540>
   691ac:	8b080334 	add	x20, x25, x8
   691b0:	aa1403f3 	mov	x19, x20
   691b4:	f85e8e75 	ldr	x21, [x19, #-24]!
   691b8:	b40002d5 	cbz	x21, 69210 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x534>
   691bc:	f85f0296 	ldur	x22, [x20, #-16]
   691c0:	eb1502df 	cmp	x22, x21
   691c4:	54000200 	b.eq	69204 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x528>  // b.none
   691c8:	f85d82c0 	ldur	x0, [x22, #-40]
   691cc:	f81e02c0 	stur	x0, [x22, #-32]
   691d0:	b4000060 	cbz	x0, 691dc <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x500>
   691d4:	f81e02c0 	stur	x0, [x22, #-32]
   691d8:	97ffcc1a 	bl	5c240 <operator delete(void*)@plt>
   691dc:	385b82c8 	ldurb	w8, [x22, #-72]
   691e0:	d10122d7 	sub	x23, x22, #0x48
   691e4:	36000068 	tbz	w8, #0, 691f0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x514>
   691e8:	f85c82c0 	ldur	x0, [x22, #-56]
   691ec:	97ffcc15 	bl	5c240 <operator delete(void*)@plt>
   691f0:	eb1702bf 	cmp	x21, x23
   691f4:	aa1703f6 	mov	x22, x23
   691f8:	54fffe81 	b.ne	691c8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4ec>  // b.any
   691fc:	f9400260 	ldr	x0, [x19]
   69200:	14000002 	b	69208 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x52c>
   69204:	aa1503e0 	mov	x0, x21
   69208:	f81f0295 	stur	x21, [x20, #-16]
   6920c:	97ffcc0d 	bl	5c240 <operator delete(void*)@plt>
   69210:	eb19027f 	cmp	x19, x25
   69214:	aa1303f4 	mov	x20, x19
   69218:	54fffce1 	b.ne	691b4 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x4d8>  // b.any
   6921c:	aa1803e0 	mov	x0, x24
   69220:	97ffc984 	bl	5b830 <operator delete[](void*)@plt>
   69224:	f9400be8 	ldr	x8, [sp, #16]
   69228:	f9401508 	ldr	x8, [x8, #40]
   6922c:	f94027e9 	ldr	x9, [sp, #72]
   69230:	eb09011f 	cmp	x8, x9
   69234:	54000161 	b.ne	69260 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x584>  // b.any
   69238:	a94a7bfd 	ldp	x29, x30, [sp, #160]
   6923c:	a9494ff4 	ldp	x20, x19, [sp, #144]
   69240:	a94857f6 	ldp	x22, x21, [sp, #128]
   69244:	a9475ff8 	ldp	x24, x23, [sp, #112]
   69248:	a94667fa 	ldp	x26, x25, [sp, #96]
   6924c:	a9456ffc 	ldp	x28, x27, [sp, #80]
   69250:	9102c3ff 	add	sp, sp, #0xb0
   69254:	d65f03c0 	ret
   69258:	aa1603e0 	mov	x0, x22
   6925c:	97fff29d 	bl	65cd0 <std::__ndk1::__basic_string_common<true>::__throw_length_error() const>
   69260:	97ffcad8 	bl	5bdc0 <__stack_chk_fail@plt>
   69264:	f9401bf4 	ldr	x20, [sp, #48]
   69268:	aa0003f3 	mov	x19, x0
   6926c:	b5000134 	cbnz	x20, 69290 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5b4>
   69270:	14000016 	b	692c8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5ec>
   69274:	f9401bf4 	ldr	x20, [sp, #48]
   69278:	aa0003f3 	mov	x19, x0
   6927c:	b50000b4 	cbnz	x20, 69290 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5b4>
   69280:	14000012 	b	692c8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5ec>
   69284:	f9401bf4 	ldr	x20, [sp, #48]
   69288:	aa0003f3 	mov	x19, x0
   6928c:	b40001f4 	cbz	x20, 692c8 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5ec>
   69290:	f9401fe8 	ldr	x8, [sp, #56]
   69294:	eb14011f 	cmp	x8, x20
   69298:	540001c0 	b.eq	692d0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5f4>  // b.none
   6929c:	aa0803f5 	mov	x21, x8
   692a0:	385e8ea9 	ldrb	w9, [x21, #-24]!
   692a4:	36000069 	tbz	w9, #0, 692b0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5d4>
   692a8:	f85f8100 	ldur	x0, [x8, #-8]
   692ac:	97ffcbe5 	bl	5c240 <operator delete(void*)@plt>
   692b0:	eb15029f 	cmp	x20, x21
   692b4:	aa1503e8 	mov	x8, x21
   692b8:	54ffff41 	b.ne	692a0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5c4>  // b.any
   692bc:	f9401be0 	ldr	x0, [sp, #48]
   692c0:	f9001ff4 	str	x20, [sp, #56]
   692c4:	97ffcbdf 	bl	5c240 <operator delete(void*)@plt>
   692c8:	aa1303e0 	mov	x0, x19
   692cc:	97ffce99 	bl	5cd30 <_Unwind_Resume@plt>
   692d0:	aa1403e0 	mov	x0, x20
   692d4:	17fffffb 	b	692c0 <MiCluster::ImageCluster::getClusterResultInString(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)+0x5e4>
