
libs/libJNI_SimilarImgCluster.so:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000060b48 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)>:
   60b48:	d10343ff 	sub	sp, sp, #0xd0
   60b4c:	6d0623e9 	stp	d9, d8, [sp, #96]
   60b50:	a9076ffc 	stp	x28, x27, [sp, #112]
   60b54:	a90867fa 	stp	x26, x25, [sp, #128]
   60b58:	a9095ff8 	stp	x24, x23, [sp, #144]
   60b5c:	a90a57f6 	stp	x22, x21, [sp, #160]
   60b60:	a90b4ff4 	stp	x20, x19, [sp, #176]
   60b64:	a90c7bfd 	stp	x29, x30, [sp, #192]
   60b68:	910303fd 	add	x29, sp, #0xc0
   60b6c:	d53bd048 	mrs	x8, tpidr_el0
   60b70:	f90003e8 	str	x8, [sp]
   60b74:	f9401508 	ldr	x8, [x8, #40]
   60b78:	aa0003f7 	mov	x23, x0
   60b7c:	321d07e0 	orr	w0, wzr, #0x18
   60b80:	4ea01c08 	mov	v8.16b, v0.16b
   60b84:	aa0203f5 	mov	x21, x2
   60b88:	aa0103f4 	mov	x20, x1
   60b8c:	f9002fe8 	str	x8, [sp, #88]
   60b90:	97ffeba4 	bl	5ba20 <operator new(unsigned long)@plt>
   60b94:	b98002f6 	ldrsw	x22, [x23]
   60b98:	aa0003f3 	mov	x19, x0
   60b9c:	1b167ec8 	mul	w8, w22, w22
   60ba0:	b9000016 	str	w22, [x0]
   60ba4:	d37ef500 	lsl	x0, x8, #2
   60ba8:	97ffeece 	bl	5c6e0 <operator new[](unsigned long)@plt>
   60bac:	f9000660 	str	x0, [x19, #8]
   60bb0:	f94006e1 	ldr	x1, [x23, #8]
   60bb4:	9b167ec8 	mul	x8, x22, x22
   60bb8:	d37ef502 	lsl	x2, x8, #2
   60bbc:	97fff875 	bl	5ed90 <memcpy@plt>
   60bc0:	b94012e8 	ldr	w8, [x23, #16]
   60bc4:	b9001268 	str	w8, [x19, #16]
   60bc8:	b5000255 	cbnz	x21, 60c10 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0xc8>
   60bcc:	90002660 	adrp	x0, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   60bd0:	f944cc00 	ldr	x0, [x0, #2456]
   60bd4:	b0000981 	adrp	x1, 191000 <search_object+0x40>
   60bd8:	91284021 	add	x1, x1, #0xa10
   60bdc:	52800462 	mov	w2, #0x23                  	// #35
   60be0:	94000532 	bl	620a8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >& std::__ndk1::__put_character_sequence<char, std::__ndk1::char_traits<char> >(std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >&, char const*, unsigned long)>
   60be4:	b0000981 	adrp	x1, 191000 <search_object+0x40>
   60be8:	9128d021 	add	x1, x1, #0xa34
   60bec:	528005c2 	mov	w2, #0x2e                  	// #46
   60bf0:	9400052e 	bl	620a8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >& std::__ndk1::__put_character_sequence<char, std::__ndk1::char_traits<char> >(std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >&, char const*, unsigned long)>
   60bf4:	b0000981 	adrp	x1, 191000 <search_object+0x40>
   60bf8:	91298c21 	add	x1, x1, #0xa63
   60bfc:	528002a2 	mov	w2, #0x15                  	// #21
   60c00:	9400052a 	bl	620a8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >& std::__ndk1::__put_character_sequence<char, std::__ndk1::char_traits<char> >(std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >&, char const*, unsigned long)>
   60c04:	aa1f03e1 	mov	x1, xzr
   60c08:	94000253 	bl	61554 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)>
   60c0c:	b9800276 	ldrsw	x22, [x19]
   60c10:	a9402688 	ldp	x8, x9, [x20]
   60c14:	cb080129 	sub	x9, x9, x8
   60c18:	9343fd29 	asr	x9, x9, #3
   60c1c:	eb0902c1 	subs	x1, x22, x9
   60c20:	54003b09 	b.ls	61380 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x838>  // b.plast
   60c24:	aa1403e0 	mov	x0, x20
   60c28:	940005fc 	bl	62418 <std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >::__append(unsigned long)>
   60c2c:	b9800276 	ldrsw	x22, [x19]
   60c30:	a900ffff 	stp	xzr, xzr, [sp, #8]
   60c34:	f9000fff 	str	xzr, [sp, #24]
   60c38:	b5003b16 	cbnz	x22, 61398 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x850>
   60c3c:	aa1f03e9 	mov	x9, xzr
   60c40:	aa1f03ea 	mov	x10, xzr
   60c44:	aa1f03e8 	mov	x8, xzr
   60c48:	a940328b 	ldp	x11, x12, [x20]
   60c4c:	eb0b019f 	cmp	x12, x11
   60c50:	54003fe0 	b.eq	6144c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x904>  // b.none
   60c54:	b9400268 	ldr	w8, [x19]
   60c58:	91004278 	add	x24, x19, #0x10
   60c5c:	a9047fff 	stp	xzr, xzr, [sp, #64]
   60c60:	f9001fff 	str	xzr, [sp, #56]
   60c64:	7100051f 	cmp	w8, #0x1
   60c68:	5400068b 	b.lt	60d38 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x1f0>  // b.tstop
   60c6c:	aa1f03f6 	mov	x22, xzr
   60c70:	aa1603f7 	mov	x23, x22
   60c74:	910006d6 	add	x22, x22, #0x1
   60c78:	eb28c2df 	cmp	x22, w8, sxtw
   60c7c:	5400058a 	b.ge	60d2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x1e4>  // b.tcont
   60c80:	aa1603f9 	mov	x25, x22
   60c84:	37f80397 	tbnz	w23, #31, 60cf4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x1ac>
   60c88:	aa1603f9 	mov	x25, x22
   60c8c:	6b19011f 	cmp	w8, w25
   60c90:	5400012b 	b.lt	60cb4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x16c>  // b.tstop
   60c94:	37f80119 	tbnz	w25, #31, 60cb4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x16c>
   60c98:	6b17011f 	cmp	w8, w23
   60c9c:	aa1803e9 	mov	x9, x24
   60ca0:	540000cb 	b.lt	60cb8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x170>  // b.tstop
   60ca4:	f9400669 	ldr	x9, [x19, #8]
   60ca8:	1b0866e8 	madd	w8, w23, w8, w25
   60cac:	8b28c929 	add	x9, x9, w8, sxtw #2
   60cb0:	14000002 	b	60cb8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x170>
   60cb4:	aa1803e9 	mov	x9, x24
   60cb8:	bd400120 	ldr	s0, [x9]
   60cbc:	eb1902ff 	cmp	x23, x25
   60cc0:	9a9932e8 	csel	x8, x23, x25, cc	// cc = lo, ul, last
   60cc4:	9a973329 	csel	x9, x25, x23, cc	// cc = lo, ul, last
   60cc8:	1e22c000 	fcvt	d0, s0
   60ccc:	fd001be0 	str	d0, [sp, #48]
   60cd0:	a90227e8 	stp	x8, x9, [sp, #32]
   60cd4:	9100e3e0 	add	x0, sp, #0x38
   60cd8:	910083e1 	add	x1, sp, #0x20
   60cdc:	94000294 	bl	6172c <std::__ndk1::priority_queue<MiCluster::sample_pair, std::__ndk1::vector<MiCluster::sample_pair, std::__ndk1::allocator<MiCluster::sample_pair> >, MiCluster::compare_dist>::push(MiCluster::sample_pair&&)>
   60ce0:	b9800268 	ldrsw	x8, [x19]
   60ce4:	91000739 	add	x25, x25, #0x1
   60ce8:	eb08033f 	cmp	x25, x8
   60cec:	54fffd0b 	b.lt	60c8c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x144>  // b.tstop
   60cf0:	1400000f 	b	60d2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x1e4>
   60cf4:	bd400300 	ldr	s0, [x24]
   60cf8:	eb1902ff 	cmp	x23, x25
   60cfc:	9a9932e8 	csel	x8, x23, x25, cc	// cc = lo, ul, last
   60d00:	9a973329 	csel	x9, x25, x23, cc	// cc = lo, ul, last
   60d04:	1e22c000 	fcvt	d0, s0
   60d08:	fd001be0 	str	d0, [sp, #48]
   60d0c:	a90227e8 	stp	x8, x9, [sp, #32]
   60d10:	9100e3e0 	add	x0, sp, #0x38
   60d14:	910083e1 	add	x1, sp, #0x20
   60d18:	94000285 	bl	6172c <std::__ndk1::priority_queue<MiCluster::sample_pair, std::__ndk1::vector<MiCluster::sample_pair, std::__ndk1::allocator<MiCluster::sample_pair> >, MiCluster::compare_dist>::push(MiCluster::sample_pair&&)>
   60d1c:	b9800268 	ldrsw	x8, [x19]
   60d20:	91000739 	add	x25, x25, #0x1
   60d24:	eb08033f 	cmp	x25, x8
   60d28:	54fffe6b 	b.lt	60cf4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x1ac>  // b.tstop
   60d2c:	eb28c2df 	cmp	x22, w8, sxtw
   60d30:	54fffa0b 	b.lt	60c70 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x128>  // b.tstop
   60d34:	a940a7ea 	ldp	x10, x9, [sp, #8]
   60d38:	cb0a0128 	sub	x8, x9, x10
   60d3c:	eb8812bf 	cmp	x21, x8, asr #4
   60d40:	54001fa2 	b.cs	61134 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x5ec>  // b.hs, b.nlast
   60d44:	b201f3fa 	mov	x26, #0xaaaaaaaaaaaaaaaa    	// #-6148914691236517206
   60d48:	f295557a 	movk	x26, #0xaaab
   60d4c:	321d07fb 	orr	w27, wzr, #0x18
   60d50:	f9401fe8 	ldr	x8, [sp, #56]
   60d54:	fd400909 	ldr	d9, [x8, #16]
   60d58:	f9400101 	ldr	x1, [x8]
   60d5c:	910023e0 	add	x0, sp, #0x8
   60d60:	97fff900 	bl	5f160 <MiCluster::disjoint_subsets::find_set(unsigned long) const@plt>
   60d64:	f9401fe8 	ldr	x8, [sp, #56]
   60d68:	aa0003f6 	mov	x22, x0
   60d6c:	f9400501 	ldr	x1, [x8, #8]
   60d70:	910023e0 	add	x0, sp, #0x8
   60d74:	97fff8fb 	bl	5f160 <MiCluster::disjoint_subsets::find_set(unsigned long) const@plt>
   60d78:	a943abe8 	ldp	x8, x10, [sp, #56]
   60d7c:	aa0003f7 	mov	x23, x0
   60d80:	cb080149 	sub	x9, x10, x8
   60d84:	f100653f 	cmp	x9, #0x19
   60d88:	5400092b 	b.lt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>  // b.tstop
   60d8c:	f940090b 	ldr	x11, [x8, #16]
   60d90:	3dc00100 	ldr	q0, [x8]
   60d94:	f100c13f 	cmp	x9, #0x30
   60d98:	f9001beb 	str	x11, [sp, #48]
   60d9c:	3d800be0 	str	q0, [sp, #32]
   60da0:	f85f814b 	ldur	x11, [x10, #-8]
   60da4:	3cde8140 	ldur	q0, [x10, #-24]
   60da8:	f900090b 	str	x11, [x8, #16]
   60dac:	3d800100 	str	q0, [x8]
   60db0:	f9401beb 	ldr	x11, [sp, #48]
   60db4:	3dc00be0 	ldr	q0, [sp, #32]
   60db8:	f81f814b 	stur	x11, [x10, #-8]
   60dbc:	3c9e8140 	stur	q0, [x10, #-24]
   60dc0:	54000760 	b.eq	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>  // b.none
   60dc4:	9343fd29 	asr	x9, x9, #3
   60dc8:	9b1a7d2a 	mul	x10, x9, x26
   60dcc:	d1000d4b 	sub	x11, x10, #0x3
   60dd0:	d1000549 	sub	x9, x10, #0x1
   60dd4:	d100094a 	sub	x10, x10, #0x2
   60dd8:	f100017f 	cmp	x11, #0x0
   60ddc:	9a8bb14b 	csel	x11, x10, x11, lt	// lt = tstop
   60de0:	f1000d3f 	cmp	x9, #0x3
   60de4:	9100610a 	add	x10, x8, #0x18
   60de8:	5400018b 	b.lt	60e18 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x2d0>  // b.tstop
   60dec:	fd401500 	ldr	d0, [x8, #40]
   60df0:	fd402101 	ldr	d1, [x8, #64]
   60df4:	1e612000 	fcmp	d0, d1
   60df8:	5400010d 	b.le	60e18 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x2d0>
   60dfc:	9100c10a 	add	x10, x8, #0x30
   60e00:	321f03ed 	orr	w13, wzr, #0x2
   60e04:	fd400941 	ldr	d1, [x10, #16]
   60e08:	fd400900 	ldr	d0, [x8, #16]
   60e0c:	1e602020 	fcmp	d1, d0
   60e10:	540004ec 	b.gt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>
   60e14:	14000006 	b	60e2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x2e4>
   60e18:	320003ed 	orr	w13, wzr, #0x1
   60e1c:	fd400941 	ldr	d1, [x10, #16]
   60e20:	fd400900 	ldr	d0, [x8, #16]
   60e24:	1e602020 	fcmp	d1, d0
   60e28:	5400042c 	b.gt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>
   60e2c:	3dc00101 	ldr	q1, [x8]
   60e30:	9341fd6b 	asr	x11, x11, #1
   60e34:	aa0803ec 	mov	x12, x8
   60e38:	3d800be1 	str	q1, [sp, #32]
   60e3c:	aa0c03ee 	mov	x14, x12
   60e40:	aa0a03ec 	mov	x12, x10
   60e44:	f940094a 	ldr	x10, [x10, #16]
   60e48:	3dc00181 	ldr	q1, [x12]
   60e4c:	eb0d017f 	cmp	x11, x13
   60e50:	f90009ca 	str	x10, [x14, #16]
   60e54:	3d8001c1 	str	q1, [x14]
   60e58:	5400024b 	b.lt	60ea0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x358>  // b.tstop
   60e5c:	320003ee 	orr	w14, wzr, #0x1
   60e60:	b37ff9ae 	bfi	x14, x13, #1, #63
   60e64:	910005cd 	add	x13, x14, #0x1
   60e68:	eb0901bf 	cmp	x13, x9
   60e6c:	9b1b21ca 	madd	x10, x14, x27, x8
   60e70:	5400010a 	b.ge	60e90 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x348>  // b.tcont
   60e74:	9b1b21cf 	madd	x15, x14, x27, x8
   60e78:	fd4009e1 	ldr	d1, [x15, #16]
   60e7c:	fd401542 	ldr	d2, [x10, #40]
   60e80:	1e622020 	fcmp	d1, d2
   60e84:	5400006d 	b.le	60e90 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x348>
   60e88:	9100614a 	add	x10, x10, #0x18
   60e8c:	aa0d03ee 	mov	x14, x13
   60e90:	fd400941 	ldr	d1, [x10, #16]
   60e94:	aa0e03ed 	mov	x13, x14
   60e98:	1e602020 	fcmp	d1, d0
   60e9c:	54fffd0d 	b.le	60e3c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x2f4>
   60ea0:	3dc00be1 	ldr	q1, [sp, #32]
   60ea4:	fd000980 	str	d0, [x12, #16]
   60ea8:	3d800181 	str	q1, [x12]
   60eac:	f94023e8 	ldr	x8, [sp, #64]
   60eb0:	eb1702df 	cmp	x22, x23
   60eb4:	d1006108 	sub	x8, x8, #0x18
   60eb8:	f90023e8 	str	x8, [sp, #64]
   60ebc:	540004e0 	b.eq	60f58 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x410>  // b.none
   60ec0:	37f80b16 	tbnz	w22, #31, 61020 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x4d8>
   60ec4:	b9400269 	ldr	w9, [x19]
   60ec8:	6b17013f 	cmp	w9, w23
   60ecc:	54000c2b 	b.lt	61050 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x508>  // b.tstop
   60ed0:	37f80c17 	tbnz	w23, #31, 61050 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x508>
   60ed4:	6b16013f 	cmp	w9, w22
   60ed8:	aa1803e8 	mov	x8, x24
   60edc:	54000a4b 	b.lt	61024 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x4dc>  // b.tstop
   60ee0:	f9400668 	ldr	x8, [x19, #8]
   60ee4:	1b165d29 	madd	w9, w9, w22, w23
   60ee8:	8b29c908 	add	x8, x8, w9, sxtw #2
   60eec:	bd400100 	ldr	s0, [x8]
   60ef0:	1e22c000 	fcvt	d0, s0
   60ef4:	1e602120 	fcmp	d9, d0
   60ef8:	54000fe5 	b.pl	610f4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x5ac>  // b.nfrst
   60efc:	37f80196 	tbnz	w22, #31, 60f2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3e4>
   60f00:	b9400269 	ldr	w9, [x19]
   60f04:	6b17013f 	cmp	w9, w23
   60f08:	5400012b 	b.lt	60f2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3e4>  // b.tstop
   60f0c:	37f80117 	tbnz	w23, #31, 60f2c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3e4>
   60f10:	6b16013f 	cmp	w9, w22
   60f14:	aa1803e8 	mov	x8, x24
   60f18:	540000cb 	b.lt	60f30 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3e8>  // b.tstop
   60f1c:	f9400668 	ldr	x8, [x19, #8]
   60f20:	1b165d29 	madd	w9, w9, w22, w23
   60f24:	8b29c908 	add	x8, x8, w9, sxtw #2
   60f28:	14000002 	b	60f30 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3e8>
   60f2c:	aa1803e8 	mov	x8, x24
   60f30:	bd400100 	ldr	s0, [x8]
   60f34:	eb1702df 	cmp	x22, x23
   60f38:	9a9732c8 	csel	x8, x22, x23, cc	// cc = lo, ul, last
   60f3c:	9a9632e9 	csel	x9, x23, x22, cc	// cc = lo, ul, last
   60f40:	1e22c000 	fcvt	d0, s0
   60f44:	fd001be0 	str	d0, [sp, #48]
   60f48:	a90227e8 	stp	x8, x9, [sp, #32]
   60f4c:	9100e3e0 	add	x0, sp, #0x38
   60f50:	910083e1 	add	x1, sp, #0x20
   60f54:	940001f6 	bl	6172c <std::__ndk1::priority_queue<MiCluster::sample_pair, std::__ndk1::vector<MiCluster::sample_pair, std::__ndk1::allocator<MiCluster::sample_pair> >, MiCluster::compare_dist>::push(MiCluster::sample_pair&&)>
   60f58:	f9401fe8 	ldr	x8, [sp, #56]
   60f5c:	fd400909 	ldr	d9, [x8, #16]
   60f60:	f9400101 	ldr	x1, [x8]
   60f64:	910023e0 	add	x0, sp, #0x8
   60f68:	97fff87e 	bl	5f160 <MiCluster::disjoint_subsets::find_set(unsigned long) const@plt>
   60f6c:	f9401fe8 	ldr	x8, [sp, #56]
   60f70:	aa0003f6 	mov	x22, x0
   60f74:	f9400501 	ldr	x1, [x8, #8]
   60f78:	910023e0 	add	x0, sp, #0x8
   60f7c:	97fff879 	bl	5f160 <MiCluster::disjoint_subsets::find_set(unsigned long) const@plt>
   60f80:	a943abe8 	ldp	x8, x10, [sp, #56]
   60f84:	aa0003f7 	mov	x23, x0
   60f88:	cb080149 	sub	x9, x10, x8
   60f8c:	f100653f 	cmp	x9, #0x19
   60f90:	54fff8eb 	b.lt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>  // b.tstop
   60f94:	f940090b 	ldr	x11, [x8, #16]
   60f98:	3dc00100 	ldr	q0, [x8]
   60f9c:	f100c13f 	cmp	x9, #0x30
   60fa0:	f9001beb 	str	x11, [sp, #48]
   60fa4:	3d800be0 	str	q0, [sp, #32]
   60fa8:	f85f814b 	ldur	x11, [x10, #-8]
   60fac:	3cde8140 	ldur	q0, [x10, #-24]
   60fb0:	f900090b 	str	x11, [x8, #16]
   60fb4:	3d800100 	str	q0, [x8]
   60fb8:	f9401beb 	ldr	x11, [sp, #48]
   60fbc:	3dc00be0 	ldr	q0, [sp, #32]
   60fc0:	f81f814b 	stur	x11, [x10, #-8]
   60fc4:	3c9e8140 	stur	q0, [x10, #-24]
   60fc8:	54fff720 	b.eq	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>  // b.none
   60fcc:	9343fd29 	asr	x9, x9, #3
   60fd0:	9b1a7d2a 	mul	x10, x9, x26
   60fd4:	d1000d4b 	sub	x11, x10, #0x3
   60fd8:	d1000549 	sub	x9, x10, #0x1
   60fdc:	d100094a 	sub	x10, x10, #0x2
   60fe0:	f100017f 	cmp	x11, #0x0
   60fe4:	9a8bb14b 	csel	x11, x10, x11, lt	// lt = tstop
   60fe8:	f1000d3f 	cmp	x9, #0x3
   60fec:	9100610a 	add	x10, x8, #0x18
   60ff0:	5400024b 	b.lt	61038 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x4f0>  // b.tstop
   60ff4:	fd401500 	ldr	d0, [x8, #40]
   60ff8:	fd402101 	ldr	d1, [x8, #64]
   60ffc:	1e612000 	fcmp	d0, d1
   61000:	5400034d 	b.le	61068 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x520>
   61004:	9100c10a 	add	x10, x8, #0x30
   61008:	321f03ed 	orr	w13, wzr, #0x2
   6100c:	fd400941 	ldr	d1, [x10, #16]
   61010:	fd400900 	ldr	d0, [x8, #16]
   61014:	1e602020 	fcmp	d1, d0
   61018:	54fff4ac 	b.gt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>
   6101c:	14000018 	b	6107c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x534>
   61020:	aa1803e8 	mov	x8, x24
   61024:	bd400100 	ldr	s0, [x8]
   61028:	1e22c000 	fcvt	d0, s0
   6102c:	1e602120 	fcmp	d9, d0
   61030:	54fff664 	b.mi	60efc <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3b4>  // b.first
   61034:	14000030 	b	610f4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x5ac>
   61038:	320003ed 	orr	w13, wzr, #0x1
   6103c:	fd400941 	ldr	d1, [x10, #16]
   61040:	fd400900 	ldr	d0, [x8, #16]
   61044:	1e602020 	fcmp	d1, d0
   61048:	54fff32c 	b.gt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>
   6104c:	1400000c 	b	6107c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x534>
   61050:	aa1803e8 	mov	x8, x24
   61054:	bd400100 	ldr	s0, [x8]
   61058:	1e22c000 	fcvt	d0, s0
   6105c:	1e602120 	fcmp	d9, d0
   61060:	54fff4e4 	b.mi	60efc <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x3b4>  // b.first
   61064:	14000024 	b	610f4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x5ac>
   61068:	320003ed 	orr	w13, wzr, #0x1
   6106c:	fd400941 	ldr	d1, [x10, #16]
   61070:	fd400900 	ldr	d0, [x8, #16]
   61074:	1e602020 	fcmp	d1, d0
   61078:	54fff1ac 	b.gt	60eac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x364>
   6107c:	3dc00101 	ldr	q1, [x8]
   61080:	9341fd6b 	asr	x11, x11, #1
   61084:	aa0803ec 	mov	x12, x8
   61088:	3d800be1 	str	q1, [sp, #32]
   6108c:	aa0c03ee 	mov	x14, x12
   61090:	aa0a03ec 	mov	x12, x10
   61094:	f940094a 	ldr	x10, [x10, #16]
   61098:	3dc00181 	ldr	q1, [x12]
   6109c:	eb0d017f 	cmp	x11, x13
   610a0:	f90009ca 	str	x10, [x14, #16]
   610a4:	3d8001c1 	str	q1, [x14]
   610a8:	54ffefcb 	b.lt	60ea0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x358>  // b.tstop
   610ac:	320003ee 	orr	w14, wzr, #0x1
   610b0:	b37ff9ae 	bfi	x14, x13, #1, #63
   610b4:	910005cd 	add	x13, x14, #0x1
   610b8:	eb0901bf 	cmp	x13, x9
   610bc:	9b1b21ca 	madd	x10, x14, x27, x8
   610c0:	5400010a 	b.ge	610e0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x598>  // b.tcont
   610c4:	9b1b21cf 	madd	x15, x14, x27, x8
   610c8:	fd4009e1 	ldr	d1, [x15, #16]
   610cc:	fd401542 	ldr	d2, [x10, #40]
   610d0:	1e622020 	fcmp	d1, d2
   610d4:	5400006d 	b.le	610e0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x598>
   610d8:	9100614a 	add	x10, x10, #0x18
   610dc:	aa0d03ee 	mov	x14, x13
   610e0:	fd400941 	ldr	d1, [x10, #16]
   610e4:	aa0e03ed 	mov	x13, x14
   610e8:	1e602020 	fcmp	d1, d0
   610ec:	54fffd0d 	b.le	6108c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x544>
   610f0:	17ffff6c 	b	60ea0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x358>
   610f4:	1e682120 	fcmp	d9, d8
   610f8:	540001ec 	b.gt	61134 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x5ec>
   610fc:	910023e3 	add	x3, sp, #0x8
   61100:	aa1303e0 	mov	x0, x19
   61104:	aa1603e1 	mov	x1, x22
   61108:	aa1703e2 	mov	x2, x23
   6110c:	97ffee2d 	bl	5c9c0 <MiCluster::merge_sets_avglink(MiCluster::myMat&, unsigned long, unsigned long, MiCluster::disjoint_subsets&)@plt>
   61110:	910023e0 	add	x0, sp, #0x8
   61114:	aa1603e1 	mov	x1, x22
   61118:	aa1703e2 	mov	x2, x23
   6111c:	97ffee19 	bl	5c980 <MiCluster::disjoint_subsets::merge_sets(unsigned long, unsigned long)@plt>
   61120:	a940a3e9 	ldp	x9, x8, [sp, #8]
   61124:	910006b5 	add	x21, x21, #0x1
   61128:	cb090108 	sub	x8, x8, x9
   6112c:	eb8812bf 	cmp	x21, x8, asr #4
   61130:	54ffe103 	b.cc	60d50 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x208>  // b.lo, b.ul, b.last
   61134:	910083e8 	add	x8, sp, #0x20
   61138:	91002119 	add	x25, x8, #0x8
   6113c:	a902ffff 	stp	xzr, xzr, [sp, #40]
   61140:	f90013f9 	str	x25, [sp, #32]
   61144:	a9402688 	ldp	x8, x9, [x20]
   61148:	eb08013f 	cmp	x9, x8
   6114c:	54000fc0 	b.eq	61344 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x7fc>  // b.none
   61150:	aa1f03f5 	mov	x21, xzr
   61154:	910023e0 	add	x0, sp, #0x8
   61158:	aa1503e1 	mov	x1, x21
   6115c:	97fff801 	bl	5f160 <MiCluster::disjoint_subsets::find_set(unsigned long) const@plt>
   61160:	f94017fa 	ldr	x26, [sp, #40]
   61164:	aa0003f6 	mov	x22, x0
   61168:	aa1a03e8 	mov	x8, x26
   6116c:	b400049a 	cbz	x26, 611fc <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x6b4>
   61170:	f9401109 	ldr	x9, [x8, #32]
   61174:	eb0902df 	cmp	x22, x9
   61178:	54000083 	b.cc	61188 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x640>  // b.lo, b.ul, b.last
   6117c:	eb16013f 	cmp	x9, x22
   61180:	54000702 	b.cs	61260 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x718>  // b.hs, b.nlast
   61184:	91002108 	add	x8, x8, #0x8
   61188:	f9400108 	ldr	x8, [x8]
   6118c:	b5ffff28 	cbnz	x8, 61170 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x628>
   61190:	f9401bfb 	ldr	x27, [sp, #48]
   61194:	aa1a03f7 	mov	x23, x26
   61198:	aa1903fc 	mov	x28, x25
   6119c:	f94012e8 	ldr	x8, [x23, #32]
   611a0:	eb0802df 	cmp	x22, x8
   611a4:	54000203 	b.cc	611e4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x69c>  // b.lo, b.ul, b.last
   611a8:	eb16011f 	cmp	x8, x22
   611ac:	540002e2 	b.cs	61208 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x6c0>  // b.hs, b.nlast
   611b0:	aa1703fc 	mov	x28, x23
   611b4:	f8408f88 	ldr	x8, [x28, #8]!
   611b8:	b4000288 	cbz	x8, 61208 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x6c0>
   611bc:	aa0803f7 	mov	x23, x8
   611c0:	f94012e8 	ldr	x8, [x23, #32]
   611c4:	eb0802df 	cmp	x22, x8
   611c8:	54ffff02 	b.cs	611a8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x660>  // b.hs, b.nlast
   611cc:	14000006 	b	611e4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x69c>
   611d0:	aa1703fc 	mov	x28, x23
   611d4:	aa0803f7 	mov	x23, x8
   611d8:	f94012e8 	ldr	x8, [x23, #32]
   611dc:	eb0802df 	cmp	x22, x8
   611e0:	54fffe42 	b.cs	611a8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x660>  // b.hs, b.nlast
   611e4:	f94002e8 	ldr	x8, [x23]
   611e8:	b5ffff48 	cbnz	x8, 611d0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x688>
   611ec:	aa1703fc 	mov	x28, x23
   611f0:	f9400398 	ldr	x24, [x28]
   611f4:	b5000358 	cbnz	x24, 6125c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x714>
   611f8:	14000006 	b	61210 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x6c8>
   611fc:	f9401bfb 	ldr	x27, [sp, #48]
   61200:	aa1903f7 	mov	x23, x25
   61204:	aa1903fc 	mov	x28, x25
   61208:	f9400398 	ldr	x24, [x28]
   6120c:	b5000298 	cbnz	x24, 6125c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x714>
   61210:	321c07e0 	orr	w0, wzr, #0x30
   61214:	97ffea03 	bl	5ba20 <operator new(unsigned long)@plt>
   61218:	a9027c16 	stp	x22, xzr, [x0, #32]
   6121c:	a9007c1f 	stp	xzr, xzr, [x0]
   61220:	f9000817 	str	x23, [x0, #16]
   61224:	f9000380 	str	x0, [x28]
   61228:	f94013e8 	ldr	x8, [sp, #32]
   6122c:	aa0003f8 	mov	x24, x0
   61230:	f9400108 	ldr	x8, [x8]
   61234:	b4000088 	cbz	x8, 61244 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x6fc>
   61238:	f90013e8 	str	x8, [sp, #32]
   6123c:	f9400381 	ldr	x1, [x28]
   61240:	14000002 	b	61248 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x700>
   61244:	aa1803e1 	mov	x1, x24
   61248:	f94017e0 	ldr	x0, [sp, #40]
   6124c:	940004c0 	bl	6254c <void std::__ndk1::__tree_balance_after_insert<std::__ndk1::__tree_node_base<void*>*>(std::__ndk1::__tree_node_base<void*>*, std::__ndk1::__tree_node_base<void*>*)>
   61250:	a942a3fa 	ldp	x26, x8, [sp, #40]
   61254:	91000508 	add	x8, x8, #0x1
   61258:	f9001be8 	str	x8, [sp, #48]
   6125c:	f900171b 	str	x27, [x24, #40]
   61260:	b400035a 	cbz	x26, 612c8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x780>
   61264:	aa1903fb 	mov	x27, x25
   61268:	f9401348 	ldr	x8, [x26, #32]
   6126c:	eb0802df 	cmp	x22, x8
   61270:	54000203 	b.cc	612b0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x768>  // b.lo, b.ul, b.last
   61274:	eb16011f 	cmp	x8, x22
   61278:	540002c2 	b.cs	612d0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x788>  // b.hs, b.nlast
   6127c:	aa1a03fb 	mov	x27, x26
   61280:	f8408f68 	ldr	x8, [x27, #8]!
   61284:	b4000268 	cbz	x8, 612d0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x788>
   61288:	aa0803fa 	mov	x26, x8
   6128c:	f9401348 	ldr	x8, [x26, #32]
   61290:	eb0802df 	cmp	x22, x8
   61294:	54ffff02 	b.cs	61274 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x72c>  // b.hs, b.nlast
   61298:	14000006 	b	612b0 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x768>
   6129c:	aa1a03fb 	mov	x27, x26
   612a0:	aa0803fa 	mov	x26, x8
   612a4:	f9401348 	ldr	x8, [x26, #32]
   612a8:	eb0802df 	cmp	x22, x8
   612ac:	54fffe42 	b.cs	61274 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x72c>  // b.hs, b.nlast
   612b0:	f9400348 	ldr	x8, [x26]
   612b4:	b5ffff48 	cbnz	x8, 6129c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x754>
   612b8:	aa1a03fb 	mov	x27, x26
   612bc:	f9400378 	ldr	x24, [x27]
   612c0:	b5000338 	cbnz	x24, 61324 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x7dc>
   612c4:	14000005 	b	612d8 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x790>
   612c8:	aa1903fa 	mov	x26, x25
   612cc:	aa1903fb 	mov	x27, x25
   612d0:	f9400378 	ldr	x24, [x27]
   612d4:	b5000298 	cbnz	x24, 61324 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x7dc>
   612d8:	321c07e0 	orr	w0, wzr, #0x30
   612dc:	97ffe9d1 	bl	5ba20 <operator new(unsigned long)@plt>
   612e0:	a9027c16 	stp	x22, xzr, [x0, #32]
   612e4:	a9007c1f 	stp	xzr, xzr, [x0]
   612e8:	f900081a 	str	x26, [x0, #16]
   612ec:	f9000360 	str	x0, [x27]
   612f0:	f94013e8 	ldr	x8, [sp, #32]
   612f4:	aa0003f8 	mov	x24, x0
   612f8:	f9400108 	ldr	x8, [x8]
   612fc:	b4000088 	cbz	x8, 6130c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x7c4>
   61300:	f90013e8 	str	x8, [sp, #32]
   61304:	f9400361 	ldr	x1, [x27]
   61308:	14000002 	b	61310 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x7c8>
   6130c:	aa1803e1 	mov	x1, x24
   61310:	f94017e0 	ldr	x0, [sp, #40]
   61314:	9400048e 	bl	6254c <void std::__ndk1::__tree_balance_after_insert<std::__ndk1::__tree_node_base<void*>*>(std::__ndk1::__tree_node_base<void*>*, std::__ndk1::__tree_node_base<void*>*)>
   61318:	f9401be8 	ldr	x8, [sp, #48]
   6131c:	91000508 	add	x8, x8, #0x1
   61320:	f9001be8 	str	x8, [sp, #48]
   61324:	f9401708 	ldr	x8, [x24, #40]
   61328:	f9400289 	ldr	x9, [x20]
   6132c:	f8357928 	str	x8, [x9, x21, lsl #3]
   61330:	f9400688 	ldr	x8, [x20, #8]
   61334:	910006b5 	add	x21, x21, #0x1
   61338:	cb090108 	sub	x8, x8, x9
   6133c:	eb880ebf 	cmp	x21, x8, asr #3
   61340:	54fff0a3 	b.cc	61154 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x60c>  // b.lo, b.ul, b.last
   61344:	f9400660 	ldr	x0, [x19, #8]
   61348:	b4000040 	cbz	x0, 61350 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x808>
   6134c:	97ffe939 	bl	5b830 <operator delete[](void*)@plt>
   61350:	aa1303e0 	mov	x0, x19
   61354:	97ffebbb 	bl	5c240 <operator delete(void*)@plt>
   61358:	a942cfe1 	ldp	x1, x19, [sp, #40]
   6135c:	910083e0 	add	x0, sp, #0x20
   61360:	97ffeb68 	bl	5c100 <std::__ndk1::__tree<std::__ndk1::__value_type<unsigned long, unsigned long>, std::__ndk1::__map_value_compare<unsigned long, std::__ndk1::__value_type<unsigned long, unsigned long>, std::__ndk1::less<unsigned long>, true>, std::__ndk1::allocator<std::__ndk1::__value_type<unsigned long, unsigned long> > >::destroy(std::__ndk1::__tree_node<std::__ndk1::__value_type<unsigned long, unsigned long>, void*>*)@plt>
   61364:	f9401fe0 	ldr	x0, [sp, #56]
   61368:	b4000060 	cbz	x0, 61374 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x82c>
   6136c:	f90023e0 	str	x0, [sp, #64]
   61370:	97ffebb4 	bl	5c240 <operator delete(void*)@plt>
   61374:	f94007e8 	ldr	x8, [sp, #8]
   61378:	b50006e8 	cbnz	x8, 61454 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x90c>
   6137c:	14000039 	b	61460 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x918>
   61380:	54000062 	b.cs	6138c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x844>  // b.hs, b.nlast
   61384:	8b160d08 	add	x8, x8, x22, lsl #3
   61388:	f9000688 	str	x8, [x20, #8]
   6138c:	a900ffff 	stp	xzr, xzr, [sp, #8]
   61390:	f9000fff 	str	xzr, [sp, #24]
   61394:	b4ffc556 	cbz	x22, 60c3c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0xf4>
   61398:	910023e0 	add	x0, sp, #0x8
   6139c:	aa1603e1 	mov	x1, x22
   613a0:	97ffee2c 	bl	5cc50 <std::__ndk1::vector<MiCluster::disjoint_subsets::data, std::__ndk1::allocator<MiCluster::disjoint_subsets::data> >::__append(unsigned long)@plt>
   613a4:	a940a7ea 	ldp	x10, x9, [sp, #8]
   613a8:	eb0a0128 	subs	x8, x9, x10
   613ac:	54000480 	b.eq	6143c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x8f4>  // b.none
   613b0:	9344fd08 	asr	x8, x8, #4
   613b4:	f100051f 	cmp	x8, #0x1
   613b8:	9a9f850c 	csinc	x12, x8, xzr, hi	// hi = pmore
   613bc:	f100119f 	cmp	x12, #0x4
   613c0:	54000062 	b.cs	613cc <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x884>  // b.hs, b.nlast
   613c4:	aa1f03eb 	mov	x11, xzr
   613c8:	14000016 	b	61420 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x8d8>
   613cc:	9000098e 	adrp	x14, 191000 <search_object+0x40>
   613d0:	3dc281c1 	ldr	q1, [x14, #2560]
   613d4:	927ef58b 	and	x11, x12, #0xfffffffffffffffc
   613d8:	321f03ef 	orr	w15, wzr, #0x2
   613dc:	321e03ee 	orr	w14, wzr, #0x4
   613e0:	9100814d 	add	x13, x10, #0x20
   613e4:	4e080de2 	dup	v2.2d, x15
   613e8:	6f00e403 	movi	v3.2d, #0x0
   613ec:	4e080dc5 	dup	v5.2d, x14
   613f0:	aa0b03ee 	mov	x14, x11
   613f4:	4ee28424 	add	v4.2d, v1.2d, v2.2d
   613f8:	d10081af 	sub	x15, x13, #0x20
   613fc:	4ea31c60 	mov	v0.16b, v3.16b
   61400:	f10011ce 	subs	x14, x14, #0x4
   61404:	4c008de0 	st2	{v0.2d-v1.2d}, [x15]
   61408:	4c008da3 	st2	{v3.2d-v4.2d}, [x13]
   6140c:	4ee58421 	add	v1.2d, v1.2d, v5.2d
   61410:	910101ad 	add	x13, x13, #0x40
   61414:	54ffff01 	b.ne	613f4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x8ac>  // b.any
   61418:	eb0b019f 	cmp	x12, x11
   6141c:	54000100 	b.eq	6143c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x8f4>  // b.none
   61420:	8b0b114c 	add	x12, x10, x11, lsl #4
   61424:	9100218c 	add	x12, x12, #0x8
   61428:	a93fad9f 	stp	xzr, x11, [x12, #-8]
   6142c:	9100056b 	add	x11, x11, #0x1
   61430:	eb08017f 	cmp	x11, x8
   61434:	9100418c 	add	x12, x12, #0x10
   61438:	54ffff83 	b.cc	61428 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x8e0>  // b.lo, b.ul, b.last
   6143c:	aa0a03e8 	mov	x8, x10
   61440:	a940328b 	ldp	x11, x12, [x20]
   61444:	eb0b019f 	cmp	x12, x11
   61448:	54ffc061 	b.ne	60c54 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x10c>  // b.any
   6144c:	aa1f03f3 	mov	x19, xzr
   61450:	b4000088 	cbz	x8, 61460 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x918>
   61454:	aa0803e0 	mov	x0, x8
   61458:	f9000be8 	str	x8, [sp, #16]
   6145c:	97ffeb79 	bl	5c240 <operator delete(void*)@plt>
   61460:	f94003e8 	ldr	x8, [sp]
   61464:	f9401508 	ldr	x8, [x8, #40]
   61468:	f9402fe9 	ldr	x9, [sp, #88]
   6146c:	eb09011f 	cmp	x8, x9
   61470:	54000161 	b.ne	6149c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x954>  // b.any
   61474:	aa1303e0 	mov	x0, x19
   61478:	a94c7bfd 	ldp	x29, x30, [sp, #192]
   6147c:	a94b4ff4 	ldp	x20, x19, [sp, #176]
   61480:	a94a57f6 	ldp	x22, x21, [sp, #160]
   61484:	a9495ff8 	ldp	x24, x23, [sp, #144]
   61488:	a94867fa 	ldp	x26, x25, [sp, #128]
   6148c:	a9476ffc 	ldp	x28, x27, [sp, #112]
   61490:	6d4623e9 	ldp	d9, d8, [sp, #96]
   61494:	910343ff 	add	sp, sp, #0xd0
   61498:	d65f03c0 	ret
   6149c:	97ffea49 	bl	5bdc0 <__stack_chk_fail@plt>
   614a0:	aa0003f3 	mov	x19, x0
   614a4:	f94007e0 	ldr	x0, [sp, #8]
   614a8:	b4000520 	cbz	x0, 6154c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0xa04>
   614ac:	f9000be0 	str	x0, [sp, #16]
   614b0:	97ffeb64 	bl	5c240 <operator delete(void*)@plt>
   614b4:	aa1303e0 	mov	x0, x19
   614b8:	97ffee1e 	bl	5cd30 <_Unwind_Resume@plt>
   614bc:	14000006 	b	614d4 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x98c>
   614c0:	aa0003f3 	mov	x19, x0
   614c4:	f9401fe0 	ldr	x0, [sp, #56]
   614c8:	b50003a0 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   614cc:	1400001e 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   614d0:	f94017fa 	ldr	x26, [sp, #40]
   614d4:	aa0003f3 	mov	x19, x0
   614d8:	910083e0 	add	x0, sp, #0x20
   614dc:	aa1a03e1 	mov	x1, x26
   614e0:	97ffeb08 	bl	5c100 <std::__ndk1::__tree<std::__ndk1::__value_type<unsigned long, unsigned long>, std::__ndk1::__map_value_compare<unsigned long, std::__ndk1::__value_type<unsigned long, unsigned long>, std::__ndk1::less<unsigned long>, true>, std::__ndk1::allocator<std::__ndk1::__value_type<unsigned long, unsigned long> > >::destroy(std::__ndk1::__tree_node<std::__ndk1::__value_type<unsigned long, unsigned long>, void*>*)@plt>
   614e4:	f9401fe0 	ldr	x0, [sp, #56]
   614e8:	b50002a0 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   614ec:	14000016 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   614f0:	aa0003f3 	mov	x19, x0
   614f4:	f9401fe0 	ldr	x0, [sp, #56]
   614f8:	b5000220 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   614fc:	14000012 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   61500:	aa0003f3 	mov	x19, x0
   61504:	f9401fe0 	ldr	x0, [sp, #56]
   61508:	b50001a0 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   6150c:	1400000e 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   61510:	aa0003f3 	mov	x19, x0
   61514:	f9401fe0 	ldr	x0, [sp, #56]
   61518:	b5000120 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   6151c:	1400000a 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   61520:	aa0003f3 	mov	x19, x0
   61524:	f9401fe0 	ldr	x0, [sp, #56]
   61528:	b50000a0 	cbnz	x0, 6153c <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9f4>
   6152c:	14000006 	b	61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   61530:	aa0003f3 	mov	x19, x0
   61534:	f9401fe0 	ldr	x0, [sp, #56]
   61538:	b4000060 	cbz	x0, 61544 <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x9fc>
   6153c:	f90023e0 	str	x0, [sp, #64]
   61540:	97ffeb40 	bl	5c240 <operator delete(void*)@plt>
   61544:	f94007e0 	ldr	x0, [sp, #8]
   61548:	b5fffb20 	cbnz	x0, 614ac <MiCluster::bottom_up_cluster(MiCluster::myMat&, std::__ndk1::vector<unsigned long, std::__ndk1::allocator<unsigned long> >&, unsigned long, double)+0x964>
   6154c:	aa1303e0 	mov	x0, x19
   61550:	97ffedf8 	bl	5cd30 <_Unwind_Resume@plt>

0000000000061554 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)>:
   61554:	d101c3ff 	sub	sp, sp, #0x70
   61558:	f90013f9 	str	x25, [sp, #32]
   6155c:	a9035ff8 	stp	x24, x23, [sp, #48]
   61560:	a90457f6 	stp	x22, x21, [sp, #64]
   61564:	a9054ff4 	stp	x20, x19, [sp, #80]
   61568:	a9067bfd 	stp	x29, x30, [sp, #96]
   6156c:	910183fd 	add	x29, sp, #0x60
   61570:	d53bd059 	mrs	x25, tpidr_el0
   61574:	f9401728 	ldr	x8, [x25, #40]
   61578:	aa0003f3 	mov	x19, x0
   6157c:	f9000fe8 	str	x8, [sp, #24]
   61580:	390003ff 	strb	wzr, [sp]
   61584:	f90007e0 	str	x0, [sp, #8]
   61588:	f9400008 	ldr	x8, [x0]
   6158c:	f85e8d09 	ldr	x9, [x8, #-24]!
   61590:	8b090009 	add	x9, x0, x9
   61594:	b940212a 	ldr	w10, [x9, #32]
   61598:	3500074a 	cbnz	w10, 61680 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x12c>
   6159c:	f9404520 	ldr	x0, [x9, #136]
   615a0:	aa0103f4 	mov	x20, x1
   615a4:	b4000080 	cbz	x0, 615b4 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x60>
   615a8:	940001f6 	bl	61d80 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::flush()>
   615ac:	f9400268 	ldr	x8, [x19]
   615b0:	d1006108 	sub	x8, x8, #0x18
   615b4:	320003e9 	orr	w9, wzr, #0x1
   615b8:	390003e9 	strb	w9, [sp]
   615bc:	f9400108 	ldr	x8, [x8]
   615c0:	8b080260 	add	x0, x19, x8
   615c4:	910043e8 	add	x8, sp, #0x10
   615c8:	97ffed2e 	bl	5ca80 <std::__ndk1::ios_base::getloc() const@plt>
   615cc:	f0002641 	adrp	x1, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   615d0:	f9469c21 	ldr	x1, [x1, #3384]
   615d4:	910043e0 	add	x0, sp, #0x10
   615d8:	97ffeb2e 	bl	5c290 <std::__ndk1::locale::use_facet(std::__ndk1::locale::id&) const@plt>
   615dc:	aa0003f5 	mov	x21, x0
   615e0:	910043e0 	add	x0, sp, #0x10
   615e4:	97fff2d7 	bl	5e140 <std::__ndk1::locale::~locale()@plt>
   615e8:	f9400268 	ldr	x8, [x19]
   615ec:	f85e8108 	ldur	x8, [x8, #-24]
   615f0:	8b080276 	add	x22, x19, x8
   615f4:	b94092c3 	ldr	w3, [x22, #144]
   615f8:	f94016d7 	ldr	x23, [x22, #40]
   615fc:	3100047f 	cmn	w3, #0x1
   61600:	54000221 	b.ne	61644 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0xf0>  // b.any
   61604:	910043e8 	add	x8, sp, #0x10
   61608:	aa1603e0 	mov	x0, x22
   6160c:	97ffed1d 	bl	5ca80 <std::__ndk1::ios_base::getloc() const@plt>
   61610:	f0002641 	adrp	x1, 52c000 <MiCluster::ClusterInterface::doCluster(std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >&, std::__ndk1::vector<std::__ndk1::vector<float, std::__ndk1::allocator<float> >, std::__ndk1::allocator<std::__ndk1::vector<float, std::__ndk1::allocator<float> > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&, std::__ndk1::vector<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > >, std::__ndk1::allocator<std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > > > > >&)@@Base+0x4c9754>
   61614:	f9471021 	ldr	x1, [x1, #3616]
   61618:	910043e0 	add	x0, sp, #0x10
   6161c:	97ffeb1d 	bl	5c290 <std::__ndk1::locale::use_facet(std::__ndk1::locale::id&) const@plt>
   61620:	f9400008 	ldr	x8, [x0]
   61624:	f9401d08 	ldr	x8, [x8, #56]
   61628:	321b03e1 	orr	w1, wzr, #0x20
   6162c:	d63f0100 	blr	x8
   61630:	2a0003f8 	mov	w24, w0
   61634:	910043e0 	add	x0, sp, #0x10
   61638:	97fff2c2 	bl	5e140 <std::__ndk1::locale::~locale()@plt>
   6163c:	12001f03 	and	w3, w24, #0xff
   61640:	b90092c3 	str	w3, [x22, #144]
   61644:	f94002a8 	ldr	x8, [x21]
   61648:	f9401908 	ldr	x8, [x8, #48]
   6164c:	aa1503e0 	mov	x0, x21
   61650:	aa1703e1 	mov	x1, x23
   61654:	aa1603e2 	mov	x2, x22
   61658:	aa1403e4 	mov	x4, x20
   6165c:	d63f0100 	blr	x8
   61660:	b5000100 	cbnz	x0, 61680 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x12c>
   61664:	f9400268 	ldr	x8, [x19]
   61668:	528000a9 	mov	w9, #0x5                   	// #5
   6166c:	f85e8108 	ldur	x8, [x8, #-24]
   61670:	8b080260 	add	x0, x19, x8
   61674:	b9402008 	ldr	w8, [x0, #32]
   61678:	2a090101 	orr	w1, w8, w9
   6167c:	97fff455 	bl	5e7d0 <std::__ndk1::ios_base::clear(unsigned int)@plt>
   61680:	910003e0 	mov	x0, sp
   61684:	94000194 	bl	61cd4 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::sentry::~sentry()>
   61688:	f9401728 	ldr	x8, [x25, #40]
   6168c:	f9400fe9 	ldr	x9, [sp, #24]
   61690:	eb09011f 	cmp	x8, x9
   61694:	54000401 	b.ne	61714 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x1c0>  // b.any
   61698:	aa1303e0 	mov	x0, x19
   6169c:	a9467bfd 	ldp	x29, x30, [sp, #96]
   616a0:	a9454ff4 	ldp	x20, x19, [sp, #80]
   616a4:	a94457f6 	ldp	x22, x21, [sp, #64]
   616a8:	a9435ff8 	ldp	x24, x23, [sp, #48]
   616ac:	f94013f9 	ldr	x25, [sp, #32]
   616b0:	9101c3ff 	add	sp, sp, #0x70
   616b4:	d65f03c0 	ret
   616b8:	14000009 	b	616dc <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x188>
   616bc:	aa0003f4 	mov	x20, x0
   616c0:	1400000a 	b	616e8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x194>
   616c4:	14000001 	b	616c8 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x174>
   616c8:	aa0003f4 	mov	x20, x0
   616cc:	910043e0 	add	x0, sp, #0x10
   616d0:	97fff29c 	bl	5e140 <std::__ndk1::locale::~locale()@plt>
   616d4:	14000003 	b	616e0 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x18c>
   616d8:	14000001 	b	616dc <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x188>
   616dc:	aa0003f4 	mov	x20, x0
   616e0:	910003e0 	mov	x0, sp
   616e4:	9400017c 	bl	61cd4 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::sentry::~sentry()>
   616e8:	aa1403e0 	mov	x0, x20
   616ec:	97ffe7d1 	bl	5b630 <__cxa_begin_catch@plt>
   616f0:	f9400268 	ldr	x8, [x19]
   616f4:	f85e8108 	ldur	x8, [x8, #-24]
   616f8:	8b080260 	add	x0, x19, x8
   616fc:	97fff4bd 	bl	5e9f0 <std::__ndk1::ios_base::__set_badbit_and_consider_rethrow()@plt>
   61700:	97fff130 	bl	5dbc0 <__cxa_end_catch@plt>
   61704:	f9401728 	ldr	x8, [x25, #40]
   61708:	f9400fe9 	ldr	x9, [sp, #24]
   6170c:	eb09011f 	cmp	x8, x9
   61710:	54fffc40 	b.eq	61698 <std::__ndk1::basic_ostream<char, std::__ndk1::char_traits<char> >::operator<<(unsigned long)+0x144>  // b.none
   61714:	97ffe9ab 	bl	5bdc0 <__stack_chk_fail@plt>
   61718:	aa0003f3 	mov	x19, x0
   6171c:	97fff129 	bl	5dbc0 <__cxa_end_catch@plt>
   61720:	aa1303e0 	mov	x0, x19
   61724:	97ffed83 	bl	5cd30 <_Unwind_Resume@plt>
   61728:	94000193 	bl	61d74 <__clang_call_terminate>
