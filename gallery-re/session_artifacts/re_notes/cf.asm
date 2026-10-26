
libs/libJNI_SimilarImgCluster.so:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000067880 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)>:
   67880:	d102c3ff 	sub	sp, sp, #0xb0
   67884:	a9056ffc 	stp	x28, x27, [sp, #80]
   67888:	a90667fa 	stp	x26, x25, [sp, #96]
   6788c:	a9075ff8 	stp	x24, x23, [sp, #112]
   67890:	a90857f6 	stp	x22, x21, [sp, #128]
   67894:	a9094ff4 	stp	x20, x19, [sp, #144]
   67898:	a90a7bfd 	stp	x29, x30, [sp, #160]
   6789c:	910283fd 	add	x29, sp, #0xa0
   678a0:	d53bd056 	mrs	x22, tpidr_el0
   678a4:	f94016c8 	ldr	x8, [x22, #40]
   678a8:	d291c729 	mov	x9, #0x8e39                	// #36409
   678ac:	f2a71c69 	movk	x9, #0x38e3, lsl #16
   678b0:	f2dc71c9 	movk	x9, #0xe38e, lsl #32
   678b4:	f90027e8 	str	x8, [sp, #72]
   678b8:	a9402038 	ldp	x24, x8, [x1]
   678bc:	f2f1c709 	movk	x9, #0x8e38, lsl #48
   678c0:	aa0003f4 	mov	x20, x0
   678c4:	aa0203f3 	mov	x19, x2
   678c8:	cb180108 	sub	x8, x8, x24
   678cc:	9343fd08 	asr	x8, x8, #3
   678d0:	9b097d17 	mul	x23, x8, x9
   678d4:	1b177ee8 	mul	w8, w23, w23
   678d8:	d37e7d00 	ubfiz	x0, x8, #2, #32
   678dc:	aa0103f5 	mov	x21, x1
   678e0:	b90033f7 	str	w23, [sp, #48]
   678e4:	97ffd37f 	bl	5c6e0 <operator new[](unsigned long)@plt>
   678e8:	710006ff 	cmp	w23, #0x1
   678ec:	f9001fe0 	str	x0, [sp, #56]
   678f0:	b90043ff 	str	wzr, [sp, #64]
   678f4:	5400148b 	b.lt	67b84 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x304>  // b.tstop
   678f8:	9100c3ed 	add	x13, sp, #0x30
   678fc:	52805f2e 	mov	w14, #0x2f9                 	// #761
   67900:	aa1f03e8 	mov	x8, xzr
   67904:	93407ee9 	sxtw	x9, w23
   67908:	92407eea 	and	x10, x23, #0xffffffff
   6790c:	320003eb 	orr	w11, wzr, #0x1
   67910:	5280090c 	mov	w12, #0x48                  	// #72
   67914:	1e2e1000 	fmov	s0, #1.000000000000000000e+00
   67918:	910041ad 	add	x13, x13, #0x10
   6791c:	72aa02ae 	movk	w14, #0x5015, lsl #16
   67920:	9b097d10 	mul	x16, x8, x9
   67924:	8b100103 	add	x3, x8, x16
   67928:	9b0c6102 	madd	x2, x8, x12, x24
   6792c:	8b030803 	add	x3, x0, x3, lsl #2
   67930:	eb09011f 	cmp	x8, x9
   67934:	aa1f03ef 	mov	x15, xzr
   67938:	9100e051 	add	x17, x2, #0x38
   6793c:	91008041 	add	x1, x2, #0x20
   67940:	9100a042 	add	x2, x2, #0x28
   67944:	9a83c1a3 	csel	x3, x13, x3, gt
   67948:	eb0f011f 	cmp	x8, x15
   6794c:	540000c1 	b.ne	67964 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0xe4>  // b.any
   67950:	b900007f 	str	wzr, [x3]
   67954:	910005ef 	add	x15, x15, #0x1
   67958:	eb0b01ff 	cmp	x15, x11
   6795c:	54ffff61 	b.ne	67948 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0xc8>  // b.any
   67960:	14000085 	b	67b74 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x2f4>
   67964:	9b0c61e5 	madd	x5, x15, x12, x24
   67968:	f9400224 	ldr	x4, [x17]
   6796c:	f9401ca5 	ldr	x5, [x5, #56]
   67970:	f9403286 	ldr	x6, [x20, #96]
   67974:	eb050084 	subs	x4, x4, x5
   67978:	da845484 	cneg	x4, x4, mi	// mi = first
   6797c:	eb06009f 	cmp	x4, x6
   67980:	540002ea 	b.ge	679dc <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x15c>  // b.tcont
   67984:	f9400045 	ldr	x5, [x2]
   67988:	f9400024 	ldr	x4, [x1]
   6798c:	d503201f 	nop
   67990:	9b0c61e6 	madd	x6, x15, x12, x24
   67994:	910080c7 	add	x7, x6, #0x20
   67998:	eb0400a6 	subs	x6, x5, x4
   6799c:	9342fcc5 	asr	x5, x6, #2
   679a0:	54000600 	b.eq	67a60 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x1e0>  // b.none
   679a4:	aa1f03f9 	mov	x25, xzr
   679a8:	1e2703e1 	fmov	s1, wzr
   679ac:	bc797882 	ldr	s2, [x4, x25, lsl #2]
   679b0:	91000739 	add	x25, x25, #0x1
   679b4:	eb1900bf 	cmp	x5, x25
   679b8:	1e220842 	fmul	s2, s2, s2
   679bc:	1e222821 	fadd	s1, s1, s2
   679c0:	54ffff68 	b.hi	679ac <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x12c>  // b.pmore
   679c4:	1e21c021 	fsqrt	s1, s1
   679c8:	f1001cbf 	cmp	x5, #0x7
   679cc:	1e211801 	fdiv	s1, s0, s1
   679d0:	54000208 	b.hi	67a10 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x190>  // b.pmore
   679d4:	aa1f03f9 	mov	x25, xzr
   679d8:	1400001b 	b	67a44 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x1c4>
   679dc:	9b0921e4 	madd	x4, x15, x9, x8
   679e0:	8b1001e5 	add	x5, x15, x16
   679e4:	eb0901ff 	cmp	x15, x9
   679e8:	8b040804 	add	x4, x0, x4, lsl #2
   679ec:	8b050805 	add	x5, x0, x5, lsl #2
   679f0:	9a84c1a4 	csel	x4, x13, x4, gt
   679f4:	9a85c1a5 	csel	x5, x13, x5, gt
   679f8:	b900008e 	str	w14, [x4]
   679fc:	b90000ae 	str	w14, [x5]
   67a00:	910005ef 	add	x15, x15, #0x1
   67a04:	eb0b01ff 	cmp	x15, x11
   67a08:	54fffa01 	b.ne	67948 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0xc8>  // b.any
   67a0c:	1400005a 	b	67b74 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x2f4>
   67a10:	927df0b9 	and	x25, x5, #0xfffffffffffffff8
   67a14:	4e040422 	dup	v2.4s, v1.s[0]
   67a18:	9100409a 	add	x26, x4, #0x10
   67a1c:	aa1903fb 	mov	x27, x25
   67a20:	ad7f9343 	ldp	q3, q4, [x26, #-16]
   67a24:	f100237b 	subs	x27, x27, #0x8
   67a28:	6e23dc43 	fmul	v3.4s, v2.4s, v3.4s
   67a2c:	6e24dc44 	fmul	v4.4s, v2.4s, v4.4s
   67a30:	ad3f9343 	stp	q3, q4, [x26, #-16]
   67a34:	9100835a 	add	x26, x26, #0x20
   67a38:	54ffff41 	b.ne	67a20 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x1a0>  // b.any
   67a3c:	eb1900bf 	cmp	x5, x25
   67a40:	54000100 	b.eq	67a60 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x1e0>  // b.none
   67a44:	cb1900ba 	sub	x26, x5, x25
   67a48:	8b190899 	add	x25, x4, x25, lsl #2
   67a4c:	bd400322 	ldr	s2, [x25]
   67a50:	f100075a 	subs	x26, x26, #0x1
   67a54:	1e220822 	fmul	s2, s1, s2
   67a58:	bc004722 	str	s2, [x25], #4
   67a5c:	54ffff81 	b.ne	67a4c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x1cc>  // b.any
   67a60:	9b0c61f9 	madd	x25, x15, x12, x24
   67a64:	f9401739 	ldr	x25, [x25, #40]
   67a68:	f94000e7 	ldr	x7, [x7]
   67a6c:	eb070339 	subs	x25, x25, x7
   67a70:	54000480 	b.eq	67b00 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x280>  // b.none
   67a74:	aa1f03fa 	mov	x26, xzr
   67a78:	9342ff39 	asr	x25, x25, #2
   67a7c:	1e2703e1 	fmov	s1, wzr
   67a80:	bc7a78e2 	ldr	s2, [x7, x26, lsl #2]
   67a84:	9100075a 	add	x26, x26, #0x1
   67a88:	eb1a033f 	cmp	x25, x26
   67a8c:	1e220842 	fmul	s2, s2, s2
   67a90:	1e222821 	fadd	s1, s1, s2
   67a94:	54ffff68 	b.hi	67a80 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x200>  // b.pmore
   67a98:	1e21c021 	fsqrt	s1, s1
   67a9c:	f1001f3f 	cmp	x25, #0x7
   67aa0:	1e211801 	fdiv	s1, s0, s1
   67aa4:	54000068 	b.hi	67ab0 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x230>  // b.pmore
   67aa8:	aa1f03fa 	mov	x26, xzr
   67aac:	1400000e 	b	67ae4 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x264>
   67ab0:	927df33a 	and	x26, x25, #0xfffffffffffffff8
   67ab4:	4e040422 	dup	v2.4s, v1.s[0]
   67ab8:	910040fb 	add	x27, x7, #0x10
   67abc:	aa1a03fc 	mov	x28, x26
   67ac0:	ad7f9363 	ldp	q3, q4, [x27, #-16]
   67ac4:	f100239c 	subs	x28, x28, #0x8
   67ac8:	6e23dc43 	fmul	v3.4s, v2.4s, v3.4s
   67acc:	6e24dc44 	fmul	v4.4s, v2.4s, v4.4s
   67ad0:	ad3f9363 	stp	q3, q4, [x27, #-16]
   67ad4:	9100837b 	add	x27, x27, #0x20
   67ad8:	54ffff41 	b.ne	67ac0 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x240>  // b.any
   67adc:	eb1a033f 	cmp	x25, x26
   67ae0:	54000100 	b.eq	67b00 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x280>  // b.none
   67ae4:	cb1a0339 	sub	x25, x25, x26
   67ae8:	8b1a08fa 	add	x26, x7, x26, lsl #2
   67aec:	bd400342 	ldr	s2, [x26]
   67af0:	f1000739 	subs	x25, x25, #0x1
   67af4:	1e220822 	fmul	s2, s1, s2
   67af8:	bc004742 	str	s2, [x26], #4
   67afc:	54ffff81 	b.ne	67aec <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x26c>  // b.any
   67b00:	b40001e6 	cbz	x6, 67b3c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x2bc>
   67b04:	aa1f03e6 	mov	x6, xzr
   67b08:	9e6703e1 	fmov	d1, xzr
   67b0c:	d37ef4d9 	lsl	x25, x6, #2
   67b10:	bc796882 	ldr	s2, [x4, x25]
   67b14:	bc7968e3 	ldr	s3, [x7, x25]
   67b18:	910004c6 	add	x6, x6, #0x1
   67b1c:	eb0600bf 	cmp	x5, x6
   67b20:	1e233842 	fsub	s2, s2, s3
   67b24:	1e22c042 	fcvt	d2, s2
   67b28:	1e620842 	fmul	d2, d2, d2
   67b2c:	1e622821 	fadd	d1, d1, d2
   67b30:	54fffee8 	b.hi	67b0c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x28c>  // b.pmore
   67b34:	1e624021 	fcvt	s1, d1
   67b38:	14000002 	b	67b40 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x2c0>
   67b3c:	1e2703e1 	fmov	s1, wzr
   67b40:	9b0921e4 	madd	x4, x15, x9, x8
   67b44:	8b1001e5 	add	x5, x15, x16
   67b48:	eb0901ff 	cmp	x15, x9
   67b4c:	8b040804 	add	x4, x0, x4, lsl #2
   67b50:	8b050805 	add	x5, x0, x5, lsl #2
   67b54:	1e21c021 	fsqrt	s1, s1
   67b58:	9a84c1a4 	csel	x4, x13, x4, gt
   67b5c:	9a85c1a5 	csel	x5, x13, x5, gt
   67b60:	bd000081 	str	s1, [x4]
   67b64:	bd0000a1 	str	s1, [x5]
   67b68:	910005ef 	add	x15, x15, #0x1
   67b6c:	eb0b01ff 	cmp	x15, x11
   67b70:	54ffeec1 	b.ne	67948 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0xc8>  // b.any
   67b74:	91000508 	add	x8, x8, #0x1
   67b78:	eb0a011f 	cmp	x8, x10
   67b7c:	9100056b 	add	x11, x11, #0x1
   67b80:	54ffed01 	b.ne	67920 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0xa0>  // b.any
   67b84:	a9027fff 	stp	xzr, xzr, [sp, #32]
   67b88:	f9000fff 	str	xzr, [sp, #24]
   67b8c:	bd403e80 	ldr	s0, [x20, #60]
   67b90:	1e22c000 	fcvt	d0, s0
   67b94:	9100c3e0 	add	x0, sp, #0x30
   67b98:	910063e1 	add	x1, sp, #0x18
   67b9c:	320003e2 	orr	w2, wzr, #0x1
   67ba0:	97ffd30c 	bl	5c7d0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)@plt>
   67ba4:	710006ff 	cmp	w23, #0x1
   67ba8:	540003ab 	b.lt	67c1c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x39c>  // b.tstop
   67bac:	f9400fea 	ldr	x10, [sp, #24]
   67bb0:	f94002a9 	ldr	x9, [x21]
   67bb4:	92407ee8 	and	x8, x23, #0xffffffff
   67bb8:	f100091f 	cmp	x8, #0x2
   67bbc:	54000062 	b.cs	67bc8 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x348>  // b.hs, b.nlast
   67bc0:	aa1f03eb 	mov	x11, xzr
   67bc4:	1400000d 	b	67bf8 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x378>
   67bc8:	924002ec 	and	x12, x23, #0x1
   67bcc:	cb0c010b 	sub	x11, x8, x12
   67bd0:	9100214d 	add	x13, x10, #0x8
   67bd4:	9101812e 	add	x14, x9, #0x60
   67bd8:	aa0b03ef 	mov	x15, x11
   67bdc:	a97fc5b0 	ldp	x16, x17, [x13, #-8]
   67be0:	910041ad 	add	x13, x13, #0x10
   67be4:	f10009ef 	subs	x15, x15, #0x2
   67be8:	b81b81d0 	stur	w16, [x14, #-72]
   67bec:	b80905d1 	str	w17, [x14], #144
   67bf0:	54ffff61 	b.ne	67bdc <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x35c>  // b.any
   67bf4:	b400014c 	cbz	x12, 67c1c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x39c>
   67bf8:	5280090c 	mov	w12, #0x48                  	// #72
   67bfc:	9b0c2569 	madd	x9, x11, x12, x9
   67c00:	8b0b0d4a 	add	x10, x10, x11, lsl #3
   67c04:	91006129 	add	x9, x9, #0x18
   67c08:	cb0b0108 	sub	x8, x8, x11
   67c0c:	f840854b 	ldr	x11, [x10], #8
   67c10:	f1000508 	subs	x8, x8, #0x1
   67c14:	b804852b 	str	w11, [x9], #72
   67c18:	54ffffa1 	b.ne	67c0c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x38c>  // b.any
   67c1c:	a900ffff 	stp	xzr, xzr, [sp, #8]
   67c20:	f90003ff 	str	xzr, [sp]
   67c24:	bd404280 	ldr	s0, [x20, #64]
   67c28:	1e22c000 	fcvt	d0, s0
   67c2c:	9100c3e0 	add	x0, sp, #0x30
   67c30:	910003e1 	mov	x1, sp
   67c34:	320003e2 	orr	w2, wzr, #0x1
   67c38:	97ffd2e6 	bl	5c7d0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)@plt>
   67c3c:	f94003e0 	ldr	x0, [sp]
   67c40:	710006ff 	cmp	w23, #0x1
   67c44:	540000eb 	b.lt	67c60 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x3e0>  // b.tstop
   67c48:	f9400269 	ldr	x9, [x19]
   67c4c:	92407ee8 	and	x8, x23, #0xffffffff
   67c50:	f100091f 	cmp	x8, #0x2
   67c54:	54000302 	b.cs	67cb4 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x434>  // b.hs, b.nlast
   67c58:	aa1f03ea 	mov	x10, xzr
   67c5c:	14000022 	b	67ce4 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x464>
   67c60:	b5000540 	cbnz	x0, 67d08 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x488>
   67c64:	f9400fe0 	ldr	x0, [sp, #24]
   67c68:	b4000060 	cbz	x0, 67c74 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x3f4>
   67c6c:	f90013e0 	str	x0, [sp, #32]
   67c70:	97ffd174 	bl	5c240 <operator delete(void*)@plt>
   67c74:	f9401fe0 	ldr	x0, [sp, #56]
   67c78:	b4000040 	cbz	x0, 67c80 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x400>
   67c7c:	97ffceed 	bl	5b830 <operator delete[](void*)@plt>
   67c80:	f94016c8 	ldr	x8, [x22, #40]
   67c84:	f94027e9 	ldr	x9, [sp, #72]
   67c88:	eb09011f 	cmp	x8, x9
   67c8c:	54000481 	b.ne	67d1c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x49c>  // b.any
   67c90:	a94a7bfd 	ldp	x29, x30, [sp, #160]
   67c94:	a9494ff4 	ldp	x20, x19, [sp, #144]
   67c98:	a94857f6 	ldp	x22, x21, [sp, #128]
   67c9c:	a9475ff8 	ldp	x24, x23, [sp, #112]
   67ca0:	a94667fa 	ldp	x26, x25, [sp, #96]
   67ca4:	a9456ffc 	ldp	x28, x27, [sp, #80]
   67ca8:	2a1f03e0 	mov	w0, wzr
   67cac:	9102c3ff 	add	sp, sp, #0xb0
   67cb0:	d65f03c0 	ret
   67cb4:	924002eb 	and	x11, x23, #0x1
   67cb8:	cb0b010a 	sub	x10, x8, x11
   67cbc:	9100200c 	add	x12, x0, #0x8
   67cc0:	9101812d 	add	x13, x9, #0x60
   67cc4:	aa0a03ee 	mov	x14, x10
   67cc8:	a97fc18f 	ldp	x15, x16, [x12, #-8]
   67ccc:	9100418c 	add	x12, x12, #0x10
   67cd0:	f10009ce 	subs	x14, x14, #0x2
   67cd4:	b81b81af 	stur	w15, [x13, #-72]
   67cd8:	b80905b0 	str	w16, [x13], #144
   67cdc:	54ffff61 	b.ne	67cc8 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x448>  // b.any
   67ce0:	b400014b 	cbz	x11, 67d08 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x488>
   67ce4:	5280090c 	mov	w12, #0x48                  	// #72
   67ce8:	9b0c2549 	madd	x9, x10, x12, x9
   67cec:	8b0a0c0b 	add	x11, x0, x10, lsl #3
   67cf0:	91006129 	add	x9, x9, #0x18
   67cf4:	cb0a0108 	sub	x8, x8, x10
   67cf8:	f840856a 	ldr	x10, [x11], #8
   67cfc:	f1000508 	subs	x8, x8, #0x1
   67d00:	b804852a 	str	w10, [x9], #72
   67d04:	54ffffa1 	b.ne	67cf8 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x478>  // b.any
   67d08:	f90007e0 	str	x0, [sp, #8]
   67d0c:	97ffd14d 	bl	5c240 <operator delete(void*)@plt>
   67d10:	f9400fe0 	ldr	x0, [sp, #24]
   67d14:	b5fffac0 	cbnz	x0, 67c6c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x3ec>
   67d18:	17ffffd7 	b	67c74 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x3f4>
   67d1c:	97ffd029 	bl	5bdc0 <__stack_chk_fail@plt>
   67d20:	f94003e8 	ldr	x8, [sp]
   67d24:	aa0003f3 	mov	x19, x0
   67d28:	b50000e8 	cbnz	x8, 67d44 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4c4>
   67d2c:	f9400fe0 	ldr	x0, [sp, #24]
   67d30:	b50001c0 	cbnz	x0, 67d68 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4e8>
   67d34:	f9401fe0 	ldr	x0, [sp, #56]
   67d38:	b5000200 	cbnz	x0, 67d78 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4f8>
   67d3c:	aa1303e0 	mov	x0, x19
   67d40:	97ffd3fc 	bl	5cd30 <_Unwind_Resume@plt>
   67d44:	aa0803e0 	mov	x0, x8
   67d48:	f90007e8 	str	x8, [sp, #8]
   67d4c:	97ffd13d 	bl	5c240 <operator delete(void*)@plt>
   67d50:	f9400fe0 	ldr	x0, [sp, #24]
   67d54:	b4ffff00 	cbz	x0, 67d34 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4b4>
   67d58:	14000004 	b	67d68 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4e8>
   67d5c:	aa0003f3 	mov	x19, x0
   67d60:	f9400fe0 	ldr	x0, [sp, #24]
   67d64:	b4fffe80 	cbz	x0, 67d34 <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4b4>
   67d68:	f90013e0 	str	x0, [sp, #32]
   67d6c:	97ffd135 	bl	5c240 <operator delete(void*)@plt>
   67d70:	f9401fe0 	ldr	x0, [sp, #56]
   67d74:	b4fffe40 	cbz	x0, 67d3c <MiCluster::ImageCluster::cluster_face(std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&, std::__ndk1::vector<MiCluster::ImageStruct, std::__ndk1::allocator<MiCluster::ImageStruct> >&)+0x4bc>
   67d78:	97ffceae 	bl	5b830 <operator delete[](void*)@plt>
   67d7c:	aa1303e0 	mov	x0, x19
   67d80:	97ffd3ec 	bl	5cd30 <_Unwind_Resume@plt>

0000000000067d84 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)>:
   67d84:	f81c0ff7 	str	x23, [sp, #-64]!
   67d88:	a90157f6 	stp	x22, x21, [sp, #16]
   67d8c:	a9024ff4 	stp	x20, x19, [sp, #32]
   67d90:	a9037bfd 	stp	x29, x30, [sp, #48]
   67d94:	9100c3fd 	add	x29, sp, #0x30
   67d98:	39400009 	ldrb	w9, [x0]
   67d9c:	aa0803f3 	mov	x19, x8
   67da0:	370000a9 	tbnz	w9, #0, 67db4 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x30>
   67da4:	9100040a 	add	x10, x0, #0x1
   67da8:	d341fd28 	lsr	x8, x9, #1
   67dac:	b5000088 	cbnz	x8, 67dbc <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x38>
   67db0:	1400000e 	b	67de8 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x64>
   67db4:	a940a808 	ldp	x8, x10, [x0, #8]
   67db8:	b4000188 	cbz	x8, 67de8 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x64>
   67dbc:	b4000168 	cbz	x8, 67de8 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x64>
   67dc0:	8b08014b 	add	x11, x10, x8
   67dc4:	385ff16b 	ldurb	w11, [x11, #-1]
   67dc8:	d1000508 	sub	x8, x8, #0x1
   67dcc:	7100bd7f 	cmp	w11, #0x2f
   67dd0:	54ffff61 	b.ne	67dbc <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x38>  // b.any
   67dd4:	370000e9 	tbnz	w9, #0, 67df0 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x6c>
   67dd8:	f940040b 	ldr	x11, [x0, #8]
   67ddc:	d341fd2c 	lsr	x12, x9, #1
   67de0:	aa0c03ea 	mov	x10, x12
   67de4:	14000006 	b	67dfc <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x78>
   67de8:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
   67dec:	3607ff69 	tbz	w9, #0, 67dd8 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x54>
   67df0:	f940040b 	ldr	x11, [x0, #8]
   67df4:	d3417d2c 	ubfx	x12, x9, #1, #31
   67df8:	aa0b03ea 	mov	x10, x11
   67dfc:	b26003ed 	orr	x13, xzr, #0x100000000
   67e00:	7200013f 	tst	w9, #0x1
   67e04:	8b0881ad 	add	x13, x13, x8, lsl #32
   67e08:	9360fdb6 	asr	x22, x13, #32
   67e0c:	9a8b018b 	csel	x11, x12, x11, eq	// eq = none
   67e10:	eb16016b 	subs	x11, x11, x22
   67e14:	a9007e7f 	stp	xzr, xzr, [x19]
   67e18:	f9000a7f 	str	xzr, [x19, #16]
   67e1c:	54000463 	b.cc	67ea8 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x124>  // b.lo, b.ul, b.last
   67e20:	f940080c 	ldr	x12, [x0, #16]
   67e24:	2a2803e8 	mvn	w8, w8
   67e28:	0b080148 	add	w8, w10, w8
   67e2c:	7200013f 	tst	w9, #0x1
   67e30:	93407d08 	sxtw	x8, w8
   67e34:	9a801597 	csinc	x23, x12, x0, ne	// ne = any
   67e38:	eb08017f 	cmp	x11, x8
   67e3c:	9a883174 	csel	x20, x11, x8, cc	// cc = lo, ul, last
   67e40:	b100429f 	cmn	x20, #0x10
   67e44:	54000362 	b.cs	67eb0 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x12c>  // b.hs, b.nlast
   67e48:	f1005e9f 	cmp	x20, #0x17
   67e4c:	540000a2 	b.cs	67e60 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0xdc>  // b.hs, b.nlast
   67e50:	531f7a88 	lsl	w8, w20, #1
   67e54:	38001668 	strb	w8, [x19], #1
   67e58:	b5000154 	cbnz	x20, 67e80 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0xfc>
   67e5c:	1400000d 	b	67e90 <MiCluster::getName_1(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >)+0x10c>
   67e60:	91004288 	add	x8, x20, #0x10
   67e64:	927ced15 	and	x21, x8, #0xfffffffffffffff0
   67e68:	aa1503e0 	mov	x0, x21
   67e6c:	97ffceed 	bl	5ba20 <operator new(unsigned long)@plt>
   67e70:	b24002a8 	orr	x8, x21, #0x1
   67e74:	a9008274 	stp	x20, x0, [x19, #8]
   67e78:	f9000268 	str	x8, [x19]
   67e7c:	aa0003f3 	mov	x19, x0
   67e80:	8b1602e1 	add	x1, x23, x22
   67e84:	aa1303e0 	mov	x0, x19
   67e88:	aa1403e2 	mov	x2, x20
   67e8c:	97ffdbc1 	bl	5ed90 <memcpy@plt>
   67e90:	38346a7f 	strb	wzr, [x19, x20]
   67e94:	a9437bfd 	ldp	x29, x30, [sp, #48]
   67e98:	a9424ff4 	ldp	x20, x19, [sp, #32]
   67e9c:	a94157f6 	ldp	x22, x21, [sp, #16]
   67ea0:	f84407f7 	ldr	x23, [sp], #64
   67ea4:	d65f03c0 	ret
   67ea8:	aa1303e0 	mov	x0, x19
   67eac:	940011b1 	bl	6c570 <std::__ndk1::__basic_string_common<true>::__throw_out_of_range() const>
   67eb0:	aa1303e0 	mov	x0, x19
   67eb4:	97fff787 	bl	65cd0 <std::__ndk1::__basic_string_common<true>::__throw_length_error() const>
