
rtic_bare7d:	file format elf32-littlearm

Disassembly of section .text:

00000100 <__stext>:
     100: f002 f953    	bl	0x23aa <rtt_init_must_not_be_called_multiple_times> @ imm = #0x22a6
     104: 480e         	ldr	r0, [pc, #0x38]         @ 0x140 <__stext+0x40>
     106: 490f         	ldr	r1, [pc, #0x3c]         @ 0x144 <__stext+0x44>
     108: 2200         	movs	r2, #0x0
     10a: 4281         	cmp	r1, r0
     10c: d001         	beq	0x112 <__stext+0x12>    @ imm = #0x2
     10e: c004         	stm	r0!, {r2}
     110: e7fb         	b	0x10a <__stext+0xa>     @ imm = #-0xa
     112: 480d         	ldr	r0, [pc, #0x34]         @ 0x148 <__stext+0x48>
     114: 490d         	ldr	r1, [pc, #0x34]         @ 0x14c <__stext+0x4c>
     116: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x150 <__stext+0x50>
     118: 4281         	cmp	r1, r0
     11a: d002         	beq	0x122 <__stext+0x22>    @ imm = #0x4
     11c: ca08         	ldm	r2!, {r3}
     11e: c008         	stm	r0!, {r3}
     120: e7fa         	b	0x118 <__stext+0x18>    @ imm = #-0xc
     122: 480c         	ldr	r0, [pc, #0x30]         @ 0x154 <__stext+0x54>
     124: f44f 0170    	mov.w	r1, #0xf00000
     128: 6802         	ldr	r2, [r0]
     12a: ea42 0201    	orr.w	r2, r2, r1
     12e: 6002         	str	r2, [r0]
     130: f3bf 8f4f    	dsb	sy
     134: f3bf 8f6f    	isb	sy
     138: f001 f80a    	bl	0x1150 <main>           @ imm = #0x1014
     13c: de00         	udf	#0x0
     13e: 0000         	movs	r0, r0
     140: 20 00 00 20  	.word	0x20000020
     144: 90 04 00 20  	.word	0x20000490
     148: 00 00 00 20  	.word	0x20000000
     14c: 20 00 00 20  	.word	0x20000020
     150: f0 35 00 00  	.word	0x000035f0
     154: 88 ed 00 e0  	.word	0xe000ed88

00000158 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20>:
     158: b5f0         	push	{r4, r5, r6, r7, lr}
     15a: af03         	add	r7, sp, #0xc
     15c: e92d 0f00    	push.w	{r8, r9, r10, r11}
     160: b0a3         	sub	sp, #0x8c
     162: 4689         	mov	r9, r1
     164: 6949         	ldr	r1, [r1, #0x14]
     166: 06ca         	lsls	r2, r1, #0x1b
     168: d455         	bmi	0x216 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0xbe> @ imm = #0xaa
     16a: 0689         	lsls	r1, r1, #0x1a
     16c: f100 80a6    	bmi.w	0x2bc <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x164> @ imm = #0x14c
     170: e9d0 5600    	ldrd	r5, r6, [r0]
     174: f242 7010    	movw	r0, #0x2710
     178: f243 38ad    	movw	r8, #0x33ad
     17c: f64f 7c9c    	movw	r12, #0xff9c
     180: 1a28         	subs	r0, r5, r0
     182: f2c0 0800    	movt	r8, #0x0
     186: f176 0000    	sbcs	r0, r6, #0x0
     18a: f0c0 8106    	blo.w	0x39a <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x242> @ imm = #0x20c
     18e: f24e 0aff    	movw	r10, #0xe0ff
     192: f8cd 9008    	str.w	r9, [sp, #0x8]
     196: f10d 090c    	add.w	r9, sp, #0xc
     19a: f2c0 5af5    	movt	r10, #0x5f5
     19e: 2200         	movs	r2, #0x0
     1a0: 4693         	mov	r11, r2
     1a2: 4628         	mov	r0, r5
     1a4: 4631         	mov	r1, r6
     1a6: f242 7210    	movw	r2, #0x2710
     1aa: 2300         	movs	r3, #0x0
     1ac: f002 fd82    	bl	0x2cb4 <__aeabi_uldivmod> @ imm = #0x2b04
     1b0: f64d 02f0    	movw	r2, #0xd8f0
     1b4: f241 447b    	movw	r4, #0x147b
     1b8: fb00 5202    	mla	r2, r0, r2, r5
     1bc: f64f 7c9c    	movw	r12, #0xff9c
     1c0: b293         	uxth	r3, r2
     1c2: 089b         	lsrs	r3, r3, #0x2
     1c4: 4363         	muls	r3, r4, r3
     1c6: eb09 040b    	add.w	r4, r9, r11
     1ca: 0c5b         	lsrs	r3, r3, #0x11
     1cc: fb03 220c    	mla	r2, r3, r12, r2
     1d0: f838 3013    	ldrh.w	r3, [r8, r3, lsl #1]
     1d4: 8223         	strh	r3, [r4, #0x10]
     1d6: ebba 0305    	subs.w	r3, r10, r5
     1da: f04f 0300    	mov.w	r3, #0x0
     1de: 4605         	mov	r5, r0
     1e0: 41b3         	sbcs	r3, r6
     1e2: 460e         	mov	r6, r1
     1e4: b292         	uxth	r2, r2
     1e6: f838 2012    	ldrh.w	r2, [r8, r2, lsl #1]
     1ea: 8262         	strh	r2, [r4, #0x12]
     1ec: f1ab 0204    	sub.w	r2, r11, #0x4
     1f0: d3d6         	blo	0x1a0 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x48> @ imm = #-0x54
     1f2: f8dd 9008    	ldr.w	r9, [sp, #0x8]
     1f6: f10b 0110    	add.w	r1, r11, #0x10
     1fa: 4605         	mov	r5, r0
     1fc: 2d63         	cmp	r5, #0x63
     1fe: f200 80d0    	bhi.w	0x3a2 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x24a> @ imm = #0x1a0
     202: 4628         	mov	r0, r5
     204: 280a         	cmp	r0, #0xa
     206: f0c0 80dd    	blo.w	0x3c4 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x26c> @ imm = #0x1ba
     20a: 3902         	subs	r1, #0x2
     20c: f838 0010    	ldrh.w	r0, [r8, r0, lsl #1]
     210: aa03         	add	r2, sp, #0xc
     212: 5250         	strh	r0, [r2, r1]
     214: e0db         	b	0x3ce <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x276> @ imm = #0x1b6
     216: e9d0 3200    	ldrd	r3, r2, [r0]
     21a: f10d 0c0c    	add.w	r12, sp, #0xc
     21e: 2580         	movs	r5, #0x80
     220: 2181         	movs	r1, #0x81
     222: f04f 0e57    	mov.w	lr, #0x57
     226: f003 000f    	and	r0, r3, #0xf
     22a: 46a8         	mov	r8, r5
     22c: f100 0657    	add.w	r6, r0, #0x57
     230: 280a         	cmp	r0, #0xa
     232: bf38         	it	lo
     234: f100 0630    	addlo.w	r6, r0, #0x30
     238: f1b3 0010    	subs.w	r0, r3, #0x10
     23c: eb0c 0501    	add.w	r5, r12, r1
     240: f172 0000    	sbcs	r0, r2, #0x0
     244: f805 6c02    	strb	r6, [r5, #-2]
     248: f0c0 808c    	blo.w	0x364 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x20c> @ imm = #0x118
     24c: b2d8         	uxtb	r0, r3
     24e: 28a0         	cmp	r0, #0xa0
     250: eb0e 1610    	add.w	r6, lr, r0, lsr #4
     254: ea4f 1410    	lsr.w	r4, r0, #0x4
     258: ea4f 2013    	lsr.w	r0, r3, #0x8
     25c: bf38         	it	lo
     25e: f104 0630    	addlo.w	r6, r4, #0x30
     262: ea40 6002    	orr.w	r0, r0, r2, lsl #24
     266: f805 6c03    	strb	r6, [r5, #-3]
     26a: ea50 2412    	orrs.w	r4, r0, r2, lsr #8
     26e: d07c         	beq	0x36a <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x212> @ imm = #0xf8
     270: f000 000f    	and	r0, r0, #0xf
     274: 3904         	subs	r1, #0x4
     276: f100 0457    	add.w	r4, r0, #0x57
     27a: 280a         	cmp	r0, #0xa
     27c: bf38         	it	lo
     27e: f100 0430    	addlo.w	r4, r0, #0x30
     282: 0b18         	lsrs	r0, r3, #0xc
     284: ea40 5002    	orr.w	r0, r0, r2, lsl #20
     288: f805 4c04    	strb	r4, [r5, #-4]
     28c: ea50 3412    	orrs.w	r4, r0, r2, lsr #12
     290: d06f         	beq	0x372 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x21a> @ imm = #0xde
     292: f000 000f    	and	r0, r0, #0xf
     296: f100 0457    	add.w	r4, r0, #0x57
     29a: 280a         	cmp	r0, #0xa
     29c: bf38         	it	lo
     29e: f100 0430    	addlo.w	r4, r0, #0x30
     2a2: 0c18         	lsrs	r0, r3, #0x10
     2a4: ea40 4302    	orr.w	r3, r0, r2, lsl #16
     2a8: f805 4c05    	strb	r4, [r5, #-5]
     2ac: f1a8 0504    	sub.w	r5, r8, #0x4
     2b0: ea53 4012    	orrs.w	r0, r3, r2, lsr #16
     2b4: ea4f 4212    	lsr.w	r2, r2, #0x10
     2b8: d1b5         	bne	0x226 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0xce> @ imm = #-0x96
     2ba: e050         	b	0x35e <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x206> @ imm = #0xa0
     2bc: e9d0 3200    	ldrd	r3, r2, [r0]
     2c0: f10d 0c0c    	add.w	r12, sp, #0xc
     2c4: 2580         	movs	r5, #0x80
     2c6: 2181         	movs	r1, #0x81
     2c8: f04f 0e37    	mov.w	lr, #0x37
     2cc: f003 000f    	and	r0, r3, #0xf
     2d0: 46a8         	mov	r8, r5
     2d2: f100 0637    	add.w	r6, r0, #0x37
     2d6: 280a         	cmp	r0, #0xa
     2d8: bf38         	it	lo
     2da: f100 0630    	addlo.w	r6, r0, #0x30
     2de: f1b3 0010    	subs.w	r0, r3, #0x10
     2e2: eb0c 0501    	add.w	r5, r12, r1
     2e6: f172 0000    	sbcs	r0, r2, #0x0
     2ea: f805 6c02    	strb	r6, [r5, #-2]
     2ee: d339         	blo	0x364 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x20c> @ imm = #0x72
     2f0: b2d8         	uxtb	r0, r3
     2f2: 28a0         	cmp	r0, #0xa0
     2f4: eb0e 1610    	add.w	r6, lr, r0, lsr #4
     2f8: ea4f 1410    	lsr.w	r4, r0, #0x4
     2fc: ea4f 2013    	lsr.w	r0, r3, #0x8
     300: bf38         	it	lo
     302: f104 0630    	addlo.w	r6, r4, #0x30
     306: ea40 6002    	orr.w	r0, r0, r2, lsl #24
     30a: f805 6c03    	strb	r6, [r5, #-3]
     30e: ea50 2412    	orrs.w	r4, r0, r2, lsr #8
     312: d02a         	beq	0x36a <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x212> @ imm = #0x54
     314: f000 000f    	and	r0, r0, #0xf
     318: 3904         	subs	r1, #0x4
     31a: f100 0437    	add.w	r4, r0, #0x37
     31e: 280a         	cmp	r0, #0xa
     320: bf38         	it	lo
     322: f100 0430    	addlo.w	r4, r0, #0x30
     326: 0b18         	lsrs	r0, r3, #0xc
     328: ea40 5002    	orr.w	r0, r0, r2, lsl #20
     32c: f805 4c04    	strb	r4, [r5, #-4]
     330: ea50 3412    	orrs.w	r4, r0, r2, lsr #12
     334: d01d         	beq	0x372 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x21a> @ imm = #0x3a
     336: f000 000f    	and	r0, r0, #0xf
     33a: f100 0437    	add.w	r4, r0, #0x37
     33e: 280a         	cmp	r0, #0xa
     340: bf38         	it	lo
     342: f100 0430    	addlo.w	r4, r0, #0x30
     346: 0c18         	lsrs	r0, r3, #0x10
     348: ea40 4302    	orr.w	r3, r0, r2, lsl #16
     34c: f805 4c05    	strb	r4, [r5, #-5]
     350: f1a8 0504    	sub.w	r5, r8, #0x4
     354: ea53 4012    	orrs.w	r0, r3, r2, lsr #16
     358: ea4f 4212    	lsr.w	r2, r2, #0x10
     35c: d1b6         	bne	0x2cc <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x174> @ imm = #-0x94
     35e: f1a8 0203    	sub.w	r2, r8, #0x3
     362: e009         	b	0x378 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x220> @ imm = #0x12
     364: 1e8d         	subs	r5, r1, #0x2
     366: 1e4a         	subs	r2, r1, #0x1
     368: e006         	b	0x378 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x220> @ imm = #0xc
     36a: f1a8 0201    	sub.w	r2, r8, #0x1
     36e: 1ecd         	subs	r5, r1, #0x3
     370: e002         	b	0x378 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0x220> @ imm = #0x4
     372: f1a8 0202    	sub.w	r2, r8, #0x2
     376: 460d         	mov	r5, r1
     378: f1c2 0081    	rsb.w	r0, r2, #0x81
     37c: f243 31ab    	movw	r1, #0x33ab
     380: eb0c 0305    	add.w	r3, r12, r5
     384: 9000         	str	r0, [sp]
     386: f2c0 0100    	movt	r1, #0x0
     38a: 4648         	mov	r0, r9
     38c: 2202         	movs	r2, #0x2
     38e: f001 f846    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #0x108c
     392: b023         	add	sp, #0x8c
     394: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     398: bdf0         	pop	{r4, r5, r6, r7, pc}
     39a: 2114         	movs	r1, #0x14
     39c: 2d63         	cmp	r5, #0x63
     39e: f67f af30    	bls.w	0x202 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0xaa> @ imm = #-0x1a0
     3a2: b2a8         	uxth	r0, r5
     3a4: f241 427b    	movw	r2, #0x147b
     3a8: 0880         	lsrs	r0, r0, #0x2
     3aa: 3902         	subs	r1, #0x2
     3ac: 4350         	muls	r0, r2, r0
     3ae: ab03         	add	r3, sp, #0xc
     3b0: 0c40         	lsrs	r0, r0, #0x11
     3b2: fb00 520c    	mla	r2, r0, r12, r5
     3b6: b292         	uxth	r2, r2
     3b8: f838 2012    	ldrh.w	r2, [r8, r2, lsl #1]
     3bc: 525a         	strh	r2, [r3, r1]
     3be: 280a         	cmp	r0, #0xa
     3c0: f4bf af23    	bhs.w	0x20a <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20+0xb2> @ imm = #-0x1ba
     3c4: 3901         	subs	r1, #0x1
     3c6: aa03         	add	r2, sp, #0xc
     3c8: f040 0030    	orr	r0, r0, #0x30
     3cc: 5450         	strb	r0, [r2, r1]
     3ce: f1c1 0014    	rsb.w	r0, r1, #0x14
     3d2: 9000         	str	r0, [sp]
     3d4: a803         	add	r0, sp, #0xc
     3d6: 2200         	movs	r2, #0x0
     3d8: 1843         	adds	r3, r0, r1
     3da: 4648         	mov	r0, r9
     3dc: 2101         	movs	r1, #0x1
     3de: f001 f81e    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #0x103c
     3e2: b023         	add	sp, #0x8c
     3e4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     3e8: bdf0         	pop	{r4, r5, r6, r7, pc}

000003ea <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7>:
     3ea: b5f0         	push	{r4, r5, r6, r7, lr}
     3ec: af03         	add	r7, sp, #0xc
     3ee: e92d 0f00    	push.w	{r8, r9, r10, r11}
     3f2: b0a3         	sub	sp, #0x8c
     3f4: 4689         	mov	r9, r1
     3f6: 6949         	ldr	r1, [r1, #0x14]
     3f8: 6800         	ldr	r0, [r0]
     3fa: 06ca         	lsls	r2, r1, #0x1b
     3fc: d44e         	bmi	0x49c <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0xb2> @ imm = #0x9c
     3fe: 0689         	lsls	r1, r1, #0x1a
     400: f100 808a    	bmi.w	0x518 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x12e> @ imm = #0x114
     404: 6801         	ldr	r1, [r0]
     406: f242 7010    	movw	r0, #0x2710
     40a: f64f 7e9c    	movw	lr, #0xff9c
     40e: 4281         	cmp	r1, r0
     410: f243 30ad    	movw	r0, #0x33ad
     414: f2c0 0000    	movt	r0, #0x0
     418: f0c0 80d6    	blo.w	0x5c8 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1de> @ imm = #0x1ac
     41c: f241 7859    	movw	r8, #0x1759
     420: f24e 04ff    	movw	r4, #0xe0ff
     424: f10d 0b0c    	add.w	r11, sp, #0xc
     428: f8cd 9008    	str.w	r9, [sp, #0x8]
     42c: 2200         	movs	r2, #0x0
     42e: f2cd 18b7    	movt	r8, #0xd1b7
     432: f64d 09f0    	movw	r9, #0xd8f0
     436: f241 4a7b    	movw	r10, #0x147b
     43a: f2c0 54f5    	movt	r4, #0x5f5
     43e: fba1 3508    	umull	r3, r5, r1, r8
     442: eb0b 0c02    	add.w	r12, r11, r2
     446: 3a04         	subs	r2, #0x4
     448: 42a1         	cmp	r1, r4
     44a: ea4f 3355    	lsr.w	r3, r5, #0xd
     44e: fb03 1509    	mla	r5, r3, r9, r1
     452: 4619         	mov	r1, r3
     454: b2ae         	uxth	r6, r5
     456: ea4f 0696    	lsr.w	r6, r6, #0x2
     45a: fb06 f60a    	mul	r6, r6, r10
     45e: ea4f 4656    	lsr.w	r6, r6, #0x11
     462: fb06 550e    	mla	r5, r6, lr, r5
     466: f830 6016    	ldrh.w	r6, [r0, r6, lsl #1]
     46a: f8ac 6006    	strh.w	r6, [r12, #0x6]
     46e: b2ad         	uxth	r5, r5
     470: f830 5015    	ldrh.w	r5, [r0, r5, lsl #1]
     474: f8ac 5008    	strh.w	r5, [r12, #0x8]
     478: d8e1         	bhi	0x43e <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x54> @ imm = #-0x3e
     47a: f8dd 9008    	ldr.w	r9, [sp, #0x8]
     47e: 320a         	adds	r2, #0xa
     480: 4619         	mov	r1, r3
     482: 2963         	cmp	r1, #0x63
     484: f200 80a4    	bhi.w	0x5d0 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1e6> @ imm = #0x148
     488: 460b         	mov	r3, r1
     48a: 2b0a         	cmp	r3, #0xa
     48c: f0c0 80b1    	blo.w	0x5f2 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x208> @ imm = #0x162
     490: 1e91         	subs	r1, r2, #0x2
     492: f830 0013    	ldrh.w	r0, [r0, r3, lsl #1]
     496: aa03         	add	r2, sp, #0xc
     498: 5250         	strh	r0, [r2, r1]
     49a: e0af         	b	0x5fc <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x212> @ imm = #0x15e
     49c: 6803         	ldr	r3, [r0]
     49e: f10d 0e0c    	add.w	lr, sp, #0xc
     4a2: 2480         	movs	r4, #0x80
     4a4: 2181         	movs	r1, #0x81
     4a6: f04f 0857    	mov.w	r8, #0x57
     4aa: 4620         	mov	r0, r4
     4ac: f003 040f    	and	r4, r3, #0xf
     4b0: f104 0557    	add.w	r5, r4, #0x57
     4b4: 2c0a         	cmp	r4, #0xa
     4b6: bf38         	it	lo
     4b8: f104 0530    	addlo.w	r5, r4, #0x30
     4bc: eb0e 0401    	add.w	r4, lr, r1
     4c0: 2b10         	cmp	r3, #0x10
     4c2: f804 5c02    	strb	r5, [r4, #-2]
     4c6: d366         	blo	0x596 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1ac> @ imm = #0xcc
     4c8: b2dd         	uxtb	r5, r3
     4ca: 2da0         	cmp	r5, #0xa0
     4cc: eb08 1615    	add.w	r6, r8, r5, lsr #4
     4d0: ea4f 1215    	lsr.w	r2, r5, #0x4
     4d4: bf38         	it	lo
     4d6: f102 0630    	addlo.w	r6, r2, #0x30
     4da: 0a1d         	lsrs	r5, r3, #0x8
     4dc: f804 6c03    	strb	r6, [r4, #-3]
     4e0: d05c         	beq	0x59c <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1b2> @ imm = #0xb8
     4e2: f005 020f    	and	r2, r5, #0xf
     4e6: 3904         	subs	r1, #0x4
     4e8: f102 0557    	add.w	r5, r2, #0x57
     4ec: 2a0a         	cmp	r2, #0xa
     4ee: bf38         	it	lo
     4f0: f102 0530    	addlo.w	r5, r2, #0x30
     4f4: f804 5c04    	strb	r5, [r4, #-4]
     4f8: 0b1d         	lsrs	r5, r3, #0xc
     4fa: d052         	beq	0x5a2 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1b8> @ imm = #0xa4
     4fc: f005 020f    	and	r2, r5, #0xf
     500: f102 0557    	add.w	r5, r2, #0x57
     504: 2a0a         	cmp	r2, #0xa
     506: bf38         	it	lo
     508: f102 0530    	addlo.w	r5, r2, #0x30
     50c: f804 5c05    	strb	r5, [r4, #-5]
     510: 1f04         	subs	r4, r0, #0x4
     512: 0c1b         	lsrs	r3, r3, #0x10
     514: d1c9         	bne	0x4aa <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0xc0> @ imm = #-0x6e
     516: e03c         	b	0x592 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1a8> @ imm = #0x78
     518: 6803         	ldr	r3, [r0]
     51a: f10d 0e0c    	add.w	lr, sp, #0xc
     51e: 2480         	movs	r4, #0x80
     520: 2181         	movs	r1, #0x81
     522: f04f 0c37    	mov.w	r12, #0x37
     526: f003 060f    	and	r6, r3, #0xf
     52a: 4620         	mov	r0, r4
     52c: f106 0537    	add.w	r5, r6, #0x37
     530: 2e0a         	cmp	r6, #0xa
     532: eb0e 0401    	add.w	r4, lr, r1
     536: bf38         	it	lo
     538: f106 0530    	addlo.w	r5, r6, #0x30
     53c: 2b10         	cmp	r3, #0x10
     53e: f804 5c02    	strb	r5, [r4, #-2]
     542: d328         	blo	0x596 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1ac> @ imm = #0x50
     544: b2de         	uxtb	r6, r3
     546: 2ea0         	cmp	r6, #0xa0
     548: eb0c 1516    	add.w	r5, r12, r6, lsr #4
     54c: ea4f 1216    	lsr.w	r2, r6, #0x4
     550: bf38         	it	lo
     552: f102 0530    	addlo.w	r5, r2, #0x30
     556: f804 5c03    	strb	r5, [r4, #-3]
     55a: 0a1d         	lsrs	r5, r3, #0x8
     55c: d01e         	beq	0x59c <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1b2> @ imm = #0x3c
     55e: f005 020f    	and	r2, r5, #0xf
     562: 3904         	subs	r1, #0x4
     564: f102 0537    	add.w	r5, r2, #0x37
     568: 2a0a         	cmp	r2, #0xa
     56a: bf38         	it	lo
     56c: f102 0530    	addlo.w	r5, r2, #0x30
     570: f804 5c04    	strb	r5, [r4, #-4]
     574: 0b1d         	lsrs	r5, r3, #0xc
     576: d014         	beq	0x5a2 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1b8> @ imm = #0x28
     578: f005 020f    	and	r2, r5, #0xf
     57c: f102 0537    	add.w	r5, r2, #0x37
     580: 2a0a         	cmp	r2, #0xa
     582: bf38         	it	lo
     584: f102 0530    	addlo.w	r5, r2, #0x30
     588: f804 5c05    	strb	r5, [r4, #-5]
     58c: 1f04         	subs	r4, r0, #0x4
     58e: 0c1b         	lsrs	r3, r3, #0x10
     590: d1c9         	bne	0x526 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x13c> @ imm = #-0x6e
     592: 3803         	subs	r0, #0x3
     594: e007         	b	0x5a6 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1bc> @ imm = #0xe
     596: 1e8c         	subs	r4, r1, #0x2
     598: 1e48         	subs	r0, r1, #0x1
     59a: e004         	b	0x5a6 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1bc> @ imm = #0x8
     59c: 3801         	subs	r0, #0x1
     59e: 1ecc         	subs	r4, r1, #0x3
     5a0: e001         	b	0x5a6 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x1bc> @ imm = #0x2
     5a2: 3802         	subs	r0, #0x2
     5a4: 460c         	mov	r4, r1
     5a6: f243 31ab    	movw	r1, #0x33ab
     5aa: f1c0 0081    	rsb.w	r0, r0, #0x81
     5ae: eb0e 0304    	add.w	r3, lr, r4
     5b2: 9000         	str	r0, [sp]
     5b4: f2c0 0100    	movt	r1, #0x0
     5b8: 4648         	mov	r0, r9
     5ba: 2202         	movs	r2, #0x2
     5bc: f000 ff2f    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #0xe5e
     5c0: b023         	add	sp, #0x8c
     5c2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     5c6: bdf0         	pop	{r4, r5, r6, r7, pc}
     5c8: 220a         	movs	r2, #0xa
     5ca: 2963         	cmp	r1, #0x63
     5cc: f67f af5c    	bls.w	0x488 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0x9e> @ imm = #-0x148
     5d0: b28b         	uxth	r3, r1
     5d2: f241 467b    	movw	r6, #0x147b
     5d6: 089b         	lsrs	r3, r3, #0x2
     5d8: 3a02         	subs	r2, #0x2
     5da: 4373         	muls	r3, r6, r3
     5dc: ae03         	add	r6, sp, #0xc
     5de: 0c5b         	lsrs	r3, r3, #0x11
     5e0: fb03 110e    	mla	r1, r3, lr, r1
     5e4: b289         	uxth	r1, r1
     5e6: f830 1011    	ldrh.w	r1, [r0, r1, lsl #1]
     5ea: 52b1         	strh	r1, [r6, r2]
     5ec: 2b0a         	cmp	r3, #0xa
     5ee: f4bf af4f    	bhs.w	0x490 <<&mut T as core::fmt::Debug>::fmt::hcabcad80d71f68b7+0xa6> @ imm = #-0x162
     5f2: 1e51         	subs	r1, r2, #0x1
     5f4: aa03         	add	r2, sp, #0xc
     5f6: f043 0030    	orr	r0, r3, #0x30
     5fa: 5450         	strb	r0, [r2, r1]
     5fc: f1c1 000a    	rsb.w	r0, r1, #0xa
     600: 9000         	str	r0, [sp]
     602: a803         	add	r0, sp, #0xc
     604: 2200         	movs	r2, #0x0
     606: 1843         	adds	r3, r0, r1
     608: 4648         	mov	r0, r9
     60a: 2101         	movs	r1, #0x1
     60c: f000 ff07    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #0xe0e
     610: b023         	add	sp, #0x8c
     612: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     616: bdf0         	pop	{r4, r5, r6, r7, pc}

00000618 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9>:
     618: b5f0         	push	{r4, r5, r6, r7, lr}
     61a: af03         	add	r7, sp, #0xc
     61c: e92d 0700    	push.w	{r8, r9, r10}
     620: b08e         	sub	sp, #0x38
     622: e9d1 6407    	ldrd	r6, r4, [r1, #28]
     626: 468a         	mov	r10, r1
     628: 68e5         	ldr	r5, [r4, #0xc]
     62a: f243 015c    	movw	r1, #0x305c
     62e: 4680         	mov	r8, r0
     630: f2c0 0100    	movt	r1, #0x0
     634: 4630         	mov	r0, r6
     636: 2207         	movs	r2, #0x7
     638: 47a8         	blx	r5
     63a: b120         	cbz	r0, 0x646 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x2e> @ imm = #0x8
     63c: 2001         	movs	r0, #0x1
     63e: b00e         	add	sp, #0x38
     640: e8bd 0700    	pop.w	{r8, r9, r10}
     644: bdf0         	pop	{r4, r5, r6, r7, pc}
     646: f8da 9014    	ldr.w	r9, [r10, #0x14]
     64a: ea5f 7049    	lsls.w	r0, r9, #0x1d
     64e: d40d         	bmi	0x66c <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x54> @ imm = #0x1a
     650: f243 31a0    	movw	r1, #0x33a0
     654: 4630         	mov	r0, r6
     656: f2c0 0100    	movt	r1, #0x0
     65a: 2203         	movs	r2, #0x3
     65c: 47a8         	blx	r5
     65e: 2800         	cmp	r0, #0x0
     660: d03f         	beq	0x6e2 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0xca> @ imm = #0x7e
     662: 2001         	movs	r0, #0x1
     664: b00e         	add	sp, #0x38
     666: e8bd 0700    	pop.w	{r8, r9, r10}
     66a: bdf0         	pop	{r4, r5, r6, r7, pc}
     66c: f243 31a3    	movw	r1, #0x33a3
     670: 4630         	mov	r0, r6
     672: f2c0 0100    	movt	r1, #0x0
     676: 2203         	movs	r2, #0x3
     678: 47a8         	blx	r5
     67a: 4601         	mov	r1, r0
     67c: 2001         	movs	r0, #0x1
     67e: 2900         	cmp	r1, #0x0
     680: d1dd         	bne	0x63e <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x26> @ imm = #-0x46
     682: f1a7 013d    	sub.w	r1, r7, #0x3d
     686: f807 0c3d    	strb	r0, [r7, #-61]
     68a: 9601         	str	r6, [sp, #0x4]
     68c: a805         	add	r0, sp, #0x14
     68e: e9cd 4102    	strd	r4, r1, [sp, #8]
     692: 4651         	mov	r1, r10
     694: c94c         	ldm	r1!, {r2, r3, r6}
     696: c04c         	stm	r0!, {r2, r3, r6}
     698: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
     69c: f243 0163    	movw	r1, #0x3063
     6a0: f2c0 0100    	movt	r1, #0x0
     6a4: c06c         	stm	r0!, {r2, r3, r5, r6}
     6a6: f243 3084    	movw	r0, #0x3384
     6aa: f2c0 0000    	movt	r0, #0x0
     6ae: 900d         	str	r0, [sp, #0x34]
     6b0: a801         	add	r0, sp, #0x4
     6b2: 2205         	movs	r2, #0x5
     6b4: 900c         	str	r0, [sp, #0x30]
     6b6: f001 fc58    	bl	0x1f6a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47> @ imm = #0x18b0
     6ba: b968         	cbnz	r0, 0x6d8 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0xc0> @ imm = #0x1a
     6bc: f243 3172    	movw	r1, #0x3372
     6c0: a801         	add	r0, sp, #0x4
     6c2: f2c0 0100    	movt	r1, #0x0
     6c6: 2202         	movs	r2, #0x2
     6c8: f001 fc4f    	bl	0x1f6a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47> @ imm = #0x189e
     6cc: b920         	cbnz	r0, 0x6d8 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0xc0> @ imm = #0x8
     6ce: a905         	add	r1, sp, #0x14
     6d0: 4640         	mov	r0, r8
     6d2: f7ff fd41    	bl	0x158 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20> @ imm = #-0x57e
     6d6: b340         	cbz	r0, 0x72a <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x112> @ imm = #0x50
     6d8: 2001         	movs	r0, #0x1
     6da: b00e         	add	sp, #0x38
     6dc: e8bd 0700    	pop.w	{r8, r9, r10}
     6e0: bdf0         	pop	{r4, r5, r6, r7, pc}
     6e2: f243 0163    	movw	r1, #0x3063
     6e6: 4630         	mov	r0, r6
     6e8: f2c0 0100    	movt	r1, #0x0
     6ec: 2205         	movs	r2, #0x5
     6ee: 47a8         	blx	r5
     6f0: b120         	cbz	r0, 0x6fc <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0xe4> @ imm = #0x8
     6f2: 2001         	movs	r0, #0x1
     6f4: b00e         	add	sp, #0x38
     6f6: e8bd 0700    	pop.w	{r8, r9, r10}
     6fa: bdf0         	pop	{r4, r5, r6, r7, pc}
     6fc: f243 3172    	movw	r1, #0x3372
     700: 4630         	mov	r0, r6
     702: f2c0 0100    	movt	r1, #0x0
     706: 2202         	movs	r2, #0x2
     708: 47a8         	blx	r5
     70a: b120         	cbz	r0, 0x716 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0xfe> @ imm = #0x8
     70c: 2001         	movs	r0, #0x1
     70e: b00e         	add	sp, #0x38
     710: e8bd 0700    	pop.w	{r8, r9, r10}
     714: bdf0         	pop	{r4, r5, r6, r7, pc}
     716: 4640         	mov	r0, r8
     718: 4651         	mov	r1, r10
     71a: f7ff fd1d    	bl	0x158 <<&T as core::fmt::Debug>::fmt::h0f1d288105560f20> @ imm = #-0x5c6
     71e: b198         	cbz	r0, 0x748 <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x130> @ imm = #0x26
     720: 2001         	movs	r0, #0x1
     722: b00e         	add	sp, #0x38
     724: e8bd 0700    	pop.w	{r8, r9, r10}
     728: bdf0         	pop	{r4, r5, r6, r7, pc}
     72a: e9dd 010c    	ldrd	r0, r1, [sp, #48]
     72e: 2202         	movs	r2, #0x2
     730: 68cb         	ldr	r3, [r1, #0xc]
     732: f243 31a6    	movw	r1, #0x33a6
     736: f2c0 0100    	movt	r1, #0x0
     73a: 4798         	blx	r3
     73c: b130         	cbz	r0, 0x74c <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x134> @ imm = #0xc
     73e: 2001         	movs	r0, #0x1
     740: b00e         	add	sp, #0x38
     742: e8bd 0700    	pop.w	{r8, r9, r10}
     746: bdf0         	pop	{r4, r5, r6, r7, pc}
     748: f8da 9014    	ldr.w	r9, [r10, #0x14]
     74c: ea5f 7049    	lsls.w	r0, r9, #0x1d
     750: d40c         	bmi	0x76c <<fugit::instant::Instant<T,_,_> as core::fmt::Debug>::fmt::h348a1d8a86d594e9+0x154> @ imm = #0x18
     752: e9da 0107    	ldrd	r0, r1, [r10, #28]
     756: 2202         	movs	r2, #0x2
     758: 68cb         	ldr	r3, [r1, #0xc]
     75a: f243 31a9    	movw	r1, #0x33a9
     75e: f2c0 0100    	movt	r1, #0x0
     762: 4798         	blx	r3
     764: b00e         	add	sp, #0x38
     766: e8bd 0700    	pop.w	{r8, r9, r10}
     76a: bdf0         	pop	{r4, r5, r6, r7, pc}
     76c: e9da 0107    	ldrd	r0, r1, [r10, #28]
     770: 2201         	movs	r2, #0x1
     772: 68cb         	ldr	r3, [r1, #0xc]
     774: f243 31a8    	movw	r1, #0x33a8
     778: f2c0 0100    	movt	r1, #0x0
     77c: 4798         	blx	r3
     77e: b00e         	add	sp, #0x38
     780: e8bd 0700    	pop.w	{r8, r9, r10}
     784: bdf0         	pop	{r4, r5, r6, r7, pc}

00000786 <<fugit::duration::Duration<u64,_,_> as core::fmt::Display>::fmt::h24d1d8ec01114744>:
     786: b580         	push	{r7, lr}
     788: 466f         	mov	r7, sp
     78a: b088         	sub	sp, #0x20
     78c: 2200         	movs	r2, #0x0
     78e: e9d1 3107    	ldrd	r3, r1, [r1, #28]
     792: 9204         	str	r2, [sp, #0x10]
     794: 2202         	movs	r2, #0x2
     796: 9201         	str	r2, [sp, #0x4]
     798: f243 026c    	movw	r2, #0x306c
     79c: f2c0 0200    	movt	r2, #0x0
     7a0: 9200         	str	r2, [sp]
     7a2: 2201         	movs	r2, #0x1
     7a4: 9203         	str	r2, [sp, #0xc]
     7a6: aa06         	add	r2, sp, #0x18
     7a8: 9202         	str	r2, [sp, #0x8]
     7aa: f242 2269    	movw	r2, #0x2269
     7ae: f2c0 0200    	movt	r2, #0x0
     7b2: e9cd 0206    	strd	r0, r2, [sp, #24]
     7b6: 466a         	mov	r2, sp
     7b8: 4618         	mov	r0, r3
     7ba: f001 faf1    	bl	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #0x15e2
     7be: b008         	add	sp, #0x20
     7c0: bd80         	pop	{r7, pc}

000007c2 <rtic_bare7d::led::led_on::h606562de4274dc5e>:
     7c2: b5d0         	push	{r4, r6, r7, lr}
     7c4: af02         	add	r7, sp, #0x8
     7c6: 4604         	mov	r4, r0
     7c8: f243 007c    	movw	r0, #0x307c
     7cc: f2c0 0000    	movt	r0, #0x0
     7d0: 2107         	movs	r1, #0x7
     7d2: f001 fffc    	bl	0x27ce <rtt_target::print::print_impl::write_str::h7949a8452c806172> @ imm = #0x1ff8
     7d6: 06a1         	lsls	r1, r4, #0x1a
     7d8: f240 5008    	movw	r0, #0x508
     7dc: f004 011f    	and	r1, r4, #0x1f
     7e0: f2c5 0000    	movt	r0, #0x5000
     7e4: f04f 0201    	mov.w	r2, #0x1
     7e8: f500 7040    	add.w	r0, r0, #0x300
     7ec: fa02 f101    	lsl.w	r1, r2, r1
     7f0: bf5c         	itt	pl
     7f2: f240 5008    	movwpl	r0, #0x508
     7f6: f2c5 0000    	movtpl	r0, #0x5000
     7fa: 6001         	str	r1, [r0]
     7fc: bdd0         	pop	{r4, r6, r7, pc}

000007fe <rtic_bare7d::led::led_off::h53d66a181c9d5c35>:
     7fe: b5d0         	push	{r4, r6, r7, lr}
     800: af02         	add	r7, sp, #0x8
     802: 4604         	mov	r4, r0
     804: f243 0083    	movw	r0, #0x3083
     808: f2c0 0000    	movt	r0, #0x0
     80c: 2108         	movs	r1, #0x8
     80e: f001 ffde    	bl	0x27ce <rtt_target::print::print_impl::write_str::h7949a8452c806172> @ imm = #0x1fbc
     812: 06a1         	lsls	r1, r4, #0x1a
     814: f240 500c    	movw	r0, #0x50c
     818: f004 011f    	and	r1, r4, #0x1f
     81c: f2c5 0000    	movt	r0, #0x5000
     820: f04f 0201    	mov.w	r2, #0x1
     824: f500 7040    	add.w	r0, r0, #0x300
     828: fa02 f101    	lsl.w	r1, r2, r1
     82c: bf5c         	itt	pl
     82e: f240 500c    	movwpl	r0, #0x50c
     832: f2c5 0000    	movtpl	r0, #0x5000
     836: 6001         	str	r1, [r0]
     838: bdd0         	pop	{r4, r6, r7, pc}

0000083a <rtic_bare7d::app::idle::hf33958c01072935d>:
     83a: b580         	push	{r7, lr}
     83c: 466f         	mov	r7, sp
     83e: b084         	sub	sp, #0x10
     840: f243 10b4    	movw	r0, #0x31b4
     844: 2105         	movs	r1, #0x5
     846: f2c0 0000    	movt	r0, #0x0
     84a: f001 ffc0    	bl	0x27ce <rtt_target::print::print_impl::write_str::h7949a8452c806172> @ imm = #0x1f80
     84e: f240 4b50    	movw	r11, #0x450
     852: f04f 31ff    	mov.w	r1, #0xffffffff
     856: f2c2 0b00    	movt	r11, #0x2000
     85a: f04f 0c00    	mov.w	r12, #0x0
     85e: bf30         	wfi
     860: f3ef 8210    	mrs	r2, primask
     864: b672         	cpsid i
     866: f8db 0030    	ldr.w	r0, [r11, #0x30]
     86a: 2800         	cmp	r0, #0x0
     86c: f040 8141    	bne.w	0xaf2 <rtic_bare7d::app::idle::hf33958c01072935d+0x2b8> @ imm = #0x282
     870: f8db 0034    	ldr.w	r0, [r11, #0x34]
     874: f8cb 1030    	str.w	r1, [r11, #0x30]
     878: 2800         	cmp	r0, #0x0
     87a: f000 8090    	beq.w	0x99e <rtic_bare7d::app::idle::hf33958c01072935d+0x164> @ imm = #0x120
     87e: f8db 9038    	ldr.w	r9, [r11, #0x38]
     882: 9201         	str	r2, [sp, #0x4]
     884: f8d9 800c    	ldr.w	r8, [r9, #0xc]
     888: f3bf 8f5f    	dmb	sy
     88c: f8d9 0010    	ldr.w	r0, [r9, #0x10]
     890: f3bf 8f5f    	dmb	sy
     894: f8d9 1008    	ldr.w	r1, [r9, #0x8]
     898: 4588         	cmp	r8, r1
     89a: bf38         	it	lo
     89c: 4288         	cmplo	r0, r1
     89e: d30d         	blo	0x8bc <rtic_bare7d::app::idle::hf33958c01072935d+0x82> @ imm = #0x1a
     8a0: f04f 0800    	mov.w	r8, #0x0
     8a4: f3bf 8f5f    	dmb	sy
     8a8: f8c9 800c    	str.w	r8, [r9, #0xc]
     8ac: f3bf 8f5f    	dmb	sy
     8b0: f3bf 8f5f    	dmb	sy
     8b4: f8c9 8010    	str.w	r8, [r9, #0x10]
     8b8: f3bf 8f5f    	dmb	sy
     8bc: f89b 003c    	ldrb.w	r0, [r11, #0x3c]
     8c0: 2800         	cmp	r0, #0x0
     8c2: f000 808c    	beq.w	0x9de <rtic_bare7d::app::idle::hf33958c01072935d+0x1a4> @ imm = #0x118
     8c6: f8db 0038    	ldr.w	r0, [r11, #0x38]
     8ca: f243 01ff    	movw	r1, #0x30ff
     8ce: 2602         	movs	r6, #0x2
     8d0: f04f 0e00    	mov.w	lr, #0x0
     8d4: 6940         	ldr	r0, [r0, #0x14]
     8d6: f3bf 8f5f    	dmb	sy
     8da: f827 1c02    	strh	r1, [r7, #-2]
     8de: f000 0403    	and	r4, r0, #0x3
     8e2: 1eb8         	subs	r0, r7, #0x2
     8e4: 9002         	str	r0, [sp, #0x8]
     8e6: ea6f 0008    	mvn.w	r0, r8
     8ea: f8d9 300c    	ldr.w	r3, [r9, #0xc]
     8ee: f3bf 8f5f    	dmb	sy
     8f2: f8d9 2010    	ldr.w	r2, [r9, #0x10]
     8f6: f3bf 8f5f    	dmb	sy
     8fa: f8d9 1008    	ldr.w	r1, [r9, #0x8]
     8fe: 428b         	cmp	r3, r1
     900: bf38         	it	lo
     902: 428a         	cmplo	r2, r1
     904: d312         	blo	0x92c <rtic_bare7d::app::idle::hf33958c01072935d+0xf2> @ imm = #0x24
     906: f3bf 8f5f    	dmb	sy
     90a: f8c9 c00c    	str.w	r12, [r9, #0xc]
     90e: f3bf 8f5f    	dmb	sy
     912: f3bf 8f5f    	dmb	sy
     916: f8c9 c010    	str.w	r12, [r9, #0x10]
     91a: f3bf 8f5f    	dmb	sy
     91e: 4541         	cmp	r1, r8
     920: f0c0 80ed    	blo.w	0xafe <rtic_bare7d::app::idle::hf33958c01072935d+0x2c4> @ imm = #0x1da
     924: f000 80eb    	beq.w	0xafe <rtic_bare7d::app::idle::hf33958c01072935d+0x2c4> @ imm = #0x1d6
     928: 180d         	adds	r5, r1, r0
     92a: e00a         	b	0x942 <rtic_bare7d::app::idle::hf33958c01072935d+0x108> @ imm = #0x14
     92c: 4542         	cmp	r2, r8
     92e: d901         	bls	0x934 <rtic_bare7d::app::idle::hf33958c01072935d+0xfa> @ imm = #0x2
     930: 1815         	adds	r5, r2, r0
     932: e006         	b	0x942 <rtic_bare7d::app::idle::hf33958c01072935d+0x108> @ imm = #0xc
     934: 2a00         	cmp	r2, #0x0
     936: d0f2         	beq	0x91e <rtic_bare7d::app::idle::hf33958c01072935d+0xe4> @ imm = #-0x1c
     938: 4541         	cmp	r1, r8
     93a: f0c0 80e6    	blo.w	0xb0a <rtic_bare7d::app::idle::hf33958c01072935d+0x2d0> @ imm = #0x1cc
     93e: eba1 0508    	sub.w	r5, r1, r8
     942: 42b5         	cmp	r5, r6
     944: bf28         	it	hs
     946: 4635         	movhs	r5, r6
     948: b945         	cbnz	r5, 0x95c <rtic_bare7d::app::idle::hf33958c01072935d+0x122> @ imm = #0x10
     94a: 2c02         	cmp	r4, #0x2
     94c: d12e         	bne	0x9ac <rtic_bare7d::app::idle::hf33958c01072935d+0x172> @ imm = #0x5c
     94e: f3bf 8f5f    	dmb	sy
     952: f8c9 800c    	str.w	r8, [r9, #0xc]
     956: f3bf 8f5f    	dmb	sy
     95a: e7c6         	b	0x8ea <rtic_bare7d::app::idle::hf33958c01072935d+0xb0> @ imm = #-0x74
     95c: f8d9 0004    	ldr.w	r0, [r9, #0x4]
     960: 462a         	mov	r2, r5
     962: 9902         	ldr	r1, [sp, #0x8]
     964: 46f2         	mov	r10, lr
     966: 4440         	add	r0, r8
     968: f002 f8bf    	bl	0x2aea <__aeabi_memcpy> @ imm = #0x217e
     96c: eb18 0805    	adds.w	r8, r8, r5
     970: f080 80d7    	bhs.w	0xb22 <rtic_bare7d::app::idle::hf33958c01072935d+0x2e8> @ imm = #0x1ae
     974: eb1a 0e05    	adds.w	lr, r10, r5
     978: f04f 0c00    	mov.w	r12, #0x0
     97c: f080 80cb    	bhs.w	0xb16 <rtic_bare7d::app::idle::hf33958c01072935d+0x2dc> @ imm = #0x196
     980: f8d9 1008    	ldr.w	r1, [r9, #0x8]
     984: 2000         	movs	r0, #0x0
     986: 4588         	cmp	r8, r1
     988: bf28         	it	hs
     98a: 4680         	movhs	r8, r0
     98c: 2d00         	cmp	r5, #0x0
     98e: bf1f         	itttt	ne
     990: 9902         	ldrne	r1, [sp, #0x8]
     992: 4429         	addne	r1, r5
     994: 9102         	strne	r1, [sp, #0x8]
     996: ebb6 0605    	subsne.w	r6, r6, r5
     99a: d1a4         	bne	0x8e6 <rtic_bare7d::app::idle::hf33958c01072935d+0xac> @ imm = #-0xb8
     99c: e007         	b	0x9ae <rtic_bare7d::app::idle::hf33958c01072935d+0x174> @ imm = #0xe
     99e: 2000         	movs	r0, #0x0
     9a0: f8cb 0030    	str.w	r0, [r11, #0x30]
     9a4: 07d0         	lsls	r0, r2, #0x1f
     9a6: f47f af5a    	bne.w	0x85e <rtic_bare7d::app::idle::hf33958c01072935d+0x24> @ imm = #-0x14c
     9aa: e0a0         	b	0xaee <rtic_bare7d::app::idle::hf33958c01072935d+0x2b4> @ imm = #0x140
     9ac: 2002         	movs	r0, #0x2
     9ae: f88b c03c    	strb.w	r12, [r11, #0x3c]
     9b2: f243 52e0    	movw	r2, #0x35e0
     9b6: f8d9 1014    	ldr.w	r1, [r9, #0x14]
     9ba: f2c0 0200    	movt	r2, #0x0
     9be: f001 0103    	and	r1, r1, #0x3
     9c2: f852 b021    	ldr.w	r11, [r2, r1, lsl #2]
     9c6: f3bf 8f5f    	dmb	sy
     9ca: b1b0         	cbz	r0, 0x9fa <rtic_bare7d::app::idle::hf33958c01072935d+0x1c0> @ imm = #0x2c
     9cc: 2802         	cmp	r0, #0x2
     9ce: d179         	bne	0xac4 <rtic_bare7d::app::idle::hf33958c01072935d+0x28a> @ imm = #0xf2
     9d0: f240 4b50    	movw	r11, #0x450
     9d4: f2c2 0b00    	movt	r11, #0x2000
     9d8: f88b c03c    	strb.w	r12, [r11, #0x3c]
     9dc: e07c         	b	0xad8 <rtic_bare7d::app::idle::hf33958c01072935d+0x29e> @ imm = #0xf8
     9de: f8d9 0014    	ldr.w	r0, [r9, #0x14]
     9e2: f243 51e0    	movw	r1, #0x35e0
     9e6: f3bf 8f5f    	dmb	sy
     9ea: f2c0 0100    	movt	r1, #0x0
     9ee: f000 0003    	and	r0, r0, #0x3
     9f2: f04f 0e00    	mov.w	lr, #0x0
     9f6: f851 b020    	ldr.w	r11, [r1, r0, lsl #2]
     9fa: f243 14b9    	movw	r4, #0x31b9
     9fe: f04f 0a05    	mov.w	r10, #0x5
     a02: f2c0 0400    	movt	r4, #0x0
     a06: ea6f 0008    	mvn.w	r0, r8
     a0a: f8d9 300c    	ldr.w	r3, [r9, #0xc]
     a0e: f3bf 8f5f    	dmb	sy
     a12: f8d9 2010    	ldr.w	r2, [r9, #0x10]
     a16: f3bf 8f5f    	dmb	sy
     a1a: f8d9 1008    	ldr.w	r1, [r9, #0x8]
     a1e: 428b         	cmp	r3, r1
     a20: bf38         	it	lo
     a22: 428a         	cmplo	r2, r1
     a24: d310         	blo	0xa48 <rtic_bare7d::app::idle::hf33958c01072935d+0x20e> @ imm = #0x20
     a26: f3bf 8f5f    	dmb	sy
     a2a: f8c9 c00c    	str.w	r12, [r9, #0xc]
     a2e: f3bf 8f5f    	dmb	sy
     a32: f3bf 8f5f    	dmb	sy
     a36: f8c9 c010    	str.w	r12, [r9, #0x10]
     a3a: f3bf 8f5f    	dmb	sy
     a3e: 4541         	cmp	r1, r8
     a40: d35d         	blo	0xafe <rtic_bare7d::app::idle::hf33958c01072935d+0x2c4> @ imm = #0xba
     a42: d05c         	beq	0xafe <rtic_bare7d::app::idle::hf33958c01072935d+0x2c4> @ imm = #0xb8
     a44: 180e         	adds	r6, r1, r0
     a46: e009         	b	0xa5c <rtic_bare7d::app::idle::hf33958c01072935d+0x222> @ imm = #0x12
     a48: 4542         	cmp	r2, r8
     a4a: d901         	bls	0xa50 <rtic_bare7d::app::idle::hf33958c01072935d+0x216> @ imm = #0x2
     a4c: 1816         	adds	r6, r2, r0
     a4e: e005         	b	0xa5c <rtic_bare7d::app::idle::hf33958c01072935d+0x222> @ imm = #0xa
     a50: 2a00         	cmp	r2, #0x0
     a52: d0f4         	beq	0xa3e <rtic_bare7d::app::idle::hf33958c01072935d+0x204> @ imm = #-0x18
     a54: 4541         	cmp	r1, r8
     a56: d358         	blo	0xb0a <rtic_bare7d::app::idle::hf33958c01072935d+0x2d0> @ imm = #0xb0
     a58: eba1 0608    	sub.w	r6, r1, r8
     a5c: 4556         	cmp	r6, r10
     a5e: bf28         	it	hs
     a60: 4656         	movhs	r6, r10
     a62: b986         	cbnz	r6, 0xa86 <rtic_bare7d::app::idle::hf33958c01072935d+0x24c> @ imm = #0x20
     a64: f1bb 0f02    	cmp.w	r11, #0x2
     a68: d106         	bne	0xa78 <rtic_bare7d::app::idle::hf33958c01072935d+0x23e> @ imm = #0xc
     a6a: f3bf 8f5f    	dmb	sy
     a6e: f8c9 800c    	str.w	r8, [r9, #0xc]
     a72: f3bf 8f5f    	dmb	sy
     a76: e7c8         	b	0xa0a <rtic_bare7d::app::idle::hf33958c01072935d+0x1d0> @ imm = #-0x70
     a78: f1bb 0f00    	cmp.w	r11, #0x0
     a7c: d0a8         	beq	0x9d0 <rtic_bare7d::app::idle::hf33958c01072935d+0x196> @ imm = #-0xb0
     a7e: 2500         	movs	r5, #0x0
     a80: f8cd e008    	str.w	lr, [sp, #0x8]
     a84: e002         	b	0xa8c <rtic_bare7d::app::idle::hf33958c01072935d+0x252> @ imm = #0x4
     a86: f8cd e008    	str.w	lr, [sp, #0x8]
     a8a: 4635         	mov	r5, r6
     a8c: f8d9 0004    	ldr.w	r0, [r9, #0x4]
     a90: 4621         	mov	r1, r4
     a92: 462a         	mov	r2, r5
     a94: 4440         	add	r0, r8
     a96: f002 f828    	bl	0x2aea <__aeabi_memcpy> @ imm = #0x2050
     a9a: eb18 0805    	adds.w	r8, r8, r5
     a9e: d240         	bhs	0xb22 <rtic_bare7d::app::idle::hf33958c01072935d+0x2e8> @ imm = #0x80
     aa0: f8dd e008    	ldr.w	lr, [sp, #0x8]
     aa4: eb1e 0e05    	adds.w	lr, lr, r5
     aa8: d235         	bhs	0xb16 <rtic_bare7d::app::idle::hf33958c01072935d+0x2dc> @ imm = #0x6a
     aaa: f8d9 0008    	ldr.w	r0, [r9, #0x8]
     aae: f04f 0c00    	mov.w	r12, #0x0
     ab2: 4580         	cmp	r8, r0
     ab4: bf28         	it	hs
     ab6: 46e0         	movhs	r8, r12
     ab8: 2e00         	cmp	r6, #0x0
     aba: bf1c         	itt	ne
     abc: 442c         	addne	r4, r5
     abe: ebba 0a05    	subsne.w	r10, r10, r5
     ac2: d1a0         	bne	0xa06 <rtic_bare7d::app::idle::hf33958c01072935d+0x1cc> @ imm = #-0xc0
     ac4: f240 4b50    	movw	r11, #0x450
     ac8: f3bf 8f5f    	dmb	sy
     acc: f8c9 800c    	str.w	r8, [r9, #0xc]
     ad0: f2c2 0b00    	movt	r11, #0x2000
     ad4: f3bf 8f5f    	dmb	sy
     ad8: f8db 0030    	ldr.w	r0, [r11, #0x30]
     adc: f04f 31ff    	mov.w	r1, #0xffffffff
     ae0: 9a01         	ldr	r2, [sp, #0x4]
     ae2: 3001         	adds	r0, #0x1
     ae4: f8cb 0030    	str.w	r0, [r11, #0x30]
     ae8: 07d0         	lsls	r0, r2, #0x1f
     aea: f47f aeb8    	bne.w	0x85e <rtic_bare7d::app::idle::hf33958c01072935d+0x24> @ imm = #-0x290
     aee: b662         	cpsie i
     af0: e6b5         	b	0x85e <rtic_bare7d::app::idle::hf33958c01072935d+0x24> @ imm = #-0x296
     af2: f243 50d0    	movw	r0, #0x35d0
     af6: f2c0 0000    	movt	r0, #0x0
     afa: f001 fa1c    	bl	0x1f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213> @ imm = #0x1438
     afe: f243 503c    	movw	r0, #0x353c
     b02: f2c0 0000    	movt	r0, #0x0
     b06: f001 fc3c    	bl	0x2382 <core::panicking::panic_const::panic_const_sub_overflow::h98aed8d3b4a9e0aa> @ imm = #0x1878
     b0a: f243 504c    	movw	r0, #0x354c
     b0e: f2c0 0000    	movt	r0, #0x0
     b12: f001 fc36    	bl	0x2382 <core::panicking::panic_const::panic_const_sub_overflow::h98aed8d3b4a9e0aa> @ imm = #0x186c
     b16: f243 502c    	movw	r0, #0x352c
     b1a: f2c0 0000    	movt	r0, #0x0
     b1e: f001 fc1d    	bl	0x235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5> @ imm = #0x183a
     b22: f243 501c    	movw	r0, #0x351c
     b26: f2c0 0000    	movt	r0, #0x0
     b2a: f001 fc17    	bl	0x235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5> @ imm = #0x182e

00000b2e <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d>:
     b2e: b5f0         	push	{r4, r5, r6, r7, lr}
     b30: af03         	add	r7, sp, #0xc
     b32: e92d 0700    	push.w	{r8, r9, r10}
     b36: f240 4950    	movw	r9, #0x450
     b3a: f3ef 8510    	mrs	r5, primask
     b3e: b672         	cpsid i
     b40: f2c2 0900    	movt	r9, #0x2000
     b44: f8d9 1018    	ldr.w	r1, [r9, #0x18]
     b48: f8d9 601c    	ldr.w	r6, [r9, #0x1c]
     b4c: f3bf 8f5f    	dmb	sy
     b50: 42b1         	cmp	r1, r6
     b52: d14b         	bne	0xbec <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xbe> @ imm = #0x96
     b54: 07ed         	lsls	r5, r5, #0x1f
     b56: d156         	bne	0xc06 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xd8> @ imm = #0xac
     b58: b662         	cpsie i
     b5a: e9d7 5c02    	ldrd	r5, r12, [r7, #8]
     b5e: 42b1         	cmp	r1, r6
     b60: d055         	beq	0xc0e <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xe0> @ imm = #0xaa
     b62: f240 4698    	movw	r6, #0x498
     b66: fa5f f188    	uxtb.w	r1, r8
     b6a: f2c2 0600    	movt	r6, #0x2000
     b6e: f64f 7aff    	movw	r10, #0xffff
     b72: f846 5031    	str.w	r5, [r6, r1, lsl #3]
     b76: eb06 01c1    	add.w	r1, r6, r1, lsl #3
     b7a: f8c1 c004    	str.w	r12, [r1, #0x4]
     b7e: f240 0100    	movw	r1, #0x0
     b82: f2c2 0100    	movt	r1, #0x2000
     b86: f3ef 8c10    	mrs	r12, primask
     b8a: b672         	cpsid i
     b8c: f8d9 e008    	ldr.w	lr, [r9, #0x8]
     b90: f899 6000    	ldrb.w	r6, [r9]
     b94: 8b0d         	ldrh	r5, [r1, #0x18]
     b96: f10e 0401    	add.w	r4, lr, #0x1
     b9a: f8c9 4008    	str.w	r4, [r9, #0x8]
     b9e: b3ee         	cbz	r6, 0xc1c <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xee> @ imm = #0x7a
     ba0: 4555         	cmp	r5, r10
     ba2: d060         	beq	0xc66 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x138> @ imm = #0xc0
     ba4: e9d1 4500    	ldrd	r4, r5, [r1]
     ba8: 1b14         	subs	r4, r2, r4
     baa: eb73 0405    	sbcs.w	r4, r3, r5
     bae: d45a         	bmi	0xc66 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x138> @ imm = #0xb4
     bb0: 8b4c         	ldrh	r4, [r1, #0x1a]
     bb2: eb04 0444    	add.w	r4, r4, r4, lsl #1
     bb6: eb01 06c4    	add.w	r6, r1, r4, lsl #3
     bba: f841 2034    	str.w	r2, [r1, r4, lsl #3]
     bbe: f8d1 9000    	ldr.w	r9, [r1]
     bc2: e9c6 3e01    	strd	r3, lr, [r6, #4]
     bc6: 684c         	ldr	r4, [r1, #0x4]
     bc8: ebb9 0202    	subs.w	r2, r9, r2
     bcc: 8a35         	ldrh	r5, [r6, #0x10]
     bce: eb64 0203    	sbc.w	r2, r4, r3
     bd2: f886 800c    	strb.w	r8, [r6, #0xc]
     bd6: f1b2 3fff    	cmp.w	r2, #0xffffffff
     bda: 834d         	strh	r5, [r1, #0x1a]
     bdc: f300 8092    	bgt.w	0xd04 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1d6> @ imm = #0x124
     be0: f831 2f10    	ldrh	r2, [r1, #16]!
     be4: 4552         	cmp	r2, r10
     be6: f000 8090    	beq.w	0xd0a <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1dc> @ imm = #0x120
     bea: e7fe         	b	0xbea <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xbc> @ imm = #-0x4
     bec: f109 0418    	add.w	r4, r9, #0x18
     bf0: 440c         	add	r4, r1
     bf2: f894 8008    	ldrb.w	r8, [r4, #0x8]
     bf6: f3bf 8f5f    	dmb	sy
     bfa: f081 0401    	eor	r4, r1, #0x1
     bfe: f8c9 4018    	str.w	r4, [r9, #0x18]
     c02: 07ed         	lsls	r5, r5, #0x1f
     c04: d0a8         	beq	0xb58 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x2a> @ imm = #-0xb0
     c06: e9d7 5c02    	ldrd	r5, r12, [r7, #8]
     c0a: 42b1         	cmp	r1, r6
     c0c: d1a9         	bne	0xb62 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x34> @ imm = #-0xae
     c0e: 2101         	movs	r1, #0x1
     c10: e9c0 5c02    	strd	r5, r12, [r0, #8]
     c14: 6001         	str	r1, [r0]
     c16: e8bd 0700    	pop.w	{r8, r9, r10}
     c1a: bdf0         	pop	{r4, r5, r6, r7, pc}
     c1c: 4555         	cmp	r5, r10
     c1e: d04b         	beq	0xcb8 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x18a> @ imm = #0x96
     c20: e9d1 5600    	ldrd	r5, r6, [r1]
     c24: 1b55         	subs	r5, r2, r5
     c26: eb73 0506    	sbcs.w	r5, r3, r6
     c2a: d445         	bmi	0xcb8 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x18a> @ imm = #0x8a
     c2c: 8b4d         	ldrh	r5, [r1, #0x1a]
     c2e: eb05 0545    	add.w	r5, r5, r5, lsl #1
     c32: eb01 06c5    	add.w	r6, r1, r5, lsl #3
     c36: f841 2035    	str.w	r2, [r1, r5, lsl #3]
     c3a: f8d1 9000    	ldr.w	r9, [r1]
     c3e: e9c6 3e01    	strd	r3, lr, [r6, #4]
     c42: f886 800c    	strb.w	r8, [r6, #0xc]
     c46: ebb9 0202    	subs.w	r2, r9, r2
     c4a: f8d1 8004    	ldr.w	r8, [r1, #0x4]
     c4e: 8a35         	ldrh	r5, [r6, #0x10]
     c50: eb68 0203    	sbc.w	r2, r8, r3
     c54: 834d         	strh	r5, [r1, #0x1a]
     c56: f1b2 3fff    	cmp.w	r2, #0xffffffff
     c5a: dc53         	bgt	0xd04 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1d6> @ imm = #0xa6
     c5c: f831 2f10    	ldrh	r2, [r1, #16]!
     c60: 4552         	cmp	r2, r10
     c62: d052         	beq	0xd0a <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1dc> @ imm = #0xa4
     c64: e7fe         	b	0xc64 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x136> @ imm = #-0x4
     c66: f64e 5404    	movw	r4, #0xed04
     c6a: f04f 6580    	mov.w	r5, #0x4000000
     c6e: f2ce 0400    	movt	r4, #0xe000
     c72: 6025         	str	r5, [r4]
     c74: 460d         	mov	r5, r1
     c76: 8b4c         	ldrh	r4, [r1, #0x1a]
     c78: eb04 0444    	add.w	r4, r4, r4, lsl #1
     c7c: eb01 06c4    	add.w	r6, r1, r4, lsl #3
     c80: f841 2034    	str.w	r2, [r1, r4, lsl #3]
     c84: 6073         	str	r3, [r6, #0x4]
     c86: f835 4f18    	ldrh	r4, [r5, #24]!
     c8a: f8b6 9010    	ldrh.w	r9, [r6, #0x10]
     c8e: 4554         	cmp	r4, r10
     c90: f886 800c    	strb.w	r8, [r6, #0xc]
     c94: f8c6 e008    	str.w	lr, [r6, #0x8]
     c98: f8a1 901a    	strh.w	r9, [r1, #0x1a]
     c9c: d028         	beq	0xcf0 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1c2> @ imm = #0x50
     c9e: e9d1 4500    	ldrd	r4, r5, [r1]
     ca2: 1aa2         	subs	r2, r4, r2
     ca4: eb65 0203    	sbc.w	r2, r5, r3
     ca8: f1b2 3fff    	cmp.w	r2, #0xffffffff
     cac: dc2a         	bgt	0xd04 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1d6> @ imm = #0x54
     cae: f831 2f10    	ldrh	r2, [r1, #16]!
     cb2: 4552         	cmp	r2, r10
     cb4: d029         	beq	0xd0a <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1dc> @ imm = #0x52
     cb6: e7fe         	b	0xcb6 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x188> @ imm = #-0x4
     cb8: f64e 5504    	movw	r5, #0xed04
     cbc: f04f 6680    	mov.w	r6, #0x4000000
     cc0: f2ce 0500    	movt	r5, #0xe000
     cc4: 602e         	str	r6, [r5]
     cc6: 8b4d         	ldrh	r5, [r1, #0x1a]
     cc8: eb05 0545    	add.w	r5, r5, r5, lsl #1
     ccc: eb01 06c5    	add.w	r6, r1, r5, lsl #3
     cd0: f841 2035    	str.w	r2, [r1, r5, lsl #3]
     cd4: 460d         	mov	r5, r1
     cd6: 6073         	str	r3, [r6, #0x4]
     cd8: f835 4f18    	ldrh	r4, [r5, #24]!
     cdc: f8b6 9010    	ldrh.w	r9, [r6, #0x10]
     ce0: 4554         	cmp	r4, r10
     ce2: f886 800c    	strb.w	r8, [r6, #0xc]
     ce6: f8c6 e008    	str.w	lr, [r6, #0x8]
     cea: f8a1 901a    	strh.w	r9, [r1, #0x1a]
     cee: d101         	bne	0xcf4 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1c6> @ imm = #0x2
     cf0: 4629         	mov	r1, r5
     cf2: e00a         	b	0xd0a <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1dc> @ imm = #0x14
     cf4: e9d1 4500    	ldrd	r4, r5, [r1]
     cf8: 1aa2         	subs	r2, r4, r2
     cfa: eb65 0203    	sbc.w	r2, r5, r3
     cfe: f1b2 3fff    	cmp.w	r2, #0xffffffff
     d02: dd11         	ble	0xd28 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1fa> @ imm = #0x22
     d04: 3118         	adds	r1, #0x18
     d06: f04f 0a00    	mov.w	r10, #0x0
     d0a: 2200         	movs	r2, #0x0
     d0c: f8c0 e004    	str.w	lr, [r0, #0x4]
     d10: 6002         	str	r2, [r0]
     d12: ea5f 70cc    	lsls.w	r0, r12, #0x1f
     d16: f8a6 a010    	strh.w	r10, [r6, #0x10]
     d1a: 800a         	strh	r2, [r1]
     d1c: f47f af7b    	bne.w	0xc16 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0xe8> @ imm = #-0x10a
     d20: b662         	cpsie i
     d22: e8bd 0700    	pop.w	{r8, r9, r10}
     d26: bdf0         	pop	{r4, r5, r6, r7, pc}
     d28: f831 2f10    	ldrh	r2, [r1, #16]!
     d2c: 4552         	cmp	r2, r10
     d2e: d0ec         	beq	0xd0a <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x1dc> @ imm = #-0x28
     d30: e7fe         	b	0xd30 <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d+0x202> @ imm = #-0x4

00000d32 <TIMER0>:
     d32: b5f0         	push	{r4, r5, r6, r7, lr}
     d34: af03         	add	r7, sp, #0xc
     d36: e92d 0f00    	push.w	{r8, r9, r10, r11}
     d3a: b0a1         	sub	sp, #0x84
     d3c: f240 4950    	movw	r9, #0x450
     d40: f2c2 0900    	movt	r9, #0x2000
     d44: f8d9 0024    	ldr.w	r0, [r9, #0x24]
     d48: f8d9 1028    	ldr.w	r1, [r9, #0x28]
     d4c: f3bf 8f5f    	dmb	sy
     d50: 4288         	cmp	r0, r1
     d52: f000 8111    	beq.w	0xf78 <TIMER0+0x246>    @ imm = #0x222
     d56: f240 4a98    	movw	r10, #0x498
     d5a: f240 4590    	movw	r5, #0x490
     d5e: f10d 0858    	add.w	r8, sp, #0x58
     d62: f2c2 0a00    	movt	r10, #0x2000
     d66: f108 0115    	add.w	r1, r8, #0x15
     d6a: 2600         	movs	r6, #0x0
     d6c: f2c2 0500    	movt	r5, #0x2000
     d70: 24fa         	movs	r4, #0xfa
     d72: 9103         	str	r1, [sp, #0xc]
     d74: f108 0104    	add.w	r1, r8, #0x4
     d78: 9102         	str	r1, [sp, #0x8]
     d7a: f3bf 8f5f    	dmb	sy
     d7e: f080 0001    	eor	r0, r0, #0x1
     d82: f8c9 0024    	str.w	r0, [r9, #0x24]
     d86: e9da 1000    	ldrd	r1, r0, [r10]
     d8a: 2800         	cmp	r0, #0x0
     d8c: f8d9 201c    	ldr.w	r2, [r9, #0x1c]
     d90: eb09 0302    	add.w	r3, r9, r2
     d94: f082 0201    	eor	r2, r2, #0x1
     d98: f883 6020    	strb.w	r6, [r3, #0x20]
     d9c: f3bf 8f5f    	dmb	sy
     da0: f8c9 201c    	str.w	r2, [r9, #0x1c]
     da4: f109 0204    	add.w	r2, r9, #0x4
     da8: 9007         	str	r0, [sp, #0x1c]
     daa: e9cd 5105    	strd	r5, r1, [sp, #20]
     dae: 9204         	str	r2, [sp, #0x10]
     db0: f100 80ef    	bmi.w	0xf92 <TIMER0+0x260>    @ imm = #0x1de
     db4: fba1 1204    	umull	r1, r2, r1, r4
     db8: fba0 0304    	umull	r0, r3, r0, r4
     dbc: 1880         	adds	r0, r0, r2
     dbe: f146 0200    	adc	r2, r6, #0x0
     dc2: 2b00         	cmp	r3, #0x0
     dc4: bf18         	it	ne
     dc6: 2301         	movne	r3, #0x1
     dc8: 431a         	orrs	r2, r3
     dca: f040 80f5    	bne.w	0xfb8 <TIMER0+0x286>    @ imm = #0x1ea
     dce: e9cd 1008    	strd	r1, r0, [sp, #32]
     dd2: 2004         	movs	r0, #0x4
     dd4: 900b         	str	r0, [sp, #0x2c]
     dd6: f243 2020    	movw	r0, #0x3220
     dda: f2c0 0000    	movt	r0, #0x0
     dde: 960e         	str	r6, [sp, #0x38]
     de0: 900a         	str	r0, [sp, #0x28]
     de2: 2003         	movs	r0, #0x3
     de4: 900d         	str	r0, [sp, #0x34]
     de6: a810         	add	r0, sp, #0x40
     de8: 900c         	str	r0, [sp, #0x30]
     dea: f240 7087    	movw	r0, #0x787
     dee: f2c0 0000    	movt	r0, #0x0
     df2: 9015         	str	r0, [sp, #0x54]
     df4: a808         	add	r0, sp, #0x20
     df6: 9014         	str	r0, [sp, #0x50]
     df8: f240 6019    	movw	r0, #0x619
     dfc: f2c0 0000    	movt	r0, #0x0
     e00: 9013         	str	r0, [sp, #0x4c]
     e02: a806         	add	r0, sp, #0x18
     e04: 9012         	str	r0, [sp, #0x48]
     e06: f240 30eb    	movw	r0, #0x3eb
     e0a: f2c0 0000    	movt	r0, #0x0
     e0e: 9011         	str	r0, [sp, #0x44]
     e10: a804         	add	r0, sp, #0x10
     e12: 9010         	str	r0, [sp, #0x40]
     e14: f3ef 8b10    	mrs	r11, primask
     e18: b672         	cpsid i
     e1a: f8d9 0030    	ldr.w	r0, [r9, #0x30]
     e1e: 2800         	cmp	r0, #0x0
     e20: f040 80b1    	bne.w	0xf86 <TIMER0+0x254>    @ imm = #0x162
     e24: f04f 30ff    	mov.w	r0, #0xffffffff
     e28: f8c9 0030    	str.w	r0, [r9, #0x30]
     e2c: f8d9 0034    	ldr.w	r0, [r9, #0x34]
     e30: 2800         	cmp	r0, #0x0
     e32: d05f         	beq	0xef4 <TIMER0+0x1c2>    @ imm = #0xbe
     e34: f8d9 0038    	ldr.w	r0, [r9, #0x38]
     e38: 68c1         	ldr	r1, [r0, #0xc]
     e3a: f3bf 8f5f    	dmb	sy
     e3e: 6902         	ldr	r2, [r0, #0x10]
     e40: f3bf 8f5f    	dmb	sy
     e44: 6883         	ldr	r3, [r0, #0x8]
     e46: 4299         	cmp	r1, r3
     e48: bf38         	it	lo
     e4a: 429a         	cmplo	r2, r3
     e4c: d30a         	blo	0xe64 <TIMER0+0x132>    @ imm = #0x14
     e4e: 2100         	movs	r1, #0x0
     e50: f3bf 8f5f    	dmb	sy
     e54: 60c1         	str	r1, [r0, #0xc]
     e56: f3bf 8f5f    	dmb	sy
     e5a: f3bf 8f5f    	dmb	sy
     e5e: 6101         	str	r1, [r0, #0x10]
     e60: f3bf 8f5f    	dmb	sy
     e64: e9cd 161e    	strd	r1, r6, [sp, #120]
     e68: f899 103c    	ldrb.w	r1, [r9, #0x3c]
     e6c: f88d 6080    	strb.w	r6, [sp, #0x80]
     e70: 901d         	str	r0, [sp, #0x74]
     e72: b1b9         	cbz	r1, 0xea4 <TIMER0+0x172> @ imm = #0x2e
     e74: f8d9 0038    	ldr.w	r0, [r9, #0x38]
     e78: f243 01ff    	movw	r1, #0x30ff
     e7c: f1a7 022f    	sub.w	r2, r7, #0x2f
     e80: 2302         	movs	r3, #0x2
     e82: 6940         	ldr	r0, [r0, #0x14]
     e84: f3bf 8f5f    	dmb	sy
     e88: f827 1c2f    	strh	r1, [r7, #-47]
     e8c: f000 0003    	and	r0, r0, #0x3
     e90: 3802         	subs	r0, #0x2
     e92: fab0 f080    	clz	r0, r0
     e96: 0940         	lsrs	r0, r0, #0x5
     e98: 0041         	lsls	r1, r0, #0x1
     e9a: a81d         	add	r0, sp, #0x74
     e9c: f001 fbfd    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #0x17fa
     ea0: f889 603c    	strb.w	r6, [r9, #0x3c]
     ea4: ac1d         	add	r4, sp, #0x74
     ea6: 9e02         	ldr	r6, [sp, #0x8]
     ea8: 980b         	ldr	r0, [sp, #0x2c]
     eaa: cc1e         	ldm	r4, {r1, r2, r3, r4}
     eac: 2801         	cmp	r0, #0x1
     eae: f817 cc2d    	ldrb	r12, [r7, #-45]
     eb2: c61e         	stm	r6!, {r1, r2, r3, r4}
     eb4: f04f 0600    	mov.w	r6, #0x0
     eb8: aa0a         	add	r2, sp, #0x28
     eba: 9903         	ldr	r1, [sp, #0xc]
     ebc: f837 5c2f    	ldrh	r5, [r7, #-47]
     ec0: f88d 606c    	strb.w	r6, [sp, #0x6c]
     ec4: 800d         	strh	r5, [r1]
     ec6: f881 c002    	strb.w	r12, [r1, #0x2]
     eca: f109 013c    	add.w	r1, r9, #0x3c
     ece: 9116         	str	r1, [sp, #0x58]
     ed0: f243 41a4    	movw	r1, #0x34a4
     ed4: bf18         	it	ne
     ed6: 2800         	cmpne	r0, #0x0
     ed8: 4640         	mov	r0, r8
     eda: f2c0 0100    	movt	r1, #0x0
     ede: f000 ff5f    	bl	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #0xebe
     ee2: f89d 0068    	ldrb.w	r0, [sp, #0x68]
     ee6: 2802         	cmp	r0, #0x2
     ee8: d10b         	bne	0xf02 <TIMER0+0x1d0>    @ imm = #0x16
     eea: 9816         	ldr	r0, [sp, #0x58]
     eec: f89d 106c    	ldrb.w	r1, [sp, #0x6c]
     ef0: 7001         	strb	r1, [r0]
     ef2: e00d         	b	0xf10 <TIMER0+0x1de>    @ imm = #0x1a
     ef4: 2000         	movs	r0, #0x0
     ef6: f8c9 0030    	str.w	r0, [r9, #0x30]
     efa: ea5f 70cb    	lsls.w	r0, r11, #0x1f
     efe: d014         	beq	0xf2a <TIMER0+0x1f8>    @ imm = #0x28
     f00: e014         	b	0xf2c <TIMER0+0x1fa>    @ imm = #0x28
     f02: e9dd 0117    	ldrd	r0, r1, [sp, #92]
     f06: f3bf 8f5f    	dmb	sy
     f0a: 60c1         	str	r1, [r0, #0xc]
     f0c: f3bf 8f5f    	dmb	sy
     f10: f8d9 0030    	ldr.w	r0, [r9, #0x30]
     f14: f240 4590    	movw	r5, #0x490
     f18: f2c2 0500    	movt	r5, #0x2000
     f1c: 24fa         	movs	r4, #0xfa
     f1e: 3001         	adds	r0, #0x1
     f20: f8c9 0030    	str.w	r0, [r9, #0x30]
     f24: ea5f 70cb    	lsls.w	r0, r11, #0x1f
     f28: d100         	bne	0xf2c <TIMER0+0x1fa>    @ imm = #0x0
     f2a: b662         	cpsie i
     f2c: e9dd 0104    	ldrd	r0, r1, [sp, #16]
     f30: 7802         	ldrb	r2, [r0]
     f32: 7808         	ldrb	r0, [r1]
     f34: 07d1         	lsls	r1, r2, #0x1f
     f36: d102         	bne	0xf3e <TIMER0+0x20c>    @ imm = #0x4
     f38: f7ff fc43    	bl	0x7c2 <rtic_bare7d::led::led_on::h606562de4274dc5e> @ imm = #-0x77a
     f3c: e001         	b	0xf42 <TIMER0+0x210>    @ imm = #0x2
     f3e: f7ff fc5e    	bl	0x7fe <rtic_bare7d::led::led_off::h53d66a181c9d5c35> @ imm = #-0x744
     f42: 9804         	ldr	r0, [sp, #0x10]
     f44: 6801         	ldr	r1, [r0]
     f46: 3101         	adds	r1, #0x1
     f48: d249         	bhs	0xfde <TIMER0+0x2ac>    @ imm = #0x92
     f4a: 6001         	str	r1, [r0]
     f4c: e9dd 0106    	ldrd	r0, r1, [sp, #24]
     f50: 1d02         	adds	r2, r0, #0x4
     f52: 4640         	mov	r0, r8
     f54: f141 0300    	adc	r3, r1, #0x0
     f58: e9cd 2300    	strd	r2, r3, [sp]
     f5c: f7ff fde7    	bl	0xb2e <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d> @ imm = #-0x432
     f60: 9816         	ldr	r0, [sp, #0x58]
     f62: 2801         	cmp	r0, #0x1
     f64: d041         	beq	0xfea <TIMER0+0x2b8>    @ imm = #0x82
     f66: f8d9 0024    	ldr.w	r0, [r9, #0x24]
     f6a: f8d9 1028    	ldr.w	r1, [r9, #0x28]
     f6e: f3bf 8f5f    	dmb	sy
     f72: 4288         	cmp	r0, r1
     f74: f47f af01    	bne.w	0xd7a <TIMER0+0x48>     @ imm = #-0x1fe
     f78: 2000         	movs	r0, #0x0
     f7a: f380 8811    	msr	basepri, r0
     f7e: b021         	add	sp, #0x84
     f80: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     f84: bdf0         	pop	{r4, r5, r6, r7, pc}
     f86: f243 50d0    	movw	r0, #0x35d0
     f8a: f2c0 0000    	movt	r0, #0x0
     f8e: f000 ffd2    	bl	0x1f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213> @ imm = #0xfa4
     f92: 2101         	movs	r1, #0x1
     f94: 2000         	movs	r0, #0x0
     f96: 9117         	str	r1, [sp, #0x5c]
     f98: f243 11d8    	movw	r1, #0x31d8
     f9c: f2c0 0100    	movt	r1, #0x0
     fa0: 901a         	str	r0, [sp, #0x68]
     fa2: 9019         	str	r0, [sp, #0x64]
     fa4: 2004         	movs	r0, #0x4
     fa6: 9116         	str	r1, [sp, #0x58]
     fa8: f243 1168    	movw	r1, #0x3168
     fac: 9018         	str	r0, [sp, #0x60]
     fae: a816         	add	r0, sp, #0x58
     fb0: f2c0 0100    	movt	r1, #0x0
     fb4: f000 fa28    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #0x450
     fb8: 2101         	movs	r1, #0x1
     fba: 2000         	movs	r0, #0x0
     fbc: 9117         	str	r1, [sp, #0x5c]
     fbe: f243 11f0    	movw	r1, #0x31f0
     fc2: f2c0 0100    	movt	r1, #0x0
     fc6: 901a         	str	r0, [sp, #0x68]
     fc8: 9019         	str	r0, [sp, #0x64]
     fca: 2004         	movs	r0, #0x4
     fcc: 9116         	str	r1, [sp, #0x58]
     fce: f243 21c0    	movw	r1, #0x32c0
     fd2: 9018         	str	r0, [sp, #0x60]
     fd4: a816         	add	r0, sp, #0x58
     fd6: f2c0 0100    	movt	r1, #0x0
     fda: f000 fa15    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #0x42a
     fde: f243 2040    	movw	r0, #0x3240
     fe2: f2c0 0000    	movt	r0, #0x0
     fe6: f001 f9b9    	bl	0x235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5> @ imm = #0x1372
     fea: e9dd 0118    	ldrd	r0, r1, [sp, #96]
     fee: e9cd 0110    	strd	r0, r1, [sp, #64]
     ff2: f243 2150    	movw	r1, #0x3250
     ff6: a810         	add	r0, sp, #0x40
     ff8: f2c0 0100    	movt	r1, #0x0
     ffc: f001 f907    	bl	0x220e <core::result::unwrap_failed::h0c011c1f5dd171b7> @ imm = #0x120e

00001000 <SysTick>:
    1000: b5f0         	push	{r4, r5, r6, r7, lr}
    1002: af03         	add	r7, sp, #0xc
    1004: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1008: f24e 0b10    	movw	r11, #0xe010
    100c: f240 0900    	movw	r9, #0x0
    1010: f240 4e50    	movw	lr, #0x450
    1014: f2ce 0b00    	movt	r11, #0xe000
    1018: f2c2 0900    	movt	r9, #0x2000
    101c: f64f 7aff    	movw	r10, #0xffff
    1020: f2c2 0e00    	movt	lr, #0x2000
    1024: f44f 7880    	mov.w	r8, #0x100
    1028: e001         	b	0x102e <SysTick+0x2e>   @ imm = #0x2
    102a: f8cb 81f0    	str.w	r8, [r11, #0x1f0]
    102e: f3ef 8c10    	mrs	r12, primask
    1032: b672         	cpsid i
    1034: f8b9 0018    	ldrh.w	r0, [r9, #0x18]
    1038: 4550         	cmp	r0, r10
    103a: d119         	bne	0x1070 <SysTick+0x70>   @ imm = #0x32
    103c: 2400         	movs	r4, #0x0
    103e: ea5f 70cc    	lsls.w	r0, r12, #0x1f
    1042: d100         	bne	0x1046 <SysTick+0x46>   @ imm = #0x0
    1044: b662         	cpsie i
    1046: 2c00         	cmp	r4, #0x0
    1048: f3ef 8310    	mrs	r3, primask
    104c: b672         	cpsid i
    104e: d06a         	beq	0x1126 <SysTick+0x126>  @ imm = #0xd4
    1050: f8de 0028    	ldr.w	r0, [lr, #0x28]
    1054: eb0e 0200    	add.w	r2, lr, r0
    1058: f080 0001    	eor	r0, r0, #0x1
    105c: f882 102c    	strb.w	r1, [r2, #0x2c]
    1060: f3bf 8f5f    	dmb	sy
    1064: f8ce 0028    	str.w	r0, [lr, #0x28]
    1068: 07d8         	lsls	r0, r3, #0x1f
    106a: d1de         	bne	0x102a <SysTick+0x2a>   @ imm = #-0x44
    106c: b662         	cpsie i
    106e: e7dc         	b	0x102a <SysTick+0x2a>   @ imm = #-0x48
    1070: e9d9 4500    	ldrd	r4, r5, [r9]
    1074: f8db 0000    	ldr.w	r0, [r11]
    1078: e9de 1304    	ldrd	r1, r3, [lr, #16]
    107c: 03c0         	lsls	r0, r0, #0xf
    107e: d504         	bpl	0x108a <SysTick+0x8a>   @ imm = #0x8
    1080: 3101         	adds	r1, #0x1
    1082: f143 0300    	adc	r3, r3, #0x0
    1086: e9ce 1304    	strd	r1, r3, [lr, #16]
    108a: ea84 0001    	eor.w	r0, r4, r1
    108e: ea85 0203    	eor.w	r2, r5, r3
    1092: ea40 0602    	orr.w	r6, r0, r2
    1096: 1a60         	subs	r0, r4, r1
    1098: eb65 0203    	sbc.w	r2, r5, r3
    109c: b386         	cbz	r6, 0x1100 <SysTick+0x100> @ imm = #0x60
    109e: f1b0 30ff    	subs.w	r0, r0, #0xffffffff
    10a2: f06f 4000    	mvn	r0, #0x80000000
    10a6: eb72 0000    	sbcs.w	r0, r2, r0
    10aa: d229         	bhs	0x1100 <SysTick+0x100>  @ imm = #0x52
    10ac: f8db 0000    	ldr.w	r0, [r11]
    10b0: 03c0         	lsls	r0, r0, #0xf
    10b2: d407         	bmi	0x10c4 <SysTick+0xc4>   @ imm = #0xe
    10b4: f04f 0800    	mov.w	r8, #0x0
    10b8: f1b8 0f00    	cmp.w	r8, #0x0
    10bc: f44f 7880    	mov.w	r8, #0x100
    10c0: d018         	beq	0x10f4 <SysTick+0xf4>   @ imm = #0x30
    10c2: e01d         	b	0x1100 <SysTick+0x100>  @ imm = #0x3a
    10c4: 3101         	adds	r1, #0x1
    10c6: f06f 0601    	mvn	r6, #0x1
    10ca: f143 0300    	adc	r3, r3, #0x0
    10ce: 1a60         	subs	r0, r4, r1
    10d0: eb65 0203    	sbc.w	r2, r5, r3
    10d4: 1a30         	subs	r0, r6, r0
    10d6: f06f 4000    	mvn	r0, #0x80000000
    10da: f04f 0800    	mov.w	r8, #0x0
    10de: e9ce 1304    	strd	r1, r3, [lr, #16]
    10e2: 4190         	sbcs	r0, r2
    10e4: bf38         	it	lo
    10e6: f04f 0801    	movlo.w	r8, #0x1
    10ea: f1b8 0f00    	cmp.w	r8, #0x0
    10ee: f44f 7880    	mov.w	r8, #0x100
    10f2: d105         	bne	0x1100 <SysTick+0x100>  @ imm = #0xa
    10f4: ea84 0001    	eor.w	r0, r4, r1
    10f8: ea85 0103    	eor.w	r1, r5, r3
    10fc: 4308         	orrs	r0, r1
    10fe: d19d         	bne	0x103c <SysTick+0x3c>   @ imm = #-0xc6
    1100: f8b9 2010    	ldrh.w	r2, [r9, #0x10]
    1104: 2401         	movs	r4, #0x1
    1106: f8b9 001a    	ldrh.w	r0, [r9, #0x1a]
    110a: f8a9 2018    	strh.w	r2, [r9, #0x18]
    110e: 2200         	movs	r2, #0x0
    1110: f899 100c    	ldrb.w	r1, [r9, #0xc]
    1114: f8a9 201a    	strh.w	r2, [r9, #0x1a]
    1118: f8a9 0010    	strh.w	r0, [r9, #0x10]
    111c: ea5f 70cc    	lsls.w	r0, r12, #0x1f
    1120: f43f af90    	beq.w	0x1044 <SysTick+0x44>   @ imm = #-0xe0
    1124: e78f         	b	0x1046 <SysTick+0x46>   @ imm = #-0xe2
    1126: f89e 0000    	ldrb.w	r0, [lr]
    112a: 2801         	cmp	r0, #0x1
    112c: d10a         	bne	0x1144 <SysTick+0x144>  @ imm = #0x14
    112e: f8db 0000    	ldr.w	r0, [r11]
    1132: 03c0         	lsls	r0, r0, #0xf
    1134: d506         	bpl	0x1144 <SysTick+0x144>  @ imm = #0xc
    1136: e9de 0104    	ldrd	r0, r1, [lr, #16]
    113a: 3001         	adds	r0, #0x1
    113c: f141 0100    	adc	r1, r1, #0x0
    1140: e9ce 0104    	strd	r0, r1, [lr, #16]
    1144: 07d8         	lsls	r0, r3, #0x1f
    1146: d100         	bne	0x114a <SysTick+0x14a>  @ imm = #0x0
    1148: b662         	cpsie i
    114a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    114e: bdf0         	pop	{r4, r5, r6, r7, pc}

00001150 <main>:
    1150: b580         	push	{r7, lr}
    1152: 466f         	mov	r7, sp
    1154: f240 4050    	movw	r0, #0x450
    1158: b672         	cpsid i
    115a: f2c2 0000    	movt	r0, #0x2000
    115e: 2300         	movs	r3, #0x0
    1160: 69c1         	ldr	r1, [r0, #0x1c]
    1162: 1842         	adds	r2, r0, r1
    1164: f081 0101    	eor	r1, r1, #0x1
    1168: f882 3020    	strb.w	r3, [r2, #0x20]
    116c: f3bf 8f5f    	dmb	sy
    1170: 61c1         	str	r1, [r0, #0x1c]
    1172: f24e 0010    	movw	r0, #0xe010
    1176: 21e0         	movs	r1, #0xe0
    1178: f2ce 0000    	movt	r0, #0xe000
    117c: f880 13f8    	strb.w	r1, [r0, #0x3f8]
    1180: f44f 7180    	mov.w	r1, #0x100
    1184: f8c0 10f0    	str.w	r1, [r0, #0xf0]
    1188: f64e 5123    	movw	r1, #0xed23
    118c: f2ce 0100    	movt	r1, #0xe000
    1190: 700b         	strb	r3, [r1]
    1192: 6801         	ldr	r1, [r0]
    1194: f041 0102    	orr	r1, r1, #0x2
    1198: 6001         	str	r1, [r0]
    119a: f000 f802    	bl	0x11a2 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca> @ imm = #0x4
    119e: f7ff fb4c    	bl	0x83a <rtic_bare7d::app::idle::hf33958c01072935d> @ imm = #-0x968

000011a2 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca>:
    11a2: b5f0         	push	{r4, r5, r6, r7, lr}
    11a4: af03         	add	r7, sp, #0xc
    11a6: e92d 0b00    	push.w	{r8, r9, r11}
    11aa: b088         	sub	sp, #0x20
    11ac: f240 4950    	movw	r9, #0x450
    11b0: 2001         	movs	r0, #0x1
    11b2: f2c2 0900    	movt	r9, #0x2000
    11b6: f889 0002    	strb.w	r0, [r9, #0x2]
    11ba: f3ef 8110    	mrs	r1, primask
    11be: b672         	cpsid i
    11c0: f899 2001    	ldrb.w	r2, [r9, #0x1]
    11c4: 2a01         	cmp	r2, #0x1
    11c6: f000 8095    	beq.w	0x12f4 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca+0x152> @ imm = #0x12a
    11ca: f889 0001    	strb.w	r0, [r9, #0x1]
    11ce: 07c8         	lsls	r0, r1, #0x1f
    11d0: d100         	bne	0x11d4 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca+0x32> @ imm = #0x0
    11d2: b662         	cpsie i
    11d4: f240 0420    	movw	r4, #0x20
    11d8: 2130         	movs	r1, #0x30
    11da: f2c2 0400    	movt	r4, #0x2000
    11de: 4620         	mov	r0, r4
    11e0: f001 fc20    	bl	0x2a24 <__aeabi_memclr4> @ imm = #0x1840
    11e4: f243 008b    	movw	r0, #0x308b
    11e8: 2100         	movs	r1, #0x0
    11ea: f2c0 0000    	movt	r0, #0x0
    11ee: 2254         	movs	r2, #0x54
    11f0: 61a0         	str	r0, [r4, #0x18]
    11f2: f44f 6080    	mov.w	r0, #0x400
    11f6: 6220         	str	r0, [r4, #0x20]
    11f8: 2320         	movs	r3, #0x20
    11fa: 6ae0         	ldr	r0, [r4, #0x2c]
    11fc: f3bf 8f5f    	dmb	sy
    1200: f3bf 8f5f    	dmb	sy
    1204: f020 0003    	bic	r0, r0, #0x3
    1208: 62e0         	str	r0, [r4, #0x2c]
    120a: f240 0050    	movw	r0, #0x50
    120e: f3bf 8f5f    	dmb	sy
    1212: f2c2 0000    	movt	r0, #0x2000
    1216: 61e0         	str	r0, [r4, #0x1c]
    1218: 2001         	movs	r0, #0x1
    121a: 6120         	str	r0, [r4, #0x10]
    121c: 6161         	str	r1, [r4, #0x14]
    121e: 73e1         	strb	r1, [r4, #0xf]
    1220: 73a1         	strb	r1, [r4, #0xe]
    1222: 7361         	strb	r1, [r4, #0xd]
    1224: 7321         	strb	r1, [r4, #0xc]
    1226: 72e1         	strb	r1, [r4, #0xb]
    1228: 72a1         	strb	r1, [r4, #0xa]
    122a: 7262         	strb	r2, [r4, #0x9]
    122c: 7222         	strb	r2, [r4, #0x8]
    122e: 2252         	movs	r2, #0x52
    1230: 71e2         	strb	r2, [r4, #0x7]
    1232: 71a3         	strb	r3, [r4, #0x6]
    1234: 2347         	movs	r3, #0x47
    1236: 7162         	strb	r2, [r4, #0x5]
    1238: 2245         	movs	r2, #0x45
    123a: 7122         	strb	r2, [r4, #0x4]
    123c: 70e3         	strb	r3, [r4, #0x3]
    123e: 70a3         	strb	r3, [r4, #0x2]
    1240: 7062         	strb	r2, [r4, #0x1]
    1242: 2253         	movs	r2, #0x53
    1244: 7022         	strb	r2, [r4]
    1246: f3ef 8210    	mrs	r2, primask
    124a: b672         	cpsid i
    124c: f8d9 3030    	ldr.w	r3, [r9, #0x30]
    1250: 2b00         	cmp	r3, #0x0
    1252: d151         	bne	0x12f8 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca+0x156> @ imm = #0xa2
    1254: f889 103c    	strb.w	r1, [r9, #0x3c]
    1258: f104 0118    	add.w	r1, r4, #0x18
    125c: e9c9 010d    	strd	r0, r1, [r9, #52]
    1260: 07d0         	lsls	r0, r2, #0x1f
    1262: d100         	bne	0x1266 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca+0xc4> @ imm = #0x0
    1264: b662         	cpsie i
    1266: f243 0094    	movw	r0, #0x3094
    126a: 210d         	movs	r1, #0xd
    126c: f2c0 0000    	movt	r0, #0x0
    1270: f04f 080d    	mov.w	r8, #0xd
    1274: f001 faab    	bl	0x27ce <rtt_target::print::print_impl::write_str::h7949a8452c806172> @ imm = #0x1556
    1278: f24e 0610    	movw	r6, #0xe010
    127c: f44f 5100    	mov.w	r1, #0x2000
    1280: f2ce 0600    	movt	r6, #0xe000
    1284: 2400         	movs	r4, #0x0
    1286: 6830         	ldr	r0, [r6]
    1288: 2300         	movs	r3, #0x0
    128a: f020 0001    	bic	r0, r0, #0x1
    128e: 6030         	str	r0, [r6]
    1290: 6830         	ldr	r0, [r6]
    1292: f040 0004    	orr	r0, r0, #0x4
    1296: 6030         	str	r0, [r6]
    1298: f242 30ff    	movw	r0, #0x23ff
    129c: f2c0 00f4    	movt	r0, #0xf4
    12a0: 6070         	str	r0, [r6, #0x4]
    12a2: f240 500c    	movw	r0, #0x50c
    12a6: f2c5 0000    	movt	r0, #0x5000
    12aa: 6001         	str	r1, [r0]
    12ac: 2103         	movs	r1, #0x3
    12ae: f8c0 1228    	str.w	r1, [r0, #0x228]
    12b2: 6830         	ldr	r0, [r6]
    12b4: f3c0 4500    	ubfx	r5, r0, #0x10, #0x1
    12b8: a802         	add	r0, sp, #0x8
    12ba: 1d2a         	adds	r2, r5, #0x4
    12bc: e9cd 2400    	strd	r2, r4, [sp]
    12c0: f7ff fc35    	bl	0xb2e <rtic_bare7d::app::__rtic_internal_blink_MyMono_spawn_at::h47f0b2aabb5d162d> @ imm = #-0x796
    12c4: 9802         	ldr	r0, [sp, #0x8]
    12c6: 2801         	cmp	r0, #0x1
    12c8: d01c         	beq	0x1304 <rtic_bare7d::app::rtic_ext::main::__rtic_init_resources::h14c2bde6701de6ca+0x162> @ imm = #0x38
    12ca: 60b4         	str	r4, [r6, #0x8]
    12cc: f240 4190    	movw	r1, #0x490
    12d0: 6830         	ldr	r0, [r6]
    12d2: f2c2 0100    	movt	r1, #0x2000
    12d6: f881 8000    	strb.w	r8, [r1]
    12da: f040 0001    	orr	r0, r0, #0x1
    12de: 6030         	str	r0, [r6]
    12e0: 2001         	movs	r0, #0x1
    12e2: e9c9 5404    	strd	r5, r4, [r9, #16]
    12e6: f889 0000    	strb.w	r0, [r9]
    12ea: b662         	cpsie i
    12ec: b008         	add	sp, #0x20
    12ee: e8bd 0b00    	pop.w	{r8, r9, r11}
    12f2: bdf0         	pop	{r4, r5, r6, r7, pc}
    12f4: f000 f9ba    	bl	0x166c <core::panicking::panic::hb7da25e41ead6f4c> @ imm = #0x374
    12f8: f243 50c0    	movw	r0, #0x35c0
    12fc: f2c0 0000    	movt	r0, #0x0
    1300: f000 fe19    	bl	0x1f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213> @ imm = #0xc32
    1304: e9dd 0104    	ldrd	r0, r1, [sp, #16]
    1308: e9cd 0106    	strd	r0, r1, [sp, #24]
    130c: f243 01f8    	movw	r1, #0x30f8
    1310: a806         	add	r0, sp, #0x18
    1312: f2c0 0100    	movt	r1, #0x0
    1316: f000 ff7a    	bl	0x220e <core::result::unwrap_failed::h0c011c1f5dd171b7> @ imm = #0xef4

0000131a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8>:
    131a: b5f0         	push	{r4, r5, r6, r7, lr}
    131c: af03         	add	r7, sp, #0xc
    131e: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1322: b085         	sub	sp, #0x14
    1324: 6804         	ldr	r4, [r0]
    1326: f242 7010    	movw	r0, #0x2710
    132a: 460d         	mov	r5, r1
    132c: f64f 7e9c    	movw	lr, #0xff9c
    1330: 4284         	cmp	r4, r0
    1332: f243 30ad    	movw	r0, #0x33ad
    1336: f2c0 0000    	movt	r0, #0x0
    133a: d33c         	blo	0x13b6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0x9c> @ imm = #0x78
    133c: f241 7859    	movw	r8, #0x1759
    1340: f24e 02ff    	movw	r2, #0xe0ff
    1344: f1a7 0b26    	sub.w	r11, r7, #0x26
    1348: 2100         	movs	r1, #0x0
    134a: f2cd 18b7    	movt	r8, #0xd1b7
    134e: f64d 09f0    	movw	r9, #0xd8f0
    1352: f241 4a7b    	movw	r10, #0x147b
    1356: f2c0 52f5    	movt	r2, #0x5f5
    135a: 9501         	str	r5, [sp, #0x4]
    135c: fba4 3508    	umull	r3, r5, r4, r8
    1360: eb0b 0c01    	add.w	r12, r11, r1
    1364: 3904         	subs	r1, #0x4
    1366: 4294         	cmp	r4, r2
    1368: ea4f 3355    	lsr.w	r3, r5, #0xd
    136c: fb03 4509    	mla	r5, r3, r9, r4
    1370: 461c         	mov	r4, r3
    1372: b2ae         	uxth	r6, r5
    1374: ea4f 0696    	lsr.w	r6, r6, #0x2
    1378: fb06 f60a    	mul	r6, r6, r10
    137c: ea4f 4656    	lsr.w	r6, r6, #0x11
    1380: fb06 550e    	mla	r5, r6, lr, r5
    1384: f830 6016    	ldrh.w	r6, [r0, r6, lsl #1]
    1388: f8ac 6006    	strh.w	r6, [r12, #0x6]
    138c: b2ad         	uxth	r5, r5
    138e: f830 5015    	ldrh.w	r5, [r0, r5, lsl #1]
    1392: f8ac 5008    	strh.w	r5, [r12, #0x8]
    1396: d8e1         	bhi	0x135c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0x42> @ imm = #-0x3e
    1398: 9d01         	ldr	r5, [sp, #0x4]
    139a: 310a         	adds	r1, #0xa
    139c: 461c         	mov	r4, r3
    139e: 2c63         	cmp	r4, #0x63
    13a0: d80c         	bhi	0x13bc <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0xa2> @ imm = #0x18
    13a2: 4622         	mov	r2, r4
    13a4: 2a0a         	cmp	r2, #0xa
    13a6: d31a         	blo	0x13de <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0xc4> @ imm = #0x34
    13a8: f830 0012    	ldrh.w	r0, [r0, r2, lsl #1]
    13ac: 3902         	subs	r1, #0x2
    13ae: f1a7 0226    	sub.w	r2, r7, #0x26
    13b2: 5250         	strh	r0, [r2, r1]
    13b4: e019         	b	0x13ea <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0xd0> @ imm = #0x32
    13b6: 210a         	movs	r1, #0xa
    13b8: 2c63         	cmp	r4, #0x63
    13ba: d9f2         	bls	0x13a2 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0x88> @ imm = #-0x1c
    13bc: b2a2         	uxth	r2, r4
    13be: f241 437b    	movw	r3, #0x147b
    13c2: 0892         	lsrs	r2, r2, #0x2
    13c4: 3902         	subs	r1, #0x2
    13c6: 435a         	muls	r2, r3, r2
    13c8: f1a7 0626    	sub.w	r6, r7, #0x26
    13cc: 0c52         	lsrs	r2, r2, #0x11
    13ce: fb02 430e    	mla	r3, r2, lr, r4
    13d2: b29b         	uxth	r3, r3
    13d4: f830 3013    	ldrh.w	r3, [r0, r3, lsl #1]
    13d8: 5273         	strh	r3, [r6, r1]
    13da: 2a0a         	cmp	r2, #0xa
    13dc: d2e4         	bhs	0x13a8 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h487b2a21236c21d8+0x8e> @ imm = #-0x38
    13de: 3901         	subs	r1, #0x1
    13e0: f042 0030    	orr	r0, r2, #0x30
    13e4: f1a7 0226    	sub.w	r2, r7, #0x26
    13e8: 5450         	strb	r0, [r2, r1]
    13ea: f1c1 000a    	rsb.w	r0, r1, #0xa
    13ee: 9000         	str	r0, [sp]
    13f0: f1a7 0026    	sub.w	r0, r7, #0x26
    13f4: 2200         	movs	r2, #0x0
    13f6: 1843         	adds	r3, r0, r1
    13f8: 4628         	mov	r0, r5
    13fa: 2101         	movs	r1, #0x1
    13fc: f000 f80f    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #0x1e
    1400: b005         	add	sp, #0x14
    1402: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1406: bdf0         	pop	{r4, r5, r6, r7, pc}

00001408 <core::panicking::panic_fmt::he614eca46fdfef54>:
    1408: b580         	push	{r7, lr}
    140a: 466f         	mov	r7, sp
    140c: b084         	sub	sp, #0x10
    140e: e9cd 0101    	strd	r0, r1, [sp, #4]
    1412: a801         	add	r0, sp, #0x4
    1414: 2201         	movs	r2, #0x1
    1416: f8ad 200c    	strh.w	r2, [sp, #0xc]
    141a: f000 ffc7    	bl	0x23ac <rust_begin_unwind> @ imm = #0xf8e

0000141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138>:
    141e: b5f0         	push	{r4, r5, r6, r7, lr}
    1420: af03         	add	r7, sp, #0xc
    1422: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1426: b087         	sub	sp, #0x1c
    1428: 460c         	mov	r4, r1
    142a: 6941         	ldr	r1, [r0, #0x14]
    142c: f8d7 8008    	ldr.w	r8, [r7, #0x8]
    1430: 4693         	mov	r11, r2
    1432: f011 0201    	ands	r2, r1, #0x1
    1436: f04f 0a2b    	mov.w	r10, #0x2b
    143a: eb02 0508    	add.w	r5, r2, r8
    143e: bf08         	it	eq
    1440: f44f 1a88    	moveq.w	r10, #0x110000
    1444: 4699         	mov	r9, r3
    1446: 074a         	lsls	r2, r1, #0x1d
    1448: d412         	bmi	0x1470 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x52> @ imm = #0x24
    144a: 2400         	movs	r4, #0x0
    144c: 6802         	ldr	r2, [r0]
    144e: bb7a         	cbnz	r2, 0x14b0 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x92> @ imm = #0x5e
    1450: e9d0 5607    	ldrd	r5, r6, [r0, #28]
    1454: 4652         	mov	r2, r10
    1456: 4631         	mov	r1, r6
    1458: 4623         	mov	r3, r4
    145a: f8cd b000    	str.w	r11, [sp]
    145e: 4628         	mov	r0, r5
    1460: f000 f8e1    	bl	0x1626 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b> @ imm = #0x1c2
    1464: b1d0         	cbz	r0, 0x149c <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x7e> @ imm = #0x34
    1466: 2001         	movs	r0, #0x1
    1468: b007         	add	sp, #0x1c
    146a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    146e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1470: f1bb 0f00    	cmp.w	r11, #0x0
    1474: d016         	beq	0x14a4 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x86> @ imm = #0x2c
    1476: f01b 0303    	ands	r3, r11, #0x3
    147a: d015         	beq	0x14a8 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x8a> @ imm = #0x2a
    147c: f994 6000    	ldrsb.w	r6, [r4]
    1480: 2200         	movs	r2, #0x0
    1482: f116 0f41    	cmn.w	r6, #0x41
    1486: bfc8         	it	gt
    1488: 2201         	movgt	r2, #0x1
    148a: 2b01         	cmp	r3, #0x1
    148c: d00c         	beq	0x14a8 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x8a> @ imm = #0x18
    148e: f994 3001    	ldrsb.w	r3, [r4, #0x1]
    1492: f113 0f41    	cmn.w	r3, #0x41
    1496: bfc8         	it	gt
    1498: 3201         	addgt	r2, #0x1
    149a: e005         	b	0x14a8 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x8a> @ imm = #0xa
    149c: 68f3         	ldr	r3, [r6, #0xc]
    149e: 4628         	mov	r0, r5
    14a0: 4649         	mov	r1, r9
    14a2: e059         	b	0x1558 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x13a> @ imm = #0xb2
    14a4: 2200         	movs	r2, #0x0
    14a6: e7ff         	b	0x14a8 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x8a> @ imm = #-0x2
    14a8: 4415         	add	r5, r2
    14aa: 6802         	ldr	r2, [r0]
    14ac: 2a00         	cmp	r2, #0x0
    14ae: d0cf         	beq	0x1450 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x32> @ imm = #-0x62
    14b0: f8cd 9018    	str.w	r9, [sp, #0x18]
    14b4: f8d0 9004    	ldr.w	r9, [r0, #0x4]
    14b8: 45a9         	cmp	r9, r5
    14ba: d911         	bls	0x14e0 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0xc2> @ imm = #0x22
    14bc: 0709         	lsls	r1, r1, #0x1c
    14be: f8cd 8014    	str.w	r8, [sp, #0x14]
    14c2: d41d         	bmi	0x1500 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0xe2> @ imm = #0x3a
    14c4: 7e01         	ldrb	r1, [r0, #0x18]
    14c6: eba9 0205    	sub.w	r2, r9, r5
    14ca: 2903         	cmp	r1, #0x3
    14cc: bf08         	it	eq
    14ce: 2101         	moveq	r1, #0x1
    14d0: 2900         	cmp	r1, #0x0
    14d2: d048         	beq	0x1566 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x148> @ imm = #0x90
    14d4: 46a1         	mov	r9, r4
    14d6: 2901         	cmp	r1, #0x1
    14d8: d148         	bne	0x156c <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x14e> @ imm = #0x90
    14da: 4611         	mov	r1, r2
    14dc: 2200         	movs	r2, #0x0
    14de: e048         	b	0x1572 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x154> @ imm = #0x90
    14e0: e9d0 5607    	ldrd	r5, r6, [r0, #28]
    14e4: 4652         	mov	r2, r10
    14e6: 4631         	mov	r1, r6
    14e8: 4623         	mov	r3, r4
    14ea: f8cd b000    	str.w	r11, [sp]
    14ee: 4628         	mov	r0, r5
    14f0: f000 f899    	bl	0x1626 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b> @ imm = #0x132
    14f4: b368         	cbz	r0, 0x1552 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x134> @ imm = #0x5a
    14f6: 2001         	movs	r0, #0x1
    14f8: b007         	add	sp, #0x1c
    14fa: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    14fe: bdf0         	pop	{r4, r5, r6, r7, pc}
    1500: 6901         	ldr	r1, [r0, #0x10]
    1502: 4652         	mov	r2, r10
    1504: 9103         	str	r1, [sp, #0xc]
    1506: 4623         	mov	r3, r4
    1508: 7e01         	ldrb	r1, [r0, #0x18]
    150a: e9d0 8607    	ldrd	r8, r6, [r0, #28]
    150e: 9102         	str	r1, [sp, #0x8]
    1510: 2130         	movs	r1, #0x30
    1512: 6101         	str	r1, [r0, #0x10]
    1514: 2101         	movs	r1, #0x1
    1516: 7601         	strb	r1, [r0, #0x18]
    1518: 4631         	mov	r1, r6
    151a: 9004         	str	r0, [sp, #0x10]
    151c: 4640         	mov	r0, r8
    151e: f8cd b000    	str.w	r11, [sp]
    1522: f000 f880    	bl	0x1626 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b> @ imm = #0x100
    1526: 4601         	mov	r1, r0
    1528: 2001         	movs	r0, #0x1
    152a: 2900         	cmp	r1, #0x0
    152c: d19c         	bne	0x1468 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x4a> @ imm = #-0xc8
    152e: eba9 0005    	sub.w	r0, r9, r5
    1532: f8dd a018    	ldr.w	r10, [sp, #0x18]
    1536: 1c44         	adds	r4, r0, #0x1
    1538: 3c01         	subs	r4, #0x1
    153a: d03b         	beq	0x15b4 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x196> @ imm = #0x76
    153c: 6932         	ldr	r2, [r6, #0x10]
    153e: 4640         	mov	r0, r8
    1540: 2130         	movs	r1, #0x30
    1542: 4790         	blx	r2
    1544: 2800         	cmp	r0, #0x0
    1546: d0f7         	beq	0x1538 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x11a> @ imm = #-0x12
    1548: 2001         	movs	r0, #0x1
    154a: b007         	add	sp, #0x1c
    154c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1550: bdf0         	pop	{r4, r5, r6, r7, pc}
    1552: 68f3         	ldr	r3, [r6, #0xc]
    1554: 4628         	mov	r0, r5
    1556: 9906         	ldr	r1, [sp, #0x18]
    1558: 4642         	mov	r2, r8
    155a: b007         	add	sp, #0x1c
    155c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1560: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
    1564: 4718         	bx	r3
    1566: 9204         	str	r2, [sp, #0x10]
    1568: 46a1         	mov	r9, r4
    156a: e003         	b	0x1574 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x156> @ imm = #0x6
    156c: 0851         	lsrs	r1, r2, #0x1
    156e: 3201         	adds	r2, #0x1
    1570: 0852         	lsrs	r2, r2, #0x1
    1572: 9204         	str	r2, [sp, #0x10]
    1574: 6906         	ldr	r6, [r0, #0x10]
    1576: 1c4c         	adds	r4, r1, #0x1
    1578: e9d0 5807    	ldrd	r5, r8, [r0, #28]
    157c: 3c01         	subs	r4, #0x1
    157e: d00b         	beq	0x1598 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x17a> @ imm = #0x16
    1580: f8d8 2010    	ldr.w	r2, [r8, #0x10]
    1584: 4628         	mov	r0, r5
    1586: 4631         	mov	r1, r6
    1588: 4790         	blx	r2
    158a: 2800         	cmp	r0, #0x0
    158c: d0f6         	beq	0x157c <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x15e> @ imm = #-0x14
    158e: 2001         	movs	r0, #0x1
    1590: b007         	add	sp, #0x1c
    1592: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1596: bdf0         	pop	{r4, r5, r6, r7, pc}
    1598: 4628         	mov	r0, r5
    159a: 4641         	mov	r1, r8
    159c: 4652         	mov	r2, r10
    159e: 464b         	mov	r3, r9
    15a0: f8cd b000    	str.w	r11, [sp]
    15a4: f000 f83f    	bl	0x1626 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b> @ imm = #0x7e
    15a8: b178         	cbz	r0, 0x15ca <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1ac> @ imm = #0x1e
    15aa: 2001         	movs	r0, #0x1
    15ac: b007         	add	sp, #0x1c
    15ae: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    15b2: bdf0         	pop	{r4, r5, r6, r7, pc}
    15b4: 68f3         	ldr	r3, [r6, #0xc]
    15b6: 4640         	mov	r0, r8
    15b8: 9a05         	ldr	r2, [sp, #0x14]
    15ba: 4651         	mov	r1, r10
    15bc: 4798         	blx	r3
    15be: b180         	cbz	r0, 0x15e2 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1c4> @ imm = #0x20
    15c0: 2001         	movs	r0, #0x1
    15c2: b007         	add	sp, #0x1c
    15c4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    15c8: bdf0         	pop	{r4, r5, r6, r7, pc}
    15ca: f8d8 300c    	ldr.w	r3, [r8, #0xc]
    15ce: 4628         	mov	r0, r5
    15d0: e9dd 2105    	ldrd	r2, r1, [sp, #20]
    15d4: 4798         	blx	r3
    15d6: b170         	cbz	r0, 0x15f6 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1d8> @ imm = #0x1c
    15d8: 2001         	movs	r0, #0x1
    15da: b007         	add	sp, #0x1c
    15dc: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    15e0: bdf0         	pop	{r4, r5, r6, r7, pc}
    15e2: 9804         	ldr	r0, [sp, #0x10]
    15e4: 9902         	ldr	r1, [sp, #0x8]
    15e6: 7601         	strb	r1, [r0, #0x18]
    15e8: 9903         	ldr	r1, [sp, #0xc]
    15ea: 6101         	str	r1, [r0, #0x10]
    15ec: 2000         	movs	r0, #0x0
    15ee: b007         	add	sp, #0x1c
    15f0: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    15f4: bdf0         	pop	{r4, r5, r6, r7, pc}
    15f6: f8dd 9010    	ldr.w	r9, [sp, #0x10]
    15fa: 2400         	movs	r4, #0x0
    15fc: 45a1         	cmp	r9, r4
    15fe: d009         	beq	0x1614 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1f6> @ imm = #0x12
    1600: f8d8 2010    	ldr.w	r2, [r8, #0x10]
    1604: 4628         	mov	r0, r5
    1606: 4631         	mov	r1, r6
    1608: 4790         	blx	r2
    160a: 3401         	adds	r4, #0x1
    160c: 2800         	cmp	r0, #0x0
    160e: d0f5         	beq	0x15fc <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1de> @ imm = #-0x16
    1610: 1e61         	subs	r1, r4, #0x1
    1612: e000         	b	0x1616 <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138+0x1f8> @ imm = #0x0
    1614: 4649         	mov	r1, r9
    1616: 2000         	movs	r0, #0x0
    1618: 4549         	cmp	r1, r9
    161a: bf38         	it	lo
    161c: 2001         	movlo	r0, #0x1
    161e: b007         	add	sp, #0x1c
    1620: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1624: bdf0         	pop	{r4, r5, r6, r7, pc}

00001626 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b>:
    1626: b5f0         	push	{r4, r5, r6, r7, lr}
    1628: af03         	add	r7, sp, #0xc
    162a: f84d 8d04    	str	r8, [sp, #-4]!
    162e: f8d7 8008    	ldr.w	r8, [r7, #0x8]
    1632: 461c         	mov	r4, r3
    1634: 460e         	mov	r6, r1
    1636: f5b2 1f88    	cmp.w	r2, #0x110000
    163a: d00a         	beq	0x1652 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b+0x2c> @ imm = #0x14
    163c: 6933         	ldr	r3, [r6, #0x10]
    163e: 4611         	mov	r1, r2
    1640: 4605         	mov	r5, r0
    1642: 4798         	blx	r3
    1644: 4601         	mov	r1, r0
    1646: 4628         	mov	r0, r5
    1648: b119         	cbz	r1, 0x1652 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b+0x2c> @ imm = #0x6
    164a: 2001         	movs	r0, #0x1
    164c: f85d 8b04    	ldr	r8, [sp], #4
    1650: bdf0         	pop	{r4, r5, r6, r7, pc}
    1652: b13c         	cbz	r4, 0x1664 <core::fmt::Formatter::pad_integral::write_prefix::hf57831bac5366b3b+0x3e> @ imm = #0xe
    1654: 68f3         	ldr	r3, [r6, #0xc]
    1656: 4621         	mov	r1, r4
    1658: 4642         	mov	r2, r8
    165a: f85d 8b04    	ldr	r8, [sp], #4
    165e: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
    1662: 4718         	bx	r3
    1664: 2000         	movs	r0, #0x0
    1666: f85d 8b04    	ldr	r8, [sp], #4
    166a: bdf0         	pop	{r4, r5, r6, r7, pc}

0000166c <core::panicking::panic::hb7da25e41ead6f4c>:
    166c: b580         	push	{r7, lr}
    166e: 466f         	mov	r7, sp
    1670: b088         	sub	sp, #0x20
    1672: 2000         	movs	r0, #0x0
    1674: 2101         	movs	r1, #0x1
    1676: 9004         	str	r0, [sp, #0x10]
    1678: 9003         	str	r0, [sp, #0xc]
    167a: 2004         	movs	r0, #0x4
    167c: 9002         	str	r0, [sp, #0x8]
    167e: 202b         	movs	r0, #0x2b
    1680: 9101         	str	r1, [sp, #0x4]
    1682: a906         	add	r1, sp, #0x18
    1684: 9007         	str	r0, [sp, #0x1c]
    1686: f243 1078    	movw	r0, #0x3178
    168a: 9100         	str	r1, [sp]
    168c: f243 11a4    	movw	r1, #0x31a4
    1690: f2c0 0000    	movt	r0, #0x0
    1694: f2c0 0100    	movt	r1, #0x0
    1698: 9006         	str	r0, [sp, #0x18]
    169a: 4668         	mov	r0, sp
    169c: f7ff feb4    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #-0x298

000016a0 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af>:
    16a0: b5f0         	push	{r4, r5, r6, r7, lr}
    16a2: af03         	add	r7, sp, #0xc
    16a4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    16a8: b087         	sub	sp, #0x1c
    16aa: f8d1 c000    	ldr.w	r12, [r1]
    16ae: 688b         	ldr	r3, [r1, #0x8]
    16b0: e9d0 b200    	ldrd	r11, r2, [r0]
    16b4: ea5c 0003    	orrs.w	r0, r12, r3
    16b8: d102         	bne	0x16c0 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x20> @ imm = #0x4
    16ba: e9d1 0107    	ldrd	r0, r1, [r1, #28]
    16be: e32f         	b	0x1d20 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x680> @ imm = #0x65e
    16c0: 07d8         	lsls	r0, r3, #0x1f
    16c2: d034         	beq	0x172e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x8e> @ imm = #0x68
    16c4: 68ce         	ldr	r6, [r1, #0xc]
    16c6: eb0b 0e02    	add.w	lr, r11, r2
    16ca: f04f 0800    	mov.w	r8, #0x0
    16ce: b1c6         	cbz	r6, 0x1702 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x62> @ imm = #0x30
    16d0: 2500         	movs	r5, #0x0
    16d2: 465b         	mov	r3, r11
    16d4: e008         	b	0x16e8 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x48> @ imm = #0x10
    16d6: 28f0         	cmp	r0, #0xf0
    16d8: bf2c         	ite	hs
    16da: 1d23         	addhs	r3, r4, #0x4
    16dc: 1ce3         	addlo	r3, r4, #0x3
    16de: 1b18         	subs	r0, r3, r4
    16e0: 3501         	adds	r5, #0x1
    16e2: 4480         	add	r8, r0
    16e4: 42ae         	cmp	r6, r5
    16e6: d00d         	beq	0x1704 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x64> @ imm = #0x1a
    16e8: 4573         	cmp	r3, lr
    16ea: d020         	beq	0x172e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x8e> @ imm = #0x40
    16ec: 461c         	mov	r4, r3
    16ee: f913 0b01    	ldrsb	r0, [r3], #1
    16f2: f1b0 3fff    	cmp.w	r0, #0xffffffff
    16f6: dcf2         	bgt	0x16de <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x3e> @ imm = #-0x1c
    16f8: b2c0         	uxtb	r0, r0
    16fa: 28e0         	cmp	r0, #0xe0
    16fc: d2eb         	bhs	0x16d6 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x36> @ imm = #-0x2a
    16fe: 1ca3         	adds	r3, r4, #0x2
    1700: e7ed         	b	0x16de <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x3e> @ imm = #-0x26
    1702: 465b         	mov	r3, r11
    1704: 4573         	cmp	r3, lr
    1706: d012         	beq	0x172e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x8e> @ imm = #0x24
    1708: f993 0000    	ldrsb.w	r0, [r3]
    170c: f1b0 3fff    	cmp.w	r0, #0xffffffff
    1710: bfdc         	itt	le
    1712: b2c0         	uxtble	r0, r0
    1714: 28e0         	cmple	r0, #0xe0
    1716: f1b8 0f00    	cmp.w	r8, #0x0
    171a: d00e         	beq	0x173a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x9a> @ imm = #0x1c
    171c: 4590         	cmp	r8, r2
    171e: d20b         	bhs	0x1738 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x98> @ imm = #0x16
    1720: f91b 0008    	ldrsb.w	r0, [r11, r8]
    1724: f110 0f40    	cmn.w	r0, #0x40
    1728: da07         	bge	0x173a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x9a> @ imm = #0xe
    172a: 2000         	movs	r0, #0x0
    172c: e006         	b	0x173c <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x9c> @ imm = #0xc
    172e: 4690         	mov	r8, r2
    1730: f1bc 0f00    	cmp.w	r12, #0x0
    1734: d10a         	bne	0x174c <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0xac> @ imm = #0x14
    1736: e2f0         	b	0x1d1a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x67a> @ imm = #0x5e0
    1738: d1f7         	bne	0x172a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x8a> @ imm = #-0x12
    173a: 4658         	mov	r0, r11
    173c: 2800         	cmp	r0, #0x0
    173e: bf0c         	ite	eq
    1740: 4690         	moveq	r8, r2
    1742: 4683         	movne	r11, r0
    1744: f1bc 0f00    	cmp.w	r12, #0x0
    1748: f000 82e7    	beq.w	0x1d1a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x67a> @ imm = #0x5ce
    174c: 684c         	ldr	r4, [r1, #0x4]
    174e: f1b8 0f10    	cmp.w	r8, #0x10
    1752: d20c         	bhs	0x176e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0xce> @ imm = #0x18
    1754: f1b8 0f00    	cmp.w	r8, #0x0
    1758: d023         	beq	0x17a2 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x102> @ imm = #0x46
    175a: f008 0003    	and	r0, r8, #0x3
    175e: 2500         	movs	r5, #0x0
    1760: f1b8 0f04    	cmp.w	r8, #0x4
    1764: d222         	bhs	0x17ac <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x10c> @ imm = #0x44
    1766: 2200         	movs	r2, #0x0
    1768: 2800         	cmp	r0, #0x0
    176a: d172         	bne	0x1852 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x1b2> @ imm = #0xe4
    176c: e290         	b	0x1c90 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f0> @ imm = #0x520
    176e: f10b 0003    	add.w	r0, r11, #0x3
    1772: 9401         	str	r4, [sp, #0x4]
    1774: f020 0903    	bic	r9, r0, #0x3
    1778: f8cd 800c    	str.w	r8, [sp, #0xc]
    177c: ebb9 000b    	subs.w	r0, r9, r11
    1780: 9102         	str	r1, [sp, #0x8]
    1782: eba8 0800    	sub.w	r8, r8, r0
    1786: f008 0303    	and	r3, r8, #0x3
    178a: d101         	bne	0x1790 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0xf0> @ imm = #0x2
    178c: 2000         	movs	r0, #0x0
    178e: e0fe         	b	0x198e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x2ee> @ imm = #0x1fc
    1790: e9cd 0305    	strd	r0, r3, [sp, #20]
    1794: ebab 0009    	sub.w	r0, r11, r9
    1798: f110 0f04    	cmn.w	r0, #0x4
    179c: d979         	bls	0x1892 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x1f2> @ imm = #0xf2
    179e: 2000         	movs	r0, #0x0
    17a0: e0dd         	b	0x195e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x2be> @ imm = #0x1ba
    17a2: 2500         	movs	r5, #0x0
    17a4: 42ac         	cmp	r4, r5
    17a6: f200 8275    	bhi.w	0x1c94 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f4> @ imm = #0x4ea
    17aa: e2b6         	b	0x1d1a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x67a> @ imm = #0x56c
    17ac: f99b 2001    	ldrsb.w	r2, [r11, #0x1]
    17b0: 468c         	mov	r12, r1
    17b2: f99b 6000    	ldrsb.w	r6, [r11]
    17b6: f112 0f41    	cmn.w	r2, #0x41
    17ba: f99b 3002    	ldrsb.w	r3, [r11, #0x2]
    17be: f99b 1003    	ldrsb.w	r1, [r11, #0x3]
    17c2: bfc8         	it	gt
    17c4: 2501         	movgt	r5, #0x1
    17c6: f116 0f41    	cmn.w	r6, #0x41
    17ca: bfc8         	it	gt
    17cc: 3501         	addgt	r5, #0x1
    17ce: f113 0f41    	cmn.w	r3, #0x41
    17d2: bfc8         	it	gt
    17d4: 3501         	addgt	r5, #0x1
    17d6: f111 0f41    	cmn.w	r1, #0x41
    17da: f008 020c    	and	r2, r8, #0xc
    17de: bfc8         	it	gt
    17e0: 3501         	addgt	r5, #0x1
    17e2: 2a04         	cmp	r2, #0x4
    17e4: d031         	beq	0x184a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x1aa> @ imm = #0x62
    17e6: f99b 6004    	ldrsb.w	r6, [r11, #0x4]
    17ea: f99b 3005    	ldrsb.w	r3, [r11, #0x5]
    17ee: f99b 1006    	ldrsb.w	r1, [r11, #0x6]
    17f2: f116 0f41    	cmn.w	r6, #0x41
    17f6: f99b e007    	ldrsb.w	lr, [r11, #0x7]
    17fa: bfc8         	it	gt
    17fc: 3501         	addgt	r5, #0x1
    17fe: f113 0f41    	cmn.w	r3, #0x41
    1802: bfc8         	it	gt
    1804: 3501         	addgt	r5, #0x1
    1806: f111 0f41    	cmn.w	r1, #0x41
    180a: bfc8         	it	gt
    180c: 3501         	addgt	r5, #0x1
    180e: f11e 0f41    	cmn.w	lr, #0x41
    1812: bfc8         	it	gt
    1814: 3501         	addgt	r5, #0x1
    1816: 2a08         	cmp	r2, #0x8
    1818: d017         	beq	0x184a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x1aa> @ imm = #0x2e
    181a: f99b 6008    	ldrsb.w	r6, [r11, #0x8]
    181e: f99b 3009    	ldrsb.w	r3, [r11, #0x9]
    1822: f99b 100a    	ldrsb.w	r1, [r11, #0xa]
    1826: f116 0f41    	cmn.w	r6, #0x41
    182a: f99b e00b    	ldrsb.w	lr, [r11, #0xb]
    182e: bfc8         	it	gt
    1830: 3501         	addgt	r5, #0x1
    1832: f113 0f41    	cmn.w	r3, #0x41
    1836: bfc8         	it	gt
    1838: 3501         	addgt	r5, #0x1
    183a: f111 0f41    	cmn.w	r1, #0x41
    183e: bfc8         	it	gt
    1840: 3501         	addgt	r5, #0x1
    1842: f11e 0f41    	cmn.w	lr, #0x41
    1846: bfc8         	it	gt
    1848: 3501         	addgt	r5, #0x1
    184a: 4661         	mov	r1, r12
    184c: 2800         	cmp	r0, #0x0
    184e: f000 821f    	beq.w	0x1c90 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f0> @ imm = #0x43e
    1852: 460b         	mov	r3, r1
    1854: f91b 1002    	ldrsb.w	r1, [r11, r2]
    1858: f111 0f41    	cmn.w	r1, #0x41
    185c: bfc8         	it	gt
    185e: 3501         	addgt	r5, #0x1
    1860: 4619         	mov	r1, r3
    1862: 2801         	cmp	r0, #0x1
    1864: f000 8214    	beq.w	0x1c90 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f0> @ imm = #0x428
    1868: 445a         	add	r2, r11
    186a: f992 1001    	ldrsb.w	r1, [r2, #0x1]
    186e: f111 0f41    	cmn.w	r1, #0x41
    1872: bfc8         	it	gt
    1874: 3501         	addgt	r5, #0x1
    1876: 4619         	mov	r1, r3
    1878: 2802         	cmp	r0, #0x2
    187a: f000 8209    	beq.w	0x1c90 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f0> @ imm = #0x412
    187e: f992 0002    	ldrsb.w	r0, [r2, #0x2]
    1882: f110 0f41    	cmn.w	r0, #0x41
    1886: bfc8         	it	gt
    1888: 3501         	addgt	r5, #0x1
    188a: 42ac         	cmp	r4, r5
    188c: f200 8202    	bhi.w	0x1c94 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f4> @ imm = #0x404
    1890: e243         	b	0x1d1a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x67a> @ imm = #0x486
    1892: 2000         	movs	r0, #0x0
    1894: 2500         	movs	r5, #0x0
    1896: eb0b 0205    	add.w	r2, r11, r5
    189a: f91b c005    	ldrsb.w	r12, [r11, r5]
    189e: f992 e001    	ldrsb.w	lr, [r2, #0x1]
    18a2: f992 a00e    	ldrsb.w	r10, [r2, #0xe]
    18a6: f11c 0f41    	cmn.w	r12, #0x41
    18aa: f992 300d    	ldrsb.w	r3, [r2, #0xd]
    18ae: f992 400c    	ldrsb.w	r4, [r2, #0xc]
    18b2: bfc8         	it	gt
    18b4: 3001         	addgt	r0, #0x1
    18b6: f992 6002    	ldrsb.w	r6, [r2, #0x2]
    18ba: f11e 0f41    	cmn.w	lr, #0x41
    18be: bfc8         	it	gt
    18c0: 3001         	addgt	r0, #0x1
    18c2: f992 c003    	ldrsb.w	r12, [r2, #0x3]
    18c6: f116 0f41    	cmn.w	r6, #0x41
    18ca: bfc8         	it	gt
    18cc: 3001         	addgt	r0, #0x1
    18ce: f992 6004    	ldrsb.w	r6, [r2, #0x4]
    18d2: f11c 0f41    	cmn.w	r12, #0x41
    18d6: bfc8         	it	gt
    18d8: 3001         	addgt	r0, #0x1
    18da: f992 c005    	ldrsb.w	r12, [r2, #0x5]
    18de: f116 0f41    	cmn.w	r6, #0x41
    18e2: bfc8         	it	gt
    18e4: 3001         	addgt	r0, #0x1
    18e6: f992 6006    	ldrsb.w	r6, [r2, #0x6]
    18ea: f11c 0f41    	cmn.w	r12, #0x41
    18ee: bfc8         	it	gt
    18f0: 3001         	addgt	r0, #0x1
    18f2: f992 c007    	ldrsb.w	r12, [r2, #0x7]
    18f6: f116 0f41    	cmn.w	r6, #0x41
    18fa: bfc8         	it	gt
    18fc: 3001         	addgt	r0, #0x1
    18fe: f992 6008    	ldrsb.w	r6, [r2, #0x8]
    1902: f11c 0f41    	cmn.w	r12, #0x41
    1906: bfc8         	it	gt
    1908: 3001         	addgt	r0, #0x1
    190a: f992 c009    	ldrsb.w	r12, [r2, #0x9]
    190e: f116 0f41    	cmn.w	r6, #0x41
    1912: bfc8         	it	gt
    1914: 3001         	addgt	r0, #0x1
    1916: f992 600b    	ldrsb.w	r6, [r2, #0xb]
    191a: f11c 0f41    	cmn.w	r12, #0x41
    191e: bfc8         	it	gt
    1920: 3001         	addgt	r0, #0x1
    1922: f992 c00f    	ldrsb.w	r12, [r2, #0xf]
    1926: f992 200a    	ldrsb.w	r2, [r2, #0xa]
    192a: f112 0f41    	cmn.w	r2, #0x41
    192e: bfc8         	it	gt
    1930: 3001         	addgt	r0, #0x1
    1932: f116 0f41    	cmn.w	r6, #0x41
    1936: bfc8         	it	gt
    1938: 3001         	addgt	r0, #0x1
    193a: f114 0f41    	cmn.w	r4, #0x41
    193e: bfc8         	it	gt
    1940: 3001         	addgt	r0, #0x1
    1942: f113 0f41    	cmn.w	r3, #0x41
    1946: bfc8         	it	gt
    1948: 3001         	addgt	r0, #0x1
    194a: f11a 0f41    	cmn.w	r10, #0x41
    194e: bfc8         	it	gt
    1950: 3001         	addgt	r0, #0x1
    1952: f11c 0f41    	cmn.w	r12, #0x41
    1956: bfc8         	it	gt
    1958: 3001         	addgt	r0, #0x1
    195a: 3510         	adds	r5, #0x10
    195c: d19b         	bne	0x1896 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x1f6> @ imm = #-0xca
    195e: f99b 2000    	ldrsb.w	r2, [r11]
    1962: f112 0f41    	cmn.w	r2, #0x41
    1966: bfc8         	it	gt
    1968: 3001         	addgt	r0, #0x1
    196a: 9905         	ldr	r1, [sp, #0x14]
    196c: 9b06         	ldr	r3, [sp, #0x18]
    196e: 2901         	cmp	r1, #0x1
    1970: d00d         	beq	0x198e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x2ee> @ imm = #0x1a
    1972: f99b 2001    	ldrsb.w	r2, [r11, #0x1]
    1976: f112 0f41    	cmn.w	r2, #0x41
    197a: bfc8         	it	gt
    197c: 3001         	addgt	r0, #0x1
    197e: 2902         	cmp	r1, #0x2
    1980: d005         	beq	0x198e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x2ee> @ imm = #0xa
    1982: f99b 2002    	ldrsb.w	r2, [r11, #0x2]
    1986: f112 0f41    	cmn.w	r2, #0x41
    198a: bfc8         	it	gt
    198c: 3001         	addgt	r0, #0x1
    198e: ea4f 0a98    	lsr.w	r10, r8, #0x2
    1992: 2200         	movs	r2, #0x0
    1994: f8cd b010    	str.w	r11, [sp, #0x10]
    1998: b1cb         	cbz	r3, 0x19ce <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x32e> @ imm = #0x32
    199a: f028 0603    	bic	r6, r8, #0x3
    199e: eb09 0506    	add.w	r5, r9, r6
    19a2: f995 6000    	ldrsb.w	r6, [r5]
    19a6: f116 0f41    	cmn.w	r6, #0x41
    19aa: bfc8         	it	gt
    19ac: 2201         	movgt	r2, #0x1
    19ae: 2b01         	cmp	r3, #0x1
    19b0: d00d         	beq	0x19ce <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x32e> @ imm = #0x1a
    19b2: f995 6001    	ldrsb.w	r6, [r5, #0x1]
    19b6: f116 0f41    	cmn.w	r6, #0x41
    19ba: bfc8         	it	gt
    19bc: 3201         	addgt	r2, #0x1
    19be: 2b02         	cmp	r3, #0x2
    19c0: d005         	beq	0x19ce <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x32e> @ imm = #0xa
    19c2: f995 6002    	ldrsb.w	r6, [r5, #0x2]
    19c6: f116 0f41    	cmn.w	r6, #0x41
    19ca: bfc8         	it	gt
    19cc: 3201         	addgt	r2, #0x1
    19ce: 1815         	adds	r5, r2, r0
    19d0: e012         	b	0x19f8 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x358> @ imm = #0x24
    19d2: f04f 0c00    	mov.w	r12, #0x0
    19d6: fa3f f18c    	uxtb16	r1, r12
    19da: fa3f f29c    	uxtb16	r2, r12, ror #8
    19de: 4411         	add	r1, r2
    19e0: ebaa 0a0b    	sub.w	r10, r10, r11
    19e4: eb08 098b    	add.w	r9, r8, r11, lsl #2
    19e8: f01b 0003    	ands	r0, r11, #0x3
    19ec: eb01 4101    	add.w	r1, r1, r1, lsl #16
    19f0: eb05 4511    	add.w	r5, r5, r1, lsr #16
    19f4: f040 815d    	bne.w	0x1cb2 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x612> @ imm = #0x2ba
    19f8: f1ba 0f00    	cmp.w	r10, #0x0
    19fc: f000 8144    	beq.w	0x1c88 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5e8> @ imm = #0x288
    1a00: f1ba 0fc0    	cmp.w	r10, #0xc0
    1a04: 46d3         	mov	r11, r10
    1a06: bf28         	it	hs
    1a08: f04f 0bc0    	movhs.w	r11, #0xc0
    1a0c: 46c8         	mov	r8, r9
    1a0e: f1ba 0f04    	cmp.w	r10, #0x4
    1a12: d3de         	blo	0x19d2 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x332> @ imm = #-0x44
    1a14: f06f 000f    	mvn	r0, #0xf
    1a18: 2101         	movs	r1, #0x1
    1a1a: eb00 008b    	add.w	r0, r0, r11, lsl #2
    1a1e: 9506         	str	r5, [sp, #0x18]
    1a20: 2830         	cmp	r0, #0x30
    1a22: eb01 1110    	add.w	r1, r1, r0, lsr #4
    1a26: 9105         	str	r1, [sp, #0x14]
    1a28: d203         	bhs	0x1a32 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x392> @ imm = #0x6
    1a2a: f04f 0c00    	mov.w	r12, #0x0
    1a2e: 4646         	mov	r6, r8
    1a30: e0aa         	b	0x1b88 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x4e8> @ imm = #0x154
    1a32: f021 0e03    	bic	lr, r1, #0x3
    1a36: f04f 0c00    	mov.w	r12, #0x0
    1a3a: 4646         	mov	r6, r8
    1a3c: e896 0215    	ldm.w	r6, {r0, r2, r4, r9}
    1a40: f1be 0e04    	subs.w	lr, lr, #0x4
    1a44: 69b5         	ldr	r5, [r6, #0x18]
    1a46: ea6f 0100    	mvn.w	r1, r0
    1a4a: ea4f 11d1    	lsr.w	r1, r1, #0x7
    1a4e: ea41 1090    	orr.w	r0, r1, r0, lsr #6
    1a52: ea6f 0102    	mvn.w	r1, r2
    1a56: f020 30fe    	bic	r0, r0, #0xfefefefe
    1a5a: ea4f 11d1    	lsr.w	r1, r1, #0x7
    1a5e: 4460         	add	r0, r12
    1a60: ea41 1192    	orr.w	r1, r1, r2, lsr #6
    1a64: 6972         	ldr	r2, [r6, #0x14]
    1a66: f021 31fe    	bic	r1, r1, #0xfefefefe
    1a6a: f8d6 c03c    	ldr.w	r12, [r6, #0x3c]
    1a6e: 4401         	add	r1, r0
    1a70: ea6f 0004    	mvn.w	r0, r4
    1a74: ea4f 13d0    	lsr.w	r3, r0, #0x7
    1a78: 6bb0         	ldr	r0, [r6, #0x38]
    1a7a: ea43 1394    	orr.w	r3, r3, r4, lsr #6
    1a7e: 6934         	ldr	r4, [r6, #0x10]
    1a80: f023 33fe    	bic	r3, r3, #0xfefefefe
    1a84: 4419         	add	r1, r3
    1a86: ea6f 0309    	mvn.w	r3, r9
    1a8a: ea4f 13d3    	lsr.w	r3, r3, #0x7
    1a8e: ea43 1399    	orr.w	r3, r3, r9, lsr #6
    1a92: f023 33fe    	bic	r3, r3, #0xfefefefe
    1a96: 4419         	add	r1, r3
    1a98: ea6f 0304    	mvn.w	r3, r4
    1a9c: ea4f 13d3    	lsr.w	r3, r3, #0x7
    1aa0: ea43 1394    	orr.w	r3, r3, r4, lsr #6
    1aa4: 69f4         	ldr	r4, [r6, #0x1c]
    1aa6: f023 33fe    	bic	r3, r3, #0xfefefefe
    1aaa: 4419         	add	r1, r3
    1aac: ea6f 0302    	mvn.w	r3, r2
    1ab0: ea4f 13d3    	lsr.w	r3, r3, #0x7
    1ab4: ea43 1292    	orr.w	r2, r3, r2, lsr #6
    1ab8: f022 32fe    	bic	r2, r2, #0xfefefefe
    1abc: 6a33         	ldr	r3, [r6, #0x20]
    1abe: 4411         	add	r1, r2
    1ac0: ea6f 0205    	mvn.w	r2, r5
    1ac4: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1ac8: ea42 1295    	orr.w	r2, r2, r5, lsr #6
    1acc: 6a75         	ldr	r5, [r6, #0x24]
    1ace: f022 32fe    	bic	r2, r2, #0xfefefefe
    1ad2: 4411         	add	r1, r2
    1ad4: ea6f 0204    	mvn.w	r2, r4
    1ad8: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1adc: ea42 1294    	orr.w	r2, r2, r4, lsr #6
    1ae0: 6ab4         	ldr	r4, [r6, #0x28]
    1ae2: f022 32fe    	bic	r2, r2, #0xfefefefe
    1ae6: 4411         	add	r1, r2
    1ae8: ea6f 0203    	mvn.w	r2, r3
    1aec: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1af0: ea42 1293    	orr.w	r2, r2, r3, lsr #6
    1af4: 6af3         	ldr	r3, [r6, #0x2c]
    1af6: f022 32fe    	bic	r2, r2, #0xfefefefe
    1afa: 4411         	add	r1, r2
    1afc: ea6f 0205    	mvn.w	r2, r5
    1b00: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b04: ea42 1295    	orr.w	r2, r2, r5, lsr #6
    1b08: 6b35         	ldr	r5, [r6, #0x30]
    1b0a: f022 32fe    	bic	r2, r2, #0xfefefefe
    1b0e: 4411         	add	r1, r2
    1b10: ea6f 0204    	mvn.w	r2, r4
    1b14: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b18: ea42 1294    	orr.w	r2, r2, r4, lsr #6
    1b1c: 6b74         	ldr	r4, [r6, #0x34]
    1b1e: f022 32fe    	bic	r2, r2, #0xfefefefe
    1b22: f106 0640    	add.w	r6, r6, #0x40
    1b26: 4411         	add	r1, r2
    1b28: ea6f 0203    	mvn.w	r2, r3
    1b2c: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b30: ea42 1293    	orr.w	r2, r2, r3, lsr #6
    1b34: f022 32fe    	bic	r2, r2, #0xfefefefe
    1b38: 4411         	add	r1, r2
    1b3a: ea6f 0205    	mvn.w	r2, r5
    1b3e: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b42: ea42 1295    	orr.w	r2, r2, r5, lsr #6
    1b46: f022 32fe    	bic	r2, r2, #0xfefefefe
    1b4a: 4411         	add	r1, r2
    1b4c: ea6f 0204    	mvn.w	r2, r4
    1b50: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b54: ea42 1294    	orr.w	r2, r2, r4, lsr #6
    1b58: f022 32fe    	bic	r2, r2, #0xfefefefe
    1b5c: 4411         	add	r1, r2
    1b5e: ea6f 0200    	mvn.w	r2, r0
    1b62: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1b66: ea42 1090    	orr.w	r0, r2, r0, lsr #6
    1b6a: f020 30fe    	bic	r0, r0, #0xfefefefe
    1b6e: 4408         	add	r0, r1
    1b70: ea6f 010c    	mvn.w	r1, r12
    1b74: ea4f 11d1    	lsr.w	r1, r1, #0x7
    1b78: ea41 119c    	orr.w	r1, r1, r12, lsr #6
    1b7c: f021 31fe    	bic	r1, r1, #0xfefefefe
    1b80: eb01 0c00    	add.w	r12, r1, r0
    1b84: f47f af5a    	bne.w	0x1a3c <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x39c> @ imm = #-0x14c
    1b88: 9805         	ldr	r0, [sp, #0x14]
    1b8a: 9d06         	ldr	r5, [sp, #0x18]
    1b8c: f010 0e03    	ands	lr, r0, #0x3
    1b90: f43f af21    	beq.w	0x19d6 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x336> @ imm = #-0x1be
    1b94: e896 000e    	ldm.w	r6, {r1, r2, r3}
    1b98: f1be 0f01    	cmp.w	lr, #0x1
    1b9c: 68f0         	ldr	r0, [r6, #0xc]
    1b9e: ea6f 0401    	mvn.w	r4, r1
    1ba2: ea4f 14d4    	lsr.w	r4, r4, #0x7
    1ba6: ea44 1191    	orr.w	r1, r4, r1, lsr #6
    1baa: ea6f 0402    	mvn.w	r4, r2
    1bae: f021 31fe    	bic	r1, r1, #0xfefefefe
    1bb2: ea4f 14d4    	lsr.w	r4, r4, #0x7
    1bb6: ea44 1292    	orr.w	r2, r4, r2, lsr #6
    1bba: 4461         	add	r1, r12
    1bbc: f022 32fe    	bic	r2, r2, #0xfefefefe
    1bc0: 4411         	add	r1, r2
    1bc2: ea6f 0203    	mvn.w	r2, r3
    1bc6: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1bca: ea42 1293    	orr.w	r2, r2, r3, lsr #6
    1bce: f022 32fe    	bic	r2, r2, #0xfefefefe
    1bd2: 4411         	add	r1, r2
    1bd4: ea6f 0200    	mvn.w	r2, r0
    1bd8: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1bdc: ea42 1290    	orr.w	r2, r2, r0, lsr #6
    1be0: f022 32fe    	bic	r2, r2, #0xfefefefe
    1be4: eb02 0c01    	add.w	r12, r2, r1
    1be8: f43f aef5    	beq.w	0x19d6 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x336> @ imm = #-0x216
    1bec: f106 0310    	add.w	r3, r6, #0x10
    1bf0: 69f0         	ldr	r0, [r6, #0x1c]
    1bf2: f1be 0f02    	cmp.w	lr, #0x2
    1bf6: cb0e         	ldm	r3, {r1, r2, r3}
    1bf8: ea6f 0401    	mvn.w	r4, r1
    1bfc: ea4f 14d4    	lsr.w	r4, r4, #0x7
    1c00: ea44 1191    	orr.w	r1, r4, r1, lsr #6
    1c04: ea6f 0402    	mvn.w	r4, r2
    1c08: f021 31fe    	bic	r1, r1, #0xfefefefe
    1c0c: ea4f 14d4    	lsr.w	r4, r4, #0x7
    1c10: ea44 1292    	orr.w	r2, r4, r2, lsr #6
    1c14: 4461         	add	r1, r12
    1c16: f022 32fe    	bic	r2, r2, #0xfefefefe
    1c1a: 4411         	add	r1, r2
    1c1c: ea6f 0203    	mvn.w	r2, r3
    1c20: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1c24: ea42 1293    	orr.w	r2, r2, r3, lsr #6
    1c28: f022 32fe    	bic	r2, r2, #0xfefefefe
    1c2c: 4411         	add	r1, r2
    1c2e: ea6f 0200    	mvn.w	r2, r0
    1c32: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1c36: ea42 1290    	orr.w	r2, r2, r0, lsr #6
    1c3a: f022 32fe    	bic	r2, r2, #0xfefefefe
    1c3e: eb02 0c01    	add.w	r12, r2, r1
    1c42: f43f aec8    	beq.w	0x19d6 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x336> @ imm = #-0x270
    1c46: f106 0320    	add.w	r3, r6, #0x20
    1c4a: cb0f         	ldm	r3, {r0, r1, r2, r3}
    1c4c: 43c6         	mvns	r6, r0
    1c4e: 09f6         	lsrs	r6, r6, #0x7
    1c50: ea46 1090    	orr.w	r0, r6, r0, lsr #6
    1c54: 43ce         	mvns	r6, r1
    1c56: f020 30fe    	bic	r0, r0, #0xfefefefe
    1c5a: 09f6         	lsrs	r6, r6, #0x7
    1c5c: ea46 1191    	orr.w	r1, r6, r1, lsr #6
    1c60: 4460         	add	r0, r12
    1c62: f021 31fe    	bic	r1, r1, #0xfefefefe
    1c66: 4408         	add	r0, r1
    1c68: 43d1         	mvns	r1, r2
    1c6a: 09c9         	lsrs	r1, r1, #0x7
    1c6c: ea41 1192    	orr.w	r1, r1, r2, lsr #6
    1c70: f021 31fe    	bic	r1, r1, #0xfefefefe
    1c74: 4408         	add	r0, r1
    1c76: 43d9         	mvns	r1, r3
    1c78: 09c9         	lsrs	r1, r1, #0x7
    1c7a: ea41 1193    	orr.w	r1, r1, r3, lsr #6
    1c7e: f021 31fe    	bic	r1, r1, #0xfefefefe
    1c82: eb01 0c00    	add.w	r12, r1, r0
    1c86: e6a6         	b	0x19d6 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x336> @ imm = #-0x2b4
    1c88: e9dd 8b03    	ldrd	r8, r11, [sp, #12]
    1c8c: e9dd 4101    	ldrd	r4, r1, [sp, #4]
    1c90: 42ac         	cmp	r4, r5
    1c92: d942         	bls	0x1d1a <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x67a> @ imm = #0x84
    1c94: 460a         	mov	r2, r1
    1c96: 7e09         	ldrb	r1, [r1, #0x18]
    1c98: eba4 0905    	sub.w	r9, r4, r5
    1c9c: 1ec8         	subs	r0, r1, #0x3
    1c9e: bf18         	it	ne
    1ca0: 4608         	movne	r0, r1
    1ca2: 2800         	cmp	r0, #0x0
    1ca4: d04a         	beq	0x1d3c <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x69c> @ imm = #0x94
    1ca6: 2801         	cmp	r0, #0x1
    1ca8: d142         	bne	0x1d30 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x690> @ imm = #0x84
    1caa: 4648         	mov	r0, r9
    1cac: f04f 0900    	mov.w	r9, #0x0
    1cb0: e044         	b	0x1d3c <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x69c> @ imm = #0x88
    1cb2: f00b 03fc    	and	r3, r11, #0xfc
    1cb6: e9dd 4c01    	ldrd	r4, r12, [sp, #4]
    1cba: 2801         	cmp	r0, #0x1
    1cbc: f858 1023    	ldr.w	r1, [r8, r3, lsl #2]
    1cc0: ea6f 0201    	mvn.w	r2, r1
    1cc4: ea4f 12d2    	lsr.w	r2, r2, #0x7
    1cc8: ea42 1191    	orr.w	r1, r2, r1, lsr #6
    1ccc: f021 32fe    	bic	r2, r1, #0xfefefefe
    1cd0: d015         	beq	0x1cfe <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x65e> @ imm = #0x2a
    1cd2: eb08 0383    	add.w	r3, r8, r3, lsl #2
    1cd6: 2802         	cmp	r0, #0x2
    1cd8: 6859         	ldr	r1, [r3, #0x4]
    1cda: ea6f 0601    	mvn.w	r6, r1
    1cde: ea4f 16d6    	lsr.w	r6, r6, #0x7
    1ce2: ea46 1191    	orr.w	r1, r6, r1, lsr #6
    1ce6: f021 31fe    	bic	r1, r1, #0xfefefefe
    1cea: 440a         	add	r2, r1
    1cec: d007         	beq	0x1cfe <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x65e> @ imm = #0xe
    1cee: 6898         	ldr	r0, [r3, #0x8]
    1cf0: 43c1         	mvns	r1, r0
    1cf2: 09c9         	lsrs	r1, r1, #0x7
    1cf4: ea41 1090    	orr.w	r0, r1, r0, lsr #6
    1cf8: f020 30fe    	bic	r0, r0, #0xfefefefe
    1cfc: 4402         	add	r2, r0
    1cfe: fa3f f082    	uxtb16	r0, r2
    1d02: fa3f f192    	uxtb16	r1, r2, ror #8
    1d06: 4408         	add	r0, r1
    1d08: e9dd 8b03    	ldrd	r8, r11, [sp, #12]
    1d0c: 4661         	mov	r1, r12
    1d0e: eb00 4000    	add.w	r0, r0, r0, lsl #16
    1d12: eb05 4510    	add.w	r5, r5, r0, lsr #16
    1d16: 42ac         	cmp	r4, r5
    1d18: d8bc         	bhi	0x1c94 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x5f4> @ imm = #-0x88
    1d1a: e9d1 0107    	ldrd	r0, r1, [r1, #28]
    1d1e: 4642         	mov	r2, r8
    1d20: 68cb         	ldr	r3, [r1, #0xc]
    1d22: 4659         	mov	r1, r11
    1d24: b007         	add	sp, #0x1c
    1d26: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1d2a: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
    1d2e: 4718         	bx	r3
    1d30: f109 0101    	add.w	r1, r9, #0x1
    1d34: ea4f 0059    	lsr.w	r0, r9, #0x1
    1d38: ea4f 0951    	lsr.w	r9, r1, #0x1
    1d3c: f8d2 a010    	ldr.w	r10, [r2, #0x10]
    1d40: 1c46         	adds	r6, r0, #0x1
    1d42: e9d2 4507    	ldrd	r4, r5, [r2, #28]
    1d46: 3e01         	subs	r6, #0x1
    1d48: d006         	beq	0x1d58 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6b8> @ imm = #0xc
    1d4a: 692a         	ldr	r2, [r5, #0x10]
    1d4c: 4620         	mov	r0, r4
    1d4e: 4651         	mov	r1, r10
    1d50: 4790         	blx	r2
    1d52: 2800         	cmp	r0, #0x0
    1d54: d0f7         	beq	0x1d46 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6a6> @ imm = #-0x12
    1d56: e005         	b	0x1d64 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6c4> @ imm = #0xa
    1d58: 68eb         	ldr	r3, [r5, #0xc]
    1d5a: 4620         	mov	r0, r4
    1d5c: 4659         	mov	r1, r11
    1d5e: 4642         	mov	r2, r8
    1d60: 4798         	blx	r3
    1d62: b120         	cbz	r0, 0x1d6e <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6ce> @ imm = #0x8
    1d64: 2001         	movs	r0, #0x1
    1d66: b007         	add	sp, #0x1c
    1d68: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1d6c: bdf0         	pop	{r4, r5, r6, r7, pc}
    1d6e: 2600         	movs	r6, #0x0
    1d70: 45b1         	cmp	r9, r6
    1d72: d008         	beq	0x1d86 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6e6> @ imm = #0x10
    1d74: 692a         	ldr	r2, [r5, #0x10]
    1d76: 4620         	mov	r0, r4
    1d78: 4651         	mov	r1, r10
    1d7a: 4790         	blx	r2
    1d7c: 3601         	adds	r6, #0x1
    1d7e: 2800         	cmp	r0, #0x0
    1d80: d0f6         	beq	0x1d70 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6d0> @ imm = #-0x14
    1d82: 1e71         	subs	r1, r6, #0x1
    1d84: e000         	b	0x1d88 <<&T as core::fmt::Display>::fmt::h60d5399cf94795af+0x6e8> @ imm = #0x0
    1d86: 4649         	mov	r1, r9
    1d88: 2000         	movs	r0, #0x0
    1d8a: 4549         	cmp	r1, r9
    1d8c: bf38         	it	lo
    1d8e: 2001         	movlo	r0, #0x1
    1d90: b007         	add	sp, #0x1c
    1d92: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1d96: bdf0         	pop	{r4, r5, r6, r7, pc}

00001d98 <<&T as core::fmt::Debug>::fmt::h023a06070a500323>:
    1d98: e9d0 0200    	ldrd	r0, r2, [r0]
    1d9c: 68d2         	ldr	r2, [r2, #0xc]
    1d9e: 4710         	bx	r2

00001da0 <core::fmt::write::hd0203c5d2051aa66>:
    1da0: b5f0         	push	{r4, r5, r6, r7, lr}
    1da2: af03         	add	r7, sp, #0xc
    1da4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1da8: b08d         	sub	sp, #0x34
    1daa: 6916         	ldr	r6, [r2, #0x10]
    1dac: e9cd 010b    	strd	r0, r1, [sp, #44]
    1db0: 2003         	movs	r0, #0x3
    1db2: f88d 0028    	strb.w	r0, [sp, #0x28]
    1db6: 2000         	movs	r0, #0x0
    1db8: 2120         	movs	r1, #0x20
    1dba: 2e00         	cmp	r6, #0x0
    1dbc: 9009         	str	r0, [sp, #0x24]
    1dbe: 9108         	str	r1, [sp, #0x20]
    1dc0: 9006         	str	r0, [sp, #0x18]
    1dc2: 9004         	str	r0, [sp, #0x10]
    1dc4: d069         	beq	0x1e9a <core::fmt::write::hd0203c5d2051aa66+0xfa> @ imm = #0xd2
    1dc6: 6950         	ldr	r0, [r2, #0x14]
    1dc8: 2800         	cmp	r0, #0x0
    1dca: f000 8091    	beq.w	0x1ef0 <core::fmt::write::hd0203c5d2051aa66+0x150> @ imm = #0x122
    1dce: f8d2 a000    	ldr.w	r10, [r2]
    1dd2: 0141         	lsls	r1, r0, #0x5
    1dd4: f8d2 b008    	ldr.w	r11, [r2, #0x8]
    1dd8: 3801         	subs	r0, #0x1
    1dda: f020 4078    	bic	r0, r0, #0xf8000000
    1dde: f04f 0800    	mov.w	r8, #0x0
    1de2: f04f 0900    	mov.w	r9, #0x0
    1de6: 3001         	adds	r0, #0x1
    1de8: 9202         	str	r2, [sp, #0x8]
    1dea: 9103         	str	r1, [sp, #0xc]
    1dec: 9001         	str	r0, [sp, #0x4]
    1dee: eb0a 0109    	add.w	r1, r10, r9
    1df2: 684a         	ldr	r2, [r1, #0x4]
    1df4: b13a         	cbz	r2, 0x1e06 <core::fmt::write::hd0203c5d2051aa66+0x66> @ imm = #0xe
    1df6: e9dd 030b    	ldrd	r0, r3, [sp, #44]
    1dfa: 6809         	ldr	r1, [r1]
    1dfc: 68db         	ldr	r3, [r3, #0xc]
    1dfe: 4798         	blx	r3
    1e00: 2800         	cmp	r0, #0x0
    1e02: f040 8085    	bne.w	0x1f10 <core::fmt::write::hd0203c5d2051aa66+0x170> @ imm = #0x10a
    1e06: eb06 0008    	add.w	r0, r6, r8
    1e0a: 6903         	ldr	r3, [r0, #0x10]
    1e0c: eb06 0089    	add.w	r0, r6, r9, lsl #2
    1e10: e9d0 2102    	ldrd	r2, r1, [r0, #8]
    1e14: 7f05         	ldrb	r5, [r0, #0x1c]
    1e16: 6984         	ldr	r4, [r0, #0x18]
    1e18: 9308         	str	r3, [sp, #0x20]
    1e1a: f88d 5028    	strb.w	r5, [sp, #0x28]
    1e1e: 9409         	str	r4, [sp, #0x24]
    1e20: b17a         	cbz	r2, 0x1e42 <core::fmt::write::hd0203c5d2051aa66+0xa2> @ imm = #0x1e
    1e22: 2a01         	cmp	r2, #0x1
    1e24: d102         	bne	0x1e2c <core::fmt::write::hd0203c5d2051aa66+0x8c> @ imm = #0x4
    1e26: f85b 2031    	ldr.w	r2, [r11, r1, lsl #3]
    1e2a: b13a         	cbz	r2, 0x1e3c <core::fmt::write::hd0203c5d2051aa66+0x9c> @ imm = #0xe
    1e2c: 2200         	movs	r2, #0x0
    1e2e: f856 3008    	ldr.w	r3, [r6, r8]
    1e32: e9cd 2104    	strd	r2, r1, [sp, #16]
    1e36: 2b02         	cmp	r3, #0x2
    1e38: d10a         	bne	0x1e50 <core::fmt::write::hd0203c5d2051aa66+0xb0> @ imm = #0x14
    1e3a: e00f         	b	0x1e5c <core::fmt::write::hd0203c5d2051aa66+0xbc> @ imm = #0x1e
    1e3c: eb0b 01c1    	add.w	r1, r11, r1, lsl #3
    1e40: 6849         	ldr	r1, [r1, #0x4]
    1e42: 2201         	movs	r2, #0x1
    1e44: f856 3008    	ldr.w	r3, [r6, r8]
    1e48: e9cd 2104    	strd	r2, r1, [sp, #16]
    1e4c: 2b02         	cmp	r3, #0x2
    1e4e: d005         	beq	0x1e5c <core::fmt::write::hd0203c5d2051aa66+0xbc> @ imm = #0xa
    1e50: 6841         	ldr	r1, [r0, #0x4]
    1e52: 2b01         	cmp	r3, #0x1
    1e54: d107         	bne	0x1e66 <core::fmt::write::hd0203c5d2051aa66+0xc6> @ imm = #0xe
    1e56: f85b 2031    	ldr.w	r2, [r11, r1, lsl #3]
    1e5a: b10a         	cbz	r2, 0x1e60 <core::fmt::write::hd0203c5d2051aa66+0xc0> @ imm = #0x2
    1e5c: 2200         	movs	r2, #0x0
    1e5e: e003         	b	0x1e68 <core::fmt::write::hd0203c5d2051aa66+0xc8> @ imm = #0x6
    1e60: eb0b 01c1    	add.w	r1, r11, r1, lsl #3
    1e64: 6849         	ldr	r1, [r1, #0x4]
    1e66: 2201         	movs	r2, #0x1
    1e68: 6943         	ldr	r3, [r0, #0x14]
    1e6a: 9107         	str	r1, [sp, #0x1c]
    1e6c: 9206         	str	r2, [sp, #0x18]
    1e6e: eb0b 01c3    	add.w	r1, r11, r3, lsl #3
    1e72: f85b 0033    	ldr.w	r0, [r11, r3, lsl #3]
    1e76: 684b         	ldr	r3, [r1, #0x4]
    1e78: a904         	add	r1, sp, #0x10
    1e7a: 4798         	blx	r3
    1e7c: 2800         	cmp	r0, #0x0
    1e7e: d147         	bne	0x1f10 <core::fmt::write::hd0203c5d2051aa66+0x170> @ imm = #0x8e
    1e80: 9803         	ldr	r0, [sp, #0xc]
    1e82: f108 0820    	add.w	r8, r8, #0x20
    1e86: f109 0908    	add.w	r9, r9, #0x8
    1e8a: 4540         	cmp	r0, r8
    1e8c: d1af         	bne	0x1dee <core::fmt::write::hd0203c5d2051aa66+0x4e> @ imm = #-0xa2
    1e8e: e9dd a201    	ldrd	r10, r2, [sp, #4]
    1e92: 6850         	ldr	r0, [r2, #0x4]
    1e94: 4582         	cmp	r10, r0
    1e96: d330         	blo	0x1efa <core::fmt::write::hd0203c5d2051aa66+0x15a> @ imm = #0x60
    1e98: e03f         	b	0x1f1a <core::fmt::write::hd0203c5d2051aa66+0x17a> @ imm = #0x7e
    1e9a: 68d0         	ldr	r0, [r2, #0xc]
    1e9c: b340         	cbz	r0, 0x1ef0 <core::fmt::write::hd0203c5d2051aa66+0x150> @ imm = #0x50
    1e9e: 6894         	ldr	r4, [r2, #0x8]
    1ea0: f10d 0810    	add.w	r8, sp, #0x10
    1ea4: f8d2 b000    	ldr.w	r11, [r2]
    1ea8: 2600         	movs	r6, #0x0
    1eaa: eb04 09c0    	add.w	r9, r4, r0, lsl #3
    1eae: 3801         	subs	r0, #0x1
    1eb0: f020 4060    	bic	r0, r0, #0xe0000000
    1eb4: 9202         	str	r2, [sp, #0x8]
    1eb6: f100 0a01    	add.w	r10, r0, #0x1
    1eba: eb0b 01c6    	add.w	r1, r11, r6, lsl #3
    1ebe: 684a         	ldr	r2, [r1, #0x4]
    1ec0: b12a         	cbz	r2, 0x1ece <core::fmt::write::hd0203c5d2051aa66+0x12e> @ imm = #0xa
    1ec2: e9dd 030b    	ldrd	r0, r3, [sp, #44]
    1ec6: 6809         	ldr	r1, [r1]
    1ec8: 68db         	ldr	r3, [r3, #0xc]
    1eca: 4798         	blx	r3
    1ecc: bb00         	cbnz	r0, 0x1f10 <core::fmt::write::hd0203c5d2051aa66+0x170> @ imm = #0x40
    1ece: eb04 05c6    	add.w	r5, r4, r6, lsl #3
    1ed2: 4641         	mov	r1, r8
    1ed4: e9d5 0200    	ldrd	r0, r2, [r5]
    1ed8: 4790         	blx	r2
    1eda: b9c8         	cbnz	r0, 0x1f10 <core::fmt::write::hd0203c5d2051aa66+0x170> @ imm = #0x32
    1edc: f105 0008    	add.w	r0, r5, #0x8
    1ee0: 3601         	adds	r6, #0x1
    1ee2: 4548         	cmp	r0, r9
    1ee4: d1e9         	bne	0x1eba <core::fmt::write::hd0203c5d2051aa66+0x11a> @ imm = #-0x2e
    1ee6: 9a02         	ldr	r2, [sp, #0x8]
    1ee8: 6850         	ldr	r0, [r2, #0x4]
    1eea: 4582         	cmp	r10, r0
    1eec: d305         	blo	0x1efa <core::fmt::write::hd0203c5d2051aa66+0x15a> @ imm = #0xa
    1eee: e014         	b	0x1f1a <core::fmt::write::hd0203c5d2051aa66+0x17a> @ imm = #0x28
    1ef0: f04f 0a00    	mov.w	r10, #0x0
    1ef4: 6850         	ldr	r0, [r2, #0x4]
    1ef6: 4582         	cmp	r10, r0
    1ef8: d20f         	bhs	0x1f1a <core::fmt::write::hd0203c5d2051aa66+0x17a> @ imm = #0x1e
    1efa: 6812         	ldr	r2, [r2]
    1efc: e9dd 010b    	ldrd	r0, r1, [sp, #44]
    1f00: 68cb         	ldr	r3, [r1, #0xc]
    1f02: f852 103a    	ldr.w	r1, [r2, r10, lsl #3]
    1f06: eb02 02ca    	add.w	r2, r2, r10, lsl #3
    1f0a: 6852         	ldr	r2, [r2, #0x4]
    1f0c: 4798         	blx	r3
    1f0e: b120         	cbz	r0, 0x1f1a <core::fmt::write::hd0203c5d2051aa66+0x17a> @ imm = #0x8
    1f10: 2001         	movs	r0, #0x1
    1f12: b00d         	add	sp, #0x34
    1f14: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1f18: bdf0         	pop	{r4, r5, r6, r7, pc}
    1f1a: 2000         	movs	r0, #0x0
    1f1c: b00d         	add	sp, #0x34
    1f1e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1f22: bdf0         	pop	{r4, r5, r6, r7, pc}

00001f24 <<core::cell::BorrowMutError as core::fmt::Debug>::fmt::habd08cdd73aac117>:
    1f24: e9d1 0207    	ldrd	r0, r2, [r1, #28]
    1f28: f243 3120    	movw	r1, #0x3320
    1f2c: 68d3         	ldr	r3, [r2, #0xc]
    1f2e: f2c0 0100    	movt	r1, #0x0
    1f32: 220e         	movs	r2, #0xe
    1f34: 4718         	bx	r3

00001f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213>:
    1f36: b580         	push	{r7, lr}
    1f38: 466f         	mov	r7, sp
    1f3a: b08a         	sub	sp, #0x28
    1f3c: 4601         	mov	r1, r0
    1f3e: 2000         	movs	r0, #0x0
    1f40: 9005         	str	r0, [sp, #0x14]
    1f42: 2001         	movs	r0, #0x1
    1f44: 9002         	str	r0, [sp, #0x8]
    1f46: f243 3240    	movw	r2, #0x3340
    1f4a: 9004         	str	r0, [sp, #0x10]
    1f4c: a807         	add	r0, sp, #0x1c
    1f4e: 9003         	str	r0, [sp, #0xc]
    1f50: f641 7025    	movw	r0, #0x1f25
    1f54: f2c0 0000    	movt	r0, #0x0
    1f58: f2c0 0200    	movt	r2, #0x0
    1f5c: 9008         	str	r0, [sp, #0x20]
    1f5e: 1e78         	subs	r0, r7, #0x1
    1f60: 9007         	str	r0, [sp, #0x1c]
    1f62: a801         	add	r0, sp, #0x4
    1f64: 9201         	str	r2, [sp, #0x4]
    1f66: f7ff fa4f    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #-0xb62

00001f6a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47>:
    1f6a: b5f0         	push	{r4, r5, r6, r7, lr}
    1f6c: af03         	add	r7, sp, #0xc
    1f6e: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1f72: b087         	sub	sp, #0x1c
    1f74: 4693         	mov	r11, r2
    1f76: 6802         	ldr	r2, [r0]
    1f78: 9204         	str	r2, [sp, #0x10]
    1f7a: f04f 0800    	mov.w	r8, #0x0
    1f7e: 6842         	ldr	r2, [r0, #0x4]
    1f80: f04f 0900    	mov.w	r9, #0x0
    1f84: 6880         	ldr	r0, [r0, #0x8]
    1f86: f04f 0a00    	mov.w	r10, #0x0
    1f8a: 9005         	str	r0, [sp, #0x14]
    1f8c: 1c48         	adds	r0, r1, #0x1
    1f8e: 9000         	str	r0, [sp]
    1f90: f1cb 0000    	rsb.w	r0, r11, #0x0
    1f94: 9002         	str	r0, [sp, #0x8]
    1f96: 1e48         	subs	r0, r1, #0x1
    1f98: 9203         	str	r2, [sp, #0xc]
    1f9a: 9106         	str	r1, [sp, #0x18]
    1f9c: 9001         	str	r0, [sp, #0x4]
    1f9e: e013         	b	0x1fc8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x5e> @ imm = #0x26
    1fa0: 9801         	ldr	r0, [sp, #0x4]
    1fa2: 5d00         	ldrb	r0, [r0, r4]
    1fa4: 380a         	subs	r0, #0xa
    1fa6: fab0 f080    	clz	r0, r0
    1faa: 0940         	lsrs	r0, r0, #0x5
    1fac: 9b03         	ldr	r3, [sp, #0xc]
    1fae: eba4 0208    	sub.w	r2, r4, r8
    1fb2: 9d05         	ldr	r5, [sp, #0x14]
    1fb4: 9906         	ldr	r1, [sp, #0x18]
    1fb6: 68db         	ldr	r3, [r3, #0xc]
    1fb8: 7028         	strb	r0, [r5]
    1fba: 4441         	add	r1, r8
    1fbc: 9804         	ldr	r0, [sp, #0x10]
    1fbe: 4798         	blx	r3
    1fc0: 2800         	cmp	r0, #0x0
    1fc2: 46b0         	mov	r8, r6
    1fc4: f040 80f1    	bne.w	0x21aa <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x240> @ imm = #0x1e2
    1fc8: ea5f 70ca    	lsls.w	r0, r10, #0x1f
    1fcc: f040 80e8    	bne.w	0x21a0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x236> @ imm = #0x1d0
    1fd0: 45d9         	cmp	r9, r11
    1fd2: f200 80cd    	bhi.w	0x2170 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x206> @ imm = #0x19a
    1fd6: f240 1a00    	movw	r10, #0x100
    1fda: f2c0 1a01    	movt	r10, #0x101
    1fde: e002         	b	0x1fe6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x7c> @ imm = #0x4
    1fe0: 45d9         	cmp	r9, r11
    1fe2: f200 80c5    	bhi.w	0x2170 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x206> @ imm = #0x18a
    1fe6: 9806         	ldr	r0, [sp, #0x18]
    1fe8: ebab 0e09    	sub.w	lr, r11, r9
    1fec: f1be 0f07    	cmp.w	lr, #0x7
    1ff0: 4448         	add	r0, r9
    1ff2: d822         	bhi	0x203a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0xd0> @ imm = #0x44
    1ff4: 45cb         	cmp	r11, r9
    1ff6: f000 80ba    	beq.w	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x174
    1ffa: 9902         	ldr	r1, [sp, #0x8]
    1ffc: 2200         	movs	r2, #0x0
    1ffe: 4449         	add	r1, r9
    2000: 5c83         	ldrb	r3, [r0, r2]
    2002: 2b0a         	cmp	r3, #0xa
    2004: f000 80a0    	beq.w	0x2148 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1de> @ imm = #0x140
    2008: 188b         	adds	r3, r1, r2
    200a: 1c5e         	adds	r6, r3, #0x1
    200c: f000 80af    	beq.w	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x15e
    2010: 1886         	adds	r6, r0, r2
    2012: 7875         	ldrb	r5, [r6, #0x1]
    2014: 2d0a         	cmp	r5, #0xa
    2016: f000 8081    	beq.w	0x211c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1b2> @ imm = #0x102
    201a: 1c9d         	adds	r5, r3, #0x2
    201c: f000 80a7    	beq.w	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x14e
    2020: 78b5         	ldrb	r5, [r6, #0x2]
    2022: 2d0a         	cmp	r5, #0xa
    2024: d07c         	beq	0x2120 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1b6> @ imm = #0xf8
    2026: 3303         	adds	r3, #0x3
    2028: f000 80a1    	beq.w	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x142
    202c: 78f3         	ldrb	r3, [r6, #0x3]
    202e: 2b0a         	cmp	r3, #0xa
    2030: d078         	beq	0x2124 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1ba> @ imm = #0xf0
    2032: 3204         	adds	r2, #0x4
    2034: 188b         	adds	r3, r1, r2
    2036: d1e3         	bne	0x2000 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x96> @ imm = #-0x3a
    2038: e099         	b	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x132
    203a: 1cc1         	adds	r1, r0, #0x3
    203c: f021 0c03    	bic	r12, r1, #0x3
    2040: ebbc 0100    	subs.w	r1, r12, r0
    2044: d01c         	beq	0x2080 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x116> @ imm = #0x38
    2046: 1e8d         	subs	r5, r1, #0x2
    2048: f1a1 0a03    	sub.w	r10, r1, #0x3
    204c: 1e4c         	subs	r4, r1, #0x1
    204e: 2200         	movs	r2, #0x0
    2050: 5c83         	ldrb	r3, [r0, r2]
    2052: 2b0a         	cmp	r3, #0xa
    2054: d074         	beq	0x2140 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d6> @ imm = #0xe8
    2056: 4294         	cmp	r4, r2
    2058: d015         	beq	0x2086 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x11c> @ imm = #0x2a
    205a: 1883         	adds	r3, r0, r2
    205c: 785e         	ldrb	r6, [r3, #0x1]
    205e: 2e0a         	cmp	r6, #0xa
    2060: d062         	beq	0x2128 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1be> @ imm = #0xc4
    2062: 4295         	cmp	r5, r2
    2064: d00f         	beq	0x2086 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x11c> @ imm = #0x1e
    2066: 789e         	ldrb	r6, [r3, #0x2]
    2068: 2e0a         	cmp	r6, #0xa
    206a: d05f         	beq	0x212c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1c2> @ imm = #0xbe
    206c: 4592         	cmp	r10, r2
    206e: d00a         	beq	0x2086 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x11c> @ imm = #0x14
    2070: 78db         	ldrb	r3, [r3, #0x3]
    2072: 2b0a         	cmp	r3, #0xa
    2074: d05e         	beq	0x2134 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1ca> @ imm = #0xbc
    2076: 3204         	adds	r2, #0x4
    2078: 5c83         	ldrb	r3, [r0, r2]
    207a: 2b0a         	cmp	r3, #0xa
    207c: d1eb         	bne	0x2056 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0xec> @ imm = #-0x2a
    207e: e05f         	b	0x2140 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d6> @ imm = #0xbe
    2080: f1ae 0208    	sub.w	r2, lr, #0x8
    2084: e007         	b	0x2096 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x12c> @ imm = #0xe
    2086: f240 1a00    	movw	r10, #0x100
    208a: f1ae 0208    	sub.w	r2, lr, #0x8
    208e: 4291         	cmp	r1, r2
    2090: f2c0 1a01    	movt	r10, #0x101
    2094: d818         	bhi	0x20c8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x15e> @ imm = #0x30
    2096: 2304         	movs	r3, #0x4
    2098: eb03 060c    	add.w	r6, r3, r12
    209c: e956 5301    	ldrd	r5, r3, [r6, #-4]
    20a0: f083 340a    	eor	r4, r3, #0xa0a0a0a
    20a4: ebaa 0404    	sub.w	r4, r10, r4
    20a8: 4323         	orrs	r3, r4
    20aa: f085 340a    	eor	r4, r5, #0xa0a0a0a
    20ae: ebaa 0404    	sub.w	r4, r10, r4
    20b2: 4325         	orrs	r5, r4
    20b4: 402b         	ands	r3, r5
    20b6: f023 337f    	bic	r3, r3, #0x7f7f7f7f
    20ba: f1b3 3f80    	cmp.w	r3, #0x80808080
    20be: d103         	bne	0x20c8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x15e> @ imm = #0x6
    20c0: 3108         	adds	r1, #0x8
    20c2: 3608         	adds	r6, #0x8
    20c4: 4291         	cmp	r1, r2
    20c6: d9e9         	bls	0x209c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x132> @ imm = #-0x2e
    20c8: 4571         	cmp	r1, lr
    20ca: d050         	beq	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0xa0
    20cc: 9b00         	ldr	r3, [sp]
    20ce: eb01 0209    	add.w	r2, r1, r9
    20d2: 9e02         	ldr	r6, [sp, #0x8]
    20d4: 4413         	add	r3, r2
    20d6: eb02 0c06    	add.w	r12, r2, r6
    20da: ebab 0201    	sub.w	r2, r11, r1
    20de: eba2 0a09    	sub.w	r10, r2, r9
    20e2: 2200         	movs	r2, #0x0
    20e4: f1aa 0e01    	sub.w	lr, r10, #0x1
    20e8: 189e         	adds	r6, r3, r2
    20ea: f816 4c01    	ldrb	r4, [r6, #-1]
    20ee: 2c0a         	cmp	r4, #0xa
    20f0: d025         	beq	0x213e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d4> @ imm = #0x4a
    20f2: 4596         	cmp	lr, r2
    20f4: d03b         	beq	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x76
    20f6: 5c9c         	ldrb	r4, [r3, r2]
    20f8: 2c0a         	cmp	r4, #0xa
    20fa: d019         	beq	0x2130 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1c6> @ imm = #0x32
    20fc: eb0c 0402    	add.w	r4, r12, r2
    2100: 1ca5         	adds	r5, r4, #0x2
    2102: d034         	beq	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x68
    2104: 7875         	ldrb	r5, [r6, #0x1]
    2106: 2d0a         	cmp	r5, #0xa
    2108: d016         	beq	0x2138 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1ce> @ imm = #0x2c
    210a: 3403         	adds	r4, #0x3
    210c: d02f         	beq	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x5e
    210e: 78b4         	ldrb	r4, [r6, #0x2]
    2110: 2c0a         	cmp	r4, #0xa
    2112: d013         	beq	0x213c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d2> @ imm = #0x26
    2114: 3204         	adds	r2, #0x4
    2116: 4592         	cmp	r10, r2
    2118: d1e6         	bne	0x20e8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x17e> @ imm = #-0x34
    211a: e028         	b	0x216e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x204> @ imm = #0x50
    211c: 3201         	adds	r2, #0x1
    211e: e013         	b	0x2148 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1de> @ imm = #0x26
    2120: 3202         	adds	r2, #0x2
    2122: e011         	b	0x2148 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1de> @ imm = #0x22
    2124: 3203         	adds	r2, #0x3
    2126: e00f         	b	0x2148 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1de> @ imm = #0x1e
    2128: 3201         	adds	r2, #0x1
    212a: e009         	b	0x2140 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d6> @ imm = #0x12
    212c: 3202         	adds	r2, #0x2
    212e: e007         	b	0x2140 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d6> @ imm = #0xe
    2130: 3201         	adds	r2, #0x1
    2132: e004         	b	0x213e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d4> @ imm = #0x8
    2134: 3203         	adds	r2, #0x3
    2136: e003         	b	0x2140 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d6> @ imm = #0x6
    2138: 3202         	adds	r2, #0x2
    213a: e000         	b	0x213e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x1d4> @ imm = #0x0
    213c: 3203         	adds	r2, #0x3
    213e: 440a         	add	r2, r1
    2140: f240 1a00    	movw	r10, #0x100
    2144: f2c0 1a01    	movt	r10, #0x101
    2148: eb02 0109    	add.w	r1, r2, r9
    214c: f101 0901    	add.w	r9, r1, #0x1
    2150: 4559         	cmp	r1, r11
    2152: f4bf af45    	bhs.w	0x1fe0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x76> @ imm = #-0x176
    2156: 5c80         	ldrb	r0, [r0, r2]
    2158: 280a         	cmp	r0, #0xa
    215a: f47f af41    	bne.w	0x1fe0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x76> @ imm = #-0x17e
    215e: f04f 0a00    	mov.w	r10, #0x0
    2162: 464e         	mov	r6, r9
    2164: 464c         	mov	r4, r9
    2166: 9805         	ldr	r0, [sp, #0x14]
    2168: 7800         	ldrb	r0, [r0]
    216a: b950         	cbnz	r0, 0x2182 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x218> @ imm = #0x14
    216c: e013         	b	0x2196 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x22c> @ imm = #0x26
    216e: 46d9         	mov	r9, r11
    2170: 45d8         	cmp	r8, r11
    2172: d015         	beq	0x21a0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x236> @ imm = #0x2a
    2174: f04f 0a01    	mov.w	r10, #0x1
    2178: 4646         	mov	r6, r8
    217a: 465c         	mov	r4, r11
    217c: 9805         	ldr	r0, [sp, #0x14]
    217e: 7800         	ldrb	r0, [r0]
    2180: b148         	cbz	r0, 0x2196 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x22c> @ imm = #0x12
    2182: 9803         	ldr	r0, [sp, #0xc]
    2184: f243 319c    	movw	r1, #0x339c
    2188: f2c0 0100    	movt	r1, #0x0
    218c: 2204         	movs	r2, #0x4
    218e: 68c3         	ldr	r3, [r0, #0xc]
    2190: 9804         	ldr	r0, [sp, #0x10]
    2192: 4798         	blx	r3
    2194: b948         	cbnz	r0, 0x21aa <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x240> @ imm = #0x12
    2196: 4544         	cmp	r4, r8
    2198: f47f af02    	bne.w	0x1fa0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x36> @ imm = #-0x1fc
    219c: 2000         	movs	r0, #0x0
    219e: e705         	b	0x1fac <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::ha31afbc3c119af47+0x42> @ imm = #-0x1f6
    21a0: 2000         	movs	r0, #0x0
    21a2: b007         	add	sp, #0x1c
    21a4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    21a8: bdf0         	pop	{r4, r5, r6, r7, pc}
    21aa: 2001         	movs	r0, #0x1
    21ac: b007         	add	sp, #0x1c
    21ae: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    21b2: bdf0         	pop	{r4, r5, r6, r7, pc}

000021b4 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::hec3ef04e4c209a2a>:
    21b4: b5f0         	push	{r4, r5, r6, r7, lr}
    21b6: af03         	add	r7, sp, #0xc
    21b8: f84d 8d04    	str	r8, [sp, #-4]!
    21bc: 6885         	ldr	r5, [r0, #0x8]
    21be: e9d0 4600    	ldrd	r4, r6, [r0]
    21c2: 7828         	ldrb	r0, [r5]
    21c4: b178         	cbz	r0, 0x21e6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::hec3ef04e4c209a2a+0x32> @ imm = #0x1e
    21c6: f243 329c    	movw	r2, #0x339c
    21ca: 68f3         	ldr	r3, [r6, #0xc]
    21cc: f2c0 0200    	movt	r2, #0x0
    21d0: 4688         	mov	r8, r1
    21d2: 4611         	mov	r1, r2
    21d4: 4620         	mov	r0, r4
    21d6: 2204         	movs	r2, #0x4
    21d8: 4798         	blx	r3
    21da: 4641         	mov	r1, r8
    21dc: b118         	cbz	r0, 0x21e6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::hec3ef04e4c209a2a+0x32> @ imm = #0x6
    21de: 2001         	movs	r0, #0x1
    21e0: f85d 8b04    	ldr	r8, [sp], #4
    21e4: bdf0         	pop	{r4, r5, r6, r7, pc}
    21e6: f1a1 000a    	sub.w	r0, r1, #0xa
    21ea: 6932         	ldr	r2, [r6, #0x10]
    21ec: fab0 f080    	clz	r0, r0
    21f0: 0940         	lsrs	r0, r0, #0x5
    21f2: 7028         	strb	r0, [r5]
    21f4: 4620         	mov	r0, r4
    21f6: f85d 8b04    	ldr	r8, [sp], #4
    21fa: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
    21fe: 4710         	bx	r2

00002200 <core::fmt::Write::write_fmt::h42717d43405a9a18>:
    2200: 460a         	mov	r2, r1
    2202: f243 3184    	movw	r1, #0x3384
    2206: f2c0 0100    	movt	r1, #0x0
    220a: f7ff bdc9    	b.w	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0x46e

0000220e <core::result::unwrap_failed::h0c011c1f5dd171b7>:
    220e: b580         	push	{r7, lr}
    2210: 466f         	mov	r7, sp
    2212: b08e         	sub	sp, #0x38
    2214: f243 02b4    	movw	r2, #0x30b4
    2218: f2c0 0200    	movt	r2, #0x0
    221c: 9200         	str	r2, [sp]
    221e: f243 02a4    	movw	r2, #0x30a4
    2222: f2c0 0200    	movt	r2, #0x0
    2226: 9203         	str	r2, [sp, #0xc]
    2228: 222b         	movs	r2, #0x2b
    222a: e9cd 2001    	strd	r2, r0, [sp, #4]
    222e: 2000         	movs	r0, #0x0
    2230: 9008         	str	r0, [sp, #0x20]
    2232: 2002         	movs	r0, #0x2
    2234: 9005         	str	r0, [sp, #0x14]
    2236: f243 3274    	movw	r2, #0x3374
    223a: 9007         	str	r0, [sp, #0x1c]
    223c: a80a         	add	r0, sp, #0x28
    223e: 9006         	str	r0, [sp, #0x18]
    2240: f641 5099    	movw	r0, #0x1d99
    2244: f2c0 0000    	movt	r0, #0x0
    2248: f2c0 0200    	movt	r2, #0x0
    224c: 900d         	str	r0, [sp, #0x34]
    224e: a802         	add	r0, sp, #0x8
    2250: 900c         	str	r0, [sp, #0x30]
    2252: f241 60a1    	movw	r0, #0x16a1
    2256: f2c0 0000    	movt	r0, #0x0
    225a: 9204         	str	r2, [sp, #0x10]
    225c: 900b         	str	r0, [sp, #0x2c]
    225e: 4668         	mov	r0, sp
    2260: 900a         	str	r0, [sp, #0x28]
    2262: a804         	add	r0, sp, #0x10
    2264: f7ff f8d0    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #-0xe60

00002268 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2>:
    2268: b5f0         	push	{r4, r5, r6, r7, lr}
    226a: af03         	add	r7, sp, #0xc
    226c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    2270: b087         	sub	sp, #0x1c
    2272: e9d0 5600    	ldrd	r5, r6, [r0]
    2276: f242 7010    	movw	r0, #0x2710
    227a: f243 38ad    	movw	r8, #0x33ad
    227e: 460c         	mov	r4, r1
    2280: 1a28         	subs	r0, r5, r0
    2282: f64f 7c9c    	movw	r12, #0xff9c
    2286: f176 0000    	sbcs	r0, r6, #0x0
    228a: f2c0 0800    	movt	r8, #0x0
    228e: d33f         	blo	0x2310 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0xa8> @ imm = #0x7e
    2290: f24e 0aff    	movw	r10, #0xe0ff
    2294: f10d 0908    	add.w	r9, sp, #0x8
    2298: f2c0 5af5    	movt	r10, #0x5f5
    229c: 2200         	movs	r2, #0x0
    229e: 9401         	str	r4, [sp, #0x4]
    22a0: 4693         	mov	r11, r2
    22a2: 4628         	mov	r0, r5
    22a4: 4631         	mov	r1, r6
    22a6: f242 7210    	movw	r2, #0x2710
    22aa: 2300         	movs	r3, #0x0
    22ac: f000 fd02    	bl	0x2cb4 <__aeabi_uldivmod> @ imm = #0xa04
    22b0: f64d 02f0    	movw	r2, #0xd8f0
    22b4: f241 447b    	movw	r4, #0x147b
    22b8: fb00 5202    	mla	r2, r0, r2, r5
    22bc: f64f 7c9c    	movw	r12, #0xff9c
    22c0: b293         	uxth	r3, r2
    22c2: 089b         	lsrs	r3, r3, #0x2
    22c4: 4363         	muls	r3, r4, r3
    22c6: eb09 040b    	add.w	r4, r9, r11
    22ca: 0c5b         	lsrs	r3, r3, #0x11
    22cc: fb03 220c    	mla	r2, r3, r12, r2
    22d0: f838 3013    	ldrh.w	r3, [r8, r3, lsl #1]
    22d4: 8223         	strh	r3, [r4, #0x10]
    22d6: ebba 0305    	subs.w	r3, r10, r5
    22da: f04f 0300    	mov.w	r3, #0x0
    22de: 4605         	mov	r5, r0
    22e0: 41b3         	sbcs	r3, r6
    22e2: 460e         	mov	r6, r1
    22e4: b292         	uxth	r2, r2
    22e6: f838 2012    	ldrh.w	r2, [r8, r2, lsl #1]
    22ea: 8262         	strh	r2, [r4, #0x12]
    22ec: f1ab 0204    	sub.w	r2, r11, #0x4
    22f0: d3d6         	blo	0x22a0 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0x38> @ imm = #-0x54
    22f2: 9c01         	ldr	r4, [sp, #0x4]
    22f4: f10b 0110    	add.w	r1, r11, #0x10
    22f8: 4605         	mov	r5, r0
    22fa: 2d63         	cmp	r5, #0x63
    22fc: d80b         	bhi	0x2316 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0xae> @ imm = #0x16
    22fe: 4628         	mov	r0, r5
    2300: 280a         	cmp	r0, #0xa
    2302: d318         	blo	0x2336 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0xce> @ imm = #0x30
    2304: 3902         	subs	r1, #0x2
    2306: f838 0010    	ldrh.w	r0, [r8, r0, lsl #1]
    230a: aa02         	add	r2, sp, #0x8
    230c: 5250         	strh	r0, [r2, r1]
    230e: e017         	b	0x2340 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0xd8> @ imm = #0x2e
    2310: 2114         	movs	r1, #0x14
    2312: 2d63         	cmp	r5, #0x63
    2314: d9f3         	bls	0x22fe <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0x96> @ imm = #-0x1a
    2316: b2a8         	uxth	r0, r5
    2318: f241 427b    	movw	r2, #0x147b
    231c: 0880         	lsrs	r0, r0, #0x2
    231e: 3902         	subs	r1, #0x2
    2320: 4350         	muls	r0, r2, r0
    2322: ab02         	add	r3, sp, #0x8
    2324: 0c40         	lsrs	r0, r0, #0x11
    2326: fb00 520c    	mla	r2, r0, r12, r5
    232a: b292         	uxth	r2, r2
    232c: f838 2012    	ldrh.w	r2, [r8, r2, lsl #1]
    2330: 525a         	strh	r2, [r3, r1]
    2332: 280a         	cmp	r0, #0xa
    2334: d2e6         	bhs	0x2304 <core::fmt::num::imp::<impl core::fmt::Display for u64>::fmt::hc06a2a0339d285c2+0x9c> @ imm = #-0x34
    2336: 3901         	subs	r1, #0x1
    2338: aa02         	add	r2, sp, #0x8
    233a: f040 0030    	orr	r0, r0, #0x30
    233e: 5450         	strb	r0, [r2, r1]
    2340: f1c1 0014    	rsb.w	r0, r1, #0x14
    2344: 9000         	str	r0, [sp]
    2346: a802         	add	r0, sp, #0x8
    2348: 2200         	movs	r2, #0x0
    234a: 1843         	adds	r3, r0, r1
    234c: 4620         	mov	r0, r4
    234e: 2101         	movs	r1, #0x1
    2350: f7ff f865    	bl	0x141e <core::fmt::Formatter::pad_integral::hc0fd9b39f0f8d138> @ imm = #-0xf36
    2354: b007         	add	sp, #0x1c
    2356: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    235a: bdf0         	pop	{r4, r5, r6, r7, pc}

0000235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5>:
    235c: b580         	push	{r7, lr}
    235e: 466f         	mov	r7, sp
    2360: b086         	sub	sp, #0x18
    2362: 4601         	mov	r1, r0
    2364: 2000         	movs	r0, #0x0
    2366: 2201         	movs	r2, #0x1
    2368: 9004         	str	r0, [sp, #0x10]
    236a: 9201         	str	r2, [sp, #0x4]
    236c: f243 22ec    	movw	r2, #0x32ec
    2370: 9003         	str	r0, [sp, #0xc]
    2372: 2004         	movs	r0, #0x4
    2374: f2c0 0200    	movt	r2, #0x0
    2378: 9002         	str	r0, [sp, #0x8]
    237a: 4668         	mov	r0, sp
    237c: 9200         	str	r2, [sp]
    237e: f7ff f843    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #-0xf7a

00002382 <core::panicking::panic_const::panic_const_sub_overflow::h98aed8d3b4a9e0aa>:
    2382: b580         	push	{r7, lr}
    2384: 466f         	mov	r7, sp
    2386: b086         	sub	sp, #0x18
    2388: 4601         	mov	r1, r0
    238a: 2000         	movs	r0, #0x0
    238c: 2201         	movs	r2, #0x1
    238e: 9004         	str	r0, [sp, #0x10]
    2390: 9201         	str	r2, [sp, #0x4]
    2392: f243 3218    	movw	r2, #0x3318
    2396: 9003         	str	r0, [sp, #0xc]
    2398: 2004         	movs	r0, #0x4
    239a: f2c0 0200    	movt	r2, #0x0
    239e: 9002         	str	r0, [sp, #0x8]
    23a0: 4668         	mov	r0, sp
    23a2: 9200         	str	r2, [sp]
    23a4: f7ff f830    	bl	0x1408 <core::panicking::panic_fmt::he614eca46fdfef54> @ imm = #-0xfa0

000023a8 <WDT>:
    23a8: e7fe         	b	0x23a8 <WDT>            @ imm = #-0x4

000023aa <rtt_init_must_not_be_called_multiple_times>:
    23aa: 4770         	bx	lr

000023ac <rust_begin_unwind>:
    23ac: b580         	push	{r7, lr}
    23ae: 466f         	mov	r7, sp
    23b0: b090         	sub	sp, #0x40
    23b2: f240 4550    	movw	r5, #0x450
    23b6: 9001         	str	r0, [sp, #0x4]
    23b8: f3ef 8010    	mrs	r0, primask
    23bc: f2c2 0500    	movt	r5, #0x2000
    23c0: b672         	cpsid i
    23c2: f3ef 8410    	mrs	r4, primask
    23c6: b672         	cpsid i
    23c8: 6b28         	ldr	r0, [r5, #0x30]
    23ca: 2800         	cmp	r0, #0x0
    23cc: f040 808e    	bne.w	0x24ec <rust_begin_unwind+0x140> @ imm = #0x11c
    23d0: f04f 30ff    	mov.w	r0, #0xffffffff
    23d4: 6328         	str	r0, [r5, #0x30]
    23d6: 6b68         	ldr	r0, [r5, #0x34]
    23d8: 2800         	cmp	r0, #0x0
    23da: f000 8081    	beq.w	0x24e0 <rust_begin_unwind+0x134> @ imm = #0x102
    23de: 6ba8         	ldr	r0, [r5, #0x38]
    23e0: 2202         	movs	r2, #0x2
    23e2: 6941         	ldr	r1, [r0, #0x14]
    23e4: f3bf 8f5f    	dmb	sy
    23e8: f3bf 8f5f    	dmb	sy
    23ec: f362 0101    	bfi	r1, r2, #0, #2
    23f0: 6141         	str	r1, [r0, #0x14]
    23f2: f3bf 8f5f    	dmb	sy
    23f6: 6ba8         	ldr	r0, [r5, #0x38]
    23f8: 68c1         	ldr	r1, [r0, #0xc]
    23fa: f3bf 8f5f    	dmb	sy
    23fe: 6902         	ldr	r2, [r0, #0x10]
    2400: f3bf 8f5f    	dmb	sy
    2404: 6883         	ldr	r3, [r0, #0x8]
    2406: 4299         	cmp	r1, r3
    2408: bf38         	it	lo
    240a: 429a         	cmplo	r2, r3
    240c: d30a         	blo	0x2424 <rust_begin_unwind+0x78> @ imm = #0x14
    240e: 2100         	movs	r1, #0x0
    2410: f3bf 8f5f    	dmb	sy
    2414: 60c1         	str	r1, [r0, #0xc]
    2416: f3bf 8f5f    	dmb	sy
    241a: f3bf 8f5f    	dmb	sy
    241e: 6101         	str	r1, [r0, #0x10]
    2420: f3bf 8f5f    	dmb	sy
    2424: 2600         	movs	r6, #0x0
    2426: 9008         	str	r0, [sp, #0x20]
    2428: e9cd 1609    	strd	r1, r6, [sp, #36]
    242c: f895 103c    	ldrb.w	r1, [r5, #0x3c]
    2430: f88d 602c    	strb.w	r6, [sp, #0x2c]
    2434: b1a9         	cbz	r1, 0x2462 <rust_begin_unwind+0xb6> @ imm = #0x2a
    2436: 6ba8         	ldr	r0, [r5, #0x38]
    2438: f243 01ff    	movw	r1, #0x30ff
    243c: aa02         	add	r2, sp, #0x8
    243e: 2302         	movs	r3, #0x2
    2440: 6940         	ldr	r0, [r0, #0x14]
    2442: f3bf 8f5f    	dmb	sy
    2446: f8ad 1008    	strh.w	r1, [sp, #0x8]
    244a: f000 0003    	and	r0, r0, #0x3
    244e: 3802         	subs	r0, #0x2
    2450: fab0 f080    	clz	r0, r0
    2454: 0940         	lsrs	r0, r0, #0x5
    2456: 0041         	lsls	r1, r0, #0x1
    2458: a808         	add	r0, sp, #0x20
    245a: f000 f91e    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #0x23c
    245e: f885 603c    	strb.w	r6, [r5, #0x3c]
    2462: ab08         	add	r3, sp, #0x20
    2464: f10d 0c0c    	add.w	r12, sp, #0xc
    2468: f88d 601c    	strb.w	r6, [sp, #0x1c]
    246c: cb0f         	ldm	r3, {r0, r1, r2, r3}
    246e: 960c         	str	r6, [sp, #0x30]
    2470: e88c 000f    	stm.w	r12, {r0, r1, r2, r3}
    2474: f105 003c    	add.w	r0, r5, #0x3c
    2478: f243 4178    	movw	r1, #0x3478
    247c: 9002         	str	r0, [sp, #0x8]
    247e: 2002         	movs	r0, #0x2
    2480: 9009         	str	r0, [sp, #0x24]
    2482: f243 4094    	movw	r0, #0x3494
    2486: f2c0 0000    	movt	r0, #0x0
    248a: aa08         	add	r2, sp, #0x20
    248c: 9008         	str	r0, [sp, #0x20]
    248e: 2001         	movs	r0, #0x1
    2490: 900b         	str	r0, [sp, #0x2c]
    2492: a80e         	add	r0, sp, #0x38
    2494: 900a         	str	r0, [sp, #0x28]
    2496: f242 40f9    	movw	r0, #0x24f9
    249a: f2c0 0000    	movt	r0, #0x0
    249e: f2c0 0100    	movt	r1, #0x0
    24a2: 900f         	str	r0, [sp, #0x3c]
    24a4: a801         	add	r0, sp, #0x4
    24a6: 900e         	str	r0, [sp, #0x38]
    24a8: a802         	add	r0, sp, #0x8
    24aa: f7ff fc79    	bl	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0x70e
    24ae: f89d 0018    	ldrb.w	r0, [sp, #0x18]
    24b2: 2802         	cmp	r0, #0x2
    24b4: d107         	bne	0x24c6 <rust_begin_unwind+0x11a> @ imm = #0xe
    24b6: 9802         	ldr	r0, [sp, #0x8]
    24b8: f89d 101c    	ldrb.w	r1, [sp, #0x1c]
    24bc: 7001         	strb	r1, [r0]
    24be: f89d 0018    	ldrb.w	r0, [sp, #0x18]
    24c2: 2801         	cmp	r0, #0x1
    24c4: d806         	bhi	0x24d4 <rust_begin_unwind+0x128> @ imm = #0xc
    24c6: e9dd 0103    	ldrd	r0, r1, [sp, #12]
    24ca: f3bf 8f5f    	dmb	sy
    24ce: 60c1         	str	r1, [r0, #0xc]
    24d0: f3bf 8f5f    	dmb	sy
    24d4: 6b28         	ldr	r0, [r5, #0x30]
    24d6: 3001         	adds	r0, #0x1
    24d8: 6328         	str	r0, [r5, #0x30]
    24da: 07e0         	lsls	r0, r4, #0x1f
    24dc: d004         	beq	0x24e8 <rust_begin_unwind+0x13c> @ imm = #0x8
    24de: e004         	b	0x24ea <rust_begin_unwind+0x13e> @ imm = #0x8
    24e0: 2000         	movs	r0, #0x0
    24e2: 6328         	str	r0, [r5, #0x30]
    24e4: 07e0         	lsls	r0, r4, #0x1f
    24e6: d100         	bne	0x24ea <rust_begin_unwind+0x13e> @ imm = #0x0
    24e8: b662         	cpsie i
    24ea: e7fe         	b	0x24ea <rust_begin_unwind+0x13e> @ imm = #-0x4
    24ec: f243 50d0    	movw	r0, #0x35d0
    24f0: f2c0 0000    	movt	r0, #0x0
    24f4: f7ff fd1f    	bl	0x1f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213> @ imm = #-0x5c2

000024f8 <<&T as core::fmt::Display>::fmt::h7990d51f2ffef38d>:
    24f8: b5f0         	push	{r4, r5, r6, r7, lr}
    24fa: af03         	add	r7, sp, #0xc
    24fc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    2500: b08d         	sub	sp, #0x34
    2502: e9d1 ba07    	ldrd	r11, r10, [r1, #28]
    2506: f243 3164    	movw	r1, #0x3364
    250a: f8da 600c    	ldr.w	r6, [r10, #0xc]
    250e: f2c0 0100    	movt	r1, #0x0
    2512: f8d0 9000    	ldr.w	r9, [r0]
    2516: 220c         	movs	r2, #0xc
    2518: 4658         	mov	r0, r11
    251a: 47b0         	blx	r6
    251c: b120         	cbz	r0, 0x2528 <<&T as core::fmt::Display>::fmt::h7990d51f2ffef38d+0x30> @ imm = #0x8
    251e: 2001         	movs	r0, #0x1
    2520: b00d         	add	sp, #0x34
    2522: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2526: bdf0         	pop	{r4, r5, r6, r7, pc}
    2528: f243 324c    	movw	r2, #0x334c
    252c: 2100         	movs	r1, #0x0
    252e: f8d9 0004    	ldr.w	r0, [r9, #0x4]
    2532: f2c0 0200    	movt	r2, #0x0
    2536: 9105         	str	r1, [sp, #0x14]
    2538: 2103         	movs	r1, #0x3
    253a: 9201         	str	r2, [sp, #0x4]
    253c: f100 020c    	add.w	r2, r0, #0xc
    2540: 9102         	str	r1, [sp, #0x8]
    2542: f10d 081c    	add.w	r8, sp, #0x1c
    2546: 9104         	str	r1, [sp, #0x10]
    2548: f241 311b    	movw	r1, #0x131b
    254c: f2c0 0100    	movt	r1, #0x0
    2550: f8cd 800c    	str.w	r8, [sp, #0xc]
    2554: e9cd 120a    	strd	r1, r2, [sp, #40]
    2558: aa01         	add	r2, sp, #0x4
    255a: 910c         	str	r1, [sp, #0x30]
    255c: f100 0108    	add.w	r1, r0, #0x8
    2560: 9109         	str	r1, [sp, #0x24]
    2562: f241 61a1    	movw	r1, #0x16a1
    2566: f2c0 0100    	movt	r1, #0x0
    256a: e9cd 0107    	strd	r0, r1, [sp, #28]
    256e: 4658         	mov	r0, r11
    2570: 4651         	mov	r1, r10
    2572: f7ff fc15    	bl	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0x7d6
    2576: b120         	cbz	r0, 0x2582 <<&T as core::fmt::Display>::fmt::h7990d51f2ffef38d+0x8a> @ imm = #0x8
    2578: 2001         	movs	r0, #0x1
    257a: b00d         	add	sp, #0x34
    257c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2580: bdf0         	pop	{r4, r5, r6, r7, pc}
    2582: f243 3170    	movw	r1, #0x3370
    2586: 4658         	mov	r0, r11
    2588: f2c0 0100    	movt	r1, #0x0
    258c: 2202         	movs	r2, #0x2
    258e: 47b0         	blx	r6
    2590: b120         	cbz	r0, 0x259c <<&T as core::fmt::Display>::fmt::h7990d51f2ffef38d+0xa4> @ imm = #0x8
    2592: 2001         	movs	r0, #0x1
    2594: b00d         	add	sp, #0x34
    2596: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    259a: bdf0         	pop	{r4, r5, r6, r7, pc}
    259c: f8d9 c000    	ldr.w	r12, [r9]
    25a0: 4641         	mov	r1, r8
    25a2: e89c 007d    	ldm.w	r12, {r0, r2, r3, r4, r5, r6}
    25a6: c17d         	stm	r1!, {r0, r2, r3, r4, r5, r6}
    25a8: 4658         	mov	r0, r11
    25aa: 4651         	mov	r1, r10
    25ac: 4642         	mov	r2, r8
    25ae: f7ff fbf7    	bl	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0x812
    25b2: b00d         	add	sp, #0x34
    25b4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    25b8: bdf0         	pop	{r4, r5, r6, r7, pc}

000025ba <core::ptr::drop_in_place<rtt_target::TerminalWriter>::h8c959ca2dc1207db>:
    25ba: 7c01         	ldrb	r1, [r0, #0x10]
    25bc: 2902         	cmp	r1, #0x2
    25be: bf01         	itttt	eq
    25c0: 6801         	ldreq	r1, [r0]
    25c2: 7d00         	ldrbeq	r0, [r0, #0x14]
    25c4: 7008         	strbeq	r0, [r1]
    25c6: 4770         	bxeq	lr
    25c8: e9d0 1201    	ldrd	r1, r2, [r0, #4]
    25cc: f3bf 8f5f    	dmb	sy
    25d0: 60ca         	str	r2, [r1, #0xc]
    25d2: 2102         	movs	r1, #0x2
    25d4: f3bf 8f5f    	dmb	sy
    25d8: 7401         	strb	r1, [r0, #0x10]
    25da: 4770         	bx	lr

000025dc <core::fmt::Write::write_char::h9277405d9ef7d8a8>:
    25dc: b580         	push	{r7, lr}
    25de: 466f         	mov	r7, sp
    25e0: b082         	sub	sp, #0x8
    25e2: 2200         	movs	r2, #0x0
    25e4: 2980         	cmp	r1, #0x80
    25e6: 9201         	str	r2, [sp, #0x4]
    25e8: d203         	bhs	0x25f2 <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x16> @ imm = #0x6
    25ea: 2301         	movs	r3, #0x1
    25ec: f88d 1004    	strb.w	r1, [sp, #0x4]
    25f0: e035         	b	0x265e <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x82> @ imm = #0x6a
    25f2: f5b1 6f00    	cmp.w	r1, #0x800
    25f6: d20b         	bhs	0x2610 <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x34> @ imm = #0x16
    25f8: 2302         	movs	r3, #0x2
    25fa: 460a         	mov	r2, r1
    25fc: f363 129f    	bfi	r2, r3, #6, #26
    2600: f88d 2005    	strb.w	r2, [sp, #0x5]
    2604: 22c0         	movs	r2, #0xc0
    2606: ea42 1191    	orr.w	r1, r2, r1, lsr #6
    260a: f88d 1004    	strb.w	r1, [sp, #0x4]
    260e: e026         	b	0x265e <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x82> @ imm = #0x4c
    2610: 2202         	movs	r2, #0x2
    2612: 460b         	mov	r3, r1
    2614: f362 139f    	bfi	r3, r2, #6, #26
    2618: f5b1 3f80    	cmp.w	r1, #0x10000
    261c: d20d         	bhs	0x263a <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x5e> @ imm = #0x1a
    261e: f88d 3006    	strb.w	r3, [sp, #0x6]
    2622: 098b         	lsrs	r3, r1, #0x6
    2624: f362 139f    	bfi	r3, r2, #6, #26
    2628: f88d 3005    	strb.w	r3, [sp, #0x5]
    262c: 22e0         	movs	r2, #0xe0
    262e: ea42 3111    	orr.w	r1, r2, r1, lsr #12
    2632: f88d 1004    	strb.w	r1, [sp, #0x4]
    2636: 2303         	movs	r3, #0x3
    2638: e011         	b	0x265e <core::fmt::Write::write_char::h9277405d9ef7d8a8+0x82> @ imm = #0x22
    263a: f88d 3007    	strb.w	r3, [sp, #0x7]
    263e: 098b         	lsrs	r3, r1, #0x6
    2640: f362 139f    	bfi	r3, r2, #6, #26
    2644: f88d 3006    	strb.w	r3, [sp, #0x6]
    2648: 0b0b         	lsrs	r3, r1, #0xc
    264a: f362 139f    	bfi	r3, r2, #6, #26
    264e: f88d 3005    	strb.w	r3, [sp, #0x5]
    2652: 22f0         	movs	r2, #0xf0
    2654: ea42 4191    	orr.w	r1, r2, r1, lsr #18
    2658: f88d 1004    	strb.w	r1, [sp, #0x4]
    265c: 2304         	movs	r3, #0x4
    265e: f850 1f04    	ldr	r1, [r0, #4]!
    2662: f243 52e0    	movw	r2, #0x35e0
    2666: f2c0 0200    	movt	r2, #0x0
    266a: 6949         	ldr	r1, [r1, #0x14]
    266c: f3bf 8f5f    	dmb	sy
    2670: f001 0103    	and	r1, r1, #0x3
    2674: f852 1021    	ldr.w	r1, [r2, r1, lsl #2]
    2678: aa01         	add	r2, sp, #0x4
    267a: f000 f80e    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #0x1c
    267e: 2000         	movs	r0, #0x0
    2680: b002         	add	sp, #0x8
    2682: bd80         	pop	{r7, pc}

00002684 <core::fmt::Write::write_fmt::hc81a68cc45c52336>:
    2684: 460a         	mov	r2, r1
    2686: 6849         	ldr	r1, [r1, #0x4]
    2688: 2901         	cmp	r1, #0x1
    268a: bf18         	it	ne
    268c: 2900         	cmpne	r1, #0x0
    268e: f243 4178    	movw	r1, #0x3478
    2692: f2c0 0100    	movt	r1, #0x0
    2696: f7ff bb83    	b.w	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0x8fa

0000269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042>:
    269a: b5f0         	push	{r4, r5, r6, r7, lr}
    269c: af03         	add	r7, sp, #0xc
    269e: e92d 0f00    	push.w	{r8, r9, r10, r11}
    26a2: b081         	sub	sp, #0x4
    26a4: 4604         	mov	r4, r0
    26a6: 7b00         	ldrb	r0, [r0, #0xc]
    26a8: 2800         	cmp	r0, #0x0
    26aa: d174         	bne	0x2796 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xfc> @ imm = #0xe8
    26ac: 461d         	mov	r5, r3
    26ae: 2b00         	cmp	r3, #0x0
    26b0: d071         	beq	0x2796 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xfc> @ imm = #0xe2
    26b2: f8d4 8000    	ldr.w	r8, [r4]
    26b6: 4689         	mov	r9, r1
    26b8: f04f 0c00    	mov.w	r12, #0x0
    26bc: f8d8 300c    	ldr.w	r3, [r8, #0xc]
    26c0: f3bf 8f5f    	dmb	sy
    26c4: f8d8 1010    	ldr.w	r1, [r8, #0x10]
    26c8: f3bf 8f5f    	dmb	sy
    26cc: f8d8 0008    	ldr.w	r0, [r8, #0x8]
    26d0: 4283         	cmp	r3, r0
    26d2: bf38         	it	lo
    26d4: 4281         	cmplo	r1, r0
    26d6: d314         	blo	0x2702 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x68> @ imm = #0x28
    26d8: f3bf 8f5f    	dmb	sy
    26dc: f8c8 c00c    	str.w	r12, [r8, #0xc]
    26e0: f3bf 8f5f    	dmb	sy
    26e4: f3bf 8f5f    	dmb	sy
    26e8: f8c8 c010    	str.w	r12, [r8, #0x10]
    26ec: f3bf 8f5f    	dmb	sy
    26f0: f8d4 a004    	ldr.w	r10, [r4, #0x4]
    26f4: 4550         	cmp	r0, r10
    26f6: d352         	blo	0x279e <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x104> @ imm = #0xa4
    26f8: d051         	beq	0x279e <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x104> @ imm = #0xa2
    26fa: ea6f 010a    	mvn.w	r1, r10
    26fe: 1846         	adds	r6, r0, r1
    2700: e00d         	b	0x271e <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x84> @ imm = #0x1a
    2702: f8d4 a004    	ldr.w	r10, [r4, #0x4]
    2706: 4551         	cmp	r1, r10
    2708: d903         	bls	0x2712 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x78> @ imm = #0x6
    270a: ea6f 000a    	mvn.w	r0, r10
    270e: 180e         	adds	r6, r1, r0
    2710: e005         	b	0x271e <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x84> @ imm = #0xa
    2712: 2900         	cmp	r1, #0x0
    2714: d0ee         	beq	0x26f4 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x5a> @ imm = #-0x24
    2716: 4550         	cmp	r0, r10
    2718: d347         	blo	0x27aa <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x110> @ imm = #0x8e
    271a: eba0 060a    	sub.w	r6, r0, r10
    271e: 42ae         	cmp	r6, r5
    2720: bf28         	it	hs
    2722: 462e         	movhs	r6, r5
    2724: b9a6         	cbnz	r6, 0x2750 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xb6> @ imm = #0x28
    2726: f1b9 0f02    	cmp.w	r9, #0x2
    272a: d10b         	bne	0x2744 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xaa> @ imm = #0x16
    272c: f8d4 8000    	ldr.w	r8, [r4]
    2730: f3bf 8f5f    	dmb	sy
    2734: f8c8 a00c    	str.w	r10, [r8, #0xc]
    2738: f3bf 8f5f    	dmb	sy
    273c: 7b20         	ldrb	r0, [r4, #0xc]
    273e: 2800         	cmp	r0, #0x0
    2740: d0bc         	beq	0x26bc <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x22> @ imm = #-0x88
    2742: e028         	b	0x2796 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xfc> @ imm = #0x50
    2744: f1b9 0f01    	cmp.w	r9, #0x1
    2748: d123         	bne	0x2792 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xf8> @ imm = #0x46
    274a: 2001         	movs	r0, #0x1
    274c: 2600         	movs	r6, #0x0
    274e: 7320         	strb	r0, [r4, #0xc]
    2750: f8d4 8000    	ldr.w	r8, [r4]
    2754: 4693         	mov	r11, r2
    2756: 4611         	mov	r1, r2
    2758: 4632         	mov	r2, r6
    275a: f8d8 0004    	ldr.w	r0, [r8, #0x4]
    275e: 4450         	add	r0, r10
    2760: f000 f9c3    	bl	0x2aea <__aeabi_memcpy> @ imm = #0x386
    2764: eb1a 0006    	adds.w	r0, r10, r6
    2768: d22b         	bhs	0x27c2 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x128> @ imm = #0x56
    276a: 68a1         	ldr	r1, [r4, #0x8]
    276c: 6060         	str	r0, [r4, #0x4]
    276e: 1989         	adds	r1, r1, r6
    2770: d221         	bhs	0x27b6 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x11c> @ imm = #0x42
    2772: f8d8 2008    	ldr.w	r2, [r8, #0x8]
    2776: f04f 0c00    	mov.w	r12, #0x0
    277a: 60a1         	str	r1, [r4, #0x8]
    277c: 4290         	cmp	r0, r2
    277e: bf28         	it	hs
    2780: f8c4 c004    	strhs.w	r12, [r4, #0x4]
    2784: 7b20         	ldrb	r0, [r4, #0xc]
    2786: 465a         	mov	r2, r11
    2788: b928         	cbnz	r0, 0x2796 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xfc> @ imm = #0xa
    278a: 4432         	add	r2, r6
    278c: 1bad         	subs	r5, r5, r6
    278e: d195         	bne	0x26bc <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0x22> @ imm = #-0xd6
    2790: e001         	b	0x2796 <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042+0xfc> @ imm = #0x2
    2792: 2002         	movs	r0, #0x2
    2794: 7320         	strb	r0, [r4, #0xc]
    2796: b001         	add	sp, #0x4
    2798: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    279c: bdf0         	pop	{r4, r5, r6, r7, pc}
    279e: f243 503c    	movw	r0, #0x353c
    27a2: f2c0 0000    	movt	r0, #0x0
    27a6: f7ff fdec    	bl	0x2382 <core::panicking::panic_const::panic_const_sub_overflow::h98aed8d3b4a9e0aa> @ imm = #-0x428
    27aa: f243 504c    	movw	r0, #0x354c
    27ae: f2c0 0000    	movt	r0, #0x0
    27b2: f7ff fde6    	bl	0x2382 <core::panicking::panic_const::panic_const_sub_overflow::h98aed8d3b4a9e0aa> @ imm = #-0x434
    27b6: f243 502c    	movw	r0, #0x352c
    27ba: f2c0 0000    	movt	r0, #0x0
    27be: f7ff fdcd    	bl	0x235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5> @ imm = #-0x466
    27c2: f243 501c    	movw	r0, #0x351c
    27c6: f2c0 0000    	movt	r0, #0x0
    27ca: f7ff fdc7    	bl	0x235c <core::panicking::panic_const::panic_const_add_overflow::h21bbcf76fc67c4f5> @ imm = #-0x472

000027ce <rtt_target::print::print_impl::write_str::h7949a8452c806172>:
    27ce: b5f0         	push	{r4, r5, r6, r7, lr}
    27d0: af03         	add	r7, sp, #0xc
    27d2: e92d 0f00    	push.w	{r8, r9, r10, r11}
    27d6: b08b         	sub	sp, #0x2c
    27d8: f240 4850    	movw	r8, #0x450
    27dc: f3ef 8a10    	mrs	r10, primask
    27e0: b672         	cpsid i
    27e2: 4681         	mov	r9, r0
    27e4: f2c2 0800    	movt	r8, #0x2000
    27e8: f8d8 0030    	ldr.w	r0, [r8, #0x30]
    27ec: 2800         	cmp	r0, #0x0
    27ee: f040 808d    	bne.w	0x290c <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x13e> @ imm = #0x11a
    27f2: f04f 30ff    	mov.w	r0, #0xffffffff
    27f6: f8c8 0030    	str.w	r0, [r8, #0x30]
    27fa: f8d8 0034    	ldr.w	r0, [r8, #0x34]
    27fe: 2800         	cmp	r0, #0x0
    2800: d069         	beq	0x28d6 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x108> @ imm = #0xd2
    2802: f8d8 0038    	ldr.w	r0, [r8, #0x38]
    2806: 468c         	mov	r12, r1
    2808: 68c1         	ldr	r1, [r0, #0xc]
    280a: f3bf 8f5f    	dmb	sy
    280e: 6902         	ldr	r2, [r0, #0x10]
    2810: f3bf 8f5f    	dmb	sy
    2814: 6883         	ldr	r3, [r0, #0x8]
    2816: 4299         	cmp	r1, r3
    2818: bf38         	it	lo
    281a: 429a         	cmplo	r2, r3
    281c: d30a         	blo	0x2834 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x66> @ imm = #0x14
    281e: 2100         	movs	r1, #0x0
    2820: f3bf 8f5f    	dmb	sy
    2824: 60c1         	str	r1, [r0, #0xc]
    2826: f3bf 8f5f    	dmb	sy
    282a: f3bf 8f5f    	dmb	sy
    282e: 6101         	str	r1, [r0, #0x10]
    2830: f3bf 8f5f    	dmb	sy
    2834: f04f 0b00    	mov.w	r11, #0x0
    2838: 9007         	str	r0, [sp, #0x1c]
    283a: e9cd 1b08    	strd	r1, r11, [sp, #32]
    283e: f898 103c    	ldrb.w	r1, [r8, #0x3c]
    2842: f88d b028    	strb.w	r11, [sp, #0x28]
    2846: b1c1         	cbz	r1, 0x287a <rtt_target::print::print_impl::write_str::h7949a8452c806172+0xac> @ imm = #0x30
    2848: f8d8 0038    	ldr.w	r0, [r8, #0x38]
    284c: f243 01ff    	movw	r1, #0x30ff
    2850: 466a         	mov	r2, sp
    2852: 2302         	movs	r3, #0x2
    2854: 4664         	mov	r4, r12
    2856: 6940         	ldr	r0, [r0, #0x14]
    2858: f3bf 8f5f    	dmb	sy
    285c: f8ad 1000    	strh.w	r1, [sp]
    2860: f000 0003    	and	r0, r0, #0x3
    2864: 3802         	subs	r0, #0x2
    2866: fab0 f080    	clz	r0, r0
    286a: 0940         	lsrs	r0, r0, #0x5
    286c: 0041         	lsls	r1, r0, #0x1
    286e: a807         	add	r0, sp, #0x1c
    2870: f7ff ff13    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #-0x1da
    2874: 46a4         	mov	r12, r4
    2876: f888 b03c    	strb.w	r11, [r8, #0x3c]
    287a: ab07         	add	r3, sp, #0x1c
    287c: f817 6c2d    	ldrb	r6, [r7, #-45]
    2880: f837 5c2f    	ldrh	r5, [r7, #-47]
    2884: f10d 0e08    	add.w	lr, sp, #0x8
    2888: cb0f         	ldm	r3, {r0, r1, r2, r3}
    288a: f108 043c    	add.w	r4, r8, #0x3c
    288e: e88e 000e    	stm.w	lr, {r1, r2, r3}
    2892: f243 51e0    	movw	r1, #0x35e0
    2896: f2c0 0100    	movt	r1, #0x0
    289a: e9cd 4000    	strd	r4, r0, [sp]
    289e: 464a         	mov	r2, r9
    28a0: f88d b014    	strb.w	r11, [sp, #0x14]
    28a4: 4663         	mov	r3, r12
    28a6: f8ad 5015    	strh.w	r5, [sp, #0x15]
    28aa: f88d 6017    	strb.w	r6, [sp, #0x17]
    28ae: 6940         	ldr	r0, [r0, #0x14]
    28b0: f3bf 8f5f    	dmb	sy
    28b4: f000 0003    	and	r0, r0, #0x3
    28b8: f851 1020    	ldr.w	r1, [r1, r0, lsl #2]
    28bc: 4668         	mov	r0, sp
    28be: 3004         	adds	r0, #0x4
    28c0: f7ff feeb    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #-0x22a
    28c4: f89d 0010    	ldrb.w	r0, [sp, #0x10]
    28c8: 2802         	cmp	r0, #0x2
    28ca: d10b         	bne	0x28e4 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x116> @ imm = #0x16
    28cc: 9800         	ldr	r0, [sp]
    28ce: f89d 1014    	ldrb.w	r1, [sp, #0x14]
    28d2: 7001         	strb	r1, [r0]
    28d4: e00d         	b	0x28f2 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x124> @ imm = #0x1a
    28d6: 2000         	movs	r0, #0x0
    28d8: f8c8 0030    	str.w	r0, [r8, #0x30]
    28dc: ea5f 70ca    	lsls.w	r0, r10, #0x1f
    28e0: d00f         	beq	0x2902 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x134> @ imm = #0x1e
    28e2: e00f         	b	0x2904 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x136> @ imm = #0x1e
    28e4: e9dd 0101    	ldrd	r0, r1, [sp, #4]
    28e8: f3bf 8f5f    	dmb	sy
    28ec: 60c1         	str	r1, [r0, #0xc]
    28ee: f3bf 8f5f    	dmb	sy
    28f2: f8d8 0030    	ldr.w	r0, [r8, #0x30]
    28f6: 3001         	adds	r0, #0x1
    28f8: f8c8 0030    	str.w	r0, [r8, #0x30]
    28fc: ea5f 70ca    	lsls.w	r0, r10, #0x1f
    2900: d100         	bne	0x2904 <rtt_target::print::print_impl::write_str::h7949a8452c806172+0x136> @ imm = #0x0
    2902: b662         	cpsie i
    2904: b00b         	add	sp, #0x2c
    2906: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    290a: bdf0         	pop	{r4, r5, r6, r7, pc}
    290c: f243 50d0    	movw	r0, #0x35d0
    2910: f2c0 0000    	movt	r0, #0x0
    2914: f7ff fb0f    	bl	0x1f36 <core::cell::panic_already_borrowed::h114c5a1cccc07213> @ imm = #-0x9e2

00002918 <core::ptr::drop_in_place<rtt_target::TerminalWriter>::h8d5fa971b3c38206>:
    2918: 7c01         	ldrb	r1, [r0, #0x10]
    291a: 2902         	cmp	r1, #0x2
    291c: bf01         	itttt	eq
    291e: 6801         	ldreq	r1, [r0]
    2920: 7d00         	ldrbeq	r0, [r0, #0x14]
    2922: 7008         	strbeq	r0, [r1]
    2924: 4770         	bxeq	lr
    2926: e9d0 1201    	ldrd	r1, r2, [r0, #4]
    292a: f3bf 8f5f    	dmb	sy
    292e: 60ca         	str	r2, [r1, #0xc]
    2930: 2102         	movs	r1, #0x2
    2932: f3bf 8f5f    	dmb	sy
    2936: 7401         	strb	r1, [r0, #0x10]
    2938: 4770         	bx	lr

0000293a <<rtt_target::TerminalWriter as core::fmt::Write>::write_str::h6b36729d1f70b715>:
    293a: b580         	push	{r7, lr}
    293c: 466f         	mov	r7, sp
    293e: 4694         	mov	r12, r2
    2940: 460a         	mov	r2, r1
    2942: f850 1f04    	ldr	r1, [r0, #4]!
    2946: f243 53e0    	movw	r3, #0x35e0
    294a: f2c0 0300    	movt	r3, #0x0
    294e: 6949         	ldr	r1, [r1, #0x14]
    2950: f001 0103    	and	r1, r1, #0x3
    2954: f853 1021    	ldr.w	r1, [r3, r1, lsl #2]
    2958: 4663         	mov	r3, r12
    295a: f3bf 8f5f    	dmb	sy
    295e: f7ff fe9c    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #-0x2c8
    2962: 2000         	movs	r0, #0x0
    2964: bd80         	pop	{r7, pc}

00002966 <core::fmt::Write::write_char::h2e8d3f8f6e5d218d>:
    2966: b580         	push	{r7, lr}
    2968: 466f         	mov	r7, sp
    296a: b082         	sub	sp, #0x8
    296c: 2200         	movs	r2, #0x0
    296e: 2980         	cmp	r1, #0x80
    2970: 9201         	str	r2, [sp, #0x4]
    2972: d203         	bhs	0x297c <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x16> @ imm = #0x6
    2974: 2301         	movs	r3, #0x1
    2976: f88d 1004    	strb.w	r1, [sp, #0x4]
    297a: e035         	b	0x29e8 <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x82> @ imm = #0x6a
    297c: f5b1 6f00    	cmp.w	r1, #0x800
    2980: d20b         	bhs	0x299a <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x34> @ imm = #0x16
    2982: 2302         	movs	r3, #0x2
    2984: 460a         	mov	r2, r1
    2986: f363 129f    	bfi	r2, r3, #6, #26
    298a: f88d 2005    	strb.w	r2, [sp, #0x5]
    298e: 22c0         	movs	r2, #0xc0
    2990: ea42 1191    	orr.w	r1, r2, r1, lsr #6
    2994: f88d 1004    	strb.w	r1, [sp, #0x4]
    2998: e026         	b	0x29e8 <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x82> @ imm = #0x4c
    299a: 2202         	movs	r2, #0x2
    299c: 460b         	mov	r3, r1
    299e: f362 139f    	bfi	r3, r2, #6, #26
    29a2: f5b1 3f80    	cmp.w	r1, #0x10000
    29a6: d20d         	bhs	0x29c4 <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x5e> @ imm = #0x1a
    29a8: f88d 3006    	strb.w	r3, [sp, #0x6]
    29ac: 098b         	lsrs	r3, r1, #0x6
    29ae: f362 139f    	bfi	r3, r2, #6, #26
    29b2: f88d 3005    	strb.w	r3, [sp, #0x5]
    29b6: 22e0         	movs	r2, #0xe0
    29b8: ea42 3111    	orr.w	r1, r2, r1, lsr #12
    29bc: f88d 1004    	strb.w	r1, [sp, #0x4]
    29c0: 2303         	movs	r3, #0x3
    29c2: e011         	b	0x29e8 <core::fmt::Write::write_char::h2e8d3f8f6e5d218d+0x82> @ imm = #0x22
    29c4: f88d 3007    	strb.w	r3, [sp, #0x7]
    29c8: 098b         	lsrs	r3, r1, #0x6
    29ca: f362 139f    	bfi	r3, r2, #6, #26
    29ce: f88d 3006    	strb.w	r3, [sp, #0x6]
    29d2: 0b0b         	lsrs	r3, r1, #0xc
    29d4: f362 139f    	bfi	r3, r2, #6, #26
    29d8: f88d 3005    	strb.w	r3, [sp, #0x5]
    29dc: 22f0         	movs	r2, #0xf0
    29de: ea42 4191    	orr.w	r1, r2, r1, lsr #18
    29e2: f88d 1004    	strb.w	r1, [sp, #0x4]
    29e6: 2304         	movs	r3, #0x4
    29e8: f850 1f04    	ldr	r1, [r0, #4]!
    29ec: f243 52e0    	movw	r2, #0x35e0
    29f0: f2c0 0200    	movt	r2, #0x0
    29f4: 6949         	ldr	r1, [r1, #0x14]
    29f6: f3bf 8f5f    	dmb	sy
    29fa: f001 0103    	and	r1, r1, #0x3
    29fe: f852 1021    	ldr.w	r1, [r2, r1, lsl #2]
    2a02: aa01         	add	r2, sp, #0x4
    2a04: f7ff fe49    	bl	0x269a <rtt_target::rtt::RttWriter::write_with_mode::h7774d55dd4571042> @ imm = #-0x36e
    2a08: 2000         	movs	r0, #0x0
    2a0a: b002         	add	sp, #0x8
    2a0c: bd80         	pop	{r7, pc}

00002a0e <core::fmt::Write::write_fmt::ha03fcbd63d9b9276>:
    2a0e: 460a         	mov	r2, r1
    2a10: 6849         	ldr	r1, [r1, #0x4]
    2a12: 2901         	cmp	r1, #0x1
    2a14: bf18         	it	ne
    2a16: 2900         	cmpne	r1, #0x0
    2a18: f243 41a4    	movw	r1, #0x34a4
    2a1c: f2c0 0100    	movt	r1, #0x0
    2a20: f7ff b9be    	b.w	0x1da0 <core::fmt::write::hd0203c5d2051aa66> @ imm = #-0xc84

00002a24 <__aeabi_memclr4>:
    2a24: b580         	push	{r7, lr}
    2a26: 466f         	mov	r7, sp
    2a28: 2904         	cmp	r1, #0x4
    2a2a: d314         	blo	0x2a56 <__aeabi_memclr4+0x32> @ imm = #0x28
    2a2c: f1a1 0c04    	sub.w	r12, r1, #0x4
    2a30: 2201         	movs	r2, #0x1
    2a32: eb02 029c    	add.w	r2, r2, r12, lsr #2
    2a36: f012 0303    	ands	r3, r2, #0x3
    2a3a: d00e         	beq	0x2a5a <__aeabi_memclr4+0x36> @ imm = #0x1c
    2a3c: f04f 0e00    	mov.w	lr, #0x0
    2a40: 4602         	mov	r2, r0
    2a42: f842 eb04    	str	lr, [r2], #4
    2a46: 2b01         	cmp	r3, #0x1
    2a48: d10b         	bne	0x2a62 <__aeabi_memclr4+0x3e> @ imm = #0x16
    2a4a: 4610         	mov	r0, r2
    2a4c: 4661         	mov	r1, r12
    2a4e: f1bc 0f0c    	cmp.w	r12, #0xc
    2a52: d219         	bhs	0x2a88 <__aeabi_memclr4+0x64> @ imm = #0x32
    2a54: e022         	b	0x2a9c <__aeabi_memclr4+0x78> @ imm = #0x44
    2a56: 4602         	mov	r2, r0
    2a58: e020         	b	0x2a9c <__aeabi_memclr4+0x78> @ imm = #0x40
    2a5a: f1bc 0f0c    	cmp.w	r12, #0xc
    2a5e: d213         	bhs	0x2a88 <__aeabi_memclr4+0x64> @ imm = #0x26
    2a60: e01c         	b	0x2a9c <__aeabi_memclr4+0x78> @ imm = #0x38
    2a62: 2b02         	cmp	r3, #0x2
    2a64: f8c0 e004    	str.w	lr, [r0, #0x4]
    2a68: d106         	bne	0x2a78 <__aeabi_memclr4+0x54> @ imm = #0xc
    2a6a: 3908         	subs	r1, #0x8
    2a6c: 3008         	adds	r0, #0x8
    2a6e: 4602         	mov	r2, r0
    2a70: f1bc 0f0c    	cmp.w	r12, #0xc
    2a74: d208         	bhs	0x2a88 <__aeabi_memclr4+0x64> @ imm = #0x10
    2a76: e011         	b	0x2a9c <__aeabi_memclr4+0x78> @ imm = #0x22
    2a78: 2200         	movs	r2, #0x0
    2a7a: 390c         	subs	r1, #0xc
    2a7c: 6082         	str	r2, [r0, #0x8]
    2a7e: 300c         	adds	r0, #0xc
    2a80: 4602         	mov	r2, r0
    2a82: f1bc 0f0c    	cmp.w	r12, #0xc
    2a86: d309         	blo	0x2a9c <__aeabi_memclr4+0x78> @ imm = #0x12
    2a88: 2300         	movs	r3, #0x0
    2a8a: 4602         	mov	r2, r0
    2a8c: 3910         	subs	r1, #0x10
    2a8e: e9c2 3300    	strd	r3, r3, [r2]
    2a92: e9c2 3302    	strd	r3, r3, [r2, #8]
    2a96: 3210         	adds	r2, #0x10
    2a98: 2903         	cmp	r1, #0x3
    2a9a: d8f7         	bhi	0x2a8c <__aeabi_memclr4+0x68> @ imm = #-0x12
    2a9c: 1850         	adds	r0, r2, r1
    2a9e: 4282         	cmp	r2, r0
    2aa0: d222         	bhs	0x2ae8 <__aeabi_memclr4+0xc4> @ imm = #0x44
    2aa2: f011 0c03    	ands	r12, r1, #0x3
    2aa6: f1a1 0101    	sub.w	r1, r1, #0x1
    2aaa: d00e         	beq	0x2aca <__aeabi_memclr4+0xa6> @ imm = #0x1c
    2aac: f04f 0e00    	mov.w	lr, #0x0
    2ab0: 4613         	mov	r3, r2
    2ab2: f803 eb01    	strb	lr, [r3], #1
    2ab6: f1bc 0f01    	cmp.w	r12, #0x1
    2aba: d00b         	beq	0x2ad4 <__aeabi_memclr4+0xb0> @ imm = #0x16
    2abc: f1bc 0f02    	cmp.w	r12, #0x2
    2ac0: f882 e001    	strb.w	lr, [r2, #0x1]
    2ac4: d103         	bne	0x2ace <__aeabi_memclr4+0xaa> @ imm = #0x6
    2ac6: 1c93         	adds	r3, r2, #0x2
    2ac8: e004         	b	0x2ad4 <__aeabi_memclr4+0xb0> @ imm = #0x8
    2aca: 4613         	mov	r3, r2
    2acc: e002         	b	0x2ad4 <__aeabi_memclr4+0xb0> @ imm = #0x4
    2ace: 2300         	movs	r3, #0x0
    2ad0: 7093         	strb	r3, [r2, #0x2]
    2ad2: 1cd3         	adds	r3, r2, #0x3
    2ad4: 2903         	cmp	r1, #0x3
    2ad6: bf38         	it	lo
    2ad8: bd80         	poplo	{r7, pc}
    2ada: 1f19         	subs	r1, r3, #0x4
    2adc: 2200         	movs	r2, #0x0
    2ade: f841 2f04    	str	r2, [r1, #4]!
    2ae2: 1d0b         	adds	r3, r1, #0x4
    2ae4: 4283         	cmp	r3, r0
    2ae6: d1fa         	bne	0x2ade <__aeabi_memclr4+0xba> @ imm = #-0xc
    2ae8: bd80         	pop	{r7, pc}

00002aea <__aeabi_memcpy>:
    2aea: f000 b800    	b.w	0x2aee <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1> @ imm = #0x0

00002aee <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1>:
    2aee: b5f0         	push	{r4, r5, r6, r7, lr}
    2af0: af03         	add	r7, sp, #0xc
    2af2: e92d 0700    	push.w	{r8, r9, r10}
    2af6: 2a10         	cmp	r2, #0x10
    2af8: d31e         	blo	0x2b38 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x4a> @ imm = #0x3c
    2afa: 4243         	rsbs	r3, r0, #0
    2afc: f003 0803    	and	r8, r3, #0x3
    2b00: eb00 0308    	add.w	r3, r0, r8
    2b04: 4283         	cmp	r3, r0
    2b06: d933         	bls	0x2b70 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x82> @ imm = #0x66
    2b08: f1a8 0c01    	sub.w	r12, r8, #0x1
    2b0c: f1b8 0f00    	cmp.w	r8, #0x0
    2b10: 4606         	mov	r6, r0
    2b12: 460d         	mov	r5, r1
    2b14: d01a         	beq	0x2b4c <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x5e> @ imm = #0x34
    2b16: 460d         	mov	r5, r1
    2b18: 4606         	mov	r6, r0
    2b1a: f815 eb01    	ldrb	lr, [r5], #1
    2b1e: f1b8 0f01    	cmp.w	r8, #0x1
    2b22: f806 eb01    	strb	lr, [r6], #1
    2b26: d011         	beq	0x2b4c <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x5e> @ imm = #0x22
    2b28: 784e         	ldrb	r6, [r1, #0x1]
    2b2a: f1b8 0f02    	cmp.w	r8, #0x2
    2b2e: 7046         	strb	r6, [r0, #0x1]
    2b30: d108         	bne	0x2b44 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x56> @ imm = #0x10
    2b32: 1c8d         	adds	r5, r1, #0x2
    2b34: 1c86         	adds	r6, r0, #0x2
    2b36: e009         	b	0x2b4c <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x5e> @ imm = #0x12
    2b38: 4684         	mov	r12, r0
    2b3a: eb0c 0302    	add.w	r3, r12, r2
    2b3e: 459c         	cmp	r12, r3
    2b40: d33e         	blo	0x2bc0 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xd2> @ imm = #0x7c
    2b42: e06a         	b	0x2c1a <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x12c> @ imm = #0xd4
    2b44: 788e         	ldrb	r6, [r1, #0x2]
    2b46: 1ccd         	adds	r5, r1, #0x3
    2b48: 7086         	strb	r6, [r0, #0x2]
    2b4a: 1cc6         	adds	r6, r0, #0x3
    2b4c: f1bc 0f03    	cmp.w	r12, #0x3
    2b50: d30e         	blo	0x2b70 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x82> @ imm = #0x1c
    2b52: 3d04         	subs	r5, #0x4
    2b54: 3e04         	subs	r6, #0x4
    2b56: f815 4f04    	ldrb	r4, [r5, #4]!
    2b5a: f806 4f04    	strb	r4, [r6, #4]!
    2b5e: 786c         	ldrb	r4, [r5, #0x1]
    2b60: 7074         	strb	r4, [r6, #0x1]
    2b62: 78ac         	ldrb	r4, [r5, #0x2]
    2b64: 70b4         	strb	r4, [r6, #0x2]
    2b66: 78ec         	ldrb	r4, [r5, #0x3]
    2b68: 70f4         	strb	r4, [r6, #0x3]
    2b6a: 1d34         	adds	r4, r6, #0x4
    2b6c: 429c         	cmp	r4, r3
    2b6e: d1f2         	bne	0x2b56 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x68> @ imm = #-0x1c
    2b70: eba2 0e08    	sub.w	lr, r2, r8
    2b74: 4441         	add	r1, r8
    2b76: f02e 0203    	bic	r2, lr, #0x3
    2b7a: eb03 0c02    	add.w	r12, r3, r2
    2b7e: 078c         	lsls	r4, r1, #0x1e
    2b80: d158         	bne	0x2c34 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x146> @ imm = #0xb0
    2b82: 4563         	cmp	r3, r12
    2b84: d215         	bhs	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #0x2a
    2b86: 460c         	mov	r4, r1
    2b88: 6825         	ldr	r5, [r4]
    2b8a: f843 5b04    	str	r5, [r3], #4
    2b8e: 4563         	cmp	r3, r12
    2b90: d20f         	bhs	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #0x1e
    2b92: 6865         	ldr	r5, [r4, #0x4]
    2b94: f843 5b04    	str	r5, [r3], #4
    2b98: 4563         	cmp	r3, r12
    2b9a: bf3e         	ittt	lo
    2b9c: 68a5         	ldrlo	r5, [r4, #0x8]
    2b9e: f843 5b04    	strlo	r5, [r3], #4
    2ba2: 4563         	cmplo	r3, r12
    2ba4: d205         	bhs	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #0xa
    2ba6: 68e5         	ldr	r5, [r4, #0xc]
    2ba8: 3410         	adds	r4, #0x10
    2baa: f843 5b04    	str	r5, [r3], #4
    2bae: 4563         	cmp	r3, r12
    2bb0: d3ea         	blo	0x2b88 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x9a> @ imm = #-0x2c
    2bb2: 4411         	add	r1, r2
    2bb4: f00e 0203    	and	r2, lr, #0x3
    2bb8: eb0c 0302    	add.w	r3, r12, r2
    2bbc: 459c         	cmp	r12, r3
    2bbe: d22c         	bhs	0x2c1a <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x12c> @ imm = #0x58
    2bc0: f012 0403    	ands	r4, r2, #0x3
    2bc4: f1a2 0e01    	sub.w	lr, r2, #0x1
    2bc8: d013         	beq	0x2bf2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x104> @ imm = #0x26
    2bca: 460e         	mov	r6, r1
    2bcc: 4665         	mov	r5, r12
    2bce: f816 2b01    	ldrb	r2, [r6], #1
    2bd2: 2c01         	cmp	r4, #0x1
    2bd4: f805 2b01    	strb	r2, [r5], #1
    2bd8: d00d         	beq	0x2bf6 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x108> @ imm = #0x1a
    2bda: 784a         	ldrb	r2, [r1, #0x1]
    2bdc: 2c02         	cmp	r4, #0x2
    2bde: f88c 2001    	strb.w	r2, [r12, #0x1]
    2be2: d11d         	bne	0x2c20 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x132> @ imm = #0x3a
    2be4: 1c8e         	adds	r6, r1, #0x2
    2be6: f10c 0502    	add.w	r5, r12, #0x2
    2bea: f1be 0f03    	cmp.w	lr, #0x3
    2bee: d205         	bhs	0x2bfc <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x10e> @ imm = #0xa
    2bf0: e013         	b	0x2c1a <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x12c> @ imm = #0x26
    2bf2: 4665         	mov	r5, r12
    2bf4: 460e         	mov	r6, r1
    2bf6: f1be 0f03    	cmp.w	lr, #0x3
    2bfa: d30e         	blo	0x2c1a <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x12c> @ imm = #0x1c
    2bfc: 1f31         	subs	r1, r6, #0x4
    2bfe: 1f2a         	subs	r2, r5, #0x4
    2c00: f811 6f04    	ldrb	r6, [r1, #4]!
    2c04: f802 6f04    	strb	r6, [r2, #4]!
    2c08: 784e         	ldrb	r6, [r1, #0x1]
    2c0a: 7056         	strb	r6, [r2, #0x1]
    2c0c: 788e         	ldrb	r6, [r1, #0x2]
    2c0e: 7096         	strb	r6, [r2, #0x2]
    2c10: 78ce         	ldrb	r6, [r1, #0x3]
    2c12: 70d6         	strb	r6, [r2, #0x3]
    2c14: 1d16         	adds	r6, r2, #0x4
    2c16: 429e         	cmp	r6, r3
    2c18: d1f2         	bne	0x2c00 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x112> @ imm = #-0x1c
    2c1a: e8bd 0700    	pop.w	{r8, r9, r10}
    2c1e: bdf0         	pop	{r4, r5, r6, r7, pc}
    2c20: 1cce         	adds	r6, r1, #0x3
    2c22: f10c 0503    	add.w	r5, r12, #0x3
    2c26: 788a         	ldrb	r2, [r1, #0x2]
    2c28: f88c 2002    	strb.w	r2, [r12, #0x2]
    2c2c: f1be 0f03    	cmp.w	lr, #0x3
    2c30: d2e4         	bhs	0x2bfc <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x10e> @ imm = #-0x38
    2c32: e7f2         	b	0x2c1a <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x12c> @ imm = #-0x1c
    2c34: 4563         	cmp	r3, r12
    2c36: d2bc         	bhs	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #-0x88
    2c38: 2418         	movs	r4, #0x18
    2c3a: f021 0603    	bic	r6, r1, #0x3
    2c3e: ea04 08c1    	and.w	r8, r4, r1, lsl #3
    2c42: 00cc         	lsls	r4, r1, #0x3
    2c44: f1c4 0900    	rsb.w	r9, r4, #0x0
    2c48: 6834         	ldr	r4, [r6]
    2c4a: f106 0508    	add.w	r5, r6, #0x8
    2c4e: f009 0918    	and	r9, r9, #0x18
    2c52: f855 6c04    	ldr	r6, [r5, #-4]
    2c56: fa24 fa08    	lsr.w	r10, r4, r8
    2c5a: fa06 f409    	lsl.w	r4, r6, r9
    2c5e: ea44 040a    	orr.w	r4, r4, r10
    2c62: f843 4b04    	str	r4, [r3], #4
    2c66: 4563         	cmp	r3, r12
    2c68: d2a3         	bhs	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #-0xba
    2c6a: 682c         	ldr	r4, [r5]
    2c6c: fa26 fa08    	lsr.w	r10, r6, r8
    2c70: fa04 f609    	lsl.w	r6, r4, r9
    2c74: ea46 060a    	orr.w	r6, r6, r10
    2c78: f843 6b04    	str	r6, [r3], #4
    2c7c: 4563         	cmp	r3, r12
    2c7e: bf3f         	itttt	lo
    2c80: 686e         	ldrlo	r6, [r5, #0x4]
    2c82: fa24 fa08    	lsrlo.w	r10, r4, r8
    2c86: fa06 f409    	lsllo.w	r4, r6, r9
    2c8a: ea44 040a    	orrlo.w	r4, r4, r10
    2c8e: bf3c         	itt	lo
    2c90: f843 4b04    	strlo	r4, [r3], #4
    2c94: 4563         	cmplo	r3, r12
    2c96: f4bf af8c    	bhs.w	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #-0xe8
    2c9a: 68ac         	ldr	r4, [r5, #0x8]
    2c9c: fa26 fa08    	lsr.w	r10, r6, r8
    2ca0: 3510         	adds	r5, #0x10
    2ca2: fa04 f609    	lsl.w	r6, r4, r9
    2ca6: ea46 060a    	orr.w	r6, r6, r10
    2caa: f843 6b04    	str	r6, [r3], #4
    2cae: 4563         	cmp	r3, r12
    2cb0: d3cf         	blo	0x2c52 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0x164> @ imm = #-0x62
    2cb2: e77e         	b	0x2bb2 <compiler_builtins::mem::memcpy::h10319ccbd26fe8e1+0xc4> @ imm = #-0x104

00002cb4 <__aeabi_uldivmod>:
    2cb4: b510         	push	{r4, lr}
    2cb6: b084         	sub	sp, #0x10
    2cb8: ac02         	add	r4, sp, #0x8
    2cba: 9400         	str	r4, [sp]
    2cbc: f000 f804    	bl	0x2cc8 <__udivmoddi4>   @ imm = #0x8
    2cc0: 9a02         	ldr	r2, [sp, #0x8]
    2cc2: 9b03         	ldr	r3, [sp, #0xc]
    2cc4: b004         	add	sp, #0x10
    2cc6: bd10         	pop	{r4, pc}

00002cc8 <__udivmoddi4>:
    2cc8: b580         	push	{r7, lr}
    2cca: 466f         	mov	r7, sp
    2ccc: b086         	sub	sp, #0x18
    2cce: 4684         	mov	r12, r0
    2cd0: a802         	add	r0, sp, #0x8
    2cd2: e9cd 2300    	strd	r2, r3, [sp]
    2cd6: 4662         	mov	r2, r12
    2cd8: 460b         	mov	r3, r1
    2cda: f000 f80d    	bl	0x2cf8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e> @ imm = #0x1a
    2cde: f8d7 c008    	ldr.w	r12, [r7, #0x8]
    2ce2: e9dd 0102    	ldrd	r0, r1, [sp, #8]
    2ce6: f1bc 0f00    	cmp.w	r12, #0x0
    2cea: bf1c         	itt	ne
    2cec: e9dd 3204    	ldrdne	r3, r2, [sp, #16]
    2cf0: e9cc 3200    	strdne	r3, r2, [r12]
    2cf4: b006         	add	sp, #0x18
    2cf6: bd80         	pop	{r7, pc}

00002cf8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e>:
    2cf8: b5f0         	push	{r4, r5, r6, r7, lr}
    2cfa: af03         	add	r7, sp, #0xc
    2cfc: e92d 0b00    	push.w	{r8, r9, r11}
    2d00: e9d7 e802    	ldrd	lr, r8, [r7, #8]
    2d04: f1be 0f00    	cmp.w	lr, #0x0
    2d08: d072         	beq	0x2df0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xf8> @ imm = #0xe4
    2d0a: f1b8 0f00    	cmp.w	r8, #0x0
    2d0e: d16f         	bne	0x2df0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xf8> @ imm = #0xde
    2d10: 2b00         	cmp	r3, #0x0
    2d12: f000 80fc    	beq.w	0x2f0e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x216> @ imm = #0x1f8
    2d16: 4573         	cmp	r3, lr
    2d18: f080 8107    	bhs.w	0x2f2a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x232> @ imm = #0x20e
    2d1c: fab3 f183    	clz	r1, r3
    2d20: fabe f68e    	clz	r6, lr
    2d24: 1a71         	subs	r1, r6, r1
    2d26: f101 0620    	add.w	r6, r1, #0x20
    2d2a: bf08         	it	eq
    2d2c: 261f         	moveq	r6, #0x1f
    2d2e: f1c6 0520    	rsb.w	r5, r6, #0x20
    2d32: fa08 f106    	lsl.w	r1, r8, r6
    2d36: fa0e f806    	lsl.w	r8, lr, r6
    2d3a: fa2e f505    	lsr.w	r5, lr, r5
    2d3e: 4329         	orrs	r1, r5
    2d40: f1b6 0520    	subs.w	r5, r6, #0x20
    2d44: f006 061f    	and	r6, r6, #0x1f
    2d48: bf58         	it	pl
    2d4a: fa0e f105    	lslpl.w	r1, lr, r5
    2d4e: f04f 0501    	mov.w	r5, #0x1
    2d52: fa05 fc06    	lsl.w	r12, r5, r6
    2d56: f04f 0500    	mov.w	r5, #0x0
    2d5a: bf58         	it	pl
    2d5c: f04f 0800    	movpl.w	r8, #0x0
    2d60: e008         	b	0x2d74 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x7c> @ imm = #0x10
    2d62: 4622         	mov	r2, r4
    2d64: 4633         	mov	r3, r6
    2d66: ea4f 1418    	lsr.w	r4, r8, #0x4
    2d6a: ea44 7801    	orr.w	r8, r4, r1, lsl #28
    2d6e: ea4f 1c1c    	lsr.w	r12, r12, #0x4
    2d72: 0909         	lsrs	r1, r1, #0x4
    2d74: ebb2 0408    	subs.w	r4, r2, r8
    2d78: eb63 0601    	sbc.w	r6, r3, r1
    2d7c: 2e00         	cmp	r6, #0x0
    2d7e: d403         	bmi	0x2d88 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x90> @ imm = #0x6
    2d80: ea45 050c    	orr.w	r5, r5, r12
    2d84: d102         	bne	0x2d8c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x94> @ imm = #0x4
    2d86: e02d         	b	0x2de4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xec> @ imm = #0x5a
    2d88: 4614         	mov	r4, r2
    2d8a: 461e         	mov	r6, r3
    2d8c: ea5f 0351    	lsrs.w	r3, r1, #0x1
    2d90: ea4f 0238    	rrx	r2, r8
    2d94: 1aa2         	subs	r2, r4, r2
    2d96: eb66 0303    	sbc.w	r3, r6, r3
    2d9a: 2b00         	cmp	r3, #0x0
    2d9c: d404         	bmi	0x2da8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xb0> @ imm = #0x8
    2d9e: ea45 055c    	orr.w	r5, r5, r12, lsr #1
    2da2: 4614         	mov	r4, r2
    2da4: d102         	bne	0x2dac <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xb4> @ imm = #0x4
    2da6: e01d         	b	0x2de4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xec> @ imm = #0x3a
    2da8: 4622         	mov	r2, r4
    2daa: 4633         	mov	r3, r6
    2dac: ea4f 0498    	lsr.w	r4, r8, #0x2
    2db0: ea44 7481    	orr.w	r4, r4, r1, lsl #30
    2db4: 1b14         	subs	r4, r2, r4
    2db6: eb63 0691    	sbc.w	r6, r3, r1, lsr #2
    2dba: 2e00         	cmp	r6, #0x0
    2dbc: d403         	bmi	0x2dc6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xce> @ imm = #0x6
    2dbe: ea45 059c    	orr.w	r5, r5, r12, lsr #2
    2dc2: d102         	bne	0x2dca <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xd2> @ imm = #0x4
    2dc4: e00e         	b	0x2de4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0xec> @ imm = #0x1c
    2dc6: 4614         	mov	r4, r2
    2dc8: 461e         	mov	r6, r3
    2dca: ea4f 02d8    	lsr.w	r2, r8, #0x3
    2dce: ea42 7241    	orr.w	r2, r2, r1, lsl #29
    2dd2: 1aa2         	subs	r2, r4, r2
    2dd4: eb66 03d1    	sbc.w	r3, r6, r1, lsr #3
    2dd8: 2b00         	cmp	r3, #0x0
    2dda: d4c2         	bmi	0x2d62 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x6a> @ imm = #-0x7c
    2ddc: ea45 05dc    	orr.w	r5, r5, r12, lsr #3
    2de0: 4614         	mov	r4, r2
    2de2: d1c0         	bne	0x2d66 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x6e> @ imm = #-0x80
    2de4: fbb4 f1fe    	udiv	r1, r4, lr
    2de8: fb01 461e    	mls	r6, r1, lr, r4
    2dec: 4329         	orrs	r1, r5
    2dee: e092         	b	0x2f16 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x21e> @ imm = #0x124
    2df0: ebb2 060e    	subs.w	r6, r2, lr
    2df4: f04f 0100    	mov.w	r1, #0x0
    2df8: eb73 0608    	sbcs.w	r6, r3, r8
    2dfc: d37c         	blo	0x2ef8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x200> @ imm = #0xf8
    2dfe: 2b00         	cmp	r3, #0x0
    2e00: d07a         	beq	0x2ef8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x200> @ imm = #0xf4
    2e02: fab3 f183    	clz	r1, r3
    2e06: fab8 f688    	clz	r6, r8
    2e0a: 1a71         	subs	r1, r6, r1
    2e0c: f001 063f    	and	r6, r1, #0x3f
    2e10: f001 011f    	and	r1, r1, #0x1f
    2e14: f1c6 0420    	rsb.w	r4, r6, #0x20
    2e18: fa08 f506    	lsl.w	r5, r8, r6
    2e1c: fa0e fc06    	lsl.w	r12, lr, r6
    2e20: fa2e f404    	lsr.w	r4, lr, r4
    2e24: 432c         	orrs	r4, r5
    2e26: f1b6 0520    	subs.w	r5, r6, #0x20
    2e2a: bf58         	it	pl
    2e2c: fa0e f405    	lslpl.w	r4, lr, r5
    2e30: f04f 0501    	mov.w	r5, #0x1
    2e34: fa05 f901    	lsl.w	r9, r5, r1
    2e38: f04f 0100    	mov.w	r1, #0x0
    2e3c: bf58         	it	pl
    2e3e: f04f 0c00    	movpl.w	r12, #0x0
    2e42: e008         	b	0x2e56 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x15e> @ imm = #0x10
    2e44: 4632         	mov	r2, r6
    2e46: 462b         	mov	r3, r5
    2e48: ea4f 161c    	lsr.w	r6, r12, #0x4
    2e4c: ea46 7c04    	orr.w	r12, r6, r4, lsl #28
    2e50: ea4f 1919    	lsr.w	r9, r9, #0x4
    2e54: 0924         	lsrs	r4, r4, #0x4
    2e56: ebb2 060c    	subs.w	r6, r2, r12
    2e5a: eb73 0504    	sbcs.w	r5, r3, r4
    2e5e: d407         	bmi	0x2e70 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x178> @ imm = #0xe
    2e60: ebb6 020e    	subs.w	r2, r6, lr
    2e64: ea41 0109    	orr.w	r1, r1, r9
    2e68: eb75 0208    	sbcs.w	r2, r5, r8
    2e6c: d202         	bhs	0x2e74 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x17c> @ imm = #0x4
    2e6e: e03a         	b	0x2ee6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1ee> @ imm = #0x74
    2e70: 4616         	mov	r6, r2
    2e72: 461d         	mov	r5, r3
    2e74: ea5f 0354    	lsrs.w	r3, r4, #0x1
    2e78: ea4f 023c    	rrx	r2, r12
    2e7c: 1ab2         	subs	r2, r6, r2
    2e7e: eb75 0303    	sbcs.w	r3, r5, r3
    2e82: d409         	bmi	0x2e98 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1a0> @ imm = #0x12
    2e84: ebb2 050e    	subs.w	r5, r2, lr
    2e88: ea41 0159    	orr.w	r1, r1, r9, lsr #1
    2e8c: eb73 0508    	sbcs.w	r5, r3, r8
    2e90: 4616         	mov	r6, r2
    2e92: 461d         	mov	r5, r3
    2e94: d202         	bhs	0x2e9c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1a4> @ imm = #0x4
    2e96: e026         	b	0x2ee6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1ee> @ imm = #0x4c
    2e98: 4632         	mov	r2, r6
    2e9a: 462b         	mov	r3, r5
    2e9c: ea4f 059c    	lsr.w	r5, r12, #0x2
    2ea0: ea45 7584    	orr.w	r5, r5, r4, lsl #30
    2ea4: 1b56         	subs	r6, r2, r5
    2ea6: eb63 0594    	sbc.w	r5, r3, r4, lsr #2
    2eaa: 2d00         	cmp	r5, #0x0
    2eac: d407         	bmi	0x2ebe <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1c6> @ imm = #0xe
    2eae: ebb6 020e    	subs.w	r2, r6, lr
    2eb2: ea41 0199    	orr.w	r1, r1, r9, lsr #2
    2eb6: eb75 0208    	sbcs.w	r2, r5, r8
    2eba: d202         	bhs	0x2ec2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1ca> @ imm = #0x4
    2ebc: e013         	b	0x2ee6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x1ee> @ imm = #0x26
    2ebe: 4616         	mov	r6, r2
    2ec0: 461d         	mov	r5, r3
    2ec2: ea4f 02dc    	lsr.w	r2, r12, #0x3
    2ec6: ea42 7244    	orr.w	r2, r2, r4, lsl #29
    2eca: 1ab2         	subs	r2, r6, r2
    2ecc: eb65 03d4    	sbc.w	r3, r5, r4, lsr #3
    2ed0: 2b00         	cmp	r3, #0x0
    2ed2: d4b7         	bmi	0x2e44 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x14c> @ imm = #-0x92
    2ed4: ebb2 050e    	subs.w	r5, r2, lr
    2ed8: ea41 01d9    	orr.w	r1, r1, r9, lsr #3
    2edc: eb73 0508    	sbcs.w	r5, r3, r8
    2ee0: 4616         	mov	r6, r2
    2ee2: 461d         	mov	r5, r3
    2ee4: d2b0         	bhs	0x2e48 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x150> @ imm = #-0xa0
    2ee6: f04f 0c00    	mov.w	r12, #0x0
    2eea: e9c0 1c00    	strd	r1, r12, [r0]
    2eee: e9c0 6502    	strd	r6, r5, [r0, #8]
    2ef2: e8bd 0b00    	pop.w	{r8, r9, r11}
    2ef6: bdf0         	pop	{r4, r5, r6, r7, pc}
    2ef8: f04f 0c00    	mov.w	r12, #0x0
    2efc: 4616         	mov	r6, r2
    2efe: 461d         	mov	r5, r3
    2f00: e9c0 1c00    	strd	r1, r12, [r0]
    2f04: e9c0 6502    	strd	r6, r5, [r0, #8]
    2f08: e8bd 0b00    	pop.w	{r8, r9, r11}
    2f0c: bdf0         	pop	{r4, r5, r6, r7, pc}
    2f0e: fbb2 f1fe    	udiv	r1, r2, lr
    2f12: fb01 261e    	mls	r6, r1, lr, r2
    2f16: f04f 0c00    	mov.w	r12, #0x0
    2f1a: 2500         	movs	r5, #0x0
    2f1c: e9c0 1c00    	strd	r1, r12, [r0]
    2f20: e9c0 6502    	strd	r6, r5, [r0, #8]
    2f24: e8bd 0b00    	pop.w	{r8, r9, r11}
    2f28: bdf0         	pop	{r4, r5, r6, r7, pc}
    2f2a: d10d         	bne	0x2f48 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x250> @ imm = #0x1a
    2f2c: fbb2 f1f3    	udiv	r1, r2, r3
    2f30: 2500         	movs	r5, #0x0
    2f32: fb01 2613    	mls	r6, r1, r3, r2
    2f36: f04f 0c01    	mov.w	r12, #0x1
    2f3a: e9c0 1c00    	strd	r1, r12, [r0]
    2f3e: e9c0 6502    	strd	r6, r5, [r0, #8]
    2f42: e8bd 0b00    	pop.w	{r8, r9, r11}
    2f46: bdf0         	pop	{r4, r5, r6, r7, pc}
    2f48: fbb3 fcfe    	udiv	r12, r3, lr
    2f4c: f5be 3f80    	cmp.w	lr, #0x10000
    2f50: fb0c 351e    	mls	r5, r12, lr, r3
    2f54: d21a         	bhs	0x2f8c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x294> @ imm = #0x34
    2f56: 0429         	lsls	r1, r5, #0x10
    2f58: 2500         	movs	r5, #0x0
    2f5a: ea41 4112    	orr.w	r1, r1, r2, lsr #16
    2f5e: fbb1 f3fe    	udiv	r3, r1, lr
    2f62: fb03 f10e    	mul	r1, r3, lr
    2f66: ea4c 4c13    	orr.w	r12, r12, r3, lsr #16
    2f6a: ebc1 4112    	rsb	r1, r1, r2, lsr #16
    2f6e: eac2 4101    	pkhbt	r1, r2, r1, lsl #16
    2f72: fbb1 f2fe    	udiv	r2, r1, lr
    2f76: fb02 161e    	mls	r6, r2, lr, r1
    2f7a: ea42 4103    	orr.w	r1, r2, r3, lsl #16
    2f7e: e9c0 1c00    	strd	r1, r12, [r0]
    2f82: e9c0 6502    	strd	r6, r5, [r0, #8]
    2f86: e8bd 0b00    	pop.w	{r8, r9, r11}
    2f8a: bdf0         	pop	{r4, r5, r6, r7, pc}
    2f8c: ebb2 010e    	subs.w	r1, r2, lr
    2f90: eb75 0108    	sbcs.w	r1, r5, r8
    2f94: d208         	bhs	0x2fa8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2b0> @ imm = #0x10
    2f96: 2100         	movs	r1, #0x0
    2f98: 4616         	mov	r6, r2
    2f9a: e9c0 1c00    	strd	r1, r12, [r0]
    2f9e: e9c0 6502    	strd	r6, r5, [r0, #8]
    2fa2: e8bd 0b00    	pop.w	{r8, r9, r11}
    2fa6: bdf0         	pop	{r4, r5, r6, r7, pc}
    2fa8: ea4f 71c8    	lsl.w	r1, r8, #0x1f
    2fac: ea41 035e    	orr.w	r3, r1, lr, lsr #1
    2fb0: ea4f 79ce    	lsl.w	r9, lr, #0x1f
    2fb4: f04f 4800    	mov.w	r8, #0x80000000
    2fb8: 2100         	movs	r1, #0x0
    2fba: e008         	b	0x2fce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2d6> @ imm = #0x10
    2fbc: 4622         	mov	r2, r4
    2fbe: 4635         	mov	r5, r6
    2fc0: ea4f 1419    	lsr.w	r4, r9, #0x4
    2fc4: ea44 7903    	orr.w	r9, r4, r3, lsl #28
    2fc8: ea4f 1818    	lsr.w	r8, r8, #0x4
    2fcc: 091b         	lsrs	r3, r3, #0x4
    2fce: ebb2 0409    	subs.w	r4, r2, r9
    2fd2: eb65 0603    	sbc.w	r6, r5, r3
    2fd6: 2e00         	cmp	r6, #0x0
    2fd8: d403         	bmi	0x2fe2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2ea> @ imm = #0x6
    2fda: ea41 0108    	orr.w	r1, r1, r8
    2fde: d102         	bne	0x2fe6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2ee> @ imm = #0x4
    2fe0: e02d         	b	0x303e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x346> @ imm = #0x5a
    2fe2: 4614         	mov	r4, r2
    2fe4: 462e         	mov	r6, r5
    2fe6: ea5f 0553    	lsrs.w	r5, r3, #0x1
    2fea: ea4f 0239    	rrx	r2, r9
    2fee: 1aa2         	subs	r2, r4, r2
    2ff0: eb66 0505    	sbc.w	r5, r6, r5
    2ff4: 2d00         	cmp	r5, #0x0
    2ff6: d404         	bmi	0x3002 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x30a> @ imm = #0x8
    2ff8: ea41 0158    	orr.w	r1, r1, r8, lsr #1
    2ffc: 4614         	mov	r4, r2
    2ffe: d102         	bne	0x3006 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x30e> @ imm = #0x4
    3000: e01d         	b	0x303e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x346> @ imm = #0x3a
    3002: 4622         	mov	r2, r4
    3004: 4635         	mov	r5, r6
    3006: ea4f 0499    	lsr.w	r4, r9, #0x2
    300a: ea44 7483    	orr.w	r4, r4, r3, lsl #30
    300e: 1b14         	subs	r4, r2, r4
    3010: eb65 0693    	sbc.w	r6, r5, r3, lsr #2
    3014: 2e00         	cmp	r6, #0x0
    3016: d403         	bmi	0x3020 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x328> @ imm = #0x6
    3018: ea41 0198    	orr.w	r1, r1, r8, lsr #2
    301c: d102         	bne	0x3024 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x32c> @ imm = #0x4
    301e: e00e         	b	0x303e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x346> @ imm = #0x1c
    3020: 4614         	mov	r4, r2
    3022: 462e         	mov	r6, r5
    3024: ea4f 02d9    	lsr.w	r2, r9, #0x3
    3028: ea42 7243    	orr.w	r2, r2, r3, lsl #29
    302c: 1aa2         	subs	r2, r4, r2
    302e: eb66 05d3    	sbc.w	r5, r6, r3, lsr #3
    3032: 2d00         	cmp	r5, #0x0
    3034: d4c2         	bmi	0x2fbc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2c4> @ imm = #-0x7c
    3036: ea41 01d8    	orr.w	r1, r1, r8, lsr #3
    303a: 4614         	mov	r4, r2
    303c: d1c0         	bne	0x2fc0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x2c8> @ imm = #-0x80
    303e: fbb4 f2fe    	udiv	r2, r4, lr
    3042: 2500         	movs	r5, #0x0
    3044: fb02 461e    	mls	r6, r2, lr, r4
    3048: 4311         	orrs	r1, r2
    304a: e9c0 1c00    	strd	r1, r12, [r0]
    304e: e9c0 6502    	strd	r6, r5, [r0, #8]
    3052: e8bd 0b00    	pop.w	{r8, r9, r11}
    3056: bdf0         	pop	{r4, r5, r6, r7, pc}

00003058 <HardFault_>:
    3058: e7fe         	b	0x3058 <HardFault_>     @ imm = #-0x4
    305a: d4d4         	bmi	0x3006 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h622d80e938f3f31e+0x30e> @ imm = #-0x58
