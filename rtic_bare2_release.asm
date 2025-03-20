
rtic_bare2:	file format elf32-littlearm

Disassembly of section .text:

00000100 <__stext>:
     100: f001 f8ed    	bl	0x12de <rtt_init_must_not_be_called_multiple_times> @ imm = #0x11da
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
     138: f000 f92b    	bl	0x392 <main>            @ imm = #0x256
     13c: de00         	udf	#0x0
     13e: 0000         	movs	r0, r0
     140: 00 00 00 20  	.word	0x20000000
     144: 44 04 00 20  	.word	0x20000444
     148: 00 00 00 20  	.word	0x20000000
     14c: 00 00 00 20  	.word	0x20000000
     150: 84 1f 00 00  	.word	0x00001f84
     154: 88 ed 00 e0  	.word	0xe000ed88

00000158 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a>:
     158: b5f0         	push	{r4, r5, r6, r7, lr}
     15a: af03         	add	r7, sp, #0xc
     15c: e92d 0f00    	push.w	{r8, r9, r10, r11}
     160: b0a3         	sub	sp, #0x8c
     162: 4689         	mov	r9, r1
     164: 69c9         	ldr	r1, [r1, #0x1c]
     166: 06ca         	lsls	r2, r1, #0x1b
     168: d44e         	bmi	0x208 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0xb0> @ imm = #0x9c
     16a: 0689         	lsls	r1, r1, #0x1a
     16c: f100 808a    	bmi.w	0x284 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x12c> @ imm = #0x114
     170: 6801         	ldr	r1, [r0]
     172: f242 7010    	movw	r0, #0x2710
     176: f64f 7e9c    	movw	lr, #0xff9c
     17a: 4281         	cmp	r1, r0
     17c: f641 5038    	movw	r0, #0x1d38
     180: f2c0 0000    	movt	r0, #0x0
     184: f0c0 80d6    	blo.w	0x334 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1dc> @ imm = #0x1ac
     188: f241 7859    	movw	r8, #0x1759
     18c: f24e 04ff    	movw	r4, #0xe0ff
     190: f10d 0b0c    	add.w	r11, sp, #0xc
     194: f8cd 9008    	str.w	r9, [sp, #0x8]
     198: 2200         	movs	r2, #0x0
     19a: f2cd 18b7    	movt	r8, #0xd1b7
     19e: f64d 09f0    	movw	r9, #0xd8f0
     1a2: f241 4a7b    	movw	r10, #0x147b
     1a6: f2c0 54f5    	movt	r4, #0x5f5
     1aa: fba1 3508    	umull	r3, r5, r1, r8
     1ae: eb0b 0c02    	add.w	r12, r11, r2
     1b2: 3a04         	subs	r2, #0x4
     1b4: 42a1         	cmp	r1, r4
     1b6: ea4f 3355    	lsr.w	r3, r5, #0xd
     1ba: fb03 1509    	mla	r5, r3, r9, r1
     1be: 4619         	mov	r1, r3
     1c0: b2ae         	uxth	r6, r5
     1c2: ea4f 0696    	lsr.w	r6, r6, #0x2
     1c6: fb06 f60a    	mul	r6, r6, r10
     1ca: ea4f 4656    	lsr.w	r6, r6, #0x11
     1ce: fb06 550e    	mla	r5, r6, lr, r5
     1d2: f830 6016    	ldrh.w	r6, [r0, r6, lsl #1]
     1d6: f8ac 6006    	strh.w	r6, [r12, #0x6]
     1da: b2ad         	uxth	r5, r5
     1dc: f830 5015    	ldrh.w	r5, [r0, r5, lsl #1]
     1e0: f8ac 5008    	strh.w	r5, [r12, #0x8]
     1e4: d8e1         	bhi	0x1aa <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x52> @ imm = #-0x3e
     1e6: f8dd 9008    	ldr.w	r9, [sp, #0x8]
     1ea: 320a         	adds	r2, #0xa
     1ec: 4619         	mov	r1, r3
     1ee: 2963         	cmp	r1, #0x63
     1f0: f200 80a4    	bhi.w	0x33c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1e4> @ imm = #0x148
     1f4: 460b         	mov	r3, r1
     1f6: 2b0a         	cmp	r3, #0xa
     1f8: f0c0 80b1    	blo.w	0x35e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x206> @ imm = #0x162
     1fc: 1e91         	subs	r1, r2, #0x2
     1fe: f830 0013    	ldrh.w	r0, [r0, r3, lsl #1]
     202: aa03         	add	r2, sp, #0xc
     204: 5250         	strh	r0, [r2, r1]
     206: e0af         	b	0x368 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x210> @ imm = #0x15e
     208: 6803         	ldr	r3, [r0]
     20a: f10d 0e0c    	add.w	lr, sp, #0xc
     20e: 2480         	movs	r4, #0x80
     210: 2181         	movs	r1, #0x81
     212: f04f 0857    	mov.w	r8, #0x57
     216: 4620         	mov	r0, r4
     218: f003 040f    	and	r4, r3, #0xf
     21c: f104 0557    	add.w	r5, r4, #0x57
     220: 2c0a         	cmp	r4, #0xa
     222: bf38         	it	lo
     224: f104 0530    	addlo.w	r5, r4, #0x30
     228: eb0e 0401    	add.w	r4, lr, r1
     22c: 2b10         	cmp	r3, #0x10
     22e: f804 5c02    	strb	r5, [r4, #-2]
     232: d366         	blo	0x302 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1aa> @ imm = #0xcc
     234: b2dd         	uxtb	r5, r3
     236: 2da0         	cmp	r5, #0xa0
     238: eb08 1615    	add.w	r6, r8, r5, lsr #4
     23c: ea4f 1215    	lsr.w	r2, r5, #0x4
     240: bf38         	it	lo
     242: f102 0630    	addlo.w	r6, r2, #0x30
     246: 0a1d         	lsrs	r5, r3, #0x8
     248: f804 6c03    	strb	r6, [r4, #-3]
     24c: d05c         	beq	0x308 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1b0> @ imm = #0xb8
     24e: f005 020f    	and	r2, r5, #0xf
     252: 3904         	subs	r1, #0x4
     254: f102 0557    	add.w	r5, r2, #0x57
     258: 2a0a         	cmp	r2, #0xa
     25a: bf38         	it	lo
     25c: f102 0530    	addlo.w	r5, r2, #0x30
     260: f804 5c04    	strb	r5, [r4, #-4]
     264: 0b1d         	lsrs	r5, r3, #0xc
     266: d052         	beq	0x30e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1b6> @ imm = #0xa4
     268: f005 020f    	and	r2, r5, #0xf
     26c: f102 0557    	add.w	r5, r2, #0x57
     270: 2a0a         	cmp	r2, #0xa
     272: bf38         	it	lo
     274: f102 0530    	addlo.w	r5, r2, #0x30
     278: f804 5c05    	strb	r5, [r4, #-5]
     27c: 1f04         	subs	r4, r0, #0x4
     27e: 0c1b         	lsrs	r3, r3, #0x10
     280: d1c9         	bne	0x216 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0xbe> @ imm = #-0x6e
     282: e03c         	b	0x2fe <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1a6> @ imm = #0x78
     284: 6803         	ldr	r3, [r0]
     286: f10d 0e0c    	add.w	lr, sp, #0xc
     28a: 2480         	movs	r4, #0x80
     28c: 2181         	movs	r1, #0x81
     28e: f04f 0c37    	mov.w	r12, #0x37
     292: f003 060f    	and	r6, r3, #0xf
     296: 4620         	mov	r0, r4
     298: f106 0537    	add.w	r5, r6, #0x37
     29c: 2e0a         	cmp	r6, #0xa
     29e: eb0e 0401    	add.w	r4, lr, r1
     2a2: bf38         	it	lo
     2a4: f106 0530    	addlo.w	r5, r6, #0x30
     2a8: 2b10         	cmp	r3, #0x10
     2aa: f804 5c02    	strb	r5, [r4, #-2]
     2ae: d328         	blo	0x302 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1aa> @ imm = #0x50
     2b0: b2de         	uxtb	r6, r3
     2b2: 2ea0         	cmp	r6, #0xa0
     2b4: eb0c 1516    	add.w	r5, r12, r6, lsr #4
     2b8: ea4f 1216    	lsr.w	r2, r6, #0x4
     2bc: bf38         	it	lo
     2be: f102 0530    	addlo.w	r5, r2, #0x30
     2c2: f804 5c03    	strb	r5, [r4, #-3]
     2c6: 0a1d         	lsrs	r5, r3, #0x8
     2c8: d01e         	beq	0x308 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1b0> @ imm = #0x3c
     2ca: f005 020f    	and	r2, r5, #0xf
     2ce: 3904         	subs	r1, #0x4
     2d0: f102 0537    	add.w	r5, r2, #0x37
     2d4: 2a0a         	cmp	r2, #0xa
     2d6: bf38         	it	lo
     2d8: f102 0530    	addlo.w	r5, r2, #0x30
     2dc: f804 5c04    	strb	r5, [r4, #-4]
     2e0: 0b1d         	lsrs	r5, r3, #0xc
     2e2: d014         	beq	0x30e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1b6> @ imm = #0x28
     2e4: f005 020f    	and	r2, r5, #0xf
     2e8: f102 0537    	add.w	r5, r2, #0x37
     2ec: 2a0a         	cmp	r2, #0xa
     2ee: bf38         	it	lo
     2f0: f102 0530    	addlo.w	r5, r2, #0x30
     2f4: f804 5c05    	strb	r5, [r4, #-5]
     2f8: 1f04         	subs	r4, r0, #0x4
     2fa: 0c1b         	lsrs	r3, r3, #0x10
     2fc: d1c9         	bne	0x292 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x13a> @ imm = #-0x6e
     2fe: 3803         	subs	r0, #0x3
     300: e007         	b	0x312 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1ba> @ imm = #0xe
     302: 1e8c         	subs	r4, r1, #0x2
     304: 1e48         	subs	r0, r1, #0x1
     306: e004         	b	0x312 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1ba> @ imm = #0x8
     308: 3801         	subs	r0, #0x1
     30a: 1ecc         	subs	r4, r1, #0x3
     30c: e001         	b	0x312 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x1ba> @ imm = #0x2
     30e: 3802         	subs	r0, #0x2
     310: 460c         	mov	r4, r1
     312: f641 5136    	movw	r1, #0x1d36
     316: f1c0 0081    	rsb.w	r0, r0, #0x81
     31a: eb0e 0304    	add.w	r3, lr, r4
     31e: 9000         	str	r0, [sp]
     320: f2c0 0100    	movt	r1, #0x0
     324: 4648         	mov	r0, r9
     326: 2202         	movs	r2, #0x2
     328: f000 fa10    	bl	0x74c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497> @ imm = #0x420
     32c: b023         	add	sp, #0x8c
     32e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     332: bdf0         	pop	{r4, r5, r6, r7, pc}
     334: 220a         	movs	r2, #0xa
     336: 2963         	cmp	r1, #0x63
     338: f67f af5c    	bls.w	0x1f4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0x9c> @ imm = #-0x148
     33c: b28b         	uxth	r3, r1
     33e: f241 467b    	movw	r6, #0x147b
     342: 089b         	lsrs	r3, r3, #0x2
     344: 3a02         	subs	r2, #0x2
     346: 4373         	muls	r3, r6, r3
     348: ae03         	add	r6, sp, #0xc
     34a: 0c5b         	lsrs	r3, r3, #0x11
     34c: fb03 110e    	mla	r1, r3, lr, r1
     350: b289         	uxth	r1, r1
     352: f830 1011    	ldrh.w	r1, [r0, r1, lsl #1]
     356: 52b1         	strh	r1, [r6, r2]
     358: 2b0a         	cmp	r3, #0xa
     35a: f4bf af4f    	bhs.w	0x1fc <core::fmt::num::<impl core::fmt::Debug for u32>::fmt::hb4f7075118cb750a+0xa4> @ imm = #-0x162
     35e: 1e51         	subs	r1, r2, #0x1
     360: aa03         	add	r2, sp, #0xc
     362: f043 0030    	orr	r0, r3, #0x30
     366: 5450         	strb	r0, [r2, r1]
     368: f1c1 000a    	rsb.w	r0, r1, #0xa
     36c: 9000         	str	r0, [sp]
     36e: a803         	add	r0, sp, #0xc
     370: 2200         	movs	r2, #0x0
     372: 1843         	adds	r3, r0, r1
     374: 4648         	mov	r0, r9
     376: 2101         	movs	r1, #0x1
     378: f000 f9e8    	bl	0x74c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497> @ imm = #0x3d0
     37c: b023         	add	sp, #0x8c
     37e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     382: bdf0         	pop	{r4, r5, r6, r7, pc}

00000384 <wait>:
     384: 2800         	cmp	r0, #0x0
     386: bf08         	it	eq
     388: 4770         	bxeq	lr
     38a: 3801         	subs	r0, #0x1
     38c: bf00         	nop
     38e: d1fc         	bne	0x38a <wait+0x6>        @ imm = #-0x8
     390: 4770         	bx	lr

00000392 <main>:
     392: b580         	push	{r7, lr}
     394: 466f         	mov	r7, sp
     396: b672         	cpsid i
     398: f000 f802    	bl	0x3a0 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79> @ imm = #0x4
     39c: bf00         	nop
     39e: e7fd         	b	0x39c <main+0xa>        @ imm = #-0x6

000003a0 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79>:
     3a0: b5f0         	push	{r4, r5, r6, r7, lr}
     3a2: af03         	add	r7, sp, #0xc
     3a4: e92d 0b00    	push.w	{r8, r9, r11}
     3a8: b08e         	sub	sp, #0x38
     3aa: f240 4530    	movw	r5, #0x430
     3ae: 2001         	movs	r0, #0x1
     3b0: f2c2 0500    	movt	r5, #0x2000
     3b4: 7068         	strb	r0, [r5, #0x1]
     3b6: f3ef 8110    	mrs	r1, primask
     3ba: b672         	cpsid i
     3bc: 782a         	ldrb	r2, [r5]
     3be: 2a01         	cmp	r2, #0x1
     3c0: f000 8134    	beq.w	0x62c <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x28c> @ imm = #0x268
     3c4: 7028         	strb	r0, [r5]
     3c6: 07c8         	lsls	r0, r1, #0x1f
     3c8: d100         	bne	0x3cc <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x2c> @ imm = #0x0
     3ca: b662         	cpsie i
     3cc: f240 0400    	movw	r4, #0x0
     3d0: 2130         	movs	r1, #0x30
     3d2: f2c2 0400    	movt	r4, #0x2000
     3d6: 4620         	mov	r0, r4
     3d8: f001 fb97    	bl	0x1b0a <__aeabi_memclr4> @ imm = #0x172e
     3dc: f641 30d4    	movw	r0, #0x1bd4
     3e0: 2100         	movs	r1, #0x0
     3e2: f2c0 0000    	movt	r0, #0x0
     3e6: 2254         	movs	r2, #0x54
     3e8: 61a0         	str	r0, [r4, #0x18]
     3ea: f44f 6080    	mov.w	r0, #0x400
     3ee: 6220         	str	r0, [r4, #0x20]
     3f0: 2320         	movs	r3, #0x20
     3f2: 6ae0         	ldr	r0, [r4, #0x2c]
     3f4: f3bf 8f5f    	dmb	sy
     3f8: f3bf 8f5f    	dmb	sy
     3fc: f020 0003    	bic	r0, r0, #0x3
     400: 62e0         	str	r0, [r4, #0x2c]
     402: f240 0030    	movw	r0, #0x30
     406: f3bf 8f5f    	dmb	sy
     40a: f2c2 0000    	movt	r0, #0x2000
     40e: 61e0         	str	r0, [r4, #0x1c]
     410: 2001         	movs	r0, #0x1
     412: 6120         	str	r0, [r4, #0x10]
     414: 6161         	str	r1, [r4, #0x14]
     416: 73e1         	strb	r1, [r4, #0xf]
     418: 73a1         	strb	r1, [r4, #0xe]
     41a: 7361         	strb	r1, [r4, #0xd]
     41c: 7321         	strb	r1, [r4, #0xc]
     41e: 72e1         	strb	r1, [r4, #0xb]
     420: 72a1         	strb	r1, [r4, #0xa]
     422: 7262         	strb	r2, [r4, #0x9]
     424: 7222         	strb	r2, [r4, #0x8]
     426: 2252         	movs	r2, #0x52
     428: 71e2         	strb	r2, [r4, #0x7]
     42a: 71a3         	strb	r3, [r4, #0x6]
     42c: 2347         	movs	r3, #0x47
     42e: 7162         	strb	r2, [r4, #0x5]
     430: 2245         	movs	r2, #0x45
     432: 7122         	strb	r2, [r4, #0x4]
     434: 70e3         	strb	r3, [r4, #0x3]
     436: 70a3         	strb	r3, [r4, #0x2]
     438: 7062         	strb	r2, [r4, #0x1]
     43a: 2253         	movs	r2, #0x53
     43c: 7022         	strb	r2, [r4]
     43e: f3ef 8210    	mrs	r2, primask
     442: b672         	cpsid i
     444: 686b         	ldr	r3, [r5, #0x4]
     446: 2b00         	cmp	r3, #0x0
     448: f040 80f2    	bne.w	0x630 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x290> @ imm = #0x1e4
     44c: 7429         	strb	r1, [r5, #0x10]
     44e: f104 0118    	add.w	r1, r4, #0x18
     452: e9c5 0102    	strd	r0, r1, [r5, #8]
     456: 07d0         	lsls	r0, r2, #0x1f
     458: d100         	bne	0x45c <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0xbc> @ imm = #0x0
     45a: b662         	cpsie i
     45c: f3ef 8810    	mrs	r8, primask
     460: b672         	cpsid i
     462: 6868         	ldr	r0, [r5, #0x4]
     464: 2800         	cmp	r0, #0x0
     466: f040 80e9    	bne.w	0x63c <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x29c> @ imm = #0x1d2
     46a: f04f 30ff    	mov.w	r0, #0xffffffff
     46e: 6068         	str	r0, [r5, #0x4]
     470: 68a8         	ldr	r0, [r5, #0x8]
     472: 2800         	cmp	r0, #0x0
     474: d066         	beq	0x544 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1a4> @ imm = #0xcc
     476: 68e8         	ldr	r0, [r5, #0xc]
     478: 68c1         	ldr	r1, [r0, #0xc]
     47a: f3bf 8f5f    	dmb	sy
     47e: 6902         	ldr	r2, [r0, #0x10]
     480: f3bf 8f5f    	dmb	sy
     484: 6883         	ldr	r3, [r0, #0x8]
     486: 4299         	cmp	r1, r3
     488: bf38         	it	lo
     48a: 429a         	cmplo	r2, r3
     48c: d30a         	blo	0x4a4 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x104> @ imm = #0x14
     48e: 2100         	movs	r1, #0x0
     490: f3bf 8f5f    	dmb	sy
     494: 60c1         	str	r1, [r0, #0xc]
     496: f3bf 8f5f    	dmb	sy
     49a: f3bf 8f5f    	dmb	sy
     49e: 6101         	str	r1, [r0, #0x10]
     4a0: f3bf 8f5f    	dmb	sy
     4a4: f04f 0900    	mov.w	r9, #0x0
     4a8: 900a         	str	r0, [sp, #0x28]
     4aa: e9cd 190b    	strd	r1, r9, [sp, #44]
     4ae: 7c29         	ldrb	r1, [r5, #0x10]
     4b0: f88d 9034    	strb.w	r9, [sp, #0x34]
     4b4: b1a9         	cbz	r1, 0x4e2 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x142> @ imm = #0x2a
     4b6: 68e8         	ldr	r0, [r5, #0xc]
     4b8: f243 01ff    	movw	r1, #0x30ff
     4bc: aa04         	add	r2, sp, #0x10
     4be: 2302         	movs	r3, #0x2
     4c0: 6940         	ldr	r0, [r0, #0x14]
     4c2: f3bf 8f5f    	dmb	sy
     4c6: f8ad 1010    	strh.w	r1, [sp, #0x10]
     4ca: f000 0003    	and	r0, r0, #0x3
     4ce: 3802         	subs	r0, #0x2
     4d0: fab0 f080    	clz	r0, r0
     4d4: 0940         	lsrs	r0, r0, #0x5
     4d6: 0041         	lsls	r1, r0, #0x1
     4d8: a80a         	add	r0, sp, #0x28
     4da: f001 f875    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #0x10ea
     4de: f885 9010    	strb.w	r9, [r5, #0x10]
     4e2: ab0a         	add	r3, sp, #0x28
     4e4: f89d c00e    	ldrb.w	r12, [sp, #0xe]
     4e8: f8bd 600c    	ldrh.w	r6, [sp, #0xc]
     4ec: f10d 0e18    	add.w	lr, sp, #0x18
     4f0: cb0f         	ldm	r3, {r0, r1, r2, r3}
     4f2: f105 0410    	add.w	r4, r5, #0x10
     4f6: e88e 000e    	stm.w	lr, {r1, r2, r3}
     4fa: f641 7174    	movw	r1, #0x1f74
     4fe: f2c0 0100    	movt	r1, #0x0
     502: e9cd 4004    	strd	r4, r0, [sp, #16]
     506: f641 4234    	movw	r2, #0x1c34
     50a: f88d 9024    	strb.w	r9, [sp, #0x24]
     50e: f2c0 0200    	movt	r2, #0x0
     512: f8ad 6025    	strh.w	r6, [sp, #0x25]
     516: 230f         	movs	r3, #0xf
     518: f88d c027    	strb.w	r12, [sp, #0x27]
     51c: 6940         	ldr	r0, [r0, #0x14]
     51e: f3bf 8f5f    	dmb	sy
     522: f000 0003    	and	r0, r0, #0x3
     526: f851 1020    	ldr.w	r1, [r1, r0, lsl #2]
     52a: a804         	add	r0, sp, #0x10
     52c: 3004         	adds	r0, #0x4
     52e: f001 f84b    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #0x1096
     532: f89d 0020    	ldrb.w	r0, [sp, #0x20]
     536: 2802         	cmp	r0, #0x2
     538: d10a         	bne	0x550 <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1b0> @ imm = #0x14
     53a: 9804         	ldr	r0, [sp, #0x10]
     53c: f89d 1024    	ldrb.w	r1, [sp, #0x24]
     540: 7001         	strb	r1, [r0]
     542: e00c         	b	0x55e <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1be> @ imm = #0x18
     544: 2000         	movs	r0, #0x0
     546: 6068         	str	r0, [r5, #0x4]
     548: ea5f 70c8    	lsls.w	r0, r8, #0x1f
     54c: d00d         	beq	0x56a <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1ca> @ imm = #0x1a
     54e: e00d         	b	0x56c <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1cc> @ imm = #0x1a
     550: e9dd 0105    	ldrd	r0, r1, [sp, #20]
     554: f3bf 8f5f    	dmb	sy
     558: 60c1         	str	r1, [r0, #0xc]
     55a: f3bf 8f5f    	dmb	sy
     55e: 6868         	ldr	r0, [r5, #0x4]
     560: 3001         	adds	r0, #0x1
     562: 6068         	str	r0, [r5, #0x4]
     564: ea5f 70c8    	lsls.w	r0, r8, #0x1f
     568: d100         	bne	0x56c <rtic_bare2::app::rtic_ext::main::__rtic_init_resources::h485cd86070bd5c79+0x1cc> @ imm = #0x0
     56a: b662         	cpsie i
     56c: f64e 50fc    	movw	r0, #0xedfc
     570: f241 0400    	movw	r4, #0x1000
     574: f2ce 0000    	movt	r0, #0xe000
     578: f2ce 0400    	movt	r4, #0xe000
     57c: 6801         	ldr	r1, [r0]
     57e: f041 7180    	orr	r1, r1, #0x1000000
     582: 6001         	str	r1, [r0]
     584: 6820         	ldr	r0, [r4]
     586: f040 0001    	orr	r0, r0, #0x1
     58a: 6020         	str	r0, [r4]
     58c: 6860         	ldr	r0, [r4, #0x4]
     58e: 9001         	str	r0, [sp, #0x4]
     590: f244 2040    	movw	r0, #0x4240
     594: f2c0 000f    	movt	r0, #0xf
     598: f7ff fef4    	bl	0x384 <wait>            @ imm = #-0x218
     59c: 6860         	ldr	r0, [r4, #0x4]
     59e: f240 1559    	movw	r5, #0x159
     5a2: 9002         	str	r0, [sp, #0x8]
     5a4: f641 30ec    	movw	r0, #0x1bec
     5a8: f2c0 0000    	movt	r0, #0x0
     5ac: f04f 0800    	mov.w	r8, #0x0
     5b0: 9004         	str	r0, [sp, #0x10]
     5b2: a801         	add	r0, sp, #0x4
     5b4: 900a         	str	r0, [sp, #0x28]
     5b6: a804         	add	r0, sp, #0x10
     5b8: f04f 0902    	mov.w	r9, #0x2
     5bc: 2601         	movs	r6, #0x1
     5be: f2c0 0500    	movt	r5, #0x0
     5c2: ac0a         	add	r4, sp, #0x28
     5c4: f8cd 8020    	str.w	r8, [sp, #0x20]
     5c8: f8cd 9014    	str.w	r9, [sp, #0x14]
     5cc: 9607         	str	r6, [sp, #0x1c]
     5ce: 9406         	str	r4, [sp, #0x18]
     5d0: 950b         	str	r5, [sp, #0x2c]
     5d2: f001 f893    	bl	0x16fc <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd> @ imm = #0x1126
     5d6: f641 4008    	movw	r0, #0x1c08
     5da: f8cd 8020    	str.w	r8, [sp, #0x20]
     5de: f2c0 0000    	movt	r0, #0x0
     5e2: f8cd 9014    	str.w	r9, [sp, #0x14]
     5e6: 9004         	str	r0, [sp, #0x10]
     5e8: a802         	add	r0, sp, #0x8
     5ea: 900a         	str	r0, [sp, #0x28]
     5ec: a804         	add	r0, sp, #0x10
     5ee: e9cd 4606    	strd	r4, r6, [sp, #24]
     5f2: 950b         	str	r5, [sp, #0x2c]
     5f4: f001 f882    	bl	0x16fc <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd> @ imm = #0x1104
     5f8: e9dd 0101    	ldrd	r0, r1, [sp, #4]
     5fc: f641 4224    	movw	r2, #0x1c24
     600: f2c0 0200    	movt	r2, #0x0
     604: f8cd 8020    	str.w	r8, [sp, #0x20]
     608: 1a08         	subs	r0, r1, r0
     60a: 9003         	str	r0, [sp, #0xc]
     60c: a804         	add	r0, sp, #0x10
     60e: 9204         	str	r2, [sp, #0x10]
     610: aa03         	add	r2, sp, #0xc
     612: f8cd 9014    	str.w	r9, [sp, #0x14]
     616: e9cd 4606    	strd	r4, r6, [sp, #24]
     61a: 950b         	str	r5, [sp, #0x2c]
     61c: 920a         	str	r2, [sp, #0x28]
     61e: f001 f86d    	bl	0x16fc <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd> @ imm = #0x10da
     622: b662         	cpsie i
     624: b00e         	add	sp, #0x38
     626: e8bd 0b00    	pop.w	{r8, r9, r11}
     62a: bdf0         	pop	{r4, r5, r6, r7, pc}
     62c: f000 f9b4    	bl	0x998 <core::panicking::panic::hf69d299b8e8f85fe> @ imm = #0x368
     630: f641 7054    	movw	r0, #0x1f54
     634: f2c0 0000    	movt	r0, #0x0
     638: f000 fe10    	bl	0x125c <core::cell::panic_already_borrowed::hac03a74565052f3c> @ imm = #0xc20
     63c: f641 7064    	movw	r0, #0x1f64
     640: f2c0 0000    	movt	r0, #0x0
     644: f000 fe0a    	bl	0x125c <core::cell::panic_already_borrowed::hac03a74565052f3c> @ imm = #0xc14

00000648 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371>:
     648: b5f0         	push	{r4, r5, r6, r7, lr}
     64a: af03         	add	r7, sp, #0xc
     64c: e92d 0f00    	push.w	{r8, r9, r10, r11}
     650: b085         	sub	sp, #0x14
     652: 6804         	ldr	r4, [r0]
     654: f242 7010    	movw	r0, #0x2710
     658: 460d         	mov	r5, r1
     65a: f64f 7e9c    	movw	lr, #0xff9c
     65e: 4284         	cmp	r4, r0
     660: f641 5038    	movw	r0, #0x1d38
     664: f2c0 0000    	movt	r0, #0x0
     668: d33c         	blo	0x6e4 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0x9c> @ imm = #0x78
     66a: f241 7859    	movw	r8, #0x1759
     66e: f24e 02ff    	movw	r2, #0xe0ff
     672: f1a7 0b26    	sub.w	r11, r7, #0x26
     676: 2100         	movs	r1, #0x0
     678: f2cd 18b7    	movt	r8, #0xd1b7
     67c: f64d 09f0    	movw	r9, #0xd8f0
     680: f241 4a7b    	movw	r10, #0x147b
     684: f2c0 52f5    	movt	r2, #0x5f5
     688: 9501         	str	r5, [sp, #0x4]
     68a: fba4 3508    	umull	r3, r5, r4, r8
     68e: eb0b 0c01    	add.w	r12, r11, r1
     692: 3904         	subs	r1, #0x4
     694: 4294         	cmp	r4, r2
     696: ea4f 3355    	lsr.w	r3, r5, #0xd
     69a: fb03 4509    	mla	r5, r3, r9, r4
     69e: 461c         	mov	r4, r3
     6a0: b2ae         	uxth	r6, r5
     6a2: ea4f 0696    	lsr.w	r6, r6, #0x2
     6a6: fb06 f60a    	mul	r6, r6, r10
     6aa: ea4f 4656    	lsr.w	r6, r6, #0x11
     6ae: fb06 550e    	mla	r5, r6, lr, r5
     6b2: f830 6016    	ldrh.w	r6, [r0, r6, lsl #1]
     6b6: f8ac 6006    	strh.w	r6, [r12, #0x6]
     6ba: b2ad         	uxth	r5, r5
     6bc: f830 5015    	ldrh.w	r5, [r0, r5, lsl #1]
     6c0: f8ac 5008    	strh.w	r5, [r12, #0x8]
     6c4: d8e1         	bhi	0x68a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0x42> @ imm = #-0x3e
     6c6: 9d01         	ldr	r5, [sp, #0x4]
     6c8: 310a         	adds	r1, #0xa
     6ca: 461c         	mov	r4, r3
     6cc: 2c63         	cmp	r4, #0x63
     6ce: d80c         	bhi	0x6ea <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0xa2> @ imm = #0x18
     6d0: 4622         	mov	r2, r4
     6d2: 2a0a         	cmp	r2, #0xa
     6d4: d31a         	blo	0x70c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0xc4> @ imm = #0x34
     6d6: f830 0012    	ldrh.w	r0, [r0, r2, lsl #1]
     6da: 3902         	subs	r1, #0x2
     6dc: f1a7 0226    	sub.w	r2, r7, #0x26
     6e0: 5250         	strh	r0, [r2, r1]
     6e2: e019         	b	0x718 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0xd0> @ imm = #0x32
     6e4: 210a         	movs	r1, #0xa
     6e6: 2c63         	cmp	r4, #0x63
     6e8: d9f2         	bls	0x6d0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0x88> @ imm = #-0x1c
     6ea: b2a2         	uxth	r2, r4
     6ec: f241 437b    	movw	r3, #0x147b
     6f0: 0892         	lsrs	r2, r2, #0x2
     6f2: 3902         	subs	r1, #0x2
     6f4: 435a         	muls	r2, r3, r2
     6f6: f1a7 0626    	sub.w	r6, r7, #0x26
     6fa: 0c52         	lsrs	r2, r2, #0x11
     6fc: fb02 430e    	mla	r3, r2, lr, r4
     700: b29b         	uxth	r3, r3
     702: f830 3013    	ldrh.w	r3, [r0, r3, lsl #1]
     706: 5273         	strh	r3, [r6, r1]
     708: 2a0a         	cmp	r2, #0xa
     70a: d2e4         	bhs	0x6d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hd2ccee7a9c006371+0x8e> @ imm = #-0x38
     70c: 3901         	subs	r1, #0x1
     70e: f042 0030    	orr	r0, r2, #0x30
     712: f1a7 0226    	sub.w	r2, r7, #0x26
     716: 5450         	strb	r0, [r2, r1]
     718: f1c1 000a    	rsb.w	r0, r1, #0xa
     71c: 9000         	str	r0, [sp]
     71e: f1a7 0026    	sub.w	r0, r7, #0x26
     722: 2200         	movs	r2, #0x0
     724: 1843         	adds	r3, r0, r1
     726: 4628         	mov	r0, r5
     728: 2101         	movs	r1, #0x1
     72a: f000 f80f    	bl	0x74c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497> @ imm = #0x1e
     72e: b005         	add	sp, #0x14
     730: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     734: bdf0         	pop	{r4, r5, r6, r7, pc}

00000736 <core::panicking::panic_fmt::h9fefa2fcee011c09>:
     736: b580         	push	{r7, lr}
     738: 466f         	mov	r7, sp
     73a: b084         	sub	sp, #0x10
     73c: e9cd 0101    	strd	r0, r1, [sp, #4]
     740: a801         	add	r0, sp, #0x4
     742: 2201         	movs	r2, #0x1
     744: f8ad 200c    	strh.w	r2, [sp, #0xc]
     748: f000 fdca    	bl	0x12e0 <rust_begin_unwind> @ imm = #0xb94

0000074c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497>:
     74c: b5f0         	push	{r4, r5, r6, r7, lr}
     74e: af03         	add	r7, sp, #0xc
     750: e92d 0f00    	push.w	{r8, r9, r10, r11}
     754: b085         	sub	sp, #0x14
     756: 460c         	mov	r4, r1
     758: 69c1         	ldr	r1, [r0, #0x1c]
     75a: f8d7 8008    	ldr.w	r8, [r7, #0x8]
     75e: 4693         	mov	r11, r2
     760: f011 0201    	ands	r2, r1, #0x1
     764: f04f 0a2b    	mov.w	r10, #0x2b
     768: eb02 0508    	add.w	r5, r2, r8
     76c: bf08         	it	eq
     76e: f44f 1a88    	moveq.w	r10, #0x110000
     772: 4699         	mov	r9, r3
     774: 074a         	lsls	r2, r1, #0x1d
     776: d412         	bmi	0x79e <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x52> @ imm = #0x24
     778: 2400         	movs	r4, #0x0
     77a: 6802         	ldr	r2, [r0]
     77c: bb7a         	cbnz	r2, 0x7de <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x92> @ imm = #0x5e
     77e: e9d0 5605    	ldrd	r5, r6, [r0, #20]
     782: 4652         	mov	r2, r10
     784: 4631         	mov	r1, r6
     786: 4623         	mov	r3, r4
     788: f8cd b000    	str.w	r11, [sp]
     78c: 4628         	mov	r0, r5
     78e: f000 f8e0    	bl	0x952 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948> @ imm = #0x1c0
     792: b1d0         	cbz	r0, 0x7ca <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x7e> @ imm = #0x34
     794: 2001         	movs	r0, #0x1
     796: b005         	add	sp, #0x14
     798: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     79c: bdf0         	pop	{r4, r5, r6, r7, pc}
     79e: f1bb 0f00    	cmp.w	r11, #0x0
     7a2: d016         	beq	0x7d2 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x86> @ imm = #0x2c
     7a4: f01b 0303    	ands	r3, r11, #0x3
     7a8: d015         	beq	0x7d6 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x8a> @ imm = #0x2a
     7aa: f994 6000    	ldrsb.w	r6, [r4]
     7ae: 2200         	movs	r2, #0x0
     7b0: f116 0f41    	cmn.w	r6, #0x41
     7b4: bfc8         	it	gt
     7b6: 2201         	movgt	r2, #0x1
     7b8: 2b01         	cmp	r3, #0x1
     7ba: d00c         	beq	0x7d6 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x8a> @ imm = #0x18
     7bc: f994 3001    	ldrsb.w	r3, [r4, #0x1]
     7c0: f113 0f41    	cmn.w	r3, #0x41
     7c4: bfc8         	it	gt
     7c6: 3201         	addgt	r2, #0x1
     7c8: e005         	b	0x7d6 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x8a> @ imm = #0xa
     7ca: 68f3         	ldr	r3, [r6, #0xc]
     7cc: 4628         	mov	r0, r5
     7ce: 4649         	mov	r1, r9
     7d0: e05a         	b	0x888 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x13c> @ imm = #0xb4
     7d2: 2200         	movs	r2, #0x0
     7d4: e7ff         	b	0x7d6 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x8a> @ imm = #-0x2
     7d6: 4415         	add	r5, r2
     7d8: 6802         	ldr	r2, [r0]
     7da: 2a00         	cmp	r2, #0x0
     7dc: d0cf         	beq	0x77e <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x32> @ imm = #-0x62
     7de: f8cd 9010    	str.w	r9, [sp, #0x10]
     7e2: f8d0 9004    	ldr.w	r9, [r0, #0x4]
     7e6: 45a9         	cmp	r9, r5
     7e8: d910         	bls	0x80c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0xc0> @ imm = #0x20
     7ea: 0709         	lsls	r1, r1, #0x1c
     7ec: f8cd 800c    	str.w	r8, [sp, #0xc]
     7f0: d41c         	bmi	0x82c <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0xe0> @ imm = #0x38
     7f2: f890 1020    	ldrb.w	r1, [r0, #0x20]
     7f6: eba9 0905    	sub.w	r9, r9, r5
     7fa: 9402         	str	r4, [sp, #0x8]
     7fc: e8df f001    	tbb	[pc, r1]
     800: 5c 02 56 02  	.word	0x0256025c
     804: 4649         	mov	r1, r9
     806: f04f 0900    	mov.w	r9, #0x0
     80a: e055         	b	0x8b8 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x16c> @ imm = #0xaa
     80c: e9d0 5605    	ldrd	r5, r6, [r0, #20]
     810: 4652         	mov	r2, r10
     812: 4631         	mov	r1, r6
     814: 4623         	mov	r3, r4
     816: f8cd b000    	str.w	r11, [sp]
     81a: 4628         	mov	r0, r5
     81c: f000 f899    	bl	0x952 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948> @ imm = #0x132
     820: b378         	cbz	r0, 0x882 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x136> @ imm = #0x5e
     822: 2001         	movs	r0, #0x1
     824: b005         	add	sp, #0x14
     826: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     82a: bdf0         	pop	{r4, r5, r6, r7, pc}
     82c: 6901         	ldr	r1, [r0, #0x10]
     82e: 4623         	mov	r3, r4
     830: e9d0 8605    	ldrd	r8, r6, [r0, #20]
     834: 4652         	mov	r2, r10
     836: 9101         	str	r1, [sp, #0x4]
     838: 2130         	movs	r1, #0x30
     83a: 6101         	str	r1, [r0, #0x10]
     83c: 2101         	movs	r1, #0x1
     83e: f890 4020    	ldrb.w	r4, [r0, #0x20]
     842: f880 1020    	strb.w	r1, [r0, #0x20]
     846: 4631         	mov	r1, r6
     848: 9002         	str	r0, [sp, #0x8]
     84a: 4640         	mov	r0, r8
     84c: f8cd b000    	str.w	r11, [sp]
     850: f000 f87f    	bl	0x952 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948> @ imm = #0xfe
     854: 4601         	mov	r1, r0
     856: 2001         	movs	r0, #0x1
     858: 2900         	cmp	r1, #0x0
     85a: d19c         	bne	0x796 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x4a> @ imm = #-0xc8
     85c: f8dd a010    	ldr.w	r10, [sp, #0x10]
     860: eba9 0005    	sub.w	r0, r9, r5
     864: 46a3         	mov	r11, r4
     866: 1c44         	adds	r4, r0, #0x1
     868: 3c01         	subs	r4, #0x1
     86a: d014         	beq	0x896 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x14a> @ imm = #0x28
     86c: 6932         	ldr	r2, [r6, #0x10]
     86e: 4640         	mov	r0, r8
     870: 2130         	movs	r1, #0x30
     872: 4790         	blx	r2
     874: 2800         	cmp	r0, #0x0
     876: d0f7         	beq	0x868 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x11c> @ imm = #-0x12
     878: 2001         	movs	r0, #0x1
     87a: b005         	add	sp, #0x14
     87c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     880: bdf0         	pop	{r4, r5, r6, r7, pc}
     882: 68f3         	ldr	r3, [r6, #0xc]
     884: 4628         	mov	r0, r5
     886: 9904         	ldr	r1, [sp, #0x10]
     888: 4642         	mov	r2, r8
     88a: b005         	add	sp, #0x14
     88c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     890: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
     894: 4718         	bx	r3
     896: 68f3         	ldr	r3, [r6, #0xc]
     898: 4640         	mov	r0, r8
     89a: 9a03         	ldr	r2, [sp, #0xc]
     89c: 4651         	mov	r1, r10
     89e: 4798         	blx	r3
     8a0: b3b8         	cbz	r0, 0x912 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1c6> @ imm = #0x6e
     8a2: 2001         	movs	r0, #0x1
     8a4: b005         	add	sp, #0x14
     8a6: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     8aa: bdf0         	pop	{r4, r5, r6, r7, pc}
     8ac: f109 0201    	add.w	r2, r9, #0x1
     8b0: ea4f 0159    	lsr.w	r1, r9, #0x1
     8b4: ea4f 0952    	lsr.w	r9, r2, #0x1
     8b8: e9d0 6504    	ldrd	r6, r5, [r0, #16]
     8bc: 1c4c         	adds	r4, r1, #0x1
     8be: f8d0 8018    	ldr.w	r8, [r0, #0x18]
     8c2: 3c01         	subs	r4, #0x1
     8c4: d00b         	beq	0x8de <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x192> @ imm = #0x16
     8c6: f8d8 2010    	ldr.w	r2, [r8, #0x10]
     8ca: 4628         	mov	r0, r5
     8cc: 4631         	mov	r1, r6
     8ce: 4790         	blx	r2
     8d0: 2800         	cmp	r0, #0x0
     8d2: d0f6         	beq	0x8c2 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x176> @ imm = #-0x14
     8d4: 2001         	movs	r0, #0x1
     8d6: b005         	add	sp, #0x14
     8d8: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     8dc: bdf0         	pop	{r4, r5, r6, r7, pc}
     8de: f8cd b000    	str.w	r11, [sp]
     8e2: 4628         	mov	r0, r5
     8e4: 9b02         	ldr	r3, [sp, #0x8]
     8e6: 4641         	mov	r1, r8
     8e8: 4652         	mov	r2, r10
     8ea: f000 f832    	bl	0x952 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948> @ imm = #0x64
     8ee: b120         	cbz	r0, 0x8fa <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1ae> @ imm = #0x8
     8f0: 2001         	movs	r0, #0x1
     8f2: b005         	add	sp, #0x14
     8f4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     8f8: bdf0         	pop	{r4, r5, r6, r7, pc}
     8fa: f8d8 300c    	ldr.w	r3, [r8, #0xc]
     8fe: 4628         	mov	r0, r5
     900: e9dd 2103    	ldrd	r2, r1, [sp, #12]
     904: 4798         	blx	r3
     906: b170         	cbz	r0, 0x926 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1da> @ imm = #0x1c
     908: 2001         	movs	r0, #0x1
     90a: b005         	add	sp, #0x14
     90c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     910: bdf0         	pop	{r4, r5, r6, r7, pc}
     912: 9802         	ldr	r0, [sp, #0x8]
     914: 9901         	ldr	r1, [sp, #0x4]
     916: f880 b020    	strb.w	r11, [r0, #0x20]
     91a: 6101         	str	r1, [r0, #0x10]
     91c: 2000         	movs	r0, #0x0
     91e: b005         	add	sp, #0x14
     920: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     924: bdf0         	pop	{r4, r5, r6, r7, pc}
     926: 2400         	movs	r4, #0x0
     928: 45a1         	cmp	r9, r4
     92a: d009         	beq	0x940 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1f4> @ imm = #0x12
     92c: f8d8 2010    	ldr.w	r2, [r8, #0x10]
     930: 4628         	mov	r0, r5
     932: 4631         	mov	r1, r6
     934: 4790         	blx	r2
     936: 3401         	adds	r4, #0x1
     938: 2800         	cmp	r0, #0x0
     93a: d0f5         	beq	0x928 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1dc> @ imm = #-0x16
     93c: 1e61         	subs	r1, r4, #0x1
     93e: e000         	b	0x942 <core::fmt::Formatter::pad_integral::h58ed24f2b1cf8497+0x1f6> @ imm = #0x0
     940: 4649         	mov	r1, r9
     942: 2000         	movs	r0, #0x0
     944: 4549         	cmp	r1, r9
     946: bf38         	it	lo
     948: 2001         	movlo	r0, #0x1
     94a: b005         	add	sp, #0x14
     94c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
     950: bdf0         	pop	{r4, r5, r6, r7, pc}

00000952 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948>:
     952: b5f0         	push	{r4, r5, r6, r7, lr}
     954: af03         	add	r7, sp, #0xc
     956: f84d 8d04    	str	r8, [sp, #-4]!
     95a: f8d7 8008    	ldr.w	r8, [r7, #0x8]
     95e: 461c         	mov	r4, r3
     960: 460e         	mov	r6, r1
     962: f5b2 1f88    	cmp.w	r2, #0x110000
     966: d00a         	beq	0x97e <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948+0x2c> @ imm = #0x14
     968: 6933         	ldr	r3, [r6, #0x10]
     96a: 4611         	mov	r1, r2
     96c: 4605         	mov	r5, r0
     96e: 4798         	blx	r3
     970: 4601         	mov	r1, r0
     972: 4628         	mov	r0, r5
     974: b119         	cbz	r1, 0x97e <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948+0x2c> @ imm = #0x6
     976: 2001         	movs	r0, #0x1
     978: f85d 8b04    	ldr	r8, [sp], #4
     97c: bdf0         	pop	{r4, r5, r6, r7, pc}
     97e: b13c         	cbz	r4, 0x990 <core::fmt::Formatter::pad_integral::write_prefix::hcce775f3fc04b948+0x3e> @ imm = #0xe
     980: 68f3         	ldr	r3, [r6, #0xc]
     982: 4621         	mov	r1, r4
     984: 4642         	mov	r2, r8
     986: f85d 8b04    	ldr	r8, [sp], #4
     98a: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
     98e: 4718         	bx	r3
     990: 2000         	movs	r0, #0x0
     992: f85d 8b04    	ldr	r8, [sp], #4
     996: bdf0         	pop	{r4, r5, r6, r7, pc}

00000998 <core::panicking::panic::hf69d299b8e8f85fe>:
     998: b580         	push	{r7, lr}
     99a: 466f         	mov	r7, sp
     99c: b088         	sub	sp, #0x20
     99e: 2000         	movs	r0, #0x0
     9a0: 2101         	movs	r1, #0x1
     9a2: 9004         	str	r0, [sp, #0x10]
     9a4: 9003         	str	r0, [sp, #0xc]
     9a6: 2004         	movs	r0, #0x4
     9a8: 9002         	str	r0, [sp, #0x8]
     9aa: 202b         	movs	r0, #0x2b
     9ac: 9101         	str	r1, [sp, #0x4]
     9ae: a906         	add	r1, sp, #0x18
     9b0: 9007         	str	r0, [sp, #0x1c]
     9b2: f641 4043    	movw	r0, #0x1c43
     9b6: 9100         	str	r1, [sp]
     9b8: f641 4184    	movw	r1, #0x1c84
     9bc: f2c0 0000    	movt	r0, #0x0
     9c0: f2c0 0100    	movt	r1, #0x0
     9c4: 9006         	str	r0, [sp, #0x18]
     9c6: 4668         	mov	r0, sp
     9c8: f7ff feb5    	bl	0x736 <core::panicking::panic_fmt::h9fefa2fcee011c09> @ imm = #-0x296

000009cc <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33>:
     9cc: b5f0         	push	{r4, r5, r6, r7, lr}
     9ce: af03         	add	r7, sp, #0xc
     9d0: e92d 0f00    	push.w	{r8, r9, r10, r11}
     9d4: b087         	sub	sp, #0x1c
     9d6: f8d1 c000    	ldr.w	r12, [r1]
     9da: 688b         	ldr	r3, [r1, #0x8]
     9dc: e9d0 b200    	ldrd	r11, r2, [r0]
     9e0: f1bc 0f00    	cmp.w	r12, #0x0
     9e4: bf08         	it	eq
     9e6: ea5f 70c3    	lslseq.w	r0, r3, #0x1f
     9ea: d00a         	beq	0xa02 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x36> @ imm = #0x14
     9ec: 07d8         	lsls	r0, r3, #0x1f
     9ee: d037         	beq	0xa60 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x94> @ imm = #0x6e
     9f0: 68ce         	ldr	r6, [r1, #0xc]
     9f2: eb0b 0e02    	add.w	lr, r11, r2
     9f6: f04f 0800    	mov.w	r8, #0x0
     9fa: b1de         	cbz	r6, 0xa34 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x68> @ imm = #0x36
     9fc: 2500         	movs	r5, #0x0
     9fe: 465b         	mov	r3, r11
     a00: e00b         	b	0xa1a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x4e> @ imm = #0x16
     a02: e9d1 0105    	ldrd	r0, r1, [r1, #20]
     a06: e323         	b	0x1050 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x684> @ imm = #0x646
     a08: 28f0         	cmp	r0, #0xf0
     a0a: bf2c         	ite	hs
     a0c: 1d23         	addhs	r3, r4, #0x4
     a0e: 1ce3         	addlo	r3, r4, #0x3
     a10: 1b18         	subs	r0, r3, r4
     a12: 3501         	adds	r5, #0x1
     a14: 4480         	add	r8, r0
     a16: 42ae         	cmp	r6, r5
     a18: d00d         	beq	0xa36 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6a> @ imm = #0x1a
     a1a: 4573         	cmp	r3, lr
     a1c: d020         	beq	0xa60 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x94> @ imm = #0x40
     a1e: 461c         	mov	r4, r3
     a20: f913 0b01    	ldrsb	r0, [r3], #1
     a24: f1b0 3fff    	cmp.w	r0, #0xffffffff
     a28: dcf2         	bgt	0xa10 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x44> @ imm = #-0x1c
     a2a: b2c0         	uxtb	r0, r0
     a2c: 28e0         	cmp	r0, #0xe0
     a2e: d2eb         	bhs	0xa08 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x3c> @ imm = #-0x2a
     a30: 1ca3         	adds	r3, r4, #0x2
     a32: e7ed         	b	0xa10 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x44> @ imm = #-0x26
     a34: 465b         	mov	r3, r11
     a36: 4573         	cmp	r3, lr
     a38: d012         	beq	0xa60 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x94> @ imm = #0x24
     a3a: f993 0000    	ldrsb.w	r0, [r3]
     a3e: f1b0 3fff    	cmp.w	r0, #0xffffffff
     a42: bfdc         	itt	le
     a44: b2c0         	uxtble	r0, r0
     a46: 28e0         	cmple	r0, #0xe0
     a48: f1b8 0f00    	cmp.w	r8, #0x0
     a4c: d00e         	beq	0xa6c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xa0> @ imm = #0x1c
     a4e: 4590         	cmp	r8, r2
     a50: d20b         	bhs	0xa6a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x9e> @ imm = #0x16
     a52: f91b 0008    	ldrsb.w	r0, [r11, r8]
     a56: f110 0f40    	cmn.w	r0, #0x40
     a5a: da07         	bge	0xa6c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xa0> @ imm = #0xe
     a5c: 2000         	movs	r0, #0x0
     a5e: e006         	b	0xa6e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xa2> @ imm = #0xc
     a60: 4690         	mov	r8, r2
     a62: f1bc 0f00    	cmp.w	r12, #0x0
     a66: d10a         	bne	0xa7e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xb2> @ imm = #0x14
     a68: e2ef         	b	0x104a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x67e> @ imm = #0x5de
     a6a: d1f7         	bne	0xa5c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x90> @ imm = #-0x12
     a6c: 4658         	mov	r0, r11
     a6e: 2800         	cmp	r0, #0x0
     a70: bf0c         	ite	eq
     a72: 4690         	moveq	r8, r2
     a74: 4683         	movne	r11, r0
     a76: f1bc 0f00    	cmp.w	r12, #0x0
     a7a: f000 82e6    	beq.w	0x104a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x67e> @ imm = #0x5cc
     a7e: 684c         	ldr	r4, [r1, #0x4]
     a80: f1b8 0f10    	cmp.w	r8, #0x10
     a84: d20c         	bhs	0xaa0 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xd4> @ imm = #0x18
     a86: f1b8 0f00    	cmp.w	r8, #0x0
     a8a: d023         	beq	0xad4 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x108> @ imm = #0x46
     a8c: f008 0003    	and	r0, r8, #0x3
     a90: 2500         	movs	r5, #0x0
     a92: f1b8 0f04    	cmp.w	r8, #0x4
     a96: d222         	bhs	0xade <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x112> @ imm = #0x44
     a98: 2200         	movs	r2, #0x0
     a9a: 2800         	cmp	r0, #0x0
     a9c: d172         	bne	0xb84 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x1b8> @ imm = #0xe4
     a9e: e290         	b	0xfc2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5f6> @ imm = #0x520
     aa0: f10b 0003    	add.w	r0, r11, #0x3
     aa4: 9401         	str	r4, [sp, #0x4]
     aa6: f020 0903    	bic	r9, r0, #0x3
     aaa: f8cd 800c    	str.w	r8, [sp, #0xc]
     aae: ebb9 000b    	subs.w	r0, r9, r11
     ab2: 9102         	str	r1, [sp, #0x8]
     ab4: eba8 0800    	sub.w	r8, r8, r0
     ab8: f008 0303    	and	r3, r8, #0x3
     abc: d101         	bne	0xac2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0xf6> @ imm = #0x2
     abe: 2000         	movs	r0, #0x0
     ac0: e0fe         	b	0xcc0 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x2f4> @ imm = #0x1fc
     ac2: e9cd 0305    	strd	r0, r3, [sp, #20]
     ac6: ebab 0009    	sub.w	r0, r11, r9
     aca: f110 0f04    	cmn.w	r0, #0x4
     ace: d979         	bls	0xbc4 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x1f8> @ imm = #0xf2
     ad0: 2000         	movs	r0, #0x0
     ad2: e0dd         	b	0xc90 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x2c4> @ imm = #0x1ba
     ad4: 2500         	movs	r5, #0x0
     ad6: 42ac         	cmp	r4, r5
     ad8: f200 8275    	bhi.w	0xfc6 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5fa> @ imm = #0x4ea
     adc: e2b5         	b	0x104a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x67e> @ imm = #0x56a
     ade: f99b 2001    	ldrsb.w	r2, [r11, #0x1]
     ae2: 468c         	mov	r12, r1
     ae4: f99b 6000    	ldrsb.w	r6, [r11]
     ae8: f112 0f41    	cmn.w	r2, #0x41
     aec: f99b 3002    	ldrsb.w	r3, [r11, #0x2]
     af0: f99b 1003    	ldrsb.w	r1, [r11, #0x3]
     af4: bfc8         	it	gt
     af6: 2501         	movgt	r5, #0x1
     af8: f116 0f41    	cmn.w	r6, #0x41
     afc: bfc8         	it	gt
     afe: 3501         	addgt	r5, #0x1
     b00: f113 0f41    	cmn.w	r3, #0x41
     b04: bfc8         	it	gt
     b06: 3501         	addgt	r5, #0x1
     b08: f111 0f41    	cmn.w	r1, #0x41
     b0c: f008 020c    	and	r2, r8, #0xc
     b10: bfc8         	it	gt
     b12: 3501         	addgt	r5, #0x1
     b14: 2a04         	cmp	r2, #0x4
     b16: d031         	beq	0xb7c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x1b0> @ imm = #0x62
     b18: f99b 6004    	ldrsb.w	r6, [r11, #0x4]
     b1c: f99b 3005    	ldrsb.w	r3, [r11, #0x5]
     b20: f99b 1006    	ldrsb.w	r1, [r11, #0x6]
     b24: f116 0f41    	cmn.w	r6, #0x41
     b28: f99b e007    	ldrsb.w	lr, [r11, #0x7]
     b2c: bfc8         	it	gt
     b2e: 3501         	addgt	r5, #0x1
     b30: f113 0f41    	cmn.w	r3, #0x41
     b34: bfc8         	it	gt
     b36: 3501         	addgt	r5, #0x1
     b38: f111 0f41    	cmn.w	r1, #0x41
     b3c: bfc8         	it	gt
     b3e: 3501         	addgt	r5, #0x1
     b40: f11e 0f41    	cmn.w	lr, #0x41
     b44: bfc8         	it	gt
     b46: 3501         	addgt	r5, #0x1
     b48: 2a08         	cmp	r2, #0x8
     b4a: d017         	beq	0xb7c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x1b0> @ imm = #0x2e
     b4c: f99b 6008    	ldrsb.w	r6, [r11, #0x8]
     b50: f99b 3009    	ldrsb.w	r3, [r11, #0x9]
     b54: f99b 100a    	ldrsb.w	r1, [r11, #0xa]
     b58: f116 0f41    	cmn.w	r6, #0x41
     b5c: f99b e00b    	ldrsb.w	lr, [r11, #0xb]
     b60: bfc8         	it	gt
     b62: 3501         	addgt	r5, #0x1
     b64: f113 0f41    	cmn.w	r3, #0x41
     b68: bfc8         	it	gt
     b6a: 3501         	addgt	r5, #0x1
     b6c: f111 0f41    	cmn.w	r1, #0x41
     b70: bfc8         	it	gt
     b72: 3501         	addgt	r5, #0x1
     b74: f11e 0f41    	cmn.w	lr, #0x41
     b78: bfc8         	it	gt
     b7a: 3501         	addgt	r5, #0x1
     b7c: 4661         	mov	r1, r12
     b7e: 2800         	cmp	r0, #0x0
     b80: f000 821f    	beq.w	0xfc2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5f6> @ imm = #0x43e
     b84: 460b         	mov	r3, r1
     b86: f91b 1002    	ldrsb.w	r1, [r11, r2]
     b8a: f111 0f41    	cmn.w	r1, #0x41
     b8e: bfc8         	it	gt
     b90: 3501         	addgt	r5, #0x1
     b92: 4619         	mov	r1, r3
     b94: 2801         	cmp	r0, #0x1
     b96: f000 8214    	beq.w	0xfc2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5f6> @ imm = #0x428
     b9a: 445a         	add	r2, r11
     b9c: f992 1001    	ldrsb.w	r1, [r2, #0x1]
     ba0: f111 0f41    	cmn.w	r1, #0x41
     ba4: bfc8         	it	gt
     ba6: 3501         	addgt	r5, #0x1
     ba8: 4619         	mov	r1, r3
     baa: 2802         	cmp	r0, #0x2
     bac: f000 8209    	beq.w	0xfc2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5f6> @ imm = #0x412
     bb0: f992 0002    	ldrsb.w	r0, [r2, #0x2]
     bb4: f110 0f41    	cmn.w	r0, #0x41
     bb8: bfc8         	it	gt
     bba: 3501         	addgt	r5, #0x1
     bbc: 42ac         	cmp	r4, r5
     bbe: f200 8202    	bhi.w	0xfc6 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5fa> @ imm = #0x404
     bc2: e242         	b	0x104a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x67e> @ imm = #0x484
     bc4: 2000         	movs	r0, #0x0
     bc6: 2500         	movs	r5, #0x0
     bc8: eb0b 0205    	add.w	r2, r11, r5
     bcc: f91b c005    	ldrsb.w	r12, [r11, r5]
     bd0: f992 e001    	ldrsb.w	lr, [r2, #0x1]
     bd4: f992 a00e    	ldrsb.w	r10, [r2, #0xe]
     bd8: f11c 0f41    	cmn.w	r12, #0x41
     bdc: f992 300d    	ldrsb.w	r3, [r2, #0xd]
     be0: f992 400c    	ldrsb.w	r4, [r2, #0xc]
     be4: bfc8         	it	gt
     be6: 3001         	addgt	r0, #0x1
     be8: f992 6002    	ldrsb.w	r6, [r2, #0x2]
     bec: f11e 0f41    	cmn.w	lr, #0x41
     bf0: bfc8         	it	gt
     bf2: 3001         	addgt	r0, #0x1
     bf4: f992 c003    	ldrsb.w	r12, [r2, #0x3]
     bf8: f116 0f41    	cmn.w	r6, #0x41
     bfc: bfc8         	it	gt
     bfe: 3001         	addgt	r0, #0x1
     c00: f992 6004    	ldrsb.w	r6, [r2, #0x4]
     c04: f11c 0f41    	cmn.w	r12, #0x41
     c08: bfc8         	it	gt
     c0a: 3001         	addgt	r0, #0x1
     c0c: f992 c005    	ldrsb.w	r12, [r2, #0x5]
     c10: f116 0f41    	cmn.w	r6, #0x41
     c14: bfc8         	it	gt
     c16: 3001         	addgt	r0, #0x1
     c18: f992 6006    	ldrsb.w	r6, [r2, #0x6]
     c1c: f11c 0f41    	cmn.w	r12, #0x41
     c20: bfc8         	it	gt
     c22: 3001         	addgt	r0, #0x1
     c24: f992 c007    	ldrsb.w	r12, [r2, #0x7]
     c28: f116 0f41    	cmn.w	r6, #0x41
     c2c: bfc8         	it	gt
     c2e: 3001         	addgt	r0, #0x1
     c30: f992 6008    	ldrsb.w	r6, [r2, #0x8]
     c34: f11c 0f41    	cmn.w	r12, #0x41
     c38: bfc8         	it	gt
     c3a: 3001         	addgt	r0, #0x1
     c3c: f992 c009    	ldrsb.w	r12, [r2, #0x9]
     c40: f116 0f41    	cmn.w	r6, #0x41
     c44: bfc8         	it	gt
     c46: 3001         	addgt	r0, #0x1
     c48: f992 600b    	ldrsb.w	r6, [r2, #0xb]
     c4c: f11c 0f41    	cmn.w	r12, #0x41
     c50: bfc8         	it	gt
     c52: 3001         	addgt	r0, #0x1
     c54: f992 c00f    	ldrsb.w	r12, [r2, #0xf]
     c58: f992 200a    	ldrsb.w	r2, [r2, #0xa]
     c5c: f112 0f41    	cmn.w	r2, #0x41
     c60: bfc8         	it	gt
     c62: 3001         	addgt	r0, #0x1
     c64: f116 0f41    	cmn.w	r6, #0x41
     c68: bfc8         	it	gt
     c6a: 3001         	addgt	r0, #0x1
     c6c: f114 0f41    	cmn.w	r4, #0x41
     c70: bfc8         	it	gt
     c72: 3001         	addgt	r0, #0x1
     c74: f113 0f41    	cmn.w	r3, #0x41
     c78: bfc8         	it	gt
     c7a: 3001         	addgt	r0, #0x1
     c7c: f11a 0f41    	cmn.w	r10, #0x41
     c80: bfc8         	it	gt
     c82: 3001         	addgt	r0, #0x1
     c84: f11c 0f41    	cmn.w	r12, #0x41
     c88: bfc8         	it	gt
     c8a: 3001         	addgt	r0, #0x1
     c8c: 3510         	adds	r5, #0x10
     c8e: d19b         	bne	0xbc8 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x1fc> @ imm = #-0xca
     c90: f99b 2000    	ldrsb.w	r2, [r11]
     c94: f112 0f41    	cmn.w	r2, #0x41
     c98: bfc8         	it	gt
     c9a: 3001         	addgt	r0, #0x1
     c9c: 9905         	ldr	r1, [sp, #0x14]
     c9e: 9b06         	ldr	r3, [sp, #0x18]
     ca0: 2901         	cmp	r1, #0x1
     ca2: d00d         	beq	0xcc0 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x2f4> @ imm = #0x1a
     ca4: f99b 2001    	ldrsb.w	r2, [r11, #0x1]
     ca8: f112 0f41    	cmn.w	r2, #0x41
     cac: bfc8         	it	gt
     cae: 3001         	addgt	r0, #0x1
     cb0: 2902         	cmp	r1, #0x2
     cb2: d005         	beq	0xcc0 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x2f4> @ imm = #0xa
     cb4: f99b 2002    	ldrsb.w	r2, [r11, #0x2]
     cb8: f112 0f41    	cmn.w	r2, #0x41
     cbc: bfc8         	it	gt
     cbe: 3001         	addgt	r0, #0x1
     cc0: ea4f 0a98    	lsr.w	r10, r8, #0x2
     cc4: 2200         	movs	r2, #0x0
     cc6: f8cd b010    	str.w	r11, [sp, #0x10]
     cca: b1cb         	cbz	r3, 0xd00 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x334> @ imm = #0x32
     ccc: f028 0603    	bic	r6, r8, #0x3
     cd0: eb09 0506    	add.w	r5, r9, r6
     cd4: f995 6000    	ldrsb.w	r6, [r5]
     cd8: f116 0f41    	cmn.w	r6, #0x41
     cdc: bfc8         	it	gt
     cde: 2201         	movgt	r2, #0x1
     ce0: 2b01         	cmp	r3, #0x1
     ce2: d00d         	beq	0xd00 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x334> @ imm = #0x1a
     ce4: f995 6001    	ldrsb.w	r6, [r5, #0x1]
     ce8: f116 0f41    	cmn.w	r6, #0x41
     cec: bfc8         	it	gt
     cee: 3201         	addgt	r2, #0x1
     cf0: 2b02         	cmp	r3, #0x2
     cf2: d005         	beq	0xd00 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x334> @ imm = #0xa
     cf4: f995 6002    	ldrsb.w	r6, [r5, #0x2]
     cf8: f116 0f41    	cmn.w	r6, #0x41
     cfc: bfc8         	it	gt
     cfe: 3201         	addgt	r2, #0x1
     d00: 1815         	adds	r5, r2, r0
     d02: e012         	b	0xd2a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x35e> @ imm = #0x24
     d04: f04f 0c00    	mov.w	r12, #0x0
     d08: fa3f f18c    	uxtb16	r1, r12
     d0c: fa3f f29c    	uxtb16	r2, r12, ror #8
     d10: 4411         	add	r1, r2
     d12: ebaa 0a0b    	sub.w	r10, r10, r11
     d16: eb08 098b    	add.w	r9, r8, r11, lsl #2
     d1a: f01b 0003    	ands	r0, r11, #0x3
     d1e: eb01 4101    	add.w	r1, r1, r1, lsl #16
     d22: eb05 4511    	add.w	r5, r5, r1, lsr #16
     d26: f040 815c    	bne.w	0xfe2 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x616> @ imm = #0x2b8
     d2a: f1ba 0f00    	cmp.w	r10, #0x0
     d2e: f000 8144    	beq.w	0xfba <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5ee> @ imm = #0x288
     d32: f1ba 0fc0    	cmp.w	r10, #0xc0
     d36: 46d3         	mov	r11, r10
     d38: bf28         	it	hs
     d3a: f04f 0bc0    	movhs.w	r11, #0xc0
     d3e: 46c8         	mov	r8, r9
     d40: f1ba 0f04    	cmp.w	r10, #0x4
     d44: d3de         	blo	0xd04 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x338> @ imm = #-0x44
     d46: f06f 000f    	mvn	r0, #0xf
     d4a: 2101         	movs	r1, #0x1
     d4c: eb00 008b    	add.w	r0, r0, r11, lsl #2
     d50: 9506         	str	r5, [sp, #0x18]
     d52: 2830         	cmp	r0, #0x30
     d54: eb01 1110    	add.w	r1, r1, r0, lsr #4
     d58: 9105         	str	r1, [sp, #0x14]
     d5a: d203         	bhs	0xd64 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x398> @ imm = #0x6
     d5c: f04f 0c00    	mov.w	r12, #0x0
     d60: 4646         	mov	r6, r8
     d62: e0aa         	b	0xeba <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x4ee> @ imm = #0x154
     d64: f021 0e03    	bic	lr, r1, #0x3
     d68: f04f 0c00    	mov.w	r12, #0x0
     d6c: 4646         	mov	r6, r8
     d6e: e896 0215    	ldm.w	r6, {r0, r2, r4, r9}
     d72: f1be 0e04    	subs.w	lr, lr, #0x4
     d76: 69b5         	ldr	r5, [r6, #0x18]
     d78: ea6f 0100    	mvn.w	r1, r0
     d7c: ea4f 11d1    	lsr.w	r1, r1, #0x7
     d80: ea41 1090    	orr.w	r0, r1, r0, lsr #6
     d84: ea6f 0102    	mvn.w	r1, r2
     d88: f020 30fe    	bic	r0, r0, #0xfefefefe
     d8c: ea4f 11d1    	lsr.w	r1, r1, #0x7
     d90: 4460         	add	r0, r12
     d92: ea41 1192    	orr.w	r1, r1, r2, lsr #6
     d96: 6972         	ldr	r2, [r6, #0x14]
     d98: f021 31fe    	bic	r1, r1, #0xfefefefe
     d9c: f8d6 c03c    	ldr.w	r12, [r6, #0x3c]
     da0: 4401         	add	r1, r0
     da2: ea6f 0004    	mvn.w	r0, r4
     da6: ea4f 13d0    	lsr.w	r3, r0, #0x7
     daa: 6bb0         	ldr	r0, [r6, #0x38]
     dac: ea43 1394    	orr.w	r3, r3, r4, lsr #6
     db0: 6934         	ldr	r4, [r6, #0x10]
     db2: f023 33fe    	bic	r3, r3, #0xfefefefe
     db6: 4419         	add	r1, r3
     db8: ea6f 0309    	mvn.w	r3, r9
     dbc: ea4f 13d3    	lsr.w	r3, r3, #0x7
     dc0: ea43 1399    	orr.w	r3, r3, r9, lsr #6
     dc4: f023 33fe    	bic	r3, r3, #0xfefefefe
     dc8: 4419         	add	r1, r3
     dca: ea6f 0304    	mvn.w	r3, r4
     dce: ea4f 13d3    	lsr.w	r3, r3, #0x7
     dd2: ea43 1394    	orr.w	r3, r3, r4, lsr #6
     dd6: 69f4         	ldr	r4, [r6, #0x1c]
     dd8: f023 33fe    	bic	r3, r3, #0xfefefefe
     ddc: 4419         	add	r1, r3
     dde: ea6f 0302    	mvn.w	r3, r2
     de2: ea4f 13d3    	lsr.w	r3, r3, #0x7
     de6: ea43 1292    	orr.w	r2, r3, r2, lsr #6
     dea: f022 32fe    	bic	r2, r2, #0xfefefefe
     dee: 6a33         	ldr	r3, [r6, #0x20]
     df0: 4411         	add	r1, r2
     df2: ea6f 0205    	mvn.w	r2, r5
     df6: ea4f 12d2    	lsr.w	r2, r2, #0x7
     dfa: ea42 1295    	orr.w	r2, r2, r5, lsr #6
     dfe: 6a75         	ldr	r5, [r6, #0x24]
     e00: f022 32fe    	bic	r2, r2, #0xfefefefe
     e04: 4411         	add	r1, r2
     e06: ea6f 0204    	mvn.w	r2, r4
     e0a: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e0e: ea42 1294    	orr.w	r2, r2, r4, lsr #6
     e12: 6ab4         	ldr	r4, [r6, #0x28]
     e14: f022 32fe    	bic	r2, r2, #0xfefefefe
     e18: 4411         	add	r1, r2
     e1a: ea6f 0203    	mvn.w	r2, r3
     e1e: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e22: ea42 1293    	orr.w	r2, r2, r3, lsr #6
     e26: 6af3         	ldr	r3, [r6, #0x2c]
     e28: f022 32fe    	bic	r2, r2, #0xfefefefe
     e2c: 4411         	add	r1, r2
     e2e: ea6f 0205    	mvn.w	r2, r5
     e32: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e36: ea42 1295    	orr.w	r2, r2, r5, lsr #6
     e3a: 6b35         	ldr	r5, [r6, #0x30]
     e3c: f022 32fe    	bic	r2, r2, #0xfefefefe
     e40: 4411         	add	r1, r2
     e42: ea6f 0204    	mvn.w	r2, r4
     e46: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e4a: ea42 1294    	orr.w	r2, r2, r4, lsr #6
     e4e: 6b74         	ldr	r4, [r6, #0x34]
     e50: f022 32fe    	bic	r2, r2, #0xfefefefe
     e54: f106 0640    	add.w	r6, r6, #0x40
     e58: 4411         	add	r1, r2
     e5a: ea6f 0203    	mvn.w	r2, r3
     e5e: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e62: ea42 1293    	orr.w	r2, r2, r3, lsr #6
     e66: f022 32fe    	bic	r2, r2, #0xfefefefe
     e6a: 4411         	add	r1, r2
     e6c: ea6f 0205    	mvn.w	r2, r5
     e70: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e74: ea42 1295    	orr.w	r2, r2, r5, lsr #6
     e78: f022 32fe    	bic	r2, r2, #0xfefefefe
     e7c: 4411         	add	r1, r2
     e7e: ea6f 0204    	mvn.w	r2, r4
     e82: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e86: ea42 1294    	orr.w	r2, r2, r4, lsr #6
     e8a: f022 32fe    	bic	r2, r2, #0xfefefefe
     e8e: 4411         	add	r1, r2
     e90: ea6f 0200    	mvn.w	r2, r0
     e94: ea4f 12d2    	lsr.w	r2, r2, #0x7
     e98: ea42 1090    	orr.w	r0, r2, r0, lsr #6
     e9c: f020 30fe    	bic	r0, r0, #0xfefefefe
     ea0: 4408         	add	r0, r1
     ea2: ea6f 010c    	mvn.w	r1, r12
     ea6: ea4f 11d1    	lsr.w	r1, r1, #0x7
     eaa: ea41 119c    	orr.w	r1, r1, r12, lsr #6
     eae: f021 31fe    	bic	r1, r1, #0xfefefefe
     eb2: eb01 0c00    	add.w	r12, r1, r0
     eb6: f47f af5a    	bne.w	0xd6e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x3a2> @ imm = #-0x14c
     eba: 9805         	ldr	r0, [sp, #0x14]
     ebc: 9d06         	ldr	r5, [sp, #0x18]
     ebe: f010 0e03    	ands	lr, r0, #0x3
     ec2: f43f af21    	beq.w	0xd08 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x33c> @ imm = #-0x1be
     ec6: e896 000e    	ldm.w	r6, {r1, r2, r3}
     eca: f1be 0f01    	cmp.w	lr, #0x1
     ece: 68f0         	ldr	r0, [r6, #0xc]
     ed0: ea6f 0401    	mvn.w	r4, r1
     ed4: ea4f 14d4    	lsr.w	r4, r4, #0x7
     ed8: ea44 1191    	orr.w	r1, r4, r1, lsr #6
     edc: ea6f 0402    	mvn.w	r4, r2
     ee0: f021 31fe    	bic	r1, r1, #0xfefefefe
     ee4: ea4f 14d4    	lsr.w	r4, r4, #0x7
     ee8: ea44 1292    	orr.w	r2, r4, r2, lsr #6
     eec: 4461         	add	r1, r12
     eee: f022 32fe    	bic	r2, r2, #0xfefefefe
     ef2: 4411         	add	r1, r2
     ef4: ea6f 0203    	mvn.w	r2, r3
     ef8: ea4f 12d2    	lsr.w	r2, r2, #0x7
     efc: ea42 1293    	orr.w	r2, r2, r3, lsr #6
     f00: f022 32fe    	bic	r2, r2, #0xfefefefe
     f04: 4411         	add	r1, r2
     f06: ea6f 0200    	mvn.w	r2, r0
     f0a: ea4f 12d2    	lsr.w	r2, r2, #0x7
     f0e: ea42 1290    	orr.w	r2, r2, r0, lsr #6
     f12: f022 32fe    	bic	r2, r2, #0xfefefefe
     f16: eb02 0c01    	add.w	r12, r2, r1
     f1a: f43f aef5    	beq.w	0xd08 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x33c> @ imm = #-0x216
     f1e: f106 0310    	add.w	r3, r6, #0x10
     f22: 69f0         	ldr	r0, [r6, #0x1c]
     f24: f1be 0f02    	cmp.w	lr, #0x2
     f28: cb0e         	ldm	r3, {r1, r2, r3}
     f2a: ea6f 0401    	mvn.w	r4, r1
     f2e: ea4f 14d4    	lsr.w	r4, r4, #0x7
     f32: ea44 1191    	orr.w	r1, r4, r1, lsr #6
     f36: ea6f 0402    	mvn.w	r4, r2
     f3a: f021 31fe    	bic	r1, r1, #0xfefefefe
     f3e: ea4f 14d4    	lsr.w	r4, r4, #0x7
     f42: ea44 1292    	orr.w	r2, r4, r2, lsr #6
     f46: 4461         	add	r1, r12
     f48: f022 32fe    	bic	r2, r2, #0xfefefefe
     f4c: 4411         	add	r1, r2
     f4e: ea6f 0203    	mvn.w	r2, r3
     f52: ea4f 12d2    	lsr.w	r2, r2, #0x7
     f56: ea42 1293    	orr.w	r2, r2, r3, lsr #6
     f5a: f022 32fe    	bic	r2, r2, #0xfefefefe
     f5e: 4411         	add	r1, r2
     f60: ea6f 0200    	mvn.w	r2, r0
     f64: ea4f 12d2    	lsr.w	r2, r2, #0x7
     f68: ea42 1290    	orr.w	r2, r2, r0, lsr #6
     f6c: f022 32fe    	bic	r2, r2, #0xfefefefe
     f70: eb02 0c01    	add.w	r12, r2, r1
     f74: f43f aec8    	beq.w	0xd08 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x33c> @ imm = #-0x270
     f78: f106 0320    	add.w	r3, r6, #0x20
     f7c: cb0f         	ldm	r3, {r0, r1, r2, r3}
     f7e: 43c6         	mvns	r6, r0
     f80: 09f6         	lsrs	r6, r6, #0x7
     f82: ea46 1090    	orr.w	r0, r6, r0, lsr #6
     f86: 43ce         	mvns	r6, r1
     f88: f020 30fe    	bic	r0, r0, #0xfefefefe
     f8c: 09f6         	lsrs	r6, r6, #0x7
     f8e: ea46 1191    	orr.w	r1, r6, r1, lsr #6
     f92: 4460         	add	r0, r12
     f94: f021 31fe    	bic	r1, r1, #0xfefefefe
     f98: 4408         	add	r0, r1
     f9a: 43d1         	mvns	r1, r2
     f9c: 09c9         	lsrs	r1, r1, #0x7
     f9e: ea41 1192    	orr.w	r1, r1, r2, lsr #6
     fa2: f021 31fe    	bic	r1, r1, #0xfefefefe
     fa6: 4408         	add	r0, r1
     fa8: 43d9         	mvns	r1, r3
     faa: 09c9         	lsrs	r1, r1, #0x7
     fac: ea41 1193    	orr.w	r1, r1, r3, lsr #6
     fb0: f021 31fe    	bic	r1, r1, #0xfefefefe
     fb4: eb01 0c00    	add.w	r12, r1, r0
     fb8: e6a6         	b	0xd08 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x33c> @ imm = #-0x2b4
     fba: e9dd 8b03    	ldrd	r8, r11, [sp, #12]
     fbe: e9dd 4101    	ldrd	r4, r1, [sp, #4]
     fc2: 42ac         	cmp	r4, r5
     fc4: d941         	bls	0x104a <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x67e> @ imm = #0x82
     fc6: f891 2020    	ldrb.w	r2, [r1, #0x20]
     fca: 460b         	mov	r3, r1
     fcc: eba4 0905    	sub.w	r9, r4, r5
     fd0: 2000         	movs	r0, #0x0
     fd2: e8df f002    	tbb	[pc, r2]
     fd6: 4b 02 45 4b  	.word	0x4b45024b
     fda: 4648         	mov	r0, r9
     fdc: f04f 0900    	mov.w	r9, #0x0
     fe0: e044         	b	0x106c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6a0> @ imm = #0x88
     fe2: f00b 03fc    	and	r3, r11, #0xfc
     fe6: e9dd 4c01    	ldrd	r4, r12, [sp, #4]
     fea: 2801         	cmp	r0, #0x1
     fec: f858 1023    	ldr.w	r1, [r8, r3, lsl #2]
     ff0: ea6f 0201    	mvn.w	r2, r1
     ff4: ea4f 12d2    	lsr.w	r2, r2, #0x7
     ff8: ea42 1191    	orr.w	r1, r2, r1, lsr #6
     ffc: f021 32fe    	bic	r2, r1, #0xfefefefe
    1000: d015         	beq	0x102e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x662> @ imm = #0x2a
    1002: eb08 0383    	add.w	r3, r8, r3, lsl #2
    1006: 2802         	cmp	r0, #0x2
    1008: 6859         	ldr	r1, [r3, #0x4]
    100a: ea6f 0601    	mvn.w	r6, r1
    100e: ea4f 16d6    	lsr.w	r6, r6, #0x7
    1012: ea46 1191    	orr.w	r1, r6, r1, lsr #6
    1016: f021 31fe    	bic	r1, r1, #0xfefefefe
    101a: 440a         	add	r2, r1
    101c: d007         	beq	0x102e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x662> @ imm = #0xe
    101e: 6898         	ldr	r0, [r3, #0x8]
    1020: 43c1         	mvns	r1, r0
    1022: 09c9         	lsrs	r1, r1, #0x7
    1024: ea41 1090    	orr.w	r0, r1, r0, lsr #6
    1028: f020 30fe    	bic	r0, r0, #0xfefefefe
    102c: 4402         	add	r2, r0
    102e: fa3f f082    	uxtb16	r0, r2
    1032: fa3f f192    	uxtb16	r1, r2, ror #8
    1036: 4408         	add	r0, r1
    1038: e9dd 8b03    	ldrd	r8, r11, [sp, #12]
    103c: 4661         	mov	r1, r12
    103e: eb00 4000    	add.w	r0, r0, r0, lsl #16
    1042: eb05 4510    	add.w	r5, r5, r0, lsr #16
    1046: 42ac         	cmp	r4, r5
    1048: d8bd         	bhi	0xfc6 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x5fa> @ imm = #-0x86
    104a: e9d1 0105    	ldrd	r0, r1, [r1, #20]
    104e: 4642         	mov	r2, r8
    1050: 68cb         	ldr	r3, [r1, #0xc]
    1052: 4659         	mov	r1, r11
    1054: b007         	add	sp, #0x1c
    1056: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    105a: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
    105e: 4718         	bx	r3
    1060: f109 0101    	add.w	r1, r9, #0x1
    1064: ea4f 0059    	lsr.w	r0, r9, #0x1
    1068: ea4f 0951    	lsr.w	r9, r1, #0x1
    106c: e9d3 a404    	ldrd	r10, r4, [r3, #16]
    1070: 1c46         	adds	r6, r0, #0x1
    1072: 699d         	ldr	r5, [r3, #0x18]
    1074: 3e01         	subs	r6, #0x1
    1076: d006         	beq	0x1086 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6ba> @ imm = #0xc
    1078: 692a         	ldr	r2, [r5, #0x10]
    107a: 4620         	mov	r0, r4
    107c: 4651         	mov	r1, r10
    107e: 4790         	blx	r2
    1080: 2800         	cmp	r0, #0x0
    1082: d0f7         	beq	0x1074 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6a8> @ imm = #-0x12
    1084: e005         	b	0x1092 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6c6> @ imm = #0xa
    1086: 68eb         	ldr	r3, [r5, #0xc]
    1088: 4620         	mov	r0, r4
    108a: 4659         	mov	r1, r11
    108c: 4642         	mov	r2, r8
    108e: 4798         	blx	r3
    1090: b120         	cbz	r0, 0x109c <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6d0> @ imm = #0x8
    1092: 2001         	movs	r0, #0x1
    1094: b007         	add	sp, #0x1c
    1096: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    109a: bdf0         	pop	{r4, r5, r6, r7, pc}
    109c: 2600         	movs	r6, #0x0
    109e: 45b1         	cmp	r9, r6
    10a0: d008         	beq	0x10b4 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6e8> @ imm = #0x10
    10a2: 692a         	ldr	r2, [r5, #0x10]
    10a4: 4620         	mov	r0, r4
    10a6: 4651         	mov	r1, r10
    10a8: 4790         	blx	r2
    10aa: 3601         	adds	r6, #0x1
    10ac: 2800         	cmp	r0, #0x0
    10ae: d0f6         	beq	0x109e <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6d2> @ imm = #-0x14
    10b0: 1e71         	subs	r1, r6, #0x1
    10b2: e000         	b	0x10b6 <<&T as core::fmt::Display>::fmt::hb19a34fab9924b33+0x6ea> @ imm = #0x0
    10b4: 4649         	mov	r1, r9
    10b6: 2000         	movs	r0, #0x0
    10b8: 4549         	cmp	r1, r9
    10ba: bf38         	it	lo
    10bc: 2001         	movlo	r0, #0x1
    10be: b007         	add	sp, #0x1c
    10c0: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    10c4: bdf0         	pop	{r4, r5, r6, r7, pc}

000010c6 <core::fmt::write::ha761f43e1c47d693>:
    10c6: b5f0         	push	{r4, r5, r6, r7, lr}
    10c8: af03         	add	r7, sp, #0xc
    10ca: e92d 0f00    	push.w	{r8, r9, r10, r11}
    10ce: b08d         	sub	sp, #0x34
    10d0: 2303         	movs	r3, #0x3
    10d2: 6916         	ldr	r6, [r2, #0x10]
    10d4: f88d 3030    	strb.w	r3, [sp, #0x30]
    10d8: 2320         	movs	r3, #0x20
    10da: 9308         	str	r3, [sp, #0x20]
    10dc: 2300         	movs	r3, #0x0
    10de: 2e00         	cmp	r6, #0x0
    10e0: e9cd 130a    	strd	r1, r3, [sp, #40]
    10e4: 9009         	str	r0, [sp, #0x24]
    10e6: 9306         	str	r3, [sp, #0x18]
    10e8: 9304         	str	r3, [sp, #0x10]
    10ea: d069         	beq	0x11c0 <core::fmt::write::ha761f43e1c47d693+0xfa> @ imm = #0xd2
    10ec: 6950         	ldr	r0, [r2, #0x14]
    10ee: 2800         	cmp	r0, #0x0
    10f0: f000 8091    	beq.w	0x1216 <core::fmt::write::ha761f43e1c47d693+0x150> @ imm = #0x122
    10f4: f8d2 a000    	ldr.w	r10, [r2]
    10f8: 0141         	lsls	r1, r0, #0x5
    10fa: f8d2 b008    	ldr.w	r11, [r2, #0x8]
    10fe: 3801         	subs	r0, #0x1
    1100: f020 4078    	bic	r0, r0, #0xf8000000
    1104: f04f 0800    	mov.w	r8, #0x0
    1108: f04f 0900    	mov.w	r9, #0x0
    110c: 3001         	adds	r0, #0x1
    110e: 9202         	str	r2, [sp, #0x8]
    1110: 9103         	str	r1, [sp, #0xc]
    1112: 9001         	str	r0, [sp, #0x4]
    1114: eb0a 0109    	add.w	r1, r10, r9
    1118: 684a         	ldr	r2, [r1, #0x4]
    111a: b13a         	cbz	r2, 0x112c <core::fmt::write::ha761f43e1c47d693+0x66> @ imm = #0xe
    111c: e9dd 0309    	ldrd	r0, r3, [sp, #36]
    1120: 6809         	ldr	r1, [r1]
    1122: 68db         	ldr	r3, [r3, #0xc]
    1124: 4798         	blx	r3
    1126: 2800         	cmp	r0, #0x0
    1128: f040 8085    	bne.w	0x1236 <core::fmt::write::ha761f43e1c47d693+0x170> @ imm = #0x10a
    112c: eb06 0008    	add.w	r0, r6, r8
    1130: 6903         	ldr	r3, [r0, #0x10]
    1132: eb06 0089    	add.w	r0, r6, r9, lsl #2
    1136: e9d0 2102    	ldrd	r2, r1, [r0, #8]
    113a: 7f05         	ldrb	r5, [r0, #0x1c]
    113c: 6984         	ldr	r4, [r0, #0x18]
    113e: 9308         	str	r3, [sp, #0x20]
    1140: f88d 5030    	strb.w	r5, [sp, #0x30]
    1144: 940b         	str	r4, [sp, #0x2c]
    1146: b17a         	cbz	r2, 0x1168 <core::fmt::write::ha761f43e1c47d693+0xa2> @ imm = #0x1e
    1148: 2a01         	cmp	r2, #0x1
    114a: d102         	bne	0x1152 <core::fmt::write::ha761f43e1c47d693+0x8c> @ imm = #0x4
    114c: f85b 2031    	ldr.w	r2, [r11, r1, lsl #3]
    1150: b13a         	cbz	r2, 0x1162 <core::fmt::write::ha761f43e1c47d693+0x9c> @ imm = #0xe
    1152: 2200         	movs	r2, #0x0
    1154: f856 3008    	ldr.w	r3, [r6, r8]
    1158: e9cd 2104    	strd	r2, r1, [sp, #16]
    115c: 2b02         	cmp	r3, #0x2
    115e: d10a         	bne	0x1176 <core::fmt::write::ha761f43e1c47d693+0xb0> @ imm = #0x14
    1160: e00f         	b	0x1182 <core::fmt::write::ha761f43e1c47d693+0xbc> @ imm = #0x1e
    1162: eb0b 01c1    	add.w	r1, r11, r1, lsl #3
    1166: 6849         	ldr	r1, [r1, #0x4]
    1168: 2201         	movs	r2, #0x1
    116a: f856 3008    	ldr.w	r3, [r6, r8]
    116e: e9cd 2104    	strd	r2, r1, [sp, #16]
    1172: 2b02         	cmp	r3, #0x2
    1174: d005         	beq	0x1182 <core::fmt::write::ha761f43e1c47d693+0xbc> @ imm = #0xa
    1176: 6841         	ldr	r1, [r0, #0x4]
    1178: 2b01         	cmp	r3, #0x1
    117a: d107         	bne	0x118c <core::fmt::write::ha761f43e1c47d693+0xc6> @ imm = #0xe
    117c: f85b 2031    	ldr.w	r2, [r11, r1, lsl #3]
    1180: b10a         	cbz	r2, 0x1186 <core::fmt::write::ha761f43e1c47d693+0xc0> @ imm = #0x2
    1182: 2200         	movs	r2, #0x0
    1184: e003         	b	0x118e <core::fmt::write::ha761f43e1c47d693+0xc8> @ imm = #0x6
    1186: eb0b 01c1    	add.w	r1, r11, r1, lsl #3
    118a: 6849         	ldr	r1, [r1, #0x4]
    118c: 2201         	movs	r2, #0x1
    118e: 6943         	ldr	r3, [r0, #0x14]
    1190: 9107         	str	r1, [sp, #0x1c]
    1192: 9206         	str	r2, [sp, #0x18]
    1194: eb0b 01c3    	add.w	r1, r11, r3, lsl #3
    1198: f85b 0033    	ldr.w	r0, [r11, r3, lsl #3]
    119c: 684b         	ldr	r3, [r1, #0x4]
    119e: a904         	add	r1, sp, #0x10
    11a0: 4798         	blx	r3
    11a2: 2800         	cmp	r0, #0x0
    11a4: d147         	bne	0x1236 <core::fmt::write::ha761f43e1c47d693+0x170> @ imm = #0x8e
    11a6: 9803         	ldr	r0, [sp, #0xc]
    11a8: f108 0820    	add.w	r8, r8, #0x20
    11ac: f109 0908    	add.w	r9, r9, #0x8
    11b0: 4540         	cmp	r0, r8
    11b2: d1af         	bne	0x1114 <core::fmt::write::ha761f43e1c47d693+0x4e> @ imm = #-0xa2
    11b4: e9dd a201    	ldrd	r10, r2, [sp, #4]
    11b8: 6850         	ldr	r0, [r2, #0x4]
    11ba: 4582         	cmp	r10, r0
    11bc: d330         	blo	0x1220 <core::fmt::write::ha761f43e1c47d693+0x15a> @ imm = #0x60
    11be: e03f         	b	0x1240 <core::fmt::write::ha761f43e1c47d693+0x17a> @ imm = #0x7e
    11c0: 68d0         	ldr	r0, [r2, #0xc]
    11c2: b340         	cbz	r0, 0x1216 <core::fmt::write::ha761f43e1c47d693+0x150> @ imm = #0x50
    11c4: 6894         	ldr	r4, [r2, #0x8]
    11c6: f10d 0810    	add.w	r8, sp, #0x10
    11ca: f8d2 b000    	ldr.w	r11, [r2]
    11ce: 2600         	movs	r6, #0x0
    11d0: eb04 09c0    	add.w	r9, r4, r0, lsl #3
    11d4: 3801         	subs	r0, #0x1
    11d6: f020 4060    	bic	r0, r0, #0xe0000000
    11da: 9202         	str	r2, [sp, #0x8]
    11dc: f100 0a01    	add.w	r10, r0, #0x1
    11e0: eb0b 01c6    	add.w	r1, r11, r6, lsl #3
    11e4: 684a         	ldr	r2, [r1, #0x4]
    11e6: b12a         	cbz	r2, 0x11f4 <core::fmt::write::ha761f43e1c47d693+0x12e> @ imm = #0xa
    11e8: e9dd 0309    	ldrd	r0, r3, [sp, #36]
    11ec: 6809         	ldr	r1, [r1]
    11ee: 68db         	ldr	r3, [r3, #0xc]
    11f0: 4798         	blx	r3
    11f2: bb00         	cbnz	r0, 0x1236 <core::fmt::write::ha761f43e1c47d693+0x170> @ imm = #0x40
    11f4: eb04 05c6    	add.w	r5, r4, r6, lsl #3
    11f8: 4641         	mov	r1, r8
    11fa: e9d5 0200    	ldrd	r0, r2, [r5]
    11fe: 4790         	blx	r2
    1200: b9c8         	cbnz	r0, 0x1236 <core::fmt::write::ha761f43e1c47d693+0x170> @ imm = #0x32
    1202: f105 0008    	add.w	r0, r5, #0x8
    1206: 3601         	adds	r6, #0x1
    1208: 4548         	cmp	r0, r9
    120a: d1e9         	bne	0x11e0 <core::fmt::write::ha761f43e1c47d693+0x11a> @ imm = #-0x2e
    120c: 9a02         	ldr	r2, [sp, #0x8]
    120e: 6850         	ldr	r0, [r2, #0x4]
    1210: 4582         	cmp	r10, r0
    1212: d305         	blo	0x1220 <core::fmt::write::ha761f43e1c47d693+0x15a> @ imm = #0xa
    1214: e014         	b	0x1240 <core::fmt::write::ha761f43e1c47d693+0x17a> @ imm = #0x28
    1216: f04f 0a00    	mov.w	r10, #0x0
    121a: 6850         	ldr	r0, [r2, #0x4]
    121c: 4582         	cmp	r10, r0
    121e: d20f         	bhs	0x1240 <core::fmt::write::ha761f43e1c47d693+0x17a> @ imm = #0x1e
    1220: 6812         	ldr	r2, [r2]
    1222: e9dd 0109    	ldrd	r0, r1, [sp, #36]
    1226: 68cb         	ldr	r3, [r1, #0xc]
    1228: f852 103a    	ldr.w	r1, [r2, r10, lsl #3]
    122c: eb02 02ca    	add.w	r2, r2, r10, lsl #3
    1230: 6852         	ldr	r2, [r2, #0x4]
    1232: 4798         	blx	r3
    1234: b120         	cbz	r0, 0x1240 <core::fmt::write::ha761f43e1c47d693+0x17a> @ imm = #0x8
    1236: 2001         	movs	r0, #0x1
    1238: b00d         	add	sp, #0x34
    123a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    123e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1240: 2000         	movs	r0, #0x0
    1242: b00d         	add	sp, #0x34
    1244: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1248: bdf0         	pop	{r4, r5, r6, r7, pc}

0000124a <<core::cell::BorrowMutError as core::fmt::Debug>::fmt::h66cf01fa83f05118>:
    124a: e9d1 0205    	ldrd	r0, r2, [r1, #20]
    124e: f641 41e4    	movw	r1, #0x1ce4
    1252: 68d3         	ldr	r3, [r2, #0xc]
    1254: f2c0 0100    	movt	r1, #0x0
    1258: 220e         	movs	r2, #0xe
    125a: 4718         	bx	r3

0000125c <core::cell::panic_already_borrowed::hac03a74565052f3c>:
    125c: b580         	push	{r7, lr}
    125e: 466f         	mov	r7, sp
    1260: b08a         	sub	sp, #0x28
    1262: 4601         	mov	r1, r0
    1264: 2000         	movs	r0, #0x0
    1266: 9005         	str	r0, [sp, #0x14]
    1268: 2001         	movs	r0, #0x1
    126a: 9002         	str	r0, [sp, #0x8]
    126c: f641 5204    	movw	r2, #0x1d04
    1270: 9004         	str	r0, [sp, #0x10]
    1272: a807         	add	r0, sp, #0x1c
    1274: 9003         	str	r0, [sp, #0xc]
    1276: f241 204b    	movw	r0, #0x124b
    127a: f2c0 0000    	movt	r0, #0x0
    127e: f2c0 0200    	movt	r2, #0x0
    1282: 9008         	str	r0, [sp, #0x20]
    1284: 1e78         	subs	r0, r7, #0x1
    1286: 9007         	str	r0, [sp, #0x1c]
    1288: a801         	add	r0, sp, #0x4
    128a: 9201         	str	r2, [sp, #0x4]
    128c: f7ff fa53    	bl	0x736 <core::panicking::panic_fmt::h9fefa2fcee011c09> @ imm = #-0xb5a

00001290 <core::panicking::panic_const::panic_const_add_overflow::h42653ed21a4ce704>:
    1290: b580         	push	{r7, lr}
    1292: 466f         	mov	r7, sp
    1294: b086         	sub	sp, #0x18
    1296: 4601         	mov	r1, r0
    1298: 2000         	movs	r0, #0x0
    129a: 2201         	movs	r2, #0x1
    129c: 9004         	str	r0, [sp, #0x10]
    129e: 9201         	str	r2, [sp, #0x4]
    12a0: f641 42b0    	movw	r2, #0x1cb0
    12a4: 9003         	str	r0, [sp, #0xc]
    12a6: 2004         	movs	r0, #0x4
    12a8: f2c0 0200    	movt	r2, #0x0
    12ac: 9002         	str	r0, [sp, #0x8]
    12ae: 4668         	mov	r0, sp
    12b0: 9200         	str	r2, [sp]
    12b2: f7ff fa40    	bl	0x736 <core::panicking::panic_fmt::h9fefa2fcee011c09> @ imm = #-0xb80

000012b6 <core::panicking::panic_const::panic_const_sub_overflow::hbd7cb92eb2247a93>:
    12b6: b580         	push	{r7, lr}
    12b8: 466f         	mov	r7, sp
    12ba: b086         	sub	sp, #0x18
    12bc: 4601         	mov	r1, r0
    12be: 2000         	movs	r0, #0x0
    12c0: 2201         	movs	r2, #0x1
    12c2: 9004         	str	r0, [sp, #0x10]
    12c4: 9201         	str	r2, [sp, #0x4]
    12c6: f641 42dc    	movw	r2, #0x1cdc
    12ca: 9003         	str	r0, [sp, #0xc]
    12cc: 2004         	movs	r0, #0x4
    12ce: f2c0 0200    	movt	r2, #0x0
    12d2: 9002         	str	r0, [sp, #0x8]
    12d4: 4668         	mov	r0, sp
    12d6: 9200         	str	r2, [sp]
    12d8: f7ff fa2d    	bl	0x736 <core::panicking::panic_fmt::h9fefa2fcee011c09> @ imm = #-0xba6

000012dc <WDT>:
    12dc: e7fe         	b	0x12dc <WDT>            @ imm = #-0x4

000012de <rtt_init_must_not_be_called_multiple_times>:
    12de: 4770         	bx	lr

000012e0 <rust_begin_unwind>:
    12e0: b580         	push	{r7, lr}
    12e2: 466f         	mov	r7, sp
    12e4: b090         	sub	sp, #0x40
    12e6: f240 4530    	movw	r5, #0x430
    12ea: 9001         	str	r0, [sp, #0x4]
    12ec: f3ef 8010    	mrs	r0, primask
    12f0: f2c2 0500    	movt	r5, #0x2000
    12f4: b672         	cpsid i
    12f6: f3ef 8410    	mrs	r4, primask
    12fa: b672         	cpsid i
    12fc: 6868         	ldr	r0, [r5, #0x4]
    12fe: 2800         	cmp	r0, #0x0
    1300: f040 808b    	bne.w	0x141a <rust_begin_unwind+0x13a> @ imm = #0x116
    1304: f04f 30ff    	mov.w	r0, #0xffffffff
    1308: 6068         	str	r0, [r5, #0x4]
    130a: 68a8         	ldr	r0, [r5, #0x8]
    130c: 2800         	cmp	r0, #0x0
    130e: d07e         	beq	0x140e <rust_begin_unwind+0x12e> @ imm = #0xfc
    1310: 68e8         	ldr	r0, [r5, #0xc]
    1312: 2202         	movs	r2, #0x2
    1314: 6941         	ldr	r1, [r0, #0x14]
    1316: f3bf 8f5f    	dmb	sy
    131a: f3bf 8f5f    	dmb	sy
    131e: f362 0101    	bfi	r1, r2, #0, #2
    1322: 6141         	str	r1, [r0, #0x14]
    1324: f3bf 8f5f    	dmb	sy
    1328: 68e8         	ldr	r0, [r5, #0xc]
    132a: 68c1         	ldr	r1, [r0, #0xc]
    132c: f3bf 8f5f    	dmb	sy
    1330: 6902         	ldr	r2, [r0, #0x10]
    1332: f3bf 8f5f    	dmb	sy
    1336: 6883         	ldr	r3, [r0, #0x8]
    1338: 4299         	cmp	r1, r3
    133a: bf38         	it	lo
    133c: 429a         	cmplo	r2, r3
    133e: d30a         	blo	0x1356 <rust_begin_unwind+0x76> @ imm = #0x14
    1340: 2100         	movs	r1, #0x0
    1342: f3bf 8f5f    	dmb	sy
    1346: 60c1         	str	r1, [r0, #0xc]
    1348: f3bf 8f5f    	dmb	sy
    134c: f3bf 8f5f    	dmb	sy
    1350: 6101         	str	r1, [r0, #0x10]
    1352: f3bf 8f5f    	dmb	sy
    1356: 2600         	movs	r6, #0x0
    1358: 9008         	str	r0, [sp, #0x20]
    135a: e9cd 1609    	strd	r1, r6, [sp, #36]
    135e: 7c29         	ldrb	r1, [r5, #0x10]
    1360: f88d 602c    	strb.w	r6, [sp, #0x2c]
    1364: b1a1         	cbz	r1, 0x1390 <rust_begin_unwind+0xb0> @ imm = #0x28
    1366: 68e8         	ldr	r0, [r5, #0xc]
    1368: f243 01ff    	movw	r1, #0x30ff
    136c: aa02         	add	r2, sp, #0x8
    136e: 2302         	movs	r3, #0x2
    1370: 6940         	ldr	r0, [r0, #0x14]
    1372: f3bf 8f5f    	dmb	sy
    1376: f8ad 1008    	strh.w	r1, [sp, #0x8]
    137a: f000 0003    	and	r0, r0, #0x3
    137e: 3802         	subs	r0, #0x2
    1380: fab0 f080    	clz	r0, r0
    1384: 0940         	lsrs	r0, r0, #0x5
    1386: 0041         	lsls	r1, r0, #0x1
    1388: a808         	add	r0, sp, #0x20
    138a: f000 f91d    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #0x23a
    138e: 742e         	strb	r6, [r5, #0x10]
    1390: ab08         	add	r3, sp, #0x20
    1392: f10d 0c0c    	add.w	r12, sp, #0xc
    1396: f88d 601c    	strb.w	r6, [sp, #0x1c]
    139a: cb0f         	ldm	r3, {r0, r1, r2, r3}
    139c: 960c         	str	r6, [sp, #0x30]
    139e: e88c 000f    	stm.w	r12, {r0, r1, r2, r3}
    13a2: f105 0010    	add.w	r0, r5, #0x10
    13a6: f641 6100    	movw	r1, #0x1e00
    13aa: 9002         	str	r0, [sp, #0x8]
    13ac: 2002         	movs	r0, #0x2
    13ae: 9009         	str	r0, [sp, #0x24]
    13b0: f641 601c    	movw	r0, #0x1e1c
    13b4: f2c0 0000    	movt	r0, #0x0
    13b8: aa08         	add	r2, sp, #0x20
    13ba: 9008         	str	r0, [sp, #0x20]
    13bc: 2001         	movs	r0, #0x1
    13be: 900b         	str	r0, [sp, #0x2c]
    13c0: a80e         	add	r0, sp, #0x38
    13c2: 900a         	str	r0, [sp, #0x28]
    13c4: f241 4027    	movw	r0, #0x1427
    13c8: f2c0 0000    	movt	r0, #0x0
    13cc: f2c0 0100    	movt	r1, #0x0
    13d0: 900f         	str	r0, [sp, #0x3c]
    13d2: a801         	add	r0, sp, #0x4
    13d4: 900e         	str	r0, [sp, #0x38]
    13d6: a802         	add	r0, sp, #0x8
    13d8: f7ff fe75    	bl	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x316
    13dc: f89d 0018    	ldrb.w	r0, [sp, #0x18]
    13e0: 2802         	cmp	r0, #0x2
    13e2: d107         	bne	0x13f4 <rust_begin_unwind+0x114> @ imm = #0xe
    13e4: 9802         	ldr	r0, [sp, #0x8]
    13e6: f89d 101c    	ldrb.w	r1, [sp, #0x1c]
    13ea: 7001         	strb	r1, [r0]
    13ec: f89d 0018    	ldrb.w	r0, [sp, #0x18]
    13f0: 2801         	cmp	r0, #0x1
    13f2: d806         	bhi	0x1402 <rust_begin_unwind+0x122> @ imm = #0xc
    13f4: e9dd 0103    	ldrd	r0, r1, [sp, #12]
    13f8: f3bf 8f5f    	dmb	sy
    13fc: 60c1         	str	r1, [r0, #0xc]
    13fe: f3bf 8f5f    	dmb	sy
    1402: 6868         	ldr	r0, [r5, #0x4]
    1404: 3001         	adds	r0, #0x1
    1406: 6068         	str	r0, [r5, #0x4]
    1408: 07e0         	lsls	r0, r4, #0x1f
    140a: d004         	beq	0x1416 <rust_begin_unwind+0x136> @ imm = #0x8
    140c: e004         	b	0x1418 <rust_begin_unwind+0x138> @ imm = #0x8
    140e: 2000         	movs	r0, #0x0
    1410: 6068         	str	r0, [r5, #0x4]
    1412: 07e0         	lsls	r0, r4, #0x1f
    1414: d100         	bne	0x1418 <rust_begin_unwind+0x138> @ imm = #0x0
    1416: b662         	cpsie i
    1418: e7fe         	b	0x1418 <rust_begin_unwind+0x138> @ imm = #-0x4
    141a: f641 7064    	movw	r0, #0x1f64
    141e: f2c0 0000    	movt	r0, #0x0
    1422: f7ff ff1b    	bl	0x125c <core::cell::panic_already_borrowed::hac03a74565052f3c> @ imm = #-0x1ca

00001426 <<&T as core::fmt::Display>::fmt::h620107c8382e9362>:
    1426: b5f0         	push	{r4, r5, r6, r7, lr}
    1428: af03         	add	r7, sp, #0xc
    142a: e92d 0f00    	push.w	{r8, r9, r10, r11}
    142e: b08d         	sub	sp, #0x34
    1430: e9d1 ba05    	ldrd	r11, r10, [r1, #20]
    1434: f641 5128    	movw	r1, #0x1d28
    1438: f8da 600c    	ldr.w	r6, [r10, #0xc]
    143c: f2c0 0100    	movt	r1, #0x0
    1440: f8d0 9000    	ldr.w	r9, [r0]
    1444: 220c         	movs	r2, #0xc
    1446: 4658         	mov	r0, r11
    1448: 47b0         	blx	r6
    144a: b120         	cbz	r0, 0x1456 <<&T as core::fmt::Display>::fmt::h620107c8382e9362+0x30> @ imm = #0x8
    144c: 2001         	movs	r0, #0x1
    144e: b00d         	add	sp, #0x34
    1450: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1454: bdf0         	pop	{r4, r5, r6, r7, pc}
    1456: f641 5210    	movw	r2, #0x1d10
    145a: 2100         	movs	r1, #0x0
    145c: f8d9 0004    	ldr.w	r0, [r9, #0x4]
    1460: f2c0 0200    	movt	r2, #0x0
    1464: 9105         	str	r1, [sp, #0x14]
    1466: 2103         	movs	r1, #0x3
    1468: 9201         	str	r2, [sp, #0x4]
    146a: f100 020c    	add.w	r2, r0, #0xc
    146e: 9102         	str	r1, [sp, #0x8]
    1470: f10d 081c    	add.w	r8, sp, #0x1c
    1474: 9104         	str	r1, [sp, #0x10]
    1476: f240 6149    	movw	r1, #0x649
    147a: f2c0 0100    	movt	r1, #0x0
    147e: f8cd 800c    	str.w	r8, [sp, #0xc]
    1482: e9cd 120a    	strd	r1, r2, [sp, #40]
    1486: aa01         	add	r2, sp, #0x4
    1488: 910c         	str	r1, [sp, #0x30]
    148a: f100 0108    	add.w	r1, r0, #0x8
    148e: 9109         	str	r1, [sp, #0x24]
    1490: f640 11cd    	movw	r1, #0x9cd
    1494: f2c0 0100    	movt	r1, #0x0
    1498: e9cd 0107    	strd	r0, r1, [sp, #28]
    149c: 4658         	mov	r0, r11
    149e: 4651         	mov	r1, r10
    14a0: f7ff fe11    	bl	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x3de
    14a4: b120         	cbz	r0, 0x14b0 <<&T as core::fmt::Display>::fmt::h620107c8382e9362+0x8a> @ imm = #0x8
    14a6: 2001         	movs	r0, #0x1
    14a8: b00d         	add	sp, #0x34
    14aa: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    14ae: bdf0         	pop	{r4, r5, r6, r7, pc}
    14b0: f641 5134    	movw	r1, #0x1d34
    14b4: 4658         	mov	r0, r11
    14b6: f2c0 0100    	movt	r1, #0x0
    14ba: 2202         	movs	r2, #0x2
    14bc: 47b0         	blx	r6
    14be: b120         	cbz	r0, 0x14ca <<&T as core::fmt::Display>::fmt::h620107c8382e9362+0xa4> @ imm = #0x8
    14c0: 2001         	movs	r0, #0x1
    14c2: b00d         	add	sp, #0x34
    14c4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    14c8: bdf0         	pop	{r4, r5, r6, r7, pc}
    14ca: f8d9 c000    	ldr.w	r12, [r9]
    14ce: 4641         	mov	r1, r8
    14d0: e89c 007d    	ldm.w	r12, {r0, r2, r3, r4, r5, r6}
    14d4: c17d         	stm	r1!, {r0, r2, r3, r4, r5, r6}
    14d6: 4658         	mov	r0, r11
    14d8: 4651         	mov	r1, r10
    14da: 4642         	mov	r2, r8
    14dc: f7ff fdf3    	bl	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x41a
    14e0: b00d         	add	sp, #0x34
    14e2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    14e6: bdf0         	pop	{r4, r5, r6, r7, pc}

000014e8 <core::ptr::drop_in_place<rtt_target::TerminalWriter>::h9fb3629352c163a5>:
    14e8: 7c01         	ldrb	r1, [r0, #0x10]
    14ea: 2902         	cmp	r1, #0x2
    14ec: bf01         	itttt	eq
    14ee: 6801         	ldreq	r1, [r0]
    14f0: 7d00         	ldrbeq	r0, [r0, #0x14]
    14f2: 7008         	strbeq	r0, [r1]
    14f4: 4770         	bxeq	lr
    14f6: e9d0 1201    	ldrd	r1, r2, [r0, #4]
    14fa: f3bf 8f5f    	dmb	sy
    14fe: 60ca         	str	r2, [r1, #0xc]
    1500: 2102         	movs	r1, #0x2
    1502: f3bf 8f5f    	dmb	sy
    1506: 7401         	strb	r1, [r0, #0x10]
    1508: 4770         	bx	lr

0000150a <core::fmt::Write::write_char::hd1b2585241606b2e>:
    150a: b580         	push	{r7, lr}
    150c: 466f         	mov	r7, sp
    150e: b082         	sub	sp, #0x8
    1510: 2200         	movs	r2, #0x0
    1512: 2980         	cmp	r1, #0x80
    1514: 9201         	str	r2, [sp, #0x4]
    1516: d203         	bhs	0x1520 <core::fmt::Write::write_char::hd1b2585241606b2e+0x16> @ imm = #0x6
    1518: 2301         	movs	r3, #0x1
    151a: f88d 1004    	strb.w	r1, [sp, #0x4]
    151e: e035         	b	0x158c <core::fmt::Write::write_char::hd1b2585241606b2e+0x82> @ imm = #0x6a
    1520: f5b1 6f00    	cmp.w	r1, #0x800
    1524: d20b         	bhs	0x153e <core::fmt::Write::write_char::hd1b2585241606b2e+0x34> @ imm = #0x16
    1526: 2302         	movs	r3, #0x2
    1528: 460a         	mov	r2, r1
    152a: f363 129f    	bfi	r2, r3, #6, #26
    152e: f88d 2005    	strb.w	r2, [sp, #0x5]
    1532: 22c0         	movs	r2, #0xc0
    1534: ea42 1191    	orr.w	r1, r2, r1, lsr #6
    1538: f88d 1004    	strb.w	r1, [sp, #0x4]
    153c: e026         	b	0x158c <core::fmt::Write::write_char::hd1b2585241606b2e+0x82> @ imm = #0x4c
    153e: 2202         	movs	r2, #0x2
    1540: 460b         	mov	r3, r1
    1542: f362 139f    	bfi	r3, r2, #6, #26
    1546: f5b1 3f80    	cmp.w	r1, #0x10000
    154a: d20d         	bhs	0x1568 <core::fmt::Write::write_char::hd1b2585241606b2e+0x5e> @ imm = #0x1a
    154c: f88d 3006    	strb.w	r3, [sp, #0x6]
    1550: 098b         	lsrs	r3, r1, #0x6
    1552: f362 139f    	bfi	r3, r2, #6, #26
    1556: f88d 3005    	strb.w	r3, [sp, #0x5]
    155a: 22e0         	movs	r2, #0xe0
    155c: ea42 3111    	orr.w	r1, r2, r1, lsr #12
    1560: f88d 1004    	strb.w	r1, [sp, #0x4]
    1564: 2303         	movs	r3, #0x3
    1566: e011         	b	0x158c <core::fmt::Write::write_char::hd1b2585241606b2e+0x82> @ imm = #0x22
    1568: f88d 3007    	strb.w	r3, [sp, #0x7]
    156c: 098b         	lsrs	r3, r1, #0x6
    156e: f362 139f    	bfi	r3, r2, #6, #26
    1572: f88d 3006    	strb.w	r3, [sp, #0x6]
    1576: 0b0b         	lsrs	r3, r1, #0xc
    1578: f362 139f    	bfi	r3, r2, #6, #26
    157c: f88d 3005    	strb.w	r3, [sp, #0x5]
    1580: 22f0         	movs	r2, #0xf0
    1582: ea42 4191    	orr.w	r1, r2, r1, lsr #18
    1586: f88d 1004    	strb.w	r1, [sp, #0x4]
    158a: 2304         	movs	r3, #0x4
    158c: f850 1f04    	ldr	r1, [r0, #4]!
    1590: f641 7274    	movw	r2, #0x1f74
    1594: f2c0 0200    	movt	r2, #0x0
    1598: 6949         	ldr	r1, [r1, #0x14]
    159a: f3bf 8f5f    	dmb	sy
    159e: f001 0103    	and	r1, r1, #0x3
    15a2: f852 1021    	ldr.w	r1, [r2, r1, lsl #2]
    15a6: aa01         	add	r2, sp, #0x4
    15a8: f000 f80e    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #0x1c
    15ac: 2000         	movs	r0, #0x0
    15ae: b002         	add	sp, #0x8
    15b0: bd80         	pop	{r7, pc}

000015b2 <core::fmt::Write::write_fmt::h87acdf98f32107f8>:
    15b2: 460a         	mov	r2, r1
    15b4: 6849         	ldr	r1, [r1, #0x4]
    15b6: 2901         	cmp	r1, #0x1
    15b8: bf18         	it	ne
    15ba: 2900         	cmpne	r1, #0x0
    15bc: f641 6100    	movw	r1, #0x1e00
    15c0: f2c0 0100    	movt	r1, #0x0
    15c4: f7ff bd7f    	b.w	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x502

000015c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a>:
    15c8: b5f0         	push	{r4, r5, r6, r7, lr}
    15ca: af03         	add	r7, sp, #0xc
    15cc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    15d0: b081         	sub	sp, #0x4
    15d2: 4604         	mov	r4, r0
    15d4: 7b00         	ldrb	r0, [r0, #0xc]
    15d6: 2800         	cmp	r0, #0x0
    15d8: d174         	bne	0x16c4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xfc> @ imm = #0xe8
    15da: 461d         	mov	r5, r3
    15dc: 2b00         	cmp	r3, #0x0
    15de: d071         	beq	0x16c4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xfc> @ imm = #0xe2
    15e0: f8d4 8000    	ldr.w	r8, [r4]
    15e4: 4689         	mov	r9, r1
    15e6: f04f 0c00    	mov.w	r12, #0x0
    15ea: f8d8 300c    	ldr.w	r3, [r8, #0xc]
    15ee: f3bf 8f5f    	dmb	sy
    15f2: f8d8 1010    	ldr.w	r1, [r8, #0x10]
    15f6: f3bf 8f5f    	dmb	sy
    15fa: f8d8 0008    	ldr.w	r0, [r8, #0x8]
    15fe: 4283         	cmp	r3, r0
    1600: bf38         	it	lo
    1602: 4281         	cmplo	r1, r0
    1604: d314         	blo	0x1630 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x68> @ imm = #0x28
    1606: f3bf 8f5f    	dmb	sy
    160a: f8c8 c00c    	str.w	r12, [r8, #0xc]
    160e: f3bf 8f5f    	dmb	sy
    1612: f3bf 8f5f    	dmb	sy
    1616: f8c8 c010    	str.w	r12, [r8, #0x10]
    161a: f3bf 8f5f    	dmb	sy
    161e: f8d4 a004    	ldr.w	r10, [r4, #0x4]
    1622: 4550         	cmp	r0, r10
    1624: d352         	blo	0x16cc <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x104> @ imm = #0xa4
    1626: d051         	beq	0x16cc <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x104> @ imm = #0xa2
    1628: ea6f 010a    	mvn.w	r1, r10
    162c: 1846         	adds	r6, r0, r1
    162e: e00d         	b	0x164c <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x84> @ imm = #0x1a
    1630: f8d4 a004    	ldr.w	r10, [r4, #0x4]
    1634: 4551         	cmp	r1, r10
    1636: d903         	bls	0x1640 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x78> @ imm = #0x6
    1638: ea6f 000a    	mvn.w	r0, r10
    163c: 180e         	adds	r6, r1, r0
    163e: e005         	b	0x164c <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x84> @ imm = #0xa
    1640: 2900         	cmp	r1, #0x0
    1642: d0ee         	beq	0x1622 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x5a> @ imm = #-0x24
    1644: 4550         	cmp	r0, r10
    1646: d347         	blo	0x16d8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x110> @ imm = #0x8e
    1648: eba0 060a    	sub.w	r6, r0, r10
    164c: 42ae         	cmp	r6, r5
    164e: bf28         	it	hs
    1650: 462e         	movhs	r6, r5
    1652: b9a6         	cbnz	r6, 0x167e <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xb6> @ imm = #0x28
    1654: f1b9 0f02    	cmp.w	r9, #0x2
    1658: d10b         	bne	0x1672 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xaa> @ imm = #0x16
    165a: f8d4 8000    	ldr.w	r8, [r4]
    165e: f3bf 8f5f    	dmb	sy
    1662: f8c8 a00c    	str.w	r10, [r8, #0xc]
    1666: f3bf 8f5f    	dmb	sy
    166a: 7b20         	ldrb	r0, [r4, #0xc]
    166c: 2800         	cmp	r0, #0x0
    166e: d0bc         	beq	0x15ea <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x22> @ imm = #-0x88
    1670: e028         	b	0x16c4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xfc> @ imm = #0x50
    1672: f1b9 0f01    	cmp.w	r9, #0x1
    1676: d123         	bne	0x16c0 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xf8> @ imm = #0x46
    1678: 2001         	movs	r0, #0x1
    167a: 2600         	movs	r6, #0x0
    167c: 7320         	strb	r0, [r4, #0xc]
    167e: f8d4 8000    	ldr.w	r8, [r4]
    1682: 4693         	mov	r11, r2
    1684: 4611         	mov	r1, r2
    1686: 4632         	mov	r2, r6
    1688: f8d8 0004    	ldr.w	r0, [r8, #0x4]
    168c: 4450         	add	r0, r10
    168e: f000 f957    	bl	0x1940 <__aeabi_memcpy> @ imm = #0x2ae
    1692: eb1a 0006    	adds.w	r0, r10, r6
    1696: d22b         	bhs	0x16f0 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x128> @ imm = #0x56
    1698: 68a1         	ldr	r1, [r4, #0x8]
    169a: 6060         	str	r0, [r4, #0x4]
    169c: 1989         	adds	r1, r1, r6
    169e: d221         	bhs	0x16e4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x11c> @ imm = #0x42
    16a0: f8d8 2008    	ldr.w	r2, [r8, #0x8]
    16a4: f04f 0c00    	mov.w	r12, #0x0
    16a8: 60a1         	str	r1, [r4, #0x8]
    16aa: 4290         	cmp	r0, r2
    16ac: bf28         	it	hs
    16ae: f8c4 c004    	strhs.w	r12, [r4, #0x4]
    16b2: 7b20         	ldrb	r0, [r4, #0xc]
    16b4: 465a         	mov	r2, r11
    16b6: b928         	cbnz	r0, 0x16c4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xfc> @ imm = #0xa
    16b8: 4432         	add	r2, r6
    16ba: 1bad         	subs	r5, r5, r6
    16bc: d195         	bne	0x15ea <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0x22> @ imm = #-0xd6
    16be: e001         	b	0x16c4 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a+0xfc> @ imm = #0x2
    16c0: 2002         	movs	r0, #0x2
    16c2: 7320         	strb	r0, [r4, #0xc]
    16c4: b001         	add	sp, #0x4
    16c6: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    16ca: bdf0         	pop	{r4, r5, r6, r7, pc}
    16cc: f641 60cc    	movw	r0, #0x1ecc
    16d0: f2c0 0000    	movt	r0, #0x0
    16d4: f7ff fdef    	bl	0x12b6 <core::panicking::panic_const::panic_const_sub_overflow::hbd7cb92eb2247a93> @ imm = #-0x422
    16d8: f641 60dc    	movw	r0, #0x1edc
    16dc: f2c0 0000    	movt	r0, #0x0
    16e0: f7ff fde9    	bl	0x12b6 <core::panicking::panic_const::panic_const_sub_overflow::hbd7cb92eb2247a93> @ imm = #-0x42e
    16e4: f641 60bc    	movw	r0, #0x1ebc
    16e8: f2c0 0000    	movt	r0, #0x0
    16ec: f7ff fdd0    	bl	0x1290 <core::panicking::panic_const::panic_const_add_overflow::h42653ed21a4ce704> @ imm = #-0x460
    16f0: f641 60ac    	movw	r0, #0x1eac
    16f4: f2c0 0000    	movt	r0, #0x0
    16f8: f7ff fdca    	bl	0x1290 <core::panicking::panic_const::panic_const_add_overflow::h42653ed21a4ce704> @ imm = #-0x46c

000016fc <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd>:
    16fc: b5f0         	push	{r4, r5, r6, r7, lr}
    16fe: af03         	add	r7, sp, #0xc
    1700: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1704: b08b         	sub	sp, #0x2c
    1706: f240 4b30    	movw	r11, #0x430
    170a: f3ef 8810    	mrs	r8, primask
    170e: b672         	cpsid i
    1710: 4681         	mov	r9, r0
    1712: f2c2 0b00    	movt	r11, #0x2000
    1716: f8db 0004    	ldr.w	r0, [r11, #0x4]
    171a: 2800         	cmp	r0, #0x0
    171c: f040 8084    	bne.w	0x1828 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x12c> @ imm = #0x108
    1720: f04f 30ff    	mov.w	r0, #0xffffffff
    1724: f8cb 0004    	str.w	r0, [r11, #0x4]
    1728: f8db 0008    	ldr.w	r0, [r11, #0x8]
    172c: 2800         	cmp	r0, #0x0
    172e: d060         	beq	0x17f2 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0xf6> @ imm = #0xc0
    1730: f8db 000c    	ldr.w	r0, [r11, #0xc]
    1734: 68c1         	ldr	r1, [r0, #0xc]
    1736: f3bf 8f5f    	dmb	sy
    173a: 6902         	ldr	r2, [r0, #0x10]
    173c: f3bf 8f5f    	dmb	sy
    1740: 6883         	ldr	r3, [r0, #0x8]
    1742: 4299         	cmp	r1, r3
    1744: bf38         	it	lo
    1746: 429a         	cmplo	r2, r3
    1748: d30a         	blo	0x1760 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x64> @ imm = #0x14
    174a: 2100         	movs	r1, #0x0
    174c: f3bf 8f5f    	dmb	sy
    1750: 60c1         	str	r1, [r0, #0xc]
    1752: f3bf 8f5f    	dmb	sy
    1756: f3bf 8f5f    	dmb	sy
    175a: 6101         	str	r1, [r0, #0x10]
    175c: f3bf 8f5f    	dmb	sy
    1760: f04f 0a00    	mov.w	r10, #0x0
    1764: 9007         	str	r0, [sp, #0x1c]
    1766: e9cd 1a08    	strd	r1, r10, [sp, #32]
    176a: f89b 1010    	ldrb.w	r1, [r11, #0x10]
    176e: f88d a028    	strb.w	r10, [sp, #0x28]
    1772: b1b1         	cbz	r1, 0x17a2 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0xa6> @ imm = #0x2c
    1774: f8db 000c    	ldr.w	r0, [r11, #0xc]
    1778: f243 01ff    	movw	r1, #0x30ff
    177c: 466a         	mov	r2, sp
    177e: 2302         	movs	r3, #0x2
    1780: 6940         	ldr	r0, [r0, #0x14]
    1782: f3bf 8f5f    	dmb	sy
    1786: f8ad 1000    	strh.w	r1, [sp]
    178a: f000 0003    	and	r0, r0, #0x3
    178e: 3802         	subs	r0, #0x2
    1790: fab0 f080    	clz	r0, r0
    1794: 0940         	lsrs	r0, r0, #0x5
    1796: 0041         	lsls	r1, r0, #0x1
    1798: a807         	add	r0, sp, #0x1c
    179a: f7ff ff15    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #-0x1d6
    179e: f88b a010    	strb.w	r10, [r11, #0x10]
    17a2: ab07         	add	r3, sp, #0x1c
    17a4: f10b 0610    	add.w	r6, r11, #0x10
    17a8: f817 4c2d    	ldrb	r4, [r7, #-45]
    17ac: cb0f         	ldm	r3, {r0, r1, r2, r3}
    17ae: f837 5c2f    	ldrh	r5, [r7, #-47]
    17b2: e9cd 6000    	strd	r6, r0, [sp]
    17b6: a802         	add	r0, sp, #0x8
    17b8: c00e         	stm	r0!, {r1, r2, r3}
    17ba: f641 612c    	movw	r1, #0x1e2c
    17be: f2c0 0100    	movt	r1, #0x0
    17c2: f8d9 0004    	ldr.w	r0, [r9, #0x4]
    17c6: 464a         	mov	r2, r9
    17c8: f88d a014    	strb.w	r10, [sp, #0x14]
    17cc: 2801         	cmp	r0, #0x1
    17ce: f8ad 5015    	strh.w	r5, [sp, #0x15]
    17d2: f88d 4017    	strb.w	r4, [sp, #0x17]
    17d6: bf18         	it	ne
    17d8: 2800         	cmpne	r0, #0x0
    17da: 4668         	mov	r0, sp
    17dc: f7ff fc73    	bl	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x71a
    17e0: f89d 0010    	ldrb.w	r0, [sp, #0x10]
    17e4: 2802         	cmp	r0, #0x2
    17e6: d10b         	bne	0x1800 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x104> @ imm = #0x16
    17e8: 9800         	ldr	r0, [sp]
    17ea: f89d 1014    	ldrb.w	r1, [sp, #0x14]
    17ee: 7001         	strb	r1, [r0]
    17f0: e00d         	b	0x180e <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x112> @ imm = #0x1a
    17f2: 2000         	movs	r0, #0x0
    17f4: f8cb 0004    	str.w	r0, [r11, #0x4]
    17f8: ea5f 70c8    	lsls.w	r0, r8, #0x1f
    17fc: d00f         	beq	0x181e <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x122> @ imm = #0x1e
    17fe: e00f         	b	0x1820 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x124> @ imm = #0x1e
    1800: e9dd 0101    	ldrd	r0, r1, [sp, #4]
    1804: f3bf 8f5f    	dmb	sy
    1808: 60c1         	str	r1, [r0, #0xc]
    180a: f3bf 8f5f    	dmb	sy
    180e: f8db 0004    	ldr.w	r0, [r11, #0x4]
    1812: 3001         	adds	r0, #0x1
    1814: f8cb 0004    	str.w	r0, [r11, #0x4]
    1818: ea5f 70c8    	lsls.w	r0, r8, #0x1f
    181c: d100         	bne	0x1820 <rtt_target::print::print_impl::write_fmt::h2b350827e867a1cd+0x124> @ imm = #0x0
    181e: b662         	cpsie i
    1820: b00b         	add	sp, #0x2c
    1822: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1826: bdf0         	pop	{r4, r5, r6, r7, pc}
    1828: f641 7064    	movw	r0, #0x1f64
    182c: f2c0 0000    	movt	r0, #0x0
    1830: f7ff fd14    	bl	0x125c <core::cell::panic_already_borrowed::hac03a74565052f3c> @ imm = #-0x5d8

00001834 <core::ptr::drop_in_place<rtt_target::TerminalWriter>::h3550885dc7f87738>:
    1834: 7c01         	ldrb	r1, [r0, #0x10]
    1836: 2902         	cmp	r1, #0x2
    1838: bf01         	itttt	eq
    183a: 6801         	ldreq	r1, [r0]
    183c: 7d00         	ldrbeq	r0, [r0, #0x14]
    183e: 7008         	strbeq	r0, [r1]
    1840: 4770         	bxeq	lr
    1842: e9d0 1201    	ldrd	r1, r2, [r0, #4]
    1846: f3bf 8f5f    	dmb	sy
    184a: 60ca         	str	r2, [r1, #0xc]
    184c: 2102         	movs	r1, #0x2
    184e: f3bf 8f5f    	dmb	sy
    1852: 7401         	strb	r1, [r0, #0x10]
    1854: 4770         	bx	lr

00001856 <<rtt_target::TerminalWriter as core::fmt::Write>::write_str::hfcf377aaadadeea7>:
    1856: b580         	push	{r7, lr}
    1858: 466f         	mov	r7, sp
    185a: 4694         	mov	r12, r2
    185c: 460a         	mov	r2, r1
    185e: f850 1f04    	ldr	r1, [r0, #4]!
    1862: f641 7374    	movw	r3, #0x1f74
    1866: f2c0 0300    	movt	r3, #0x0
    186a: 6949         	ldr	r1, [r1, #0x14]
    186c: f001 0103    	and	r1, r1, #0x3
    1870: f853 1021    	ldr.w	r1, [r3, r1, lsl #2]
    1874: 4663         	mov	r3, r12
    1876: f3bf 8f5f    	dmb	sy
    187a: f7ff fea5    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #-0x2b6
    187e: 2000         	movs	r0, #0x0
    1880: bd80         	pop	{r7, pc}

00001882 <core::fmt::Write::write_char::h145a6bc931385b89>:
    1882: b580         	push	{r7, lr}
    1884: 466f         	mov	r7, sp
    1886: b082         	sub	sp, #0x8
    1888: 2200         	movs	r2, #0x0
    188a: 2980         	cmp	r1, #0x80
    188c: 9201         	str	r2, [sp, #0x4]
    188e: d203         	bhs	0x1898 <core::fmt::Write::write_char::h145a6bc931385b89+0x16> @ imm = #0x6
    1890: 2301         	movs	r3, #0x1
    1892: f88d 1004    	strb.w	r1, [sp, #0x4]
    1896: e035         	b	0x1904 <core::fmt::Write::write_char::h145a6bc931385b89+0x82> @ imm = #0x6a
    1898: f5b1 6f00    	cmp.w	r1, #0x800
    189c: d20b         	bhs	0x18b6 <core::fmt::Write::write_char::h145a6bc931385b89+0x34> @ imm = #0x16
    189e: 2302         	movs	r3, #0x2
    18a0: 460a         	mov	r2, r1
    18a2: f363 129f    	bfi	r2, r3, #6, #26
    18a6: f88d 2005    	strb.w	r2, [sp, #0x5]
    18aa: 22c0         	movs	r2, #0xc0
    18ac: ea42 1191    	orr.w	r1, r2, r1, lsr #6
    18b0: f88d 1004    	strb.w	r1, [sp, #0x4]
    18b4: e026         	b	0x1904 <core::fmt::Write::write_char::h145a6bc931385b89+0x82> @ imm = #0x4c
    18b6: 2202         	movs	r2, #0x2
    18b8: 460b         	mov	r3, r1
    18ba: f362 139f    	bfi	r3, r2, #6, #26
    18be: f5b1 3f80    	cmp.w	r1, #0x10000
    18c2: d20d         	bhs	0x18e0 <core::fmt::Write::write_char::h145a6bc931385b89+0x5e> @ imm = #0x1a
    18c4: f88d 3006    	strb.w	r3, [sp, #0x6]
    18c8: 098b         	lsrs	r3, r1, #0x6
    18ca: f362 139f    	bfi	r3, r2, #6, #26
    18ce: f88d 3005    	strb.w	r3, [sp, #0x5]
    18d2: 22e0         	movs	r2, #0xe0
    18d4: ea42 3111    	orr.w	r1, r2, r1, lsr #12
    18d8: f88d 1004    	strb.w	r1, [sp, #0x4]
    18dc: 2303         	movs	r3, #0x3
    18de: e011         	b	0x1904 <core::fmt::Write::write_char::h145a6bc931385b89+0x82> @ imm = #0x22
    18e0: f88d 3007    	strb.w	r3, [sp, #0x7]
    18e4: 098b         	lsrs	r3, r1, #0x6
    18e6: f362 139f    	bfi	r3, r2, #6, #26
    18ea: f88d 3006    	strb.w	r3, [sp, #0x6]
    18ee: 0b0b         	lsrs	r3, r1, #0xc
    18f0: f362 139f    	bfi	r3, r2, #6, #26
    18f4: f88d 3005    	strb.w	r3, [sp, #0x5]
    18f8: 22f0         	movs	r2, #0xf0
    18fa: ea42 4191    	orr.w	r1, r2, r1, lsr #18
    18fe: f88d 1004    	strb.w	r1, [sp, #0x4]
    1902: 2304         	movs	r3, #0x4
    1904: f850 1f04    	ldr	r1, [r0, #4]!
    1908: f641 7274    	movw	r2, #0x1f74
    190c: f2c0 0200    	movt	r2, #0x0
    1910: 6949         	ldr	r1, [r1, #0x14]
    1912: f3bf 8f5f    	dmb	sy
    1916: f001 0103    	and	r1, r1, #0x3
    191a: f852 1021    	ldr.w	r1, [r2, r1, lsl #2]
    191e: aa01         	add	r2, sp, #0x4
    1920: f7ff fe52    	bl	0x15c8 <rtt_target::rtt::RttWriter::write_with_mode::h53dfdcaaee12614a> @ imm = #-0x35c
    1924: 2000         	movs	r0, #0x0
    1926: b002         	add	sp, #0x8
    1928: bd80         	pop	{r7, pc}

0000192a <core::fmt::Write::write_fmt::haff5e0fd0a3852b6>:
    192a: 460a         	mov	r2, r1
    192c: 6849         	ldr	r1, [r1, #0x4]
    192e: 2901         	cmp	r1, #0x1
    1930: bf18         	it	ne
    1932: 2900         	cmpne	r1, #0x0
    1934: f641 612c    	movw	r1, #0x1e2c
    1938: f2c0 0100    	movt	r1, #0x0
    193c: f7ff bbc3    	b.w	0x10c6 <core::fmt::write::ha761f43e1c47d693> @ imm = #-0x87a

00001940 <__aeabi_memcpy>:
    1940: f000 b800    	b.w	0x1944 <compiler_builtins::mem::memcpy::haed005eb0af6ee20> @ imm = #0x0

00001944 <compiler_builtins::mem::memcpy::haed005eb0af6ee20>:
    1944: b5f0         	push	{r4, r5, r6, r7, lr}
    1946: af03         	add	r7, sp, #0xc
    1948: e92d 0700    	push.w	{r8, r9, r10}
    194c: 2a10         	cmp	r2, #0x10
    194e: d31e         	blo	0x198e <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x4a> @ imm = #0x3c
    1950: 4243         	rsbs	r3, r0, #0
    1952: f003 0803    	and	r8, r3, #0x3
    1956: eb00 0308    	add.w	r3, r0, r8
    195a: 4283         	cmp	r3, r0
    195c: d933         	bls	0x19c6 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x82> @ imm = #0x66
    195e: f1a8 0c01    	sub.w	r12, r8, #0x1
    1962: f1b8 0f00    	cmp.w	r8, #0x0
    1966: 4606         	mov	r6, r0
    1968: 460d         	mov	r5, r1
    196a: d01a         	beq	0x19a2 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x5e> @ imm = #0x34
    196c: 460d         	mov	r5, r1
    196e: 4606         	mov	r6, r0
    1970: f815 eb01    	ldrb	lr, [r5], #1
    1974: f1b8 0f01    	cmp.w	r8, #0x1
    1978: f806 eb01    	strb	lr, [r6], #1
    197c: d011         	beq	0x19a2 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x5e> @ imm = #0x22
    197e: 784e         	ldrb	r6, [r1, #0x1]
    1980: f1b8 0f02    	cmp.w	r8, #0x2
    1984: 7046         	strb	r6, [r0, #0x1]
    1986: d108         	bne	0x199a <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x56> @ imm = #0x10
    1988: 1c8d         	adds	r5, r1, #0x2
    198a: 1c86         	adds	r6, r0, #0x2
    198c: e009         	b	0x19a2 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x5e> @ imm = #0x12
    198e: 4684         	mov	r12, r0
    1990: eb0c 0302    	add.w	r3, r12, r2
    1994: 459c         	cmp	r12, r3
    1996: d33e         	blo	0x1a16 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xd2> @ imm = #0x7c
    1998: e06a         	b	0x1a70 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x12c> @ imm = #0xd4
    199a: 788e         	ldrb	r6, [r1, #0x2]
    199c: 1ccd         	adds	r5, r1, #0x3
    199e: 7086         	strb	r6, [r0, #0x2]
    19a0: 1cc6         	adds	r6, r0, #0x3
    19a2: f1bc 0f03    	cmp.w	r12, #0x3
    19a6: d30e         	blo	0x19c6 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x82> @ imm = #0x1c
    19a8: 3d04         	subs	r5, #0x4
    19aa: 3e04         	subs	r6, #0x4
    19ac: f815 4f04    	ldrb	r4, [r5, #4]!
    19b0: f806 4f04    	strb	r4, [r6, #4]!
    19b4: 786c         	ldrb	r4, [r5, #0x1]
    19b6: 7074         	strb	r4, [r6, #0x1]
    19b8: 78ac         	ldrb	r4, [r5, #0x2]
    19ba: 70b4         	strb	r4, [r6, #0x2]
    19bc: 78ec         	ldrb	r4, [r5, #0x3]
    19be: 70f4         	strb	r4, [r6, #0x3]
    19c0: 1d34         	adds	r4, r6, #0x4
    19c2: 429c         	cmp	r4, r3
    19c4: d1f2         	bne	0x19ac <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x68> @ imm = #-0x1c
    19c6: eba2 0e08    	sub.w	lr, r2, r8
    19ca: 4441         	add	r1, r8
    19cc: f02e 0203    	bic	r2, lr, #0x3
    19d0: eb03 0c02    	add.w	r12, r3, r2
    19d4: 078c         	lsls	r4, r1, #0x1e
    19d6: d158         	bne	0x1a8a <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x146> @ imm = #0xb0
    19d8: 4563         	cmp	r3, r12
    19da: d215         	bhs	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #0x2a
    19dc: 460c         	mov	r4, r1
    19de: 6825         	ldr	r5, [r4]
    19e0: f843 5b04    	str	r5, [r3], #4
    19e4: 4563         	cmp	r3, r12
    19e6: d20f         	bhs	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #0x1e
    19e8: 6865         	ldr	r5, [r4, #0x4]
    19ea: f843 5b04    	str	r5, [r3], #4
    19ee: 4563         	cmp	r3, r12
    19f0: bf3e         	ittt	lo
    19f2: 68a5         	ldrlo	r5, [r4, #0x8]
    19f4: f843 5b04    	strlo	r5, [r3], #4
    19f8: 4563         	cmplo	r3, r12
    19fa: d205         	bhs	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #0xa
    19fc: 68e5         	ldr	r5, [r4, #0xc]
    19fe: 3410         	adds	r4, #0x10
    1a00: f843 5b04    	str	r5, [r3], #4
    1a04: 4563         	cmp	r3, r12
    1a06: d3ea         	blo	0x19de <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x9a> @ imm = #-0x2c
    1a08: 4411         	add	r1, r2
    1a0a: f00e 0203    	and	r2, lr, #0x3
    1a0e: eb0c 0302    	add.w	r3, r12, r2
    1a12: 459c         	cmp	r12, r3
    1a14: d22c         	bhs	0x1a70 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x12c> @ imm = #0x58
    1a16: f012 0403    	ands	r4, r2, #0x3
    1a1a: f1a2 0e01    	sub.w	lr, r2, #0x1
    1a1e: d013         	beq	0x1a48 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x104> @ imm = #0x26
    1a20: 460e         	mov	r6, r1
    1a22: 4665         	mov	r5, r12
    1a24: f816 2b01    	ldrb	r2, [r6], #1
    1a28: 2c01         	cmp	r4, #0x1
    1a2a: f805 2b01    	strb	r2, [r5], #1
    1a2e: d00d         	beq	0x1a4c <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x108> @ imm = #0x1a
    1a30: 784a         	ldrb	r2, [r1, #0x1]
    1a32: 2c02         	cmp	r4, #0x2
    1a34: f88c 2001    	strb.w	r2, [r12, #0x1]
    1a38: d11d         	bne	0x1a76 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x132> @ imm = #0x3a
    1a3a: 1c8e         	adds	r6, r1, #0x2
    1a3c: f10c 0502    	add.w	r5, r12, #0x2
    1a40: f1be 0f03    	cmp.w	lr, #0x3
    1a44: d205         	bhs	0x1a52 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x10e> @ imm = #0xa
    1a46: e013         	b	0x1a70 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x12c> @ imm = #0x26
    1a48: 4665         	mov	r5, r12
    1a4a: 460e         	mov	r6, r1
    1a4c: f1be 0f03    	cmp.w	lr, #0x3
    1a50: d30e         	blo	0x1a70 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x12c> @ imm = #0x1c
    1a52: 1f31         	subs	r1, r6, #0x4
    1a54: 1f2a         	subs	r2, r5, #0x4
    1a56: f811 6f04    	ldrb	r6, [r1, #4]!
    1a5a: f802 6f04    	strb	r6, [r2, #4]!
    1a5e: 784e         	ldrb	r6, [r1, #0x1]
    1a60: 7056         	strb	r6, [r2, #0x1]
    1a62: 788e         	ldrb	r6, [r1, #0x2]
    1a64: 7096         	strb	r6, [r2, #0x2]
    1a66: 78ce         	ldrb	r6, [r1, #0x3]
    1a68: 70d6         	strb	r6, [r2, #0x3]
    1a6a: 1d16         	adds	r6, r2, #0x4
    1a6c: 429e         	cmp	r6, r3
    1a6e: d1f2         	bne	0x1a56 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x112> @ imm = #-0x1c
    1a70: e8bd 0700    	pop.w	{r8, r9, r10}
    1a74: bdf0         	pop	{r4, r5, r6, r7, pc}
    1a76: 1cce         	adds	r6, r1, #0x3
    1a78: f10c 0503    	add.w	r5, r12, #0x3
    1a7c: 788a         	ldrb	r2, [r1, #0x2]
    1a7e: f88c 2002    	strb.w	r2, [r12, #0x2]
    1a82: f1be 0f03    	cmp.w	lr, #0x3
    1a86: d2e4         	bhs	0x1a52 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x10e> @ imm = #-0x38
    1a88: e7f2         	b	0x1a70 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x12c> @ imm = #-0x1c
    1a8a: 4563         	cmp	r3, r12
    1a8c: d2bc         	bhs	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #-0x88
    1a8e: 2418         	movs	r4, #0x18
    1a90: f021 0603    	bic	r6, r1, #0x3
    1a94: ea04 08c1    	and.w	r8, r4, r1, lsl #3
    1a98: 00cc         	lsls	r4, r1, #0x3
    1a9a: f1c4 0900    	rsb.w	r9, r4, #0x0
    1a9e: 6834         	ldr	r4, [r6]
    1aa0: f106 0508    	add.w	r5, r6, #0x8
    1aa4: f009 0918    	and	r9, r9, #0x18
    1aa8: f855 6c04    	ldr	r6, [r5, #-4]
    1aac: fa24 fa08    	lsr.w	r10, r4, r8
    1ab0: fa06 f409    	lsl.w	r4, r6, r9
    1ab4: ea44 040a    	orr.w	r4, r4, r10
    1ab8: f843 4b04    	str	r4, [r3], #4
    1abc: 4563         	cmp	r3, r12
    1abe: d2a3         	bhs	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #-0xba
    1ac0: 682c         	ldr	r4, [r5]
    1ac2: fa26 fa08    	lsr.w	r10, r6, r8
    1ac6: fa04 f609    	lsl.w	r6, r4, r9
    1aca: ea46 060a    	orr.w	r6, r6, r10
    1ace: f843 6b04    	str	r6, [r3], #4
    1ad2: 4563         	cmp	r3, r12
    1ad4: bf3f         	itttt	lo
    1ad6: 686e         	ldrlo	r6, [r5, #0x4]
    1ad8: fa24 fa08    	lsrlo.w	r10, r4, r8
    1adc: fa06 f409    	lsllo.w	r4, r6, r9
    1ae0: ea44 040a    	orrlo.w	r4, r4, r10
    1ae4: bf3c         	itt	lo
    1ae6: f843 4b04    	strlo	r4, [r3], #4
    1aea: 4563         	cmplo	r3, r12
    1aec: f4bf af8c    	bhs.w	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #-0xe8
    1af0: 68ac         	ldr	r4, [r5, #0x8]
    1af2: fa26 fa08    	lsr.w	r10, r6, r8
    1af6: 3510         	adds	r5, #0x10
    1af8: fa04 f609    	lsl.w	r6, r4, r9
    1afc: ea46 060a    	orr.w	r6, r6, r10
    1b00: f843 6b04    	str	r6, [r3], #4
    1b04: 4563         	cmp	r3, r12
    1b06: d3cf         	blo	0x1aa8 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0x164> @ imm = #-0x62
    1b08: e77e         	b	0x1a08 <compiler_builtins::mem::memcpy::haed005eb0af6ee20+0xc4> @ imm = #-0x104

00001b0a <__aeabi_memclr4>:
    1b0a: b580         	push	{r7, lr}
    1b0c: 466f         	mov	r7, sp
    1b0e: 2904         	cmp	r1, #0x4
    1b10: d314         	blo	0x1b3c <__aeabi_memclr4+0x32> @ imm = #0x28
    1b12: f1a1 0c04    	sub.w	r12, r1, #0x4
    1b16: 2201         	movs	r2, #0x1
    1b18: eb02 029c    	add.w	r2, r2, r12, lsr #2
    1b1c: f012 0303    	ands	r3, r2, #0x3
    1b20: d00e         	beq	0x1b40 <__aeabi_memclr4+0x36> @ imm = #0x1c
    1b22: f04f 0e00    	mov.w	lr, #0x0
    1b26: 4602         	mov	r2, r0
    1b28: f842 eb04    	str	lr, [r2], #4
    1b2c: 2b01         	cmp	r3, #0x1
    1b2e: d10b         	bne	0x1b48 <__aeabi_memclr4+0x3e> @ imm = #0x16
    1b30: 4610         	mov	r0, r2
    1b32: 4661         	mov	r1, r12
    1b34: f1bc 0f0c    	cmp.w	r12, #0xc
    1b38: d219         	bhs	0x1b6e <__aeabi_memclr4+0x64> @ imm = #0x32
    1b3a: e022         	b	0x1b82 <__aeabi_memclr4+0x78> @ imm = #0x44
    1b3c: 4602         	mov	r2, r0
    1b3e: e020         	b	0x1b82 <__aeabi_memclr4+0x78> @ imm = #0x40
    1b40: f1bc 0f0c    	cmp.w	r12, #0xc
    1b44: d213         	bhs	0x1b6e <__aeabi_memclr4+0x64> @ imm = #0x26
    1b46: e01c         	b	0x1b82 <__aeabi_memclr4+0x78> @ imm = #0x38
    1b48: 2b02         	cmp	r3, #0x2
    1b4a: f8c0 e004    	str.w	lr, [r0, #0x4]
    1b4e: d106         	bne	0x1b5e <__aeabi_memclr4+0x54> @ imm = #0xc
    1b50: 3908         	subs	r1, #0x8
    1b52: 3008         	adds	r0, #0x8
    1b54: 4602         	mov	r2, r0
    1b56: f1bc 0f0c    	cmp.w	r12, #0xc
    1b5a: d208         	bhs	0x1b6e <__aeabi_memclr4+0x64> @ imm = #0x10
    1b5c: e011         	b	0x1b82 <__aeabi_memclr4+0x78> @ imm = #0x22
    1b5e: 2200         	movs	r2, #0x0
    1b60: 390c         	subs	r1, #0xc
    1b62: 6082         	str	r2, [r0, #0x8]
    1b64: 300c         	adds	r0, #0xc
    1b66: 4602         	mov	r2, r0
    1b68: f1bc 0f0c    	cmp.w	r12, #0xc
    1b6c: d309         	blo	0x1b82 <__aeabi_memclr4+0x78> @ imm = #0x12
    1b6e: 2300         	movs	r3, #0x0
    1b70: 4602         	mov	r2, r0
    1b72: 3910         	subs	r1, #0x10
    1b74: e9c2 3300    	strd	r3, r3, [r2]
    1b78: e9c2 3302    	strd	r3, r3, [r2, #8]
    1b7c: 3210         	adds	r2, #0x10
    1b7e: 2903         	cmp	r1, #0x3
    1b80: d8f7         	bhi	0x1b72 <__aeabi_memclr4+0x68> @ imm = #-0x12
    1b82: 1850         	adds	r0, r2, r1
    1b84: 4282         	cmp	r2, r0
    1b86: d222         	bhs	0x1bce <__aeabi_memclr4+0xc4> @ imm = #0x44
    1b88: f011 0c03    	ands	r12, r1, #0x3
    1b8c: f1a1 0101    	sub.w	r1, r1, #0x1
    1b90: d00e         	beq	0x1bb0 <__aeabi_memclr4+0xa6> @ imm = #0x1c
    1b92: f04f 0e00    	mov.w	lr, #0x0
    1b96: 4613         	mov	r3, r2
    1b98: f803 eb01    	strb	lr, [r3], #1
    1b9c: f1bc 0f01    	cmp.w	r12, #0x1
    1ba0: d00b         	beq	0x1bba <__aeabi_memclr4+0xb0> @ imm = #0x16
    1ba2: f1bc 0f02    	cmp.w	r12, #0x2
    1ba6: f882 e001    	strb.w	lr, [r2, #0x1]
    1baa: d103         	bne	0x1bb4 <__aeabi_memclr4+0xaa> @ imm = #0x6
    1bac: 1c93         	adds	r3, r2, #0x2
    1bae: e004         	b	0x1bba <__aeabi_memclr4+0xb0> @ imm = #0x8
    1bb0: 4613         	mov	r3, r2
    1bb2: e002         	b	0x1bba <__aeabi_memclr4+0xb0> @ imm = #0x4
    1bb4: 2300         	movs	r3, #0x0
    1bb6: 7093         	strb	r3, [r2, #0x2]
    1bb8: 1cd3         	adds	r3, r2, #0x3
    1bba: 2903         	cmp	r1, #0x3
    1bbc: bf38         	it	lo
    1bbe: bd80         	poplo	{r7, pc}
    1bc0: 1f19         	subs	r1, r3, #0x4
    1bc2: 2200         	movs	r2, #0x0
    1bc4: f841 2f04    	str	r2, [r1, #4]!
    1bc8: 1d0b         	adds	r3, r1, #0x4
    1bca: 4283         	cmp	r3, r0
    1bcc: d1fa         	bne	0x1bc4 <__aeabi_memclr4+0xba> @ imm = #-0xc
    1bce: bd80         	pop	{r7, pc}

00001bd0 <HardFault_>:
    1bd0: e7fe         	b	0x1bd0 <HardFault_>     @ imm = #-0x4
    1bd2: d4d4         	bmi	0x1b7e <__aeabi_memclr4+0x74> @ imm = #-0x58
