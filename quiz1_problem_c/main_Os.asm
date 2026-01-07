
test_Os.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	507000ef          	jal	10dc4 <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	29d010ef          	jal	11b68 <_exit>

000100d0 <main>:
   100d0:	4501                	li	a0,0
   100d2:	8082                	ret

000100d4 <register_fini>:
   100d4:	00000793          	li	a5,0
   100d8:	c791                	beqz	a5,100e4 <register_fini+0x10>
   100da:	00001517          	auipc	a0,0x1
   100de:	b6050513          	addi	a0,a0,-1184 # 10c3a <__libc_fini_array>
   100e2:	a9e9                	j	105bc <atexit>
   100e4:	8082                	ret

000100e6 <_start>:
   100e6:	00002197          	auipc	gp,0x2
   100ea:	72a18193          	addi	gp,gp,1834 # 12810 <__global_pointer$>
   100ee:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   100f2:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   100f6:	8e09                	sub	a2,a2,a0
   100f8:	4581                	li	a1,0
   100fa:	391000ef          	jal	10c8a <memset>
   100fe:	00001517          	auipc	a0,0x1
   10102:	b3c50513          	addi	a0,a0,-1220 # 10c3a <__libc_fini_array>
   10106:	295d                	jal	105bc <atexit>
   10108:	2c9000ef          	jal	10bd0 <__libc_init_array>
   1010c:	4502                	lw	a0,0(sp)
   1010e:	004c                	addi	a1,sp,4
   10110:	4601                	li	a2,0
   10112:	3f7d                	jal	100d0 <main>
   10114:	b745                	j	100b4 <exit>

00010116 <__do_global_dtors_aux>:
   10116:	d4c1c783          	lbu	a5,-692(gp) # 1255c <completed.1>
   1011a:	eb85                	bnez	a5,1014a <__do_global_dtors_aux+0x34>
   1011c:	00000793          	li	a5,0
   10120:	c38d                	beqz	a5,10142 <__do_global_dtors_aux+0x2c>
   10122:	1141                	addi	sp,sp,-16
   10124:	00002517          	auipc	a0,0x2
   10128:	b3850513          	addi	a0,a0,-1224 # 11c5c <__EH_FRAME_BEGIN__>
   1012c:	c606                	sw	ra,12(sp)
   1012e:	00000097          	auipc	ra,0x0
   10132:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10136:	40b2                	lw	ra,12(sp)
   10138:	4785                	li	a5,1
   1013a:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   1013e:	0141                	addi	sp,sp,16
   10140:	8082                	ret
   10142:	4785                	li	a5,1
   10144:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   10148:	8082                	ret
   1014a:	8082                	ret

0001014c <frame_dummy>:
   1014c:	00000793          	li	a5,0
   10150:	cb99                	beqz	a5,10166 <frame_dummy+0x1a>
   10152:	d8c18593          	addi	a1,gp,-628 # 1259c <object.0>
   10156:	00002517          	auipc	a0,0x2
   1015a:	b0650513          	addi	a0,a0,-1274 # 11c5c <__EH_FRAME_BEGIN__>
   1015e:	00000317          	auipc	t1,0x0
   10162:	00000067          	jr	zero # 0 <exit-0x100b4>
   10166:	8082                	ret

00010168 <bf16_isnan>:
   10168:	6721                	lui	a4,0x8
   1016a:	f8070713          	addi	a4,a4,-128 # 7f80 <exit-0x8134>
   1016e:	01051793          	slli	a5,a0,0x10
   10172:	8d79                	and	a0,a0,a4
   10174:	83c1                	srli	a5,a5,0x10
   10176:	00e51763          	bne	a0,a4,10184 <bf16_isnan+0x1c>
   1017a:	07f7f513          	andi	a0,a5,127
   1017e:	00a03533          	snez	a0,a0
   10182:	8082                	ret
   10184:	4501                	li	a0,0
   10186:	8082                	ret

00010188 <bf16_isinf>:
   10188:	0546                	slli	a0,a0,0x11
   1018a:	77e1                	lui	a5,0xffff8
   1018c:	08078793          	addi	a5,a5,128 # ffff8080 <__BSS_END__+0xfffe57dc>
   10190:	8145                	srli	a0,a0,0x11
   10192:	953e                	add	a0,a0,a5
   10194:	00153513          	seqz	a0,a0
   10198:	8082                	ret

0001019a <bf16_iszero>:
   1019a:	0546                	slli	a0,a0,0x11
   1019c:	00153513          	seqz	a0,a0
   101a0:	8082                	ret

000101a2 <f32_to_bf16>:
   101a2:	872a                	mv	a4,a0
   101a4:	7f8007b7          	lui	a5,0x7f800
   101a8:	00e7f6b3          	and	a3,a5,a4
   101ac:	8141                	srli	a0,a0,0x10
   101ae:	00f68863          	beq	a3,a5,101be <f32_to_bf16+0x1c>
   101b2:	67a1                	lui	a5,0x8
   101b4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80b5>
   101b6:	8905                	andi	a0,a0,1
   101b8:	97ba                	add	a5,a5,a4
   101ba:	953e                	add	a0,a0,a5
   101bc:	8141                	srli	a0,a0,0x10
   101be:	8082                	ret

000101c0 <bf16_to_f32>:
   101c0:	0542                	slli	a0,a0,0x10
   101c2:	8082                	ret

000101c4 <bf16_add>:
   101c4:	01051813          	slli	a6,a0,0x10
   101c8:	01085813          	srli	a6,a6,0x10
   101cc:	01059513          	slli	a0,a1,0x10
   101d0:	8141                	srli	a0,a0,0x10
   101d2:	00785713          	srli	a4,a6,0x7
   101d6:	0ff77713          	zext.b	a4,a4
   101da:	00755893          	srli	a7,a0,0x7
   101de:	0ff00e13          	li	t3,255
   101e2:	00f85593          	srli	a1,a6,0xf
   101e6:	00f55313          	srli	t1,a0,0xf
   101ea:	86ba                	mv	a3,a4
   101ec:	0ff8f893          	zext.b	a7,a7
   101f0:	07f87613          	andi	a2,a6,127
   101f4:	07f57793          	andi	a5,a0,127
   101f8:	01c71963          	bne	a4,t3,1020a <bf16_add+0x46>
   101fc:	ee71                	bnez	a2,102d8 <bf16_add+0x114>
   101fe:	0ce89d63          	bne	a7,a4,102d8 <bf16_add+0x114>
   10202:	eff1                	bnez	a5,102de <bf16_add+0x11a>
   10204:	0c659663          	bne	a1,t1,102d0 <bf16_add+0x10c>
   10208:	8082                	ret
   1020a:	0dc88a63          	beq	a7,t3,102de <bf16_add+0x11a>
   1020e:	00e66e33          	or	t3,a2,a4
   10212:	0c0e0663          	beqz	t3,102de <bf16_add+0x11a>
   10216:	0117ee33          	or	t3,a5,a7
   1021a:	0a0e0f63          	beqz	t3,102d8 <bf16_add+0x114>
   1021e:	c319                	beqz	a4,10224 <bf16_add+0x60>
   10220:	08066613          	ori	a2,a2,128
   10224:	00088463          	beqz	a7,1022c <bf16_add+0x68>
   10228:	0807e793          	ori	a5,a5,128
   1022c:	41170733          	sub	a4,a4,a7
   10230:	01071e13          	slli	t3,a4,0x10
   10234:	010e5e13          	srli	t3,t3,0x10
   10238:	04e05363          	blez	a4,1027e <bf16_add+0xba>
   1023c:	48a1                	li	a7,8
   1023e:	8542                	mv	a0,a6
   10240:	08e8cf63          	blt	a7,a4,102de <bf16_add+0x11a>
   10244:	41c7d7b3          	sra	a5,a5,t3
   10248:	07c2                	slli	a5,a5,0x10
   1024a:	83c1                	srli	a5,a5,0x10
   1024c:	04659563          	bne	a1,t1,10296 <bf16_add+0xd2>
   10250:	97b2                	add	a5,a5,a2
   10252:	1007f713          	andi	a4,a5,256
   10256:	c33d                	beqz	a4,102bc <bf16_add+0xf8>
   10258:	0685                	addi	a3,a3,1
   1025a:	01069613          	slli	a2,a3,0x10
   1025e:	8241                	srli	a2,a2,0x10
   10260:	06c2                	slli	a3,a3,0x10
   10262:	0ff00713          	li	a4,255
   10266:	8385                	srli	a5,a5,0x1
   10268:	86c1                	srai	a3,a3,0x10
   1026a:	04e61963          	bne	a2,a4,102bc <bf16_add+0xf8>
   1026e:	7561                	lui	a0,0xffff8
   10270:	67a1                	lui	a5,0x8
   10272:	00a87533          	and	a0,a6,a0
   10276:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   1027a:	8d5d                	or	a0,a0,a5
   1027c:	8082                	ret
   1027e:	d779                	beqz	a4,1024c <bf16_add+0x88>
   10280:	56e1                	li	a3,-8
   10282:	04d74e63          	blt	a4,a3,102de <bf16_add+0x11a>
   10286:	40e00733          	neg	a4,a4
   1028a:	40e65633          	sra	a2,a2,a4
   1028e:	0642                	slli	a2,a2,0x10
   10290:	86c6                	mv	a3,a7
   10292:	8241                	srli	a2,a2,0x10
   10294:	bf65                	j	1024c <bf16_add+0x88>
   10296:	00f66763          	bltu	a2,a5,102a4 <bf16_add+0xe0>
   1029a:	40f607b3          	sub	a5,a2,a5
   1029e:	4501                	li	a0,0
   102a0:	eb99                	bnez	a5,102b6 <bf16_add+0xf2>
   102a2:	8082                	ret
   102a4:	8f91                	sub	a5,a5,a2
   102a6:	859a                	mv	a1,t1
   102a8:	bfdd                	j	1029e <bf16_add+0xda>
   102aa:	16fd                	addi	a3,a3,-1
   102ac:	06c2                	slli	a3,a3,0x10
   102ae:	86c1                	srai	a3,a3,0x10
   102b0:	0786                	slli	a5,a5,0x1
   102b2:	02d05563          	blez	a3,102dc <bf16_add+0x118>
   102b6:	0807f713          	andi	a4,a5,128
   102ba:	db65                	beqz	a4,102aa <bf16_add+0xe6>
   102bc:	069e                	slli	a3,a3,0x7
   102be:	05be                	slli	a1,a1,0xf
   102c0:	8dd5                	or	a1,a1,a3
   102c2:	07f7f793          	andi	a5,a5,127
   102c6:	8ddd                	or	a1,a1,a5
   102c8:	01059513          	slli	a0,a1,0x10
   102cc:	8141                	srli	a0,a0,0x10
   102ce:	8082                	ret
   102d0:	6521                	lui	a0,0x8
   102d2:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   102d6:	8082                	ret
   102d8:	8542                	mv	a0,a6
   102da:	8082                	ret
   102dc:	4501                	li	a0,0
   102de:	8082                	ret

000102e0 <bf16_sub>:
   102e0:	77e1                	lui	a5,0xffff8
   102e2:	8dbd                	xor	a1,a1,a5
   102e4:	b5c5                	j	101c4 <bf16_add>

000102e6 <bf16_mul>:
   102e6:	01051693          	slli	a3,a0,0x10
   102ea:	82c1                	srli	a3,a3,0x10
   102ec:	01059513          	slli	a0,a1,0x10
   102f0:	8141                	srli	a0,a0,0x10
   102f2:	0076d793          	srli	a5,a3,0x7
   102f6:	00755593          	srli	a1,a0,0x7
   102fa:	0ff7f793          	zext.b	a5,a5
   102fe:	0ff00893          	li	a7,255
   10302:	0ff5f593          	zext.b	a1,a1
   10306:	07f6f713          	andi	a4,a3,127
   1030a:	07f57613          	andi	a2,a0,127
   1030e:	00d54833          	xor	a6,a0,a3
   10312:	03179163          	bne	a5,a7,10334 <bf16_mul+0x4e>
   10316:	8536                	mv	a0,a3
   10318:	e715                	bnez	a4,10344 <bf16_mul+0x5e>
   1031a:	6521                	lui	a0,0x8
   1031c:	8e4d                	or	a2,a2,a1
   1031e:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10322:	c20d                	beqz	a2,10344 <bf16_mul+0x5e>
   10324:	7561                	lui	a0,0xffff8
   10326:	67a1                	lui	a5,0x8
   10328:	00a87533          	and	a0,a6,a0
   1032c:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   10330:	8d5d                	or	a0,a0,a5
   10332:	8082                	ret
   10334:	01159963          	bne	a1,a7,10346 <bf16_mul+0x60>
   10338:	e611                	bnez	a2,10344 <bf16_mul+0x5e>
   1033a:	6521                	lui	a0,0x8
   1033c:	8f5d                	or	a4,a4,a5
   1033e:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10342:	f36d                	bnez	a4,10324 <bf16_mul+0x3e>
   10344:	8082                	ret
   10346:	00f85513          	srli	a0,a6,0xf
   1034a:	e7a9                	bnez	a5,10394 <bf16_mul+0xae>
   1034c:	c745                	beqz	a4,103f4 <bf16_mul+0x10e>
   1034e:	c9b1                	beqz	a1,103a2 <bf16_mul+0xbc>
   10350:	4681                	li	a3,0
   10352:	00171793          	slli	a5,a4,0x1
   10356:	16fd                	addi	a3,a3,-1
   10358:	01079713          	slli	a4,a5,0x10
   1035c:	06c2                	slli	a3,a3,0x10
   1035e:	0807f793          	andi	a5,a5,128
   10362:	8341                	srli	a4,a4,0x10
   10364:	86c1                	srai	a3,a3,0x10
   10366:	d7f5                	beqz	a5,10352 <bf16_mul+0x6c>
   10368:	4785                	li	a5,1
   1036a:	c1b1                	beqz	a1,103ae <bf16_mul+0xc8>
   1036c:	a805                	j	1039c <bf16_mul+0xb6>
   1036e:	831d                	srli	a4,a4,0x7
   10370:	07f77713          	andi	a4,a4,127
   10374:	a0bd                	j	103e2 <bf16_mul+0xfc>
   10376:	4685                	li	a3,1
   10378:	40f687b3          	sub	a5,a3,a5
   1037c:	00f75733          	srl	a4,a4,a5
   10380:	4781                	li	a5,0
   10382:	7561                	lui	a0,0xffff8
   10384:	00a87533          	and	a0,a6,a0
   10388:	8d59                	or	a0,a0,a4
   1038a:	079e                	slli	a5,a5,0x7
   1038c:	8d5d                	or	a0,a0,a5
   1038e:	0542                	slli	a0,a0,0x10
   10390:	8141                	srli	a0,a0,0x10
   10392:	8082                	ret
   10394:	c989                	beqz	a1,103a6 <bf16_mul+0xc0>
   10396:	08076713          	ori	a4,a4,128
   1039a:	4681                	li	a3,0
   1039c:	08066613          	ori	a2,a2,128
   103a0:	a01d                	j	103c6 <bf16_mul+0xe0>
   103a2:	f65d                	bnez	a2,10350 <bf16_mul+0x6a>
   103a4:	a881                	j	103f4 <bf16_mul+0x10e>
   103a6:	c639                	beqz	a2,103f4 <bf16_mul+0x10e>
   103a8:	08076713          	ori	a4,a4,128
   103ac:	4681                	li	a3,0
   103ae:	00161593          	slli	a1,a2,0x1
   103b2:	16fd                	addi	a3,a3,-1
   103b4:	01059613          	slli	a2,a1,0x10
   103b8:	06c2                	slli	a3,a3,0x10
   103ba:	0805f593          	andi	a1,a1,128
   103be:	8241                	srli	a2,a2,0x10
   103c0:	86c1                	srai	a3,a3,0x10
   103c2:	d5f5                	beqz	a1,103ae <bf16_mul+0xc8>
   103c4:	4585                	li	a1,1
   103c6:	02c70733          	mul	a4,a4,a2
   103ca:	97ae                	add	a5,a5,a1
   103cc:	f8178793          	addi	a5,a5,-127
   103d0:	97b6                	add	a5,a5,a3
   103d2:	01071693          	slli	a3,a4,0x10
   103d6:	f806dce3          	bgez	a3,1036e <bf16_mul+0x88>
   103da:	8321                	srli	a4,a4,0x8
   103dc:	07f77713          	andi	a4,a4,127
   103e0:	0785                	addi	a5,a5,1
   103e2:	0fe00693          	li	a3,254
   103e6:	f2f6cfe3          	blt	a3,a5,10324 <bf16_mul+0x3e>
   103ea:	f8f04ce3          	bgtz	a5,10382 <bf16_mul+0x9c>
   103ee:	56e9                	li	a3,-6
   103f0:	f8d7d3e3          	bge	a5,a3,10376 <bf16_mul+0x90>
   103f4:	053e                	slli	a0,a0,0xf
   103f6:	8082                	ret

000103f8 <bf16_div>:
   103f8:	05c2                	slli	a1,a1,0x10
   103fa:	81c1                	srli	a1,a1,0x10
   103fc:	0542                	slli	a0,a0,0x10
   103fe:	8141                	srli	a0,a0,0x10
   10400:	0075d613          	srli	a2,a1,0x7
   10404:	00755713          	srli	a4,a0,0x7
   10408:	00a5c833          	xor	a6,a1,a0
   1040c:	0ff67613          	zext.b	a2,a2
   10410:	0ff00693          	li	a3,255
   10414:	0ff77713          	zext.b	a4,a4
   10418:	07f57793          	andi	a5,a0,127
   1041c:	07f5f893          	andi	a7,a1,127
   10420:	00f85313          	srli	t1,a6,0xf
   10424:	00d61e63          	bne	a2,a3,10440 <bf16_div+0x48>
   10428:	852e                	mv	a0,a1
   1042a:	02089e63          	bnez	a7,10466 <bf16_div+0x6e>
   1042e:	00c71663          	bne	a4,a2,1043a <bf16_div+0x42>
   10432:	6521                	lui	a0,0x8
   10434:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10438:	c79d                	beqz	a5,10466 <bf16_div+0x6e>
   1043a:	00f31513          	slli	a0,t1,0xf
   1043e:	8082                	ret
   10440:	00c8e5b3          	or	a1,a7,a2
   10444:	ed91                	bnez	a1,10460 <bf16_div+0x68>
   10446:	6521                	lui	a0,0x8
   10448:	8fd9                	or	a5,a5,a4
   1044a:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   1044e:	cf81                	beqz	a5,10466 <bf16_div+0x6e>
   10450:	7561                	lui	a0,0xffff8
   10452:	67a1                	lui	a5,0x8
   10454:	00a87533          	and	a0,a6,a0
   10458:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   1045c:	8d5d                	or	a0,a0,a5
   1045e:	8082                	ret
   10460:	00d71463          	bne	a4,a3,10468 <bf16_div+0x70>
   10464:	d7f5                	beqz	a5,10450 <bf16_div+0x58>
   10466:	8082                	ret
   10468:	ef3d                	bnez	a4,104e6 <bf16_div+0xee>
   1046a:	dbe1                	beqz	a5,1043a <bf16_div+0x42>
   1046c:	c219                	beqz	a2,10472 <bf16_div+0x7a>
   1046e:	0808e893          	ori	a7,a7,128
   10472:	00f79693          	slli	a3,a5,0xf
   10476:	45bd                	li	a1,15
   10478:	4781                	li	a5,0
   1047a:	5e7d                	li	t3,-1
   1047c:	00b89533          	sll	a0,a7,a1
   10480:	0786                	slli	a5,a5,0x1
   10482:	00a6e563          	bltu	a3,a0,1048c <bf16_div+0x94>
   10486:	8e89                	sub	a3,a3,a0
   10488:	0017e793          	ori	a5,a5,1
   1048c:	15fd                	addi	a1,a1,-1
   1048e:	ffc597e3          	bne	a1,t3,1047c <bf16_div+0x84>
   10492:	40c706b3          	sub	a3,a4,a2
   10496:	00e03733          	snez	a4,a4
   1049a:	9736                	add	a4,a4,a3
   1049c:	07e70713          	addi	a4,a4,126
   104a0:	00163613          	seqz	a2,a2
   104a4:	01079693          	slli	a3,a5,0x10
   104a8:	9732                	add	a4,a4,a2
   104aa:	0006cb63          	bltz	a3,104c0 <bf16_div+0xc8>
   104ae:	4685                	li	a3,1
   104b0:	00e6d863          	bge	a3,a4,104c0 <bf16_div+0xc8>
   104b4:	0786                	slli	a5,a5,0x1
   104b6:	01079613          	slli	a2,a5,0x10
   104ba:	177d                	addi	a4,a4,-1
   104bc:	fe065ae3          	bgez	a2,104b0 <bf16_div+0xb8>
   104c0:	0fe00693          	li	a3,254
   104c4:	83a1                	srli	a5,a5,0x8
   104c6:	f8e6c5e3          	blt	a3,a4,10450 <bf16_div+0x58>
   104ca:	f6e058e3          	blez	a4,1043a <bf16_div+0x42>
   104ce:	07f7f513          	andi	a0,a5,127
   104d2:	071e                	slli	a4,a4,0x7
   104d4:	77e1                	lui	a5,0xffff8
   104d6:	8d59                	or	a0,a0,a4
   104d8:	00f87833          	and	a6,a6,a5
   104dc:	01056533          	or	a0,a0,a6
   104e0:	0542                	slli	a0,a0,0x10
   104e2:	8141                	srli	a0,a0,0x10
   104e4:	8082                	ret
   104e6:	0807e793          	ori	a5,a5,128
   104ea:	b749                	j	1046c <bf16_div+0x74>

000104ec <bf16_sqrt>:
   104ec:	0542                	slli	a0,a0,0x10
   104ee:	8141                	srli	a0,a0,0x10
   104f0:	00755793          	srli	a5,a0,0x7
   104f4:	0ff7f793          	zext.b	a5,a5
   104f8:	0ff00613          	li	a2,255
   104fc:	00f55693          	srli	a3,a0,0xf
   10500:	07f57713          	andi	a4,a0,127
   10504:	00c79b63          	bne	a5,a2,1051a <bf16_sqrt+0x2e>
   10508:	eb4d                	bnez	a4,105ba <bf16_sqrt+0xce>
   1050a:	6521                	lui	a0,0x8
   1050c:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10510:	e6cd                	bnez	a3,105ba <bf16_sqrt+0xce>
   10512:	6521                	lui	a0,0x8
   10514:	f8050513          	addi	a0,a0,-128 # 7f80 <exit-0x8134>
   10518:	8082                	ret
   1051a:	efc1                	bnez	a5,105b2 <bf16_sqrt+0xc6>
   1051c:	4501                	li	a0,0
   1051e:	e359                	bnez	a4,105a4 <bf16_sqrt+0xb8>
   10520:	8082                	ret
   10522:	f8178513          	addi	a0,a5,-127 # ffff7f81 <__BSS_END__+0xfffe56dd>
   10526:	00157693          	andi	a3,a0,1
   1052a:	08076713          	ori	a4,a4,128
   1052e:	caa1                	beqz	a3,1057e <bf16_sqrt+0x92>
   10530:	f8078793          	addi	a5,a5,-128
   10534:	8785                	srai	a5,a5,0x1
   10536:	0706                	slli	a4,a4,0x1
   10538:	07f78513          	addi	a0,a5,127
   1053c:	08000793          	li	a5,128
   10540:	10000593          	li	a1,256
   10544:	05a00613          	li	a2,90
   10548:	00b606b3          	add	a3,a2,a1
   1054c:	8285                	srli	a3,a3,0x1
   1054e:	02d68833          	mul	a6,a3,a3
   10552:	00785813          	srli	a6,a6,0x7
   10556:	03076863          	bltu	a4,a6,10586 <bf16_sqrt+0x9a>
   1055a:	00168613          	addi	a2,a3,1
   1055e:	87b6                	mv	a5,a3
   10560:	fec5f4e3          	bgeu	a1,a2,10548 <bf16_sqrt+0x5c>
   10564:	0ff00713          	li	a4,255
   10568:	02f77263          	bgeu	a4,a5,1058c <bf16_sqrt+0xa0>
   1056c:	8385                	srli	a5,a5,0x1
   1056e:	0505                	addi	a0,a0,1
   10570:	07f7f793          	andi	a5,a5,127
   10574:	051e                	slli	a0,a0,0x7
   10576:	8d5d                	or	a0,a0,a5
   10578:	0542                	slli	a0,a0,0x10
   1057a:	8141                	srli	a0,a0,0x10
   1057c:	8082                	ret
   1057e:	8505                	srai	a0,a0,0x1
   10580:	07f50513          	addi	a0,a0,127
   10584:	bf65                	j	1053c <bf16_sqrt+0x50>
   10586:	fff68593          	addi	a1,a3,-1
   1058a:	bfd9                	j	10560 <bf16_sqrt+0x74>
   1058c:	07f00713          	li	a4,127
   10590:	fef760e3          	bltu	a4,a5,10570 <bf16_sqrt+0x84>
   10594:	4685                	li	a3,1
   10596:	0786                	slli	a5,a5,0x1
   10598:	157d                	addi	a0,a0,-1
   1059a:	fcf76be3          	bltu	a4,a5,10570 <bf16_sqrt+0x84>
   1059e:	fed51ce3          	bne	a0,a3,10596 <bf16_sqrt+0xaa>
   105a2:	b7f9                	j	10570 <bf16_sqrt+0x84>
   105a4:	6521                	lui	a0,0x8
   105a6:	40d006b3          	neg	a3,a3
   105aa:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   105ae:	8d75                	and	a0,a0,a3
   105b0:	8082                	ret
   105b2:	6521                	lui	a0,0x8
   105b4:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   105b8:	d6ad                	beqz	a3,10522 <bf16_sqrt+0x36>
   105ba:	8082                	ret

000105bc <atexit>:
   105bc:	85aa                	mv	a1,a0
   105be:	4681                	li	a3,0
   105c0:	4601                	li	a2,0
   105c2:	4501                	li	a0,0
   105c4:	76e0006f          	j	10d32 <__register_exitproc>

000105c8 <stdio_exit_handler>:
   105c8:	00002617          	auipc	a2,0x2
   105cc:	a4860613          	addi	a2,a2,-1464 # 12010 <__sglue>
   105d0:	00001597          	auipc	a1,0x1
   105d4:	1a458593          	addi	a1,a1,420 # 11774 <_fclose_r>
   105d8:	00002517          	auipc	a0,0x2
   105dc:	a4850513          	addi	a0,a0,-1464 # 12020 <_impure_data>
   105e0:	a615                	j	10904 <_fwalk_sglue>

000105e2 <cleanup_stdio>:
   105e2:	414c                	lw	a1,4(a0)
   105e4:	1141                	addi	sp,sp,-16
   105e6:	c422                	sw	s0,8(sp)
   105e8:	c606                	sw	ra,12(sp)
   105ea:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   105ee:	842a                	mv	s0,a0
   105f0:	00f58463          	beq	a1,a5,105f8 <cleanup_stdio+0x16>
   105f4:	180010ef          	jal	11774 <_fclose_r>
   105f8:	440c                	lw	a1,8(s0)
   105fa:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   105fe:	00f58563          	beq	a1,a5,10608 <cleanup_stdio+0x26>
   10602:	8522                	mv	a0,s0
   10604:	170010ef          	jal	11774 <_fclose_r>
   10608:	444c                	lw	a1,12(s0)
   1060a:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   1060e:	00f58863          	beq	a1,a5,1061e <cleanup_stdio+0x3c>
   10612:	8522                	mv	a0,s0
   10614:	4422                	lw	s0,8(sp)
   10616:	40b2                	lw	ra,12(sp)
   10618:	0141                	addi	sp,sp,16
   1061a:	15a0106f          	j	11774 <_fclose_r>
   1061e:	40b2                	lw	ra,12(sp)
   10620:	4422                	lw	s0,8(sp)
   10622:	0141                	addi	sp,sp,16
   10624:	8082                	ret

00010626 <__fp_lock>:
   10626:	51fc                	lw	a5,100(a1)
   10628:	8b85                	andi	a5,a5,1
   1062a:	e791                	bnez	a5,10636 <__fp_lock+0x10>
   1062c:	00c5d783          	lhu	a5,12(a1)
   10630:	2007f793          	andi	a5,a5,512
   10634:	c399                	beqz	a5,1063a <__fp_lock+0x14>
   10636:	4501                	li	a0,0
   10638:	8082                	ret
   1063a:	4da8                	lw	a0,88(a1)
   1063c:	1141                	addi	sp,sp,-16
   1063e:	c606                	sw	ra,12(sp)
   10640:	2d35                	jal	10c7c <__retarget_lock_acquire_recursive>
   10642:	40b2                	lw	ra,12(sp)
   10644:	4501                	li	a0,0
   10646:	0141                	addi	sp,sp,16
   10648:	8082                	ret

0001064a <__fp_unlock>:
   1064a:	51fc                	lw	a5,100(a1)
   1064c:	8b85                	andi	a5,a5,1
   1064e:	e791                	bnez	a5,1065a <__fp_unlock+0x10>
   10650:	00c5d783          	lhu	a5,12(a1)
   10654:	2007f793          	andi	a5,a5,512
   10658:	c399                	beqz	a5,1065e <__fp_unlock+0x14>
   1065a:	4501                	li	a0,0
   1065c:	8082                	ret
   1065e:	4da8                	lw	a0,88(a1)
   10660:	1141                	addi	sp,sp,-16
   10662:	c606                	sw	ra,12(sp)
   10664:	2515                	jal	10c88 <__retarget_lock_release_recursive>
   10666:	40b2                	lw	ra,12(sp)
   10668:	4501                	li	a0,0
   1066a:	0141                	addi	sp,sp,16
   1066c:	8082                	ret

0001066e <global_stdio_init.part.0>:
   1066e:	1101                	addi	sp,sp,-32
   10670:	ce06                	sw	ra,28(sp)
   10672:	cc22                	sw	s0,24(sp)
   10674:	ca26                	sw	s1,20(sp)
   10676:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   1067a:	c84a                	sw	s2,16(sp)
   1067c:	c64e                	sw	s3,12(sp)
   1067e:	c452                	sw	s4,8(sp)
   10680:	00000717          	auipc	a4,0x0
   10684:	f4870713          	addi	a4,a4,-184 # 105c8 <stdio_exit_handler>
   10688:	4791                	li	a5,4
   1068a:	4621                	li	a2,8
   1068c:	4581                	li	a1,0
   1068e:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   10692:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   10696:	c45c                	sw	a5,12(s0)
   10698:	00042023          	sw	zero,0(s0)
   1069c:	00042223          	sw	zero,4(s0)
   106a0:	00042423          	sw	zero,8(s0)
   106a4:	06042223          	sw	zero,100(s0)
   106a8:	00042823          	sw	zero,16(s0)
   106ac:	00042a23          	sw	zero,20(s0)
   106b0:	00042c23          	sw	zero,24(s0)
   106b4:	2bd9                	jal	10c8a <memset>
   106b6:	00000a17          	auipc	s4,0x0
   106ba:	2c0a0a13          	addi	s4,s4,704 # 10976 <__sread>
   106be:	00000997          	auipc	s3,0x0
   106c2:	2f298993          	addi	s3,s3,754 # 109b0 <__swrite>
   106c6:	00000917          	auipc	s2,0x0
   106ca:	33a90913          	addi	s2,s2,826 # 10a00 <__sseek>
   106ce:	00000497          	auipc	s1,0x0
   106d2:	36e48493          	addi	s1,s1,878 # 10a3c <__sclose>
   106d6:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   106da:	03442023          	sw	s4,32(s0)
   106de:	03342223          	sw	s3,36(s0)
   106e2:	03242423          	sw	s2,40(s0)
   106e6:	d444                	sw	s1,44(s0)
   106e8:	cc40                	sw	s0,28(s0)
   106ea:	2369                	jal	10c74 <__retarget_lock_init_recursive>
   106ec:	67c1                	lui	a5,0x10
   106ee:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   106f0:	4621                	li	a2,8
   106f2:	4581                	li	a1,0
   106f4:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   106f8:	d87c                	sw	a5,116(s0)
   106fa:	06042423          	sw	zero,104(s0)
   106fe:	06042623          	sw	zero,108(s0)
   10702:	06042823          	sw	zero,112(s0)
   10706:	0c042623          	sw	zero,204(s0)
   1070a:	06042c23          	sw	zero,120(s0)
   1070e:	06042e23          	sw	zero,124(s0)
   10712:	08042023          	sw	zero,128(s0)
   10716:	2b95                	jal	10c8a <memset>
   10718:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   1071c:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   10720:	09442423          	sw	s4,136(s0)
   10724:	09342623          	sw	s3,140(s0)
   10728:	09242823          	sw	s2,144(s0)
   1072c:	08942a23          	sw	s1,148(s0)
   10730:	08f42223          	sw	a5,132(s0)
   10734:	2381                	jal	10c74 <__retarget_lock_init_recursive>
   10736:	000207b7          	lui	a5,0x20
   1073a:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   1073c:	4621                	li	a2,8
   1073e:	4581                	li	a1,0
   10740:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   10744:	0cf42e23          	sw	a5,220(s0)
   10748:	0c042823          	sw	zero,208(s0)
   1074c:	0c042a23          	sw	zero,212(s0)
   10750:	0c042c23          	sw	zero,216(s0)
   10754:	12042a23          	sw	zero,308(s0)
   10758:	0e042023          	sw	zero,224(s0)
   1075c:	0e042223          	sw	zero,228(s0)
   10760:	0e042423          	sw	zero,232(s0)
   10764:	231d                	jal	10c8a <memset>
   10766:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   1076a:	0f442823          	sw	s4,240(s0)
   1076e:	0f342a23          	sw	s3,244(s0)
   10772:	0f242c23          	sw	s2,248(s0)
   10776:	0e942e23          	sw	s1,252(s0)
   1077a:	0ef42623          	sw	a5,236(s0)
   1077e:	4462                	lw	s0,24(sp)
   10780:	40f2                	lw	ra,28(sp)
   10782:	44d2                	lw	s1,20(sp)
   10784:	4942                	lw	s2,16(sp)
   10786:	49b2                	lw	s3,12(sp)
   10788:	4a22                	lw	s4,8(sp)
   1078a:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   1078e:	6105                	addi	sp,sp,32
   10790:	a1d5                	j	10c74 <__retarget_lock_init_recursive>

00010792 <__sfp>:
   10792:	1101                	addi	sp,sp,-32
   10794:	c64e                	sw	s3,12(sp)
   10796:	89aa                	mv	s3,a0
   10798:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1079c:	ce06                	sw	ra,28(sp)
   1079e:	cc22                	sw	s0,24(sp)
   107a0:	ca26                	sw	s1,20(sp)
   107a2:	c84a                	sw	s2,16(sp)
   107a4:	29e1                	jal	10c7c <__retarget_lock_acquire_recursive>
   107a6:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   107aa:	cfc5                	beqz	a5,10862 <__sfp+0xd0>
   107ac:	00002917          	auipc	s2,0x2
   107b0:	86490913          	addi	s2,s2,-1948 # 12010 <__sglue>
   107b4:	54fd                	li	s1,-1
   107b6:	00492783          	lw	a5,4(s2)
   107ba:	00892403          	lw	s0,8(s2)
   107be:	17fd                	addi	a5,a5,-1
   107c0:	0007d763          	bgez	a5,107ce <__sfp+0x3c>
   107c4:	a0ad                	j	1082e <__sfp+0x9c>
   107c6:	06840413          	addi	s0,s0,104
   107ca:	06978263          	beq	a5,s1,1082e <__sfp+0x9c>
   107ce:	00c41703          	lh	a4,12(s0)
   107d2:	17fd                	addi	a5,a5,-1
   107d4:	fb6d                	bnez	a4,107c6 <__sfp+0x34>
   107d6:	77c1                	lui	a5,0xffff0
   107d8:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   107da:	c45c                	sw	a5,12(s0)
   107dc:	05840513          	addi	a0,s0,88
   107e0:	06042223          	sw	zero,100(s0)
   107e4:	2941                	jal	10c74 <__retarget_lock_init_recursive>
   107e6:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   107ea:	2979                	jal	10c88 <__retarget_lock_release_recursive>
   107ec:	05c40513          	addi	a0,s0,92
   107f0:	00042023          	sw	zero,0(s0)
   107f4:	00042423          	sw	zero,8(s0)
   107f8:	00042223          	sw	zero,4(s0)
   107fc:	00042823          	sw	zero,16(s0)
   10800:	00042a23          	sw	zero,20(s0)
   10804:	00042c23          	sw	zero,24(s0)
   10808:	4621                	li	a2,8
   1080a:	4581                	li	a1,0
   1080c:	29bd                	jal	10c8a <memset>
   1080e:	02042823          	sw	zero,48(s0)
   10812:	02042a23          	sw	zero,52(s0)
   10816:	04042223          	sw	zero,68(s0)
   1081a:	04042423          	sw	zero,72(s0)
   1081e:	40f2                	lw	ra,28(sp)
   10820:	8522                	mv	a0,s0
   10822:	4462                	lw	s0,24(sp)
   10824:	44d2                	lw	s1,20(sp)
   10826:	4942                	lw	s2,16(sp)
   10828:	49b2                	lw	s3,12(sp)
   1082a:	6105                	addi	sp,sp,32
   1082c:	8082                	ret
   1082e:	00092403          	lw	s0,0(s2)
   10832:	c019                	beqz	s0,10838 <__sfp+0xa6>
   10834:	8922                	mv	s2,s0
   10836:	b741                	j	107b6 <__sfp+0x24>
   10838:	1ac00593          	li	a1,428
   1083c:	854e                	mv	a0,s3
   1083e:	155000ef          	jal	11192 <_malloc_r>
   10842:	842a                	mv	s0,a0
   10844:	c10d                	beqz	a0,10866 <__sfp+0xd4>
   10846:	4791                	li	a5,4
   10848:	0531                	addi	a0,a0,12
   1084a:	00042023          	sw	zero,0(s0)
   1084e:	c05c                	sw	a5,4(s0)
   10850:	c408                	sw	a0,8(s0)
   10852:	1a000613          	li	a2,416
   10856:	4581                	li	a1,0
   10858:	290d                	jal	10c8a <memset>
   1085a:	00892023          	sw	s0,0(s2)
   1085e:	8922                	mv	s2,s0
   10860:	bf99                	j	107b6 <__sfp+0x24>
   10862:	3531                	jal	1066e <global_stdio_init.part.0>
   10864:	b7a1                	j	107ac <__sfp+0x1a>
   10866:	00092023          	sw	zero,0(s2)
   1086a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1086e:	2929                	jal	10c88 <__retarget_lock_release_recursive>
   10870:	47b1                	li	a5,12
   10872:	00f9a023          	sw	a5,0(s3)
   10876:	b765                	j	1081e <__sfp+0x8c>

00010878 <__sinit>:
   10878:	1141                	addi	sp,sp,-16
   1087a:	c422                	sw	s0,8(sp)
   1087c:	842a                	mv	s0,a0
   1087e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10882:	c606                	sw	ra,12(sp)
   10884:	2ee5                	jal	10c7c <__retarget_lock_acquire_recursive>
   10886:	585c                	lw	a5,52(s0)
   10888:	eb89                	bnez	a5,1089a <__sinit+0x22>
   1088a:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   1088e:	00000717          	auipc	a4,0x0
   10892:	d5470713          	addi	a4,a4,-684 # 105e2 <cleanup_stdio>
   10896:	d858                	sw	a4,52(s0)
   10898:	c799                	beqz	a5,108a6 <__sinit+0x2e>
   1089a:	4422                	lw	s0,8(sp)
   1089c:	40b2                	lw	ra,12(sp)
   1089e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108a2:	0141                	addi	sp,sp,16
   108a4:	a6d5                	j	10c88 <__retarget_lock_release_recursive>
   108a6:	33e1                	jal	1066e <global_stdio_init.part.0>
   108a8:	4422                	lw	s0,8(sp)
   108aa:	40b2                	lw	ra,12(sp)
   108ac:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108b0:	0141                	addi	sp,sp,16
   108b2:	aed9                	j	10c88 <__retarget_lock_release_recursive>

000108b4 <__sfp_lock_acquire>:
   108b4:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108b8:	a6d1                	j	10c7c <__retarget_lock_acquire_recursive>

000108ba <__sfp_lock_release>:
   108ba:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108be:	a6e9                	j	10c88 <__retarget_lock_release_recursive>

000108c0 <__fp_lock_all>:
   108c0:	1141                	addi	sp,sp,-16
   108c2:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108c6:	c606                	sw	ra,12(sp)
   108c8:	2e55                	jal	10c7c <__retarget_lock_acquire_recursive>
   108ca:	40b2                	lw	ra,12(sp)
   108cc:	00001617          	auipc	a2,0x1
   108d0:	74460613          	addi	a2,a2,1860 # 12010 <__sglue>
   108d4:	00000597          	auipc	a1,0x0
   108d8:	d5258593          	addi	a1,a1,-686 # 10626 <__fp_lock>
   108dc:	4501                	li	a0,0
   108de:	0141                	addi	sp,sp,16
   108e0:	a015                	j	10904 <_fwalk_sglue>

000108e2 <__fp_unlock_all>:
   108e2:	1141                	addi	sp,sp,-16
   108e4:	00001617          	auipc	a2,0x1
   108e8:	72c60613          	addi	a2,a2,1836 # 12010 <__sglue>
   108ec:	00000597          	auipc	a1,0x0
   108f0:	d5e58593          	addi	a1,a1,-674 # 1064a <__fp_unlock>
   108f4:	4501                	li	a0,0
   108f6:	c606                	sw	ra,12(sp)
   108f8:	2031                	jal	10904 <_fwalk_sglue>
   108fa:	40b2                	lw	ra,12(sp)
   108fc:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10900:	0141                	addi	sp,sp,16
   10902:	a659                	j	10c88 <__retarget_lock_release_recursive>

00010904 <_fwalk_sglue>:
   10904:	7179                	addi	sp,sp,-48
   10906:	d04a                	sw	s2,32(sp)
   10908:	ce4e                	sw	s3,28(sp)
   1090a:	cc52                	sw	s4,24(sp)
   1090c:	ca56                	sw	s5,20(sp)
   1090e:	c85a                	sw	s6,16(sp)
   10910:	c65e                	sw	s7,12(sp)
   10912:	d606                	sw	ra,44(sp)
   10914:	d422                	sw	s0,40(sp)
   10916:	d226                	sw	s1,36(sp)
   10918:	8b2a                	mv	s6,a0
   1091a:	8bae                	mv	s7,a1
   1091c:	8ab2                	mv	s5,a2
   1091e:	4a01                	li	s4,0
   10920:	4985                	li	s3,1
   10922:	597d                	li	s2,-1
   10924:	004aa483          	lw	s1,4(s5)
   10928:	008aa403          	lw	s0,8(s5)
   1092c:	14fd                	addi	s1,s1,-1
   1092e:	0204c463          	bltz	s1,10956 <_fwalk_sglue+0x52>
   10932:	00c45783          	lhu	a5,12(s0)
   10936:	00f9fb63          	bgeu	s3,a5,1094c <_fwalk_sglue+0x48>
   1093a:	00e41783          	lh	a5,14(s0)
   1093e:	85a2                	mv	a1,s0
   10940:	855a                	mv	a0,s6
   10942:	01278563          	beq	a5,s2,1094c <_fwalk_sglue+0x48>
   10946:	9b82                	jalr	s7
   10948:	00aa6a33          	or	s4,s4,a0
   1094c:	14fd                	addi	s1,s1,-1
   1094e:	06840413          	addi	s0,s0,104
   10952:	ff2490e3          	bne	s1,s2,10932 <_fwalk_sglue+0x2e>
   10956:	000aaa83          	lw	s5,0(s5)
   1095a:	fc0a95e3          	bnez	s5,10924 <_fwalk_sglue+0x20>
   1095e:	50b2                	lw	ra,44(sp)
   10960:	5422                	lw	s0,40(sp)
   10962:	5492                	lw	s1,36(sp)
   10964:	5902                	lw	s2,32(sp)
   10966:	49f2                	lw	s3,28(sp)
   10968:	4ad2                	lw	s5,20(sp)
   1096a:	4b42                	lw	s6,16(sp)
   1096c:	4bb2                	lw	s7,12(sp)
   1096e:	8552                	mv	a0,s4
   10970:	4a62                	lw	s4,24(sp)
   10972:	6145                	addi	sp,sp,48
   10974:	8082                	ret

00010976 <__sread>:
   10976:	1141                	addi	sp,sp,-16
   10978:	c422                	sw	s0,8(sp)
   1097a:	842e                	mv	s0,a1
   1097c:	00e59583          	lh	a1,14(a1)
   10980:	c606                	sw	ra,12(sp)
   10982:	22c9                	jal	10b44 <_read_r>
   10984:	00054963          	bltz	a0,10996 <__sread+0x20>
   10988:	483c                	lw	a5,80(s0)
   1098a:	40b2                	lw	ra,12(sp)
   1098c:	97aa                	add	a5,a5,a0
   1098e:	c83c                	sw	a5,80(s0)
   10990:	4422                	lw	s0,8(sp)
   10992:	0141                	addi	sp,sp,16
   10994:	8082                	ret
   10996:	00c45783          	lhu	a5,12(s0)
   1099a:	777d                	lui	a4,0xfffff
   1099c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   1099e:	8ff9                	and	a5,a5,a4
   109a0:	40b2                	lw	ra,12(sp)
   109a2:	00f41623          	sh	a5,12(s0)
   109a6:	4422                	lw	s0,8(sp)
   109a8:	0141                	addi	sp,sp,16
   109aa:	8082                	ret

000109ac <__seofread>:
   109ac:	4501                	li	a0,0
   109ae:	8082                	ret

000109b0 <__swrite>:
   109b0:	00c59783          	lh	a5,12(a1)
   109b4:	1101                	addi	sp,sp,-32
   109b6:	cc22                	sw	s0,24(sp)
   109b8:	ca26                	sw	s1,20(sp)
   109ba:	c84a                	sw	s2,16(sp)
   109bc:	c64e                	sw	s3,12(sp)
   109be:	ce06                	sw	ra,28(sp)
   109c0:	1007f713          	andi	a4,a5,256
   109c4:	842e                	mv	s0,a1
   109c6:	8932                	mv	s2,a2
   109c8:	89b6                	mv	s3,a3
   109ca:	84aa                	mv	s1,a0
   109cc:	e315                	bnez	a4,109f0 <__swrite+0x40>
   109ce:	777d                	lui	a4,0xfffff
   109d0:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   109d2:	8ff9                	and	a5,a5,a4
   109d4:	00e41583          	lh	a1,14(s0)
   109d8:	00f41623          	sh	a5,12(s0)
   109dc:	4462                	lw	s0,24(sp)
   109de:	40f2                	lw	ra,28(sp)
   109e0:	86ce                	mv	a3,s3
   109e2:	864a                	mv	a2,s2
   109e4:	49b2                	lw	s3,12(sp)
   109e6:	4942                	lw	s2,16(sp)
   109e8:	8526                	mv	a0,s1
   109ea:	44d2                	lw	s1,20(sp)
   109ec:	6105                	addi	sp,sp,32
   109ee:	aa71                	j	10b8a <_write_r>
   109f0:	00e59583          	lh	a1,14(a1)
   109f4:	4689                	li	a3,2
   109f6:	4601                	li	a2,0
   109f8:	2219                	jal	10afe <_lseek_r>
   109fa:	00c41783          	lh	a5,12(s0)
   109fe:	bfc1                	j	109ce <__swrite+0x1e>

00010a00 <__sseek>:
   10a00:	1141                	addi	sp,sp,-16
   10a02:	c422                	sw	s0,8(sp)
   10a04:	842e                	mv	s0,a1
   10a06:	00e59583          	lh	a1,14(a1)
   10a0a:	c606                	sw	ra,12(sp)
   10a0c:	28cd                	jal	10afe <_lseek_r>
   10a0e:	577d                	li	a4,-1
   10a10:	00c41783          	lh	a5,12(s0)
   10a14:	00e50b63          	beq	a0,a4,10a2a <__sseek+0x2a>
   10a18:	6705                	lui	a4,0x1
   10a1a:	8fd9                	or	a5,a5,a4
   10a1c:	40b2                	lw	ra,12(sp)
   10a1e:	c828                	sw	a0,80(s0)
   10a20:	00f41623          	sh	a5,12(s0)
   10a24:	4422                	lw	s0,8(sp)
   10a26:	0141                	addi	sp,sp,16
   10a28:	8082                	ret
   10a2a:	777d                	lui	a4,0xfffff
   10a2c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10a2e:	8ff9                	and	a5,a5,a4
   10a30:	40b2                	lw	ra,12(sp)
   10a32:	00f41623          	sh	a5,12(s0)
   10a36:	4422                	lw	s0,8(sp)
   10a38:	0141                	addi	sp,sp,16
   10a3a:	8082                	ret

00010a3c <__sclose>:
   10a3c:	00e59583          	lh	a1,14(a1)
   10a40:	a009                	j	10a42 <_close_r>

00010a42 <_close_r>:
   10a42:	1141                	addi	sp,sp,-16
   10a44:	c422                	sw	s0,8(sp)
   10a46:	842a                	mv	s0,a0
   10a48:	852e                	mv	a0,a1
   10a4a:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10a4e:	c606                	sw	ra,12(sp)
   10a50:	0ee010ef          	jal	11b3e <_close>
   10a54:	57fd                	li	a5,-1
   10a56:	00f50663          	beq	a0,a5,10a62 <_close_r+0x20>
   10a5a:	40b2                	lw	ra,12(sp)
   10a5c:	4422                	lw	s0,8(sp)
   10a5e:	0141                	addi	sp,sp,16
   10a60:	8082                	ret
   10a62:	c226                	sw	s1,4(sp)
   10a64:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10a68:	409c                	lw	a5,0(s1)
   10a6a:	c799                	beqz	a5,10a78 <_close_r+0x36>
   10a6c:	40b2                	lw	ra,12(sp)
   10a6e:	c01c                	sw	a5,0(s0)
   10a70:	4422                	lw	s0,8(sp)
   10a72:	4492                	lw	s1,4(sp)
   10a74:	0141                	addi	sp,sp,16
   10a76:	8082                	ret
   10a78:	40b2                	lw	ra,12(sp)
   10a7a:	4422                	lw	s0,8(sp)
   10a7c:	4492                	lw	s1,4(sp)
   10a7e:	0141                	addi	sp,sp,16
   10a80:	8082                	ret

00010a82 <_reclaim_reent>:
   10a82:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   10a86:	06a78b63          	beq	a5,a0,10afc <_reclaim_reent+0x7a>
   10a8a:	416c                	lw	a1,68(a0)
   10a8c:	1101                	addi	sp,sp,-32
   10a8e:	ca26                	sw	s1,20(sp)
   10a90:	ce06                	sw	ra,28(sp)
   10a92:	cc22                	sw	s0,24(sp)
   10a94:	84aa                	mv	s1,a0
   10a96:	c59d                	beqz	a1,10ac4 <_reclaim_reent+0x42>
   10a98:	c84a                	sw	s2,16(sp)
   10a9a:	c64e                	sw	s3,12(sp)
   10a9c:	4901                	li	s2,0
   10a9e:	08000993          	li	s3,128
   10aa2:	012587b3          	add	a5,a1,s2
   10aa6:	4380                	lw	s0,0(a5)
   10aa8:	c419                	beqz	s0,10ab6 <_reclaim_reent+0x34>
   10aaa:	85a2                	mv	a1,s0
   10aac:	4000                	lw	s0,0(s0)
   10aae:	8526                	mv	a0,s1
   10ab0:	21d1                	jal	10f74 <_free_r>
   10ab2:	fc65                	bnez	s0,10aaa <_reclaim_reent+0x28>
   10ab4:	40ec                	lw	a1,68(s1)
   10ab6:	0911                	addi	s2,s2,4
   10ab8:	ff3915e3          	bne	s2,s3,10aa2 <_reclaim_reent+0x20>
   10abc:	8526                	mv	a0,s1
   10abe:	295d                	jal	10f74 <_free_r>
   10ac0:	4942                	lw	s2,16(sp)
   10ac2:	49b2                	lw	s3,12(sp)
   10ac4:	5c8c                	lw	a1,56(s1)
   10ac6:	c199                	beqz	a1,10acc <_reclaim_reent+0x4a>
   10ac8:	8526                	mv	a0,s1
   10aca:	216d                	jal	10f74 <_free_r>
   10acc:	40a0                	lw	s0,64(s1)
   10ace:	c411                	beqz	s0,10ada <_reclaim_reent+0x58>
   10ad0:	85a2                	mv	a1,s0
   10ad2:	4000                	lw	s0,0(s0)
   10ad4:	8526                	mv	a0,s1
   10ad6:	2979                	jal	10f74 <_free_r>
   10ad8:	fc65                	bnez	s0,10ad0 <_reclaim_reent+0x4e>
   10ada:	44ec                	lw	a1,76(s1)
   10adc:	c199                	beqz	a1,10ae2 <_reclaim_reent+0x60>
   10ade:	8526                	mv	a0,s1
   10ae0:	2951                	jal	10f74 <_free_r>
   10ae2:	58dc                	lw	a5,52(s1)
   10ae4:	c799                	beqz	a5,10af2 <_reclaim_reent+0x70>
   10ae6:	4462                	lw	s0,24(sp)
   10ae8:	40f2                	lw	ra,28(sp)
   10aea:	8526                	mv	a0,s1
   10aec:	44d2                	lw	s1,20(sp)
   10aee:	6105                	addi	sp,sp,32
   10af0:	8782                	jr	a5
   10af2:	40f2                	lw	ra,28(sp)
   10af4:	4462                	lw	s0,24(sp)
   10af6:	44d2                	lw	s1,20(sp)
   10af8:	6105                	addi	sp,sp,32
   10afa:	8082                	ret
   10afc:	8082                	ret

00010afe <_lseek_r>:
   10afe:	1141                	addi	sp,sp,-16
   10b00:	872e                	mv	a4,a1
   10b02:	c422                	sw	s0,8(sp)
   10b04:	85b2                	mv	a1,a2
   10b06:	842a                	mv	s0,a0
   10b08:	8636                	mv	a2,a3
   10b0a:	853a                	mv	a0,a4
   10b0c:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b10:	c606                	sw	ra,12(sp)
   10b12:	076010ef          	jal	11b88 <_lseek>
   10b16:	57fd                	li	a5,-1
   10b18:	00f50663          	beq	a0,a5,10b24 <_lseek_r+0x26>
   10b1c:	40b2                	lw	ra,12(sp)
   10b1e:	4422                	lw	s0,8(sp)
   10b20:	0141                	addi	sp,sp,16
   10b22:	8082                	ret
   10b24:	c226                	sw	s1,4(sp)
   10b26:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10b2a:	409c                	lw	a5,0(s1)
   10b2c:	c799                	beqz	a5,10b3a <_lseek_r+0x3c>
   10b2e:	40b2                	lw	ra,12(sp)
   10b30:	c01c                	sw	a5,0(s0)
   10b32:	4422                	lw	s0,8(sp)
   10b34:	4492                	lw	s1,4(sp)
   10b36:	0141                	addi	sp,sp,16
   10b38:	8082                	ret
   10b3a:	40b2                	lw	ra,12(sp)
   10b3c:	4422                	lw	s0,8(sp)
   10b3e:	4492                	lw	s1,4(sp)
   10b40:	0141                	addi	sp,sp,16
   10b42:	8082                	ret

00010b44 <_read_r>:
   10b44:	1141                	addi	sp,sp,-16
   10b46:	872e                	mv	a4,a1
   10b48:	c422                	sw	s0,8(sp)
   10b4a:	85b2                	mv	a1,a2
   10b4c:	842a                	mv	s0,a0
   10b4e:	8636                	mv	a2,a3
   10b50:	853a                	mv	a0,a4
   10b52:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b56:	c606                	sw	ra,12(sp)
   10b58:	05a010ef          	jal	11bb2 <_read>
   10b5c:	57fd                	li	a5,-1
   10b5e:	00f50663          	beq	a0,a5,10b6a <_read_r+0x26>
   10b62:	40b2                	lw	ra,12(sp)
   10b64:	4422                	lw	s0,8(sp)
   10b66:	0141                	addi	sp,sp,16
   10b68:	8082                	ret
   10b6a:	c226                	sw	s1,4(sp)
   10b6c:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10b70:	409c                	lw	a5,0(s1)
   10b72:	c799                	beqz	a5,10b80 <_read_r+0x3c>
   10b74:	40b2                	lw	ra,12(sp)
   10b76:	c01c                	sw	a5,0(s0)
   10b78:	4422                	lw	s0,8(sp)
   10b7a:	4492                	lw	s1,4(sp)
   10b7c:	0141                	addi	sp,sp,16
   10b7e:	8082                	ret
   10b80:	40b2                	lw	ra,12(sp)
   10b82:	4422                	lw	s0,8(sp)
   10b84:	4492                	lw	s1,4(sp)
   10b86:	0141                	addi	sp,sp,16
   10b88:	8082                	ret

00010b8a <_write_r>:
   10b8a:	1141                	addi	sp,sp,-16
   10b8c:	872e                	mv	a4,a1
   10b8e:	c422                	sw	s0,8(sp)
   10b90:	85b2                	mv	a1,a2
   10b92:	842a                	mv	s0,a0
   10b94:	8636                	mv	a2,a3
   10b96:	853a                	mv	a0,a4
   10b98:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b9c:	c606                	sw	ra,12(sp)
   10b9e:	08c010ef          	jal	11c2a <_write>
   10ba2:	57fd                	li	a5,-1
   10ba4:	00f50663          	beq	a0,a5,10bb0 <_write_r+0x26>
   10ba8:	40b2                	lw	ra,12(sp)
   10baa:	4422                	lw	s0,8(sp)
   10bac:	0141                	addi	sp,sp,16
   10bae:	8082                	ret
   10bb0:	c226                	sw	s1,4(sp)
   10bb2:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10bb6:	409c                	lw	a5,0(s1)
   10bb8:	c799                	beqz	a5,10bc6 <_write_r+0x3c>
   10bba:	40b2                	lw	ra,12(sp)
   10bbc:	c01c                	sw	a5,0(s0)
   10bbe:	4422                	lw	s0,8(sp)
   10bc0:	4492                	lw	s1,4(sp)
   10bc2:	0141                	addi	sp,sp,16
   10bc4:	8082                	ret
   10bc6:	40b2                	lw	ra,12(sp)
   10bc8:	4422                	lw	s0,8(sp)
   10bca:	4492                	lw	s1,4(sp)
   10bcc:	0141                	addi	sp,sp,16
   10bce:	8082                	ret

00010bd0 <__libc_init_array>:
   10bd0:	1141                	addi	sp,sp,-16
   10bd2:	c422                	sw	s0,8(sp)
   10bd4:	c04a                	sw	s2,0(sp)
   10bd6:	00001797          	auipc	a5,0x1
   10bda:	42a78793          	addi	a5,a5,1066 # 12000 <__init_array_start>
   10bde:	00001417          	auipc	s0,0x1
   10be2:	42240413          	addi	s0,s0,1058 # 12000 <__init_array_start>
   10be6:	c606                	sw	ra,12(sp)
   10be8:	c226                	sw	s1,4(sp)
   10bea:	40878933          	sub	s2,a5,s0
   10bee:	00878b63          	beq	a5,s0,10c04 <__libc_init_array+0x34>
   10bf2:	40295913          	srai	s2,s2,0x2
   10bf6:	4481                	li	s1,0
   10bf8:	401c                	lw	a5,0(s0)
   10bfa:	0485                	addi	s1,s1,1
   10bfc:	0411                	addi	s0,s0,4
   10bfe:	9782                	jalr	a5
   10c00:	ff24ece3          	bltu	s1,s2,10bf8 <__libc_init_array+0x28>
   10c04:	00001797          	auipc	a5,0x1
   10c08:	40478793          	addi	a5,a5,1028 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10c0c:	00001417          	auipc	s0,0x1
   10c10:	3f440413          	addi	s0,s0,1012 # 12000 <__init_array_start>
   10c14:	40878933          	sub	s2,a5,s0
   10c18:	40295913          	srai	s2,s2,0x2
   10c1c:	00878963          	beq	a5,s0,10c2e <__libc_init_array+0x5e>
   10c20:	4481                	li	s1,0
   10c22:	401c                	lw	a5,0(s0)
   10c24:	0485                	addi	s1,s1,1
   10c26:	0411                	addi	s0,s0,4
   10c28:	9782                	jalr	a5
   10c2a:	ff24ece3          	bltu	s1,s2,10c22 <__libc_init_array+0x52>
   10c2e:	40b2                	lw	ra,12(sp)
   10c30:	4422                	lw	s0,8(sp)
   10c32:	4492                	lw	s1,4(sp)
   10c34:	4902                	lw	s2,0(sp)
   10c36:	0141                	addi	sp,sp,16
   10c38:	8082                	ret

00010c3a <__libc_fini_array>:
   10c3a:	1141                	addi	sp,sp,-16
   10c3c:	c422                	sw	s0,8(sp)
   10c3e:	00001797          	auipc	a5,0x1
   10c42:	3ca78793          	addi	a5,a5,970 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10c46:	00001417          	auipc	s0,0x1
   10c4a:	3c640413          	addi	s0,s0,966 # 1200c <__fini_array_end>
   10c4e:	8c1d                	sub	s0,s0,a5
   10c50:	c226                	sw	s1,4(sp)
   10c52:	c606                	sw	ra,12(sp)
   10c54:	40245493          	srai	s1,s0,0x2
   10c58:	c881                	beqz	s1,10c68 <__libc_fini_array+0x2e>
   10c5a:	1471                	addi	s0,s0,-4
   10c5c:	943e                	add	s0,s0,a5
   10c5e:	401c                	lw	a5,0(s0)
   10c60:	14fd                	addi	s1,s1,-1
   10c62:	1471                	addi	s0,s0,-4
   10c64:	9782                	jalr	a5
   10c66:	fce5                	bnez	s1,10c5e <__libc_fini_array+0x24>
   10c68:	40b2                	lw	ra,12(sp)
   10c6a:	4422                	lw	s0,8(sp)
   10c6c:	4492                	lw	s1,4(sp)
   10c6e:	0141                	addi	sp,sp,16
   10c70:	8082                	ret

00010c72 <__retarget_lock_init>:
   10c72:	8082                	ret

00010c74 <__retarget_lock_init_recursive>:
   10c74:	8082                	ret

00010c76 <__retarget_lock_close>:
   10c76:	8082                	ret

00010c78 <__retarget_lock_close_recursive>:
   10c78:	8082                	ret

00010c7a <__retarget_lock_acquire>:
   10c7a:	8082                	ret

00010c7c <__retarget_lock_acquire_recursive>:
   10c7c:	8082                	ret

00010c7e <__retarget_lock_try_acquire>:
   10c7e:	4505                	li	a0,1
   10c80:	8082                	ret

00010c82 <__retarget_lock_try_acquire_recursive>:
   10c82:	4505                	li	a0,1
   10c84:	8082                	ret

00010c86 <__retarget_lock_release>:
   10c86:	8082                	ret

00010c88 <__retarget_lock_release_recursive>:
   10c88:	8082                	ret

00010c8a <memset>:
   10c8a:	433d                	li	t1,15
   10c8c:	872a                	mv	a4,a0
   10c8e:	02c37363          	bgeu	t1,a2,10cb4 <memset+0x2a>
   10c92:	00f77793          	andi	a5,a4,15
   10c96:	efbd                	bnez	a5,10d14 <memset+0x8a>
   10c98:	e5ad                	bnez	a1,10d02 <memset+0x78>
   10c9a:	ff067693          	andi	a3,a2,-16
   10c9e:	8a3d                	andi	a2,a2,15
   10ca0:	96ba                	add	a3,a3,a4
   10ca2:	c30c                	sw	a1,0(a4)
   10ca4:	c34c                	sw	a1,4(a4)
   10ca6:	c70c                	sw	a1,8(a4)
   10ca8:	c74c                	sw	a1,12(a4)
   10caa:	0741                	addi	a4,a4,16
   10cac:	fed76be3          	bltu	a4,a3,10ca2 <memset+0x18>
   10cb0:	e211                	bnez	a2,10cb4 <memset+0x2a>
   10cb2:	8082                	ret
   10cb4:	40c306b3          	sub	a3,t1,a2
   10cb8:	068a                	slli	a3,a3,0x2
   10cba:	00000297          	auipc	t0,0x0
   10cbe:	9696                	add	a3,a3,t0
   10cc0:	00a68067          	jr	10(a3)
   10cc4:	00b70723          	sb	a1,14(a4)
   10cc8:	00b706a3          	sb	a1,13(a4)
   10ccc:	00b70623          	sb	a1,12(a4)
   10cd0:	00b705a3          	sb	a1,11(a4)
   10cd4:	00b70523          	sb	a1,10(a4)
   10cd8:	00b704a3          	sb	a1,9(a4)
   10cdc:	00b70423          	sb	a1,8(a4)
   10ce0:	00b703a3          	sb	a1,7(a4)
   10ce4:	00b70323          	sb	a1,6(a4)
   10ce8:	00b702a3          	sb	a1,5(a4)
   10cec:	00b70223          	sb	a1,4(a4)
   10cf0:	00b701a3          	sb	a1,3(a4)
   10cf4:	00b70123          	sb	a1,2(a4)
   10cf8:	00b700a3          	sb	a1,1(a4)
   10cfc:	00b70023          	sb	a1,0(a4)
   10d00:	8082                	ret
   10d02:	0ff5f593          	zext.b	a1,a1
   10d06:	00859693          	slli	a3,a1,0x8
   10d0a:	8dd5                	or	a1,a1,a3
   10d0c:	01059693          	slli	a3,a1,0x10
   10d10:	8dd5                	or	a1,a1,a3
   10d12:	b761                	j	10c9a <memset+0x10>
   10d14:	00279693          	slli	a3,a5,0x2
   10d18:	00000297          	auipc	t0,0x0
   10d1c:	9696                	add	a3,a3,t0
   10d1e:	8286                	mv	t0,ra
   10d20:	fa8680e7          	jalr	-88(a3)
   10d24:	8096                	mv	ra,t0
   10d26:	17c1                	addi	a5,a5,-16
   10d28:	8f1d                	sub	a4,a4,a5
   10d2a:	963e                	add	a2,a2,a5
   10d2c:	f8c374e3          	bgeu	t1,a2,10cb4 <memset+0x2a>
   10d30:	b7a5                	j	10c98 <memset+0xe>

00010d32 <__register_exitproc>:
   10d32:	1101                	addi	sp,sp,-32
   10d34:	c84a                	sw	s2,16(sp)
   10d36:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   10d3a:	cc22                	sw	s0,24(sp)
   10d3c:	842a                	mv	s0,a0
   10d3e:	00092503          	lw	a0,0(s2)
   10d42:	ca26                	sw	s1,20(sp)
   10d44:	c64e                	sw	s3,12(sp)
   10d46:	c452                	sw	s4,8(sp)
   10d48:	ce06                	sw	ra,28(sp)
   10d4a:	84ae                	mv	s1,a1
   10d4c:	8a32                	mv	s4,a2
   10d4e:	89b6                	mv	s3,a3
   10d50:	3735                	jal	10c7c <__retarget_lock_acquire_recursive>
   10d52:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   10d56:	431c                	lw	a5,0(a4)
   10d58:	cfb9                	beqz	a5,10db6 <__register_exitproc+0x84>
   10d5a:	43d8                	lw	a4,4(a5)
   10d5c:	45fd                	li	a1,31
   10d5e:	00092503          	lw	a0,0(s2)
   10d62:	04e5ce63          	blt	a1,a4,10dbe <__register_exitproc+0x8c>
   10d66:	00271593          	slli	a1,a4,0x2
   10d6a:	ec19                	bnez	s0,10d88 <__register_exitproc+0x56>
   10d6c:	0705                	addi	a4,a4,1
   10d6e:	c3d8                	sw	a4,4(a5)
   10d70:	97ae                	add	a5,a5,a1
   10d72:	c784                	sw	s1,8(a5)
   10d74:	3f11                	jal	10c88 <__retarget_lock_release_recursive>
   10d76:	4501                	li	a0,0
   10d78:	40f2                	lw	ra,28(sp)
   10d7a:	4462                	lw	s0,24(sp)
   10d7c:	44d2                	lw	s1,20(sp)
   10d7e:	4942                	lw	s2,16(sp)
   10d80:	49b2                	lw	s3,12(sp)
   10d82:	4a22                	lw	s4,8(sp)
   10d84:	6105                	addi	sp,sp,32
   10d86:	8082                	ret
   10d88:	00b78833          	add	a6,a5,a1
   10d8c:	09482423          	sw	s4,136(a6)
   10d90:	1887a683          	lw	a3,392(a5)
   10d94:	4605                	li	a2,1
   10d96:	00e61633          	sll	a2,a2,a4
   10d9a:	8ed1                	or	a3,a3,a2
   10d9c:	18d7a423          	sw	a3,392(a5)
   10da0:	11382423          	sw	s3,264(a6)
   10da4:	4689                	li	a3,2
   10da6:	fcd413e3          	bne	s0,a3,10d6c <__register_exitproc+0x3a>
   10daa:	18c7a683          	lw	a3,396(a5)
   10dae:	8ed1                	or	a3,a3,a2
   10db0:	18d7a623          	sw	a3,396(a5)
   10db4:	bf65                	j	10d6c <__register_exitproc+0x3a>
   10db6:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   10dba:	c31c                	sw	a5,0(a4)
   10dbc:	bf79                	j	10d5a <__register_exitproc+0x28>
   10dbe:	35e9                	jal	10c88 <__retarget_lock_release_recursive>
   10dc0:	557d                	li	a0,-1
   10dc2:	bf5d                	j	10d78 <__register_exitproc+0x46>

00010dc4 <__call_exitprocs>:
   10dc4:	7179                	addi	sp,sp,-48
   10dc6:	c65e                	sw	s7,12(sp)
   10dc8:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   10dcc:	c85a                	sw	s6,16(sp)
   10dce:	8b2a                	mv	s6,a0
   10dd0:	000ba503          	lw	a0,0(s7)
   10dd4:	cc52                	sw	s4,24(sp)
   10dd6:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   10dda:	d04a                	sw	s2,32(sp)
   10ddc:	c462                	sw	s8,8(sp)
   10dde:	d606                	sw	ra,44(sp)
   10de0:	8c2e                	mv	s8,a1
   10de2:	3d69                	jal	10c7c <__retarget_lock_acquire_recursive>
   10de4:	000a2903          	lw	s2,0(s4)
   10de8:	04090063          	beqz	s2,10e28 <__call_exitprocs+0x64>
   10dec:	ce4e                	sw	s3,28(sp)
   10dee:	ca56                	sw	s5,20(sp)
   10df0:	d422                	sw	s0,40(sp)
   10df2:	d226                	sw	s1,36(sp)
   10df4:	c266                	sw	s9,4(sp)
   10df6:	59fd                	li	s3,-1
   10df8:	4a85                	li	s5,1
   10dfa:	00492483          	lw	s1,4(s2)
   10dfe:	fff48413          	addi	s0,s1,-1
   10e02:	00044e63          	bltz	s0,10e1e <__call_exitprocs+0x5a>
   10e06:	048a                	slli	s1,s1,0x2
   10e08:	94ca                	add	s1,s1,s2
   10e0a:	020c0963          	beqz	s8,10e3c <__call_exitprocs+0x78>
   10e0e:	1044a783          	lw	a5,260(s1)
   10e12:	03878563          	beq	a5,s8,10e3c <__call_exitprocs+0x78>
   10e16:	147d                	addi	s0,s0,-1
   10e18:	14f1                	addi	s1,s1,-4
   10e1a:	ff341ae3          	bne	s0,s3,10e0e <__call_exitprocs+0x4a>
   10e1e:	5422                	lw	s0,40(sp)
   10e20:	5492                	lw	s1,36(sp)
   10e22:	49f2                	lw	s3,28(sp)
   10e24:	4ad2                	lw	s5,20(sp)
   10e26:	4c92                	lw	s9,4(sp)
   10e28:	000ba503          	lw	a0,0(s7)
   10e2c:	50b2                	lw	ra,44(sp)
   10e2e:	5902                	lw	s2,32(sp)
   10e30:	4a62                	lw	s4,24(sp)
   10e32:	4b42                	lw	s6,16(sp)
   10e34:	4bb2                	lw	s7,12(sp)
   10e36:	4c22                	lw	s8,8(sp)
   10e38:	6145                	addi	sp,sp,48
   10e3a:	b5b9                	j	10c88 <__retarget_lock_release_recursive>
   10e3c:	00492783          	lw	a5,4(s2)
   10e40:	40d4                	lw	a3,4(s1)
   10e42:	17fd                	addi	a5,a5,-1
   10e44:	04878c63          	beq	a5,s0,10e9c <__call_exitprocs+0xd8>
   10e48:	0004a223          	sw	zero,4(s1)
   10e4c:	c295                	beqz	a3,10e70 <__call_exitprocs+0xac>
   10e4e:	18892783          	lw	a5,392(s2)
   10e52:	008a9733          	sll	a4,s5,s0
   10e56:	00492c83          	lw	s9,4(s2)
   10e5a:	8ff9                	and	a5,a5,a4
   10e5c:	ef99                	bnez	a5,10e7a <__call_exitprocs+0xb6>
   10e5e:	9682                	jalr	a3
   10e60:	00492703          	lw	a4,4(s2)
   10e64:	000a2783          	lw	a5,0(s4)
   10e68:	03971763          	bne	a4,s9,10e96 <__call_exitprocs+0xd2>
   10e6c:	03279563          	bne	a5,s2,10e96 <__call_exitprocs+0xd2>
   10e70:	147d                	addi	s0,s0,-1
   10e72:	14f1                	addi	s1,s1,-4
   10e74:	f9341be3          	bne	s0,s3,10e0a <__call_exitprocs+0x46>
   10e78:	b75d                	j	10e1e <__call_exitprocs+0x5a>
   10e7a:	18c92783          	lw	a5,396(s2)
   10e7e:	0844a583          	lw	a1,132(s1)
   10e82:	8f7d                	and	a4,a4,a5
   10e84:	ef19                	bnez	a4,10ea2 <__call_exitprocs+0xde>
   10e86:	855a                	mv	a0,s6
   10e88:	9682                	jalr	a3
   10e8a:	00492703          	lw	a4,4(s2)
   10e8e:	000a2783          	lw	a5,0(s4)
   10e92:	fd970de3          	beq	a4,s9,10e6c <__call_exitprocs+0xa8>
   10e96:	d7c1                	beqz	a5,10e1e <__call_exitprocs+0x5a>
   10e98:	893e                	mv	s2,a5
   10e9a:	b785                	j	10dfa <__call_exitprocs+0x36>
   10e9c:	00892223          	sw	s0,4(s2)
   10ea0:	b775                	j	10e4c <__call_exitprocs+0x88>
   10ea2:	852e                	mv	a0,a1
   10ea4:	9682                	jalr	a3
   10ea6:	bf6d                	j	10e60 <__call_exitprocs+0x9c>

00010ea8 <_malloc_trim_r>:
   10ea8:	1101                	addi	sp,sp,-32
   10eaa:	cc22                	sw	s0,24(sp)
   10eac:	ca26                	sw	s1,20(sp)
   10eae:	c84a                	sw	s2,16(sp)
   10eb0:	c64e                	sw	s3,12(sp)
   10eb2:	c452                	sw	s4,8(sp)
   10eb4:	89ae                	mv	s3,a1
   10eb6:	ce06                	sw	ra,28(sp)
   10eb8:	892a                	mv	s2,a0
   10eba:	00001a17          	auipc	s4,0x1
   10ebe:	286a0a13          	addi	s4,s4,646 # 12140 <__malloc_av_>
   10ec2:	0a3000ef          	jal	11764 <__malloc_lock>
   10ec6:	008a2783          	lw	a5,8(s4)
   10eca:	6405                	lui	s0,0x1
   10ecc:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   10ece:	43c4                	lw	s1,4(a5)
   10ed0:	6785                	lui	a5,0x1
   10ed2:	98f1                	andi	s1,s1,-4
   10ed4:	9426                	add	s0,s0,s1
   10ed6:	41340433          	sub	s0,s0,s3
   10eda:	8031                	srli	s0,s0,0xc
   10edc:	147d                	addi	s0,s0,-1
   10ede:	0432                	slli	s0,s0,0xc
   10ee0:	00f44b63          	blt	s0,a5,10ef6 <_malloc_trim_r+0x4e>
   10ee4:	4581                	li	a1,0
   10ee6:	854a                	mv	a0,s2
   10ee8:	419000ef          	jal	11b00 <_sbrk_r>
   10eec:	008a2783          	lw	a5,8(s4)
   10ef0:	97a6                	add	a5,a5,s1
   10ef2:	00f50e63          	beq	a0,a5,10f0e <_malloc_trim_r+0x66>
   10ef6:	854a                	mv	a0,s2
   10ef8:	075000ef          	jal	1176c <__malloc_unlock>
   10efc:	40f2                	lw	ra,28(sp)
   10efe:	4462                	lw	s0,24(sp)
   10f00:	44d2                	lw	s1,20(sp)
   10f02:	4942                	lw	s2,16(sp)
   10f04:	49b2                	lw	s3,12(sp)
   10f06:	4a22                	lw	s4,8(sp)
   10f08:	4501                	li	a0,0
   10f0a:	6105                	addi	sp,sp,32
   10f0c:	8082                	ret
   10f0e:	408005b3          	neg	a1,s0
   10f12:	854a                	mv	a0,s2
   10f14:	3ed000ef          	jal	11b00 <_sbrk_r>
   10f18:	57fd                	li	a5,-1
   10f1a:	02f50963          	beq	a0,a5,10f4c <_malloc_trim_r+0xa4>
   10f1e:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   10f22:	008a2683          	lw	a3,8(s4)
   10f26:	431c                	lw	a5,0(a4)
   10f28:	8c81                	sub	s1,s1,s0
   10f2a:	0014e493          	ori	s1,s1,1
   10f2e:	854a                	mv	a0,s2
   10f30:	8f81                	sub	a5,a5,s0
   10f32:	c2c4                	sw	s1,4(a3)
   10f34:	c31c                	sw	a5,0(a4)
   10f36:	037000ef          	jal	1176c <__malloc_unlock>
   10f3a:	40f2                	lw	ra,28(sp)
   10f3c:	4462                	lw	s0,24(sp)
   10f3e:	44d2                	lw	s1,20(sp)
   10f40:	4942                	lw	s2,16(sp)
   10f42:	49b2                	lw	s3,12(sp)
   10f44:	4a22                	lw	s4,8(sp)
   10f46:	4505                	li	a0,1
   10f48:	6105                	addi	sp,sp,32
   10f4a:	8082                	ret
   10f4c:	4581                	li	a1,0
   10f4e:	854a                	mv	a0,s2
   10f50:	3b1000ef          	jal	11b00 <_sbrk_r>
   10f54:	008a2703          	lw	a4,8(s4)
   10f58:	46bd                	li	a3,15
   10f5a:	40e507b3          	sub	a5,a0,a4
   10f5e:	f8f6dce3          	bge	a3,a5,10ef6 <_malloc_trim_r+0x4e>
   10f62:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   10f66:	0017e793          	ori	a5,a5,1
   10f6a:	c35c                	sw	a5,4(a4)
   10f6c:	8d15                	sub	a0,a0,a3
   10f6e:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   10f72:	b751                	j	10ef6 <_malloc_trim_r+0x4e>

00010f74 <_free_r>:
   10f74:	cdf1                	beqz	a1,11050 <_free_r+0xdc>
   10f76:	1141                	addi	sp,sp,-16
   10f78:	c422                	sw	s0,8(sp)
   10f7a:	c226                	sw	s1,4(sp)
   10f7c:	842e                	mv	s0,a1
   10f7e:	84aa                	mv	s1,a0
   10f80:	c606                	sw	ra,12(sp)
   10f82:	7e2000ef          	jal	11764 <__malloc_lock>
   10f86:	ffc42583          	lw	a1,-4(s0)
   10f8a:	ff840713          	addi	a4,s0,-8
   10f8e:	00001817          	auipc	a6,0x1
   10f92:	1b280813          	addi	a6,a6,434 # 12140 <__malloc_av_>
   10f96:	ffe5f793          	andi	a5,a1,-2
   10f9a:	00f70633          	add	a2,a4,a5
   10f9e:	4254                	lw	a3,4(a2)
   10fa0:	00882503          	lw	a0,8(a6)
   10fa4:	0015f893          	andi	a7,a1,1
   10fa8:	9af1                	andi	a3,a3,-4
   10faa:	10c50d63          	beq	a0,a2,110c4 <_free_r+0x150>
   10fae:	c254                	sw	a3,4(a2)
   10fb0:	00d60533          	add	a0,a2,a3
   10fb4:	4148                	lw	a0,4(a0)
   10fb6:	8905                	andi	a0,a0,1
   10fb8:	06089963          	bnez	a7,1102a <_free_r+0xb6>
   10fbc:	ff842303          	lw	t1,-8(s0)
   10fc0:	00001897          	auipc	a7,0x1
   10fc4:	18888893          	addi	a7,a7,392 # 12148 <__malloc_av_+0x8>
   10fc8:	40670733          	sub	a4,a4,t1
   10fcc:	470c                	lw	a1,8(a4)
   10fce:	979a                	add	a5,a5,t1
   10fd0:	0d158e63          	beq	a1,a7,110ac <_free_r+0x138>
   10fd4:	00c72303          	lw	t1,12(a4)
   10fd8:	0065a623          	sw	t1,12(a1)
   10fdc:	00b32423          	sw	a1,8(t1) # 10166 <frame_dummy+0x1a>
   10fe0:	10050b63          	beqz	a0,110f6 <_free_r+0x182>
   10fe4:	0017e693          	ori	a3,a5,1
   10fe8:	c354                	sw	a3,4(a4)
   10fea:	c21c                	sw	a5,0(a2)
   10fec:	1ff00693          	li	a3,511
   10ff0:	06f6ea63          	bltu	a3,a5,11064 <_free_r+0xf0>
   10ff4:	ff87f693          	andi	a3,a5,-8
   10ff8:	06a1                	addi	a3,a3,8
   10ffa:	00482583          	lw	a1,4(a6)
   10ffe:	96c2                	add	a3,a3,a6
   11000:	4290                	lw	a2,0(a3)
   11002:	0057d513          	srli	a0,a5,0x5
   11006:	4785                	li	a5,1
   11008:	00a797b3          	sll	a5,a5,a0
   1100c:	8fcd                	or	a5,a5,a1
   1100e:	ff868593          	addi	a1,a3,-8
   11012:	c710                	sw	a2,8(a4)
   11014:	c74c                	sw	a1,12(a4)
   11016:	00f82223          	sw	a5,4(a6)
   1101a:	c298                	sw	a4,0(a3)
   1101c:	c658                	sw	a4,12(a2)
   1101e:	4422                	lw	s0,8(sp)
   11020:	40b2                	lw	ra,12(sp)
   11022:	8526                	mv	a0,s1
   11024:	4492                	lw	s1,4(sp)
   11026:	0141                	addi	sp,sp,16
   11028:	a791                	j	1176c <__malloc_unlock>
   1102a:	e505                	bnez	a0,11052 <_free_r+0xde>
   1102c:	97b6                	add	a5,a5,a3
   1102e:	00001897          	auipc	a7,0x1
   11032:	11a88893          	addi	a7,a7,282 # 12148 <__malloc_av_+0x8>
   11036:	4614                	lw	a3,8(a2)
   11038:	0017e513          	ori	a0,a5,1
   1103c:	00f705b3          	add	a1,a4,a5
   11040:	0f168763          	beq	a3,a7,1112e <_free_r+0x1ba>
   11044:	4650                	lw	a2,12(a2)
   11046:	c6d0                	sw	a2,12(a3)
   11048:	c614                	sw	a3,8(a2)
   1104a:	c348                	sw	a0,4(a4)
   1104c:	c19c                	sw	a5,0(a1)
   1104e:	bf79                	j	10fec <_free_r+0x78>
   11050:	8082                	ret
   11052:	0015e593          	ori	a1,a1,1
   11056:	feb42e23          	sw	a1,-4(s0)
   1105a:	c21c                	sw	a5,0(a2)
   1105c:	1ff00693          	li	a3,511
   11060:	f8f6fae3          	bgeu	a3,a5,10ff4 <_free_r+0x80>
   11064:	0097d693          	srli	a3,a5,0x9
   11068:	4611                	li	a2,4
   1106a:	08d66863          	bltu	a2,a3,110fa <_free_r+0x186>
   1106e:	0067d693          	srli	a3,a5,0x6
   11072:	03968593          	addi	a1,a3,57
   11076:	058e                	slli	a1,a1,0x3
   11078:	03868613          	addi	a2,a3,56
   1107c:	95c2                	add	a1,a1,a6
   1107e:	4194                	lw	a3,0(a1)
   11080:	15e1                	addi	a1,a1,-8
   11082:	00d59663          	bne	a1,a3,1108e <_free_r+0x11a>
   11086:	a87d                	j	11144 <_free_r+0x1d0>
   11088:	4694                	lw	a3,8(a3)
   1108a:	00d58663          	beq	a1,a3,11096 <_free_r+0x122>
   1108e:	42d0                	lw	a2,4(a3)
   11090:	9a71                	andi	a2,a2,-4
   11092:	fec7ebe3          	bltu	a5,a2,11088 <_free_r+0x114>
   11096:	46cc                	lw	a1,12(a3)
   11098:	c74c                	sw	a1,12(a4)
   1109a:	c714                	sw	a3,8(a4)
   1109c:	4422                	lw	s0,8(sp)
   1109e:	40b2                	lw	ra,12(sp)
   110a0:	c598                	sw	a4,8(a1)
   110a2:	8526                	mv	a0,s1
   110a4:	4492                	lw	s1,4(sp)
   110a6:	c6d8                	sw	a4,12(a3)
   110a8:	0141                	addi	sp,sp,16
   110aa:	a5c9                	j	1176c <__malloc_unlock>
   110ac:	e535                	bnez	a0,11118 <_free_r+0x1a4>
   110ae:	464c                	lw	a1,12(a2)
   110b0:	4610                	lw	a2,8(a2)
   110b2:	96be                	add	a3,a3,a5
   110b4:	0016e793          	ori	a5,a3,1
   110b8:	c64c                	sw	a1,12(a2)
   110ba:	c590                	sw	a2,8(a1)
   110bc:	c35c                	sw	a5,4(a4)
   110be:	9736                	add	a4,a4,a3
   110c0:	c314                	sw	a3,0(a4)
   110c2:	bfb1                	j	1101e <_free_r+0xaa>
   110c4:	96be                	add	a3,a3,a5
   110c6:	00089a63          	bnez	a7,110da <_free_r+0x166>
   110ca:	ff842583          	lw	a1,-8(s0)
   110ce:	8f0d                	sub	a4,a4,a1
   110d0:	475c                	lw	a5,12(a4)
   110d2:	4710                	lw	a2,8(a4)
   110d4:	96ae                	add	a3,a3,a1
   110d6:	c65c                	sw	a5,12(a2)
   110d8:	c790                	sw	a2,8(a5)
   110da:	0016e613          	ori	a2,a3,1
   110de:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   110e2:	c350                	sw	a2,4(a4)
   110e4:	00e82423          	sw	a4,8(a6)
   110e8:	f2f6ebe3          	bltu	a3,a5,1101e <_free_r+0xaa>
   110ec:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   110f0:	8526                	mv	a0,s1
   110f2:	3b5d                	jal	10ea8 <_malloc_trim_r>
   110f4:	b72d                	j	1101e <_free_r+0xaa>
   110f6:	97b6                	add	a5,a5,a3
   110f8:	bf3d                	j	11036 <_free_r+0xc2>
   110fa:	4651                	li	a2,20
   110fc:	02d67363          	bgeu	a2,a3,11122 <_free_r+0x1ae>
   11100:	05400613          	li	a2,84
   11104:	04d66a63          	bltu	a2,a3,11158 <_free_r+0x1e4>
   11108:	00c7d693          	srli	a3,a5,0xc
   1110c:	06f68593          	addi	a1,a3,111
   11110:	058e                	slli	a1,a1,0x3
   11112:	06e68613          	addi	a2,a3,110
   11116:	b79d                	j	1107c <_free_r+0x108>
   11118:	0017e693          	ori	a3,a5,1
   1111c:	c354                	sw	a3,4(a4)
   1111e:	c21c                	sw	a5,0(a2)
   11120:	bdfd                	j	1101e <_free_r+0xaa>
   11122:	05c68593          	addi	a1,a3,92
   11126:	058e                	slli	a1,a1,0x3
   11128:	05b68613          	addi	a2,a3,91
   1112c:	bf81                	j	1107c <_free_r+0x108>
   1112e:	00e82a23          	sw	a4,20(a6)
   11132:	00e82823          	sw	a4,16(a6)
   11136:	01172623          	sw	a7,12(a4)
   1113a:	01172423          	sw	a7,8(a4)
   1113e:	c348                	sw	a0,4(a4)
   11140:	c19c                	sw	a5,0(a1)
   11142:	bdf1                	j	1101e <_free_r+0xaa>
   11144:	00482503          	lw	a0,4(a6)
   11148:	8609                	srai	a2,a2,0x2
   1114a:	4785                	li	a5,1
   1114c:	00c797b3          	sll	a5,a5,a2
   11150:	8fc9                	or	a5,a5,a0
   11152:	00f82223          	sw	a5,4(a6)
   11156:	b789                	j	11098 <_free_r+0x124>
   11158:	15400613          	li	a2,340
   1115c:	00d66a63          	bltu	a2,a3,11170 <_free_r+0x1fc>
   11160:	00f7d693          	srli	a3,a5,0xf
   11164:	07868593          	addi	a1,a3,120
   11168:	058e                	slli	a1,a1,0x3
   1116a:	07768613          	addi	a2,a3,119
   1116e:	b739                	j	1107c <_free_r+0x108>
   11170:	55400613          	li	a2,1364
   11174:	00d66a63          	bltu	a2,a3,11188 <_free_r+0x214>
   11178:	0127d693          	srli	a3,a5,0x12
   1117c:	07d68593          	addi	a1,a3,125
   11180:	058e                	slli	a1,a1,0x3
   11182:	07c68613          	addi	a2,a3,124
   11186:	bddd                	j	1107c <_free_r+0x108>
   11188:	3f800593          	li	a1,1016
   1118c:	07e00613          	li	a2,126
   11190:	b5f5                	j	1107c <_free_r+0x108>

00011192 <_malloc_r>:
   11192:	7179                	addi	sp,sp,-48
   11194:	d04a                	sw	s2,32(sp)
   11196:	d606                	sw	ra,44(sp)
   11198:	d422                	sw	s0,40(sp)
   1119a:	d226                	sw	s1,36(sp)
   1119c:	ce4e                	sw	s3,28(sp)
   1119e:	00b58793          	addi	a5,a1,11
   111a2:	4759                	li	a4,22
   111a4:	892a                	mv	s2,a0
   111a6:	04f76863          	bltu	a4,a5,111f6 <_malloc_r+0x64>
   111aa:	44c1                	li	s1,16
   111ac:	16b4ea63          	bltu	s1,a1,11320 <_malloc_r+0x18e>
   111b0:	2b55                	jal	11764 <__malloc_lock>
   111b2:	47e1                	li	a5,24
   111b4:	4589                	li	a1,2
   111b6:	00001997          	auipc	s3,0x1
   111ba:	f8a98993          	addi	s3,s3,-118 # 12140 <__malloc_av_>
   111be:	97ce                	add	a5,a5,s3
   111c0:	43c0                	lw	s0,4(a5)
   111c2:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   111c6:	30e40963          	beq	s0,a4,114d8 <_malloc_r+0x346>
   111ca:	405c                	lw	a5,4(s0)
   111cc:	4454                	lw	a3,12(s0)
   111ce:	4410                	lw	a2,8(s0)
   111d0:	9bf1                	andi	a5,a5,-4
   111d2:	97a2                	add	a5,a5,s0
   111d4:	43d8                	lw	a4,4(a5)
   111d6:	c654                	sw	a3,12(a2)
   111d8:	c690                	sw	a2,8(a3)
   111da:	00176713          	ori	a4,a4,1
   111de:	854a                	mv	a0,s2
   111e0:	c3d8                	sw	a4,4(a5)
   111e2:	2369                	jal	1176c <__malloc_unlock>
   111e4:	50b2                	lw	ra,44(sp)
   111e6:	00840513          	addi	a0,s0,8
   111ea:	5422                	lw	s0,40(sp)
   111ec:	5492                	lw	s1,36(sp)
   111ee:	5902                	lw	s2,32(sp)
   111f0:	49f2                	lw	s3,28(sp)
   111f2:	6145                	addi	sp,sp,48
   111f4:	8082                	ret
   111f6:	ff87f493          	andi	s1,a5,-8
   111fa:	1207c363          	bltz	a5,11320 <_malloc_r+0x18e>
   111fe:	12b4e163          	bltu	s1,a1,11320 <_malloc_r+0x18e>
   11202:	238d                	jal	11764 <__malloc_lock>
   11204:	1f700793          	li	a5,503
   11208:	3897f763          	bgeu	a5,s1,11596 <_malloc_r+0x404>
   1120c:	0094d793          	srli	a5,s1,0x9
   11210:	12078363          	beqz	a5,11336 <_malloc_r+0x1a4>
   11214:	4711                	li	a4,4
   11216:	30f76663          	bltu	a4,a5,11522 <_malloc_r+0x390>
   1121a:	0064d793          	srli	a5,s1,0x6
   1121e:	03978593          	addi	a1,a5,57
   11222:	03878813          	addi	a6,a5,56
   11226:	00359613          	slli	a2,a1,0x3
   1122a:	00001997          	auipc	s3,0x1
   1122e:	f1698993          	addi	s3,s3,-234 # 12140 <__malloc_av_>
   11232:	964e                	add	a2,a2,s3
   11234:	4240                	lw	s0,4(a2)
   11236:	1661                	addi	a2,a2,-8
   11238:	02860163          	beq	a2,s0,1125a <_malloc_r+0xc8>
   1123c:	453d                	li	a0,15
   1123e:	a039                	j	1124c <_malloc_r+0xba>
   11240:	4454                	lw	a3,12(s0)
   11242:	26075863          	bgez	a4,114b2 <_malloc_r+0x320>
   11246:	00d60a63          	beq	a2,a3,1125a <_malloc_r+0xc8>
   1124a:	8436                	mv	s0,a3
   1124c:	405c                	lw	a5,4(s0)
   1124e:	9bf1                	andi	a5,a5,-4
   11250:	40978733          	sub	a4,a5,s1
   11254:	fee556e3          	bge	a0,a4,11240 <_malloc_r+0xae>
   11258:	85c2                	mv	a1,a6
   1125a:	0109a403          	lw	s0,16(s3)
   1125e:	00001897          	auipc	a7,0x1
   11262:	eea88893          	addi	a7,a7,-278 # 12148 <__malloc_av_+0x8>
   11266:	1f140c63          	beq	s0,a7,1145e <_malloc_r+0x2cc>
   1126a:	405c                	lw	a5,4(s0)
   1126c:	46bd                	li	a3,15
   1126e:	9bf1                	andi	a5,a5,-4
   11270:	40978733          	sub	a4,a5,s1
   11274:	32e6c663          	blt	a3,a4,115a0 <_malloc_r+0x40e>
   11278:	0119aa23          	sw	a7,20(s3)
   1127c:	0119a823          	sw	a7,16(s3)
   11280:	30075163          	bgez	a4,11582 <_malloc_r+0x3f0>
   11284:	1ff00713          	li	a4,511
   11288:	0049a503          	lw	a0,4(s3)
   1128c:	24f76b63          	bltu	a4,a5,114e2 <_malloc_r+0x350>
   11290:	ff87f713          	andi	a4,a5,-8
   11294:	0721                	addi	a4,a4,8
   11296:	974e                	add	a4,a4,s3
   11298:	4314                	lw	a3,0(a4)
   1129a:	0057d613          	srli	a2,a5,0x5
   1129e:	4785                	li	a5,1
   112a0:	00c797b3          	sll	a5,a5,a2
   112a4:	8d5d                	or	a0,a0,a5
   112a6:	ff870793          	addi	a5,a4,-8
   112aa:	c414                	sw	a3,8(s0)
   112ac:	c45c                	sw	a5,12(s0)
   112ae:	00a9a223          	sw	a0,4(s3)
   112b2:	c300                	sw	s0,0(a4)
   112b4:	c6c0                	sw	s0,12(a3)
   112b6:	4025d793          	srai	a5,a1,0x2
   112ba:	4605                	li	a2,1
   112bc:	00f61633          	sll	a2,a2,a5
   112c0:	08c56263          	bltu	a0,a2,11344 <_malloc_r+0x1b2>
   112c4:	00a677b3          	and	a5,a2,a0
   112c8:	ef81                	bnez	a5,112e0 <_malloc_r+0x14e>
   112ca:	0606                	slli	a2,a2,0x1
   112cc:	99f1                	andi	a1,a1,-4
   112ce:	00a677b3          	and	a5,a2,a0
   112d2:	0591                	addi	a1,a1,4
   112d4:	e791                	bnez	a5,112e0 <_malloc_r+0x14e>
   112d6:	0606                	slli	a2,a2,0x1
   112d8:	00a677b3          	and	a5,a2,a0
   112dc:	0591                	addi	a1,a1,4
   112de:	dfe5                	beqz	a5,112d6 <_malloc_r+0x144>
   112e0:	483d                	li	a6,15
   112e2:	00359313          	slli	t1,a1,0x3
   112e6:	934e                	add	t1,t1,s3
   112e8:	851a                	mv	a0,t1
   112ea:	455c                	lw	a5,12(a0)
   112ec:	8e2e                	mv	t3,a1
   112ee:	24f50a63          	beq	a0,a5,11542 <_malloc_r+0x3b0>
   112f2:	43d8                	lw	a4,4(a5)
   112f4:	843e                	mv	s0,a5
   112f6:	47dc                	lw	a5,12(a5)
   112f8:	9b71                	andi	a4,a4,-4
   112fa:	409706b3          	sub	a3,a4,s1
   112fe:	24d84963          	blt	a6,a3,11550 <_malloc_r+0x3be>
   11302:	fe06c6e3          	bltz	a3,112ee <_malloc_r+0x15c>
   11306:	9722                	add	a4,a4,s0
   11308:	4354                	lw	a3,4(a4)
   1130a:	4410                	lw	a2,8(s0)
   1130c:	854a                	mv	a0,s2
   1130e:	0016e693          	ori	a3,a3,1
   11312:	c354                	sw	a3,4(a4)
   11314:	c65c                	sw	a5,12(a2)
   11316:	c790                	sw	a2,8(a5)
   11318:	2991                	jal	1176c <__malloc_unlock>
   1131a:	00840513          	addi	a0,s0,8
   1131e:	a029                	j	11328 <_malloc_r+0x196>
   11320:	47b1                	li	a5,12
   11322:	00f92023          	sw	a5,0(s2)
   11326:	4501                	li	a0,0
   11328:	50b2                	lw	ra,44(sp)
   1132a:	5422                	lw	s0,40(sp)
   1132c:	5492                	lw	s1,36(sp)
   1132e:	5902                	lw	s2,32(sp)
   11330:	49f2                	lw	s3,28(sp)
   11332:	6145                	addi	sp,sp,48
   11334:	8082                	ret
   11336:	20000613          	li	a2,512
   1133a:	04000593          	li	a1,64
   1133e:	03f00813          	li	a6,63
   11342:	b5e5                	j	1122a <_malloc_r+0x98>
   11344:	0089a403          	lw	s0,8(s3)
   11348:	c85a                	sw	s6,16(sp)
   1134a:	405c                	lw	a5,4(s0)
   1134c:	ffc7fb13          	andi	s6,a5,-4
   11350:	009b6763          	bltu	s6,s1,1135e <_malloc_r+0x1cc>
   11354:	409b0733          	sub	a4,s6,s1
   11358:	47bd                	li	a5,15
   1135a:	12e7c763          	blt	a5,a4,11488 <_malloc_r+0x2f6>
   1135e:	c266                	sw	s9,4(sp)
   11360:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   11364:	ca56                	sw	s5,20(sp)
   11366:	000ca703          	lw	a4,0(s9)
   1136a:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   1136e:	cc52                	sw	s4,24(sp)
   11370:	c65e                	sw	s7,12(sp)
   11372:	57fd                	li	a5,-1
   11374:	01640a33          	add	s4,s0,s6
   11378:	9aa6                	add	s5,s5,s1
   1137a:	2cf70163          	beq	a4,a5,1163c <_malloc_r+0x4aa>
   1137e:	6785                	lui	a5,0x1
   11380:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   11382:	9abe                	add	s5,s5,a5
   11384:	77fd                	lui	a5,0xfffff
   11386:	00fafab3          	and	s5,s5,a5
   1138a:	85d6                	mv	a1,s5
   1138c:	854a                	mv	a0,s2
   1138e:	772000ef          	jal	11b00 <_sbrk_r>
   11392:	57fd                	li	a5,-1
   11394:	8baa                	mv	s7,a0
   11396:	32f50963          	beq	a0,a5,116c8 <_malloc_r+0x536>
   1139a:	c462                	sw	s8,8(sp)
   1139c:	0d456463          	bltu	a0,s4,11464 <_malloc_r+0x2d2>
   113a0:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   113a4:	000c2583          	lw	a1,0(s8)
   113a8:	95d6                	add	a1,a1,s5
   113aa:	00bc2023          	sw	a1,0(s8)
   113ae:	872e                	mv	a4,a1
   113b0:	32aa0063          	beq	s4,a0,116d0 <_malloc_r+0x53e>
   113b4:	000ca683          	lw	a3,0(s9)
   113b8:	57fd                	li	a5,-1
   113ba:	32f68863          	beq	a3,a5,116ea <_malloc_r+0x558>
   113be:	414b87b3          	sub	a5,s7,s4
   113c2:	97ba                	add	a5,a5,a4
   113c4:	00fc2023          	sw	a5,0(s8)
   113c8:	007bfc93          	andi	s9,s7,7
   113cc:	280c8263          	beqz	s9,11650 <_malloc_r+0x4be>
   113d0:	419b8bb3          	sub	s7,s7,s9
   113d4:	6585                	lui	a1,0x1
   113d6:	0ba1                	addi	s7,s7,8
   113d8:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   113da:	9ade                	add	s5,s5,s7
   113dc:	419585b3          	sub	a1,a1,s9
   113e0:	415585b3          	sub	a1,a1,s5
   113e4:	05d2                	slli	a1,a1,0x14
   113e6:	0145da13          	srli	s4,a1,0x14
   113ea:	85d2                	mv	a1,s4
   113ec:	854a                	mv	a0,s2
   113ee:	2f09                	jal	11b00 <_sbrk_r>
   113f0:	57fd                	li	a5,-1
   113f2:	32f50863          	beq	a0,a5,11722 <_malloc_r+0x590>
   113f6:	41750533          	sub	a0,a0,s7
   113fa:	01450ab3          	add	s5,a0,s4
   113fe:	000c2703          	lw	a4,0(s8)
   11402:	0179a423          	sw	s7,8(s3)
   11406:	001ae793          	ori	a5,s5,1
   1140a:	00ea05b3          	add	a1,s4,a4
   1140e:	00fba223          	sw	a5,4(s7)
   11412:	00bc2023          	sw	a1,0(s8)
   11416:	03340563          	beq	s0,s3,11440 <_malloc_r+0x2ae>
   1141a:	46bd                	li	a3,15
   1141c:	2566f963          	bgeu	a3,s6,1166e <_malloc_r+0x4dc>
   11420:	4058                	lw	a4,4(s0)
   11422:	ff4b0793          	addi	a5,s6,-12
   11426:	9be1                	andi	a5,a5,-8
   11428:	8b05                	andi	a4,a4,1
   1142a:	8f5d                	or	a4,a4,a5
   1142c:	c058                	sw	a4,4(s0)
   1142e:	4615                	li	a2,5
   11430:	00f40733          	add	a4,s0,a5
   11434:	c350                	sw	a2,4(a4)
   11436:	c710                	sw	a2,8(a4)
   11438:	1ef6e863          	bltu	a3,a5,11628 <_malloc_r+0x496>
   1143c:	004ba783          	lw	a5,4(s7)
   11440:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   11444:	4314                	lw	a3,0(a4)
   11446:	00b6f363          	bgeu	a3,a1,1144c <_malloc_r+0x2ba>
   1144a:	c30c                	sw	a1,0(a4)
   1144c:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   11450:	4314                	lw	a3,0(a4)
   11452:	00b6f363          	bgeu	a3,a1,11458 <_malloc_r+0x2c6>
   11456:	c30c                	sw	a1,0(a4)
   11458:	4c22                	lw	s8,8(sp)
   1145a:	845e                	mv	s0,s7
   1145c:	a811                	j	11470 <_malloc_r+0x2de>
   1145e:	0049a503          	lw	a0,4(s3)
   11462:	bd91                	j	112b6 <_malloc_r+0x124>
   11464:	25340a63          	beq	s0,s3,116b8 <_malloc_r+0x526>
   11468:	0089a403          	lw	s0,8(s3)
   1146c:	4c22                	lw	s8,8(sp)
   1146e:	405c                	lw	a5,4(s0)
   11470:	9bf1                	andi	a5,a5,-4
   11472:	40978733          	sub	a4,a5,s1
   11476:	2097e063          	bltu	a5,s1,11676 <_malloc_r+0x4e4>
   1147a:	47bd                	li	a5,15
   1147c:	1ee7dd63          	bge	a5,a4,11676 <_malloc_r+0x4e4>
   11480:	4a62                	lw	s4,24(sp)
   11482:	4ad2                	lw	s5,20(sp)
   11484:	4bb2                	lw	s7,12(sp)
   11486:	4c92                	lw	s9,4(sp)
   11488:	0014e793          	ori	a5,s1,1
   1148c:	c05c                	sw	a5,4(s0)
   1148e:	94a2                	add	s1,s1,s0
   11490:	0099a423          	sw	s1,8(s3)
   11494:	00176713          	ori	a4,a4,1
   11498:	854a                	mv	a0,s2
   1149a:	c0d8                	sw	a4,4(s1)
   1149c:	2cc1                	jal	1176c <__malloc_unlock>
   1149e:	50b2                	lw	ra,44(sp)
   114a0:	00840513          	addi	a0,s0,8
   114a4:	5422                	lw	s0,40(sp)
   114a6:	4b42                	lw	s6,16(sp)
   114a8:	5492                	lw	s1,36(sp)
   114aa:	5902                	lw	s2,32(sp)
   114ac:	49f2                	lw	s3,28(sp)
   114ae:	6145                	addi	sp,sp,48
   114b0:	8082                	ret
   114b2:	4410                	lw	a2,8(s0)
   114b4:	97a2                	add	a5,a5,s0
   114b6:	43d8                	lw	a4,4(a5)
   114b8:	c654                	sw	a3,12(a2)
   114ba:	c690                	sw	a2,8(a3)
   114bc:	00176713          	ori	a4,a4,1
   114c0:	854a                	mv	a0,s2
   114c2:	c3d8                	sw	a4,4(a5)
   114c4:	2465                	jal	1176c <__malloc_unlock>
   114c6:	50b2                	lw	ra,44(sp)
   114c8:	00840513          	addi	a0,s0,8
   114cc:	5422                	lw	s0,40(sp)
   114ce:	5492                	lw	s1,36(sp)
   114d0:	5902                	lw	s2,32(sp)
   114d2:	49f2                	lw	s3,28(sp)
   114d4:	6145                	addi	sp,sp,48
   114d6:	8082                	ret
   114d8:	47c0                	lw	s0,12(a5)
   114da:	0589                	addi	a1,a1,2
   114dc:	d6878fe3          	beq	a5,s0,1125a <_malloc_r+0xc8>
   114e0:	b1ed                	j	111ca <_malloc_r+0x38>
   114e2:	0097d713          	srli	a4,a5,0x9
   114e6:	4691                	li	a3,4
   114e8:	0ee6f263          	bgeu	a3,a4,115cc <_malloc_r+0x43a>
   114ec:	46d1                	li	a3,20
   114ee:	18e6ec63          	bltu	a3,a4,11686 <_malloc_r+0x4f4>
   114f2:	05c70613          	addi	a2,a4,92
   114f6:	060e                	slli	a2,a2,0x3
   114f8:	05b70693          	addi	a3,a4,91
   114fc:	964e                	add	a2,a2,s3
   114fe:	4218                	lw	a4,0(a2)
   11500:	1661                	addi	a2,a2,-8
   11502:	00e61663          	bne	a2,a4,1150e <_malloc_r+0x37c>
   11506:	aa2d                	j	11640 <_malloc_r+0x4ae>
   11508:	4718                	lw	a4,8(a4)
   1150a:	00e60663          	beq	a2,a4,11516 <_malloc_r+0x384>
   1150e:	4354                	lw	a3,4(a4)
   11510:	9af1                	andi	a3,a3,-4
   11512:	fed7ebe3          	bltu	a5,a3,11508 <_malloc_r+0x376>
   11516:	4750                	lw	a2,12(a4)
   11518:	c450                	sw	a2,12(s0)
   1151a:	c418                	sw	a4,8(s0)
   1151c:	c600                	sw	s0,8(a2)
   1151e:	c740                	sw	s0,12(a4)
   11520:	bb59                	j	112b6 <_malloc_r+0x124>
   11522:	4751                	li	a4,20
   11524:	0af77c63          	bgeu	a4,a5,115dc <_malloc_r+0x44a>
   11528:	05400713          	li	a4,84
   1152c:	16f76963          	bltu	a4,a5,1169e <_malloc_r+0x50c>
   11530:	00c4d793          	srli	a5,s1,0xc
   11534:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   11538:	06e78813          	addi	a6,a5,110
   1153c:	00359613          	slli	a2,a1,0x3
   11540:	b1ed                	j	1122a <_malloc_r+0x98>
   11542:	0e05                	addi	t3,t3,1
   11544:	003e7793          	andi	a5,t3,3
   11548:	0521                	addi	a0,a0,8
   1154a:	c7cd                	beqz	a5,115f4 <_malloc_r+0x462>
   1154c:	455c                	lw	a5,12(a0)
   1154e:	b345                	j	112ee <_malloc_r+0x15c>
   11550:	4410                	lw	a2,8(s0)
   11552:	0014e593          	ori	a1,s1,1
   11556:	c04c                	sw	a1,4(s0)
   11558:	c65c                	sw	a5,12(a2)
   1155a:	c790                	sw	a2,8(a5)
   1155c:	94a2                	add	s1,s1,s0
   1155e:	0099aa23          	sw	s1,20(s3)
   11562:	0099a823          	sw	s1,16(s3)
   11566:	0016e793          	ori	a5,a3,1
   1156a:	9722                	add	a4,a4,s0
   1156c:	0114a623          	sw	a7,12(s1)
   11570:	0114a423          	sw	a7,8(s1)
   11574:	c0dc                	sw	a5,4(s1)
   11576:	854a                	mv	a0,s2
   11578:	c314                	sw	a3,0(a4)
   1157a:	2acd                	jal	1176c <__malloc_unlock>
   1157c:	00840513          	addi	a0,s0,8
   11580:	b365                	j	11328 <_malloc_r+0x196>
   11582:	97a2                	add	a5,a5,s0
   11584:	43d8                	lw	a4,4(a5)
   11586:	854a                	mv	a0,s2
   11588:	00176713          	ori	a4,a4,1
   1158c:	c3d8                	sw	a4,4(a5)
   1158e:	2af9                	jal	1176c <__malloc_unlock>
   11590:	00840513          	addi	a0,s0,8
   11594:	bb51                	j	11328 <_malloc_r+0x196>
   11596:	0034d593          	srli	a1,s1,0x3
   1159a:	00848793          	addi	a5,s1,8
   1159e:	b921                	j	111b6 <_malloc_r+0x24>
   115a0:	0014e693          	ori	a3,s1,1
   115a4:	c054                	sw	a3,4(s0)
   115a6:	94a2                	add	s1,s1,s0
   115a8:	0099aa23          	sw	s1,20(s3)
   115ac:	0099a823          	sw	s1,16(s3)
   115b0:	00176693          	ori	a3,a4,1
   115b4:	97a2                	add	a5,a5,s0
   115b6:	0114a623          	sw	a7,12(s1)
   115ba:	0114a423          	sw	a7,8(s1)
   115be:	c0d4                	sw	a3,4(s1)
   115c0:	854a                	mv	a0,s2
   115c2:	c398                	sw	a4,0(a5)
   115c4:	2265                	jal	1176c <__malloc_unlock>
   115c6:	00840513          	addi	a0,s0,8
   115ca:	bbb9                	j	11328 <_malloc_r+0x196>
   115cc:	0067d713          	srli	a4,a5,0x6
   115d0:	03970613          	addi	a2,a4,57
   115d4:	060e                	slli	a2,a2,0x3
   115d6:	03870693          	addi	a3,a4,56
   115da:	b70d                	j	114fc <_malloc_r+0x36a>
   115dc:	05c78593          	addi	a1,a5,92
   115e0:	05b78813          	addi	a6,a5,91
   115e4:	00359613          	slli	a2,a1,0x3
   115e8:	b189                	j	1122a <_malloc_r+0x98>
   115ea:	00832783          	lw	a5,8(t1)
   115ee:	15fd                	addi	a1,a1,-1
   115f0:	16679763          	bne	a5,t1,1175e <_malloc_r+0x5cc>
   115f4:	0035f793          	andi	a5,a1,3
   115f8:	1361                	addi	t1,t1,-8
   115fa:	fbe5                	bnez	a5,115ea <_malloc_r+0x458>
   115fc:	0049a703          	lw	a4,4(s3)
   11600:	fff64793          	not	a5,a2
   11604:	8ff9                	and	a5,a5,a4
   11606:	00f9a223          	sw	a5,4(s3)
   1160a:	0606                	slli	a2,a2,0x1
   1160c:	d2c7ece3          	bltu	a5,a2,11344 <_malloc_r+0x1b2>
   11610:	d2060ae3          	beqz	a2,11344 <_malloc_r+0x1b2>
   11614:	00f67733          	and	a4,a2,a5
   11618:	e711                	bnez	a4,11624 <_malloc_r+0x492>
   1161a:	0606                	slli	a2,a2,0x1
   1161c:	00f67733          	and	a4,a2,a5
   11620:	0e11                	addi	t3,t3,4
   11622:	df65                	beqz	a4,1161a <_malloc_r+0x488>
   11624:	85f2                	mv	a1,t3
   11626:	b975                	j	112e2 <_malloc_r+0x150>
   11628:	00840593          	addi	a1,s0,8
   1162c:	854a                	mv	a0,s2
   1162e:	947ff0ef          	jal	10f74 <_free_r>
   11632:	000c2583          	lw	a1,0(s8)
   11636:	0089ab83          	lw	s7,8(s3)
   1163a:	b509                	j	1143c <_malloc_r+0x2aa>
   1163c:	0ac1                	addi	s5,s5,16
   1163e:	b3b1                	j	1138a <_malloc_r+0x1f8>
   11640:	8689                	srai	a3,a3,0x2
   11642:	4785                	li	a5,1
   11644:	00d797b3          	sll	a5,a5,a3
   11648:	8d5d                	or	a0,a0,a5
   1164a:	00a9a223          	sw	a0,4(s3)
   1164e:	b5e9                	j	11518 <_malloc_r+0x386>
   11650:	015b85b3          	add	a1,s7,s5
   11654:	40b005b3          	neg	a1,a1
   11658:	05d2                	slli	a1,a1,0x14
   1165a:	0145da13          	srli	s4,a1,0x14
   1165e:	85d2                	mv	a1,s4
   11660:	854a                	mv	a0,s2
   11662:	2979                	jal	11b00 <_sbrk_r>
   11664:	57fd                	li	a5,-1
   11666:	d8f518e3          	bne	a0,a5,113f6 <_malloc_r+0x264>
   1166a:	4a01                	li	s4,0
   1166c:	bb49                	j	113fe <_malloc_r+0x26c>
   1166e:	4c22                	lw	s8,8(sp)
   11670:	4785                	li	a5,1
   11672:	00fba223          	sw	a5,4(s7)
   11676:	854a                	mv	a0,s2
   11678:	28d5                	jal	1176c <__malloc_unlock>
   1167a:	4a62                	lw	s4,24(sp)
   1167c:	4ad2                	lw	s5,20(sp)
   1167e:	4b42                	lw	s6,16(sp)
   11680:	4bb2                	lw	s7,12(sp)
   11682:	4c92                	lw	s9,4(sp)
   11684:	b14d                	j	11326 <_malloc_r+0x194>
   11686:	05400693          	li	a3,84
   1168a:	06e6e363          	bltu	a3,a4,116f0 <_malloc_r+0x55e>
   1168e:	00c7d713          	srli	a4,a5,0xc
   11692:	06f70613          	addi	a2,a4,111
   11696:	060e                	slli	a2,a2,0x3
   11698:	06e70693          	addi	a3,a4,110
   1169c:	b585                	j	114fc <_malloc_r+0x36a>
   1169e:	15400713          	li	a4,340
   116a2:	06f76363          	bltu	a4,a5,11708 <_malloc_r+0x576>
   116a6:	00f4d793          	srli	a5,s1,0xf
   116aa:	07878593          	addi	a1,a5,120
   116ae:	07778813          	addi	a6,a5,119
   116b2:	00359613          	slli	a2,a1,0x3
   116b6:	be95                	j	1122a <_malloc_r+0x98>
   116b8:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   116bc:	000c2703          	lw	a4,0(s8)
   116c0:	9756                	add	a4,a4,s5
   116c2:	00ec2023          	sw	a4,0(s8)
   116c6:	b1fd                	j	113b4 <_malloc_r+0x222>
   116c8:	0089a403          	lw	s0,8(s3)
   116cc:	405c                	lw	a5,4(s0)
   116ce:	b34d                	j	11470 <_malloc_r+0x2de>
   116d0:	01451793          	slli	a5,a0,0x14
   116d4:	ce0790e3          	bnez	a5,113b4 <_malloc_r+0x222>
   116d8:	0089ab83          	lw	s7,8(s3)
   116dc:	015b07b3          	add	a5,s6,s5
   116e0:	0017e793          	ori	a5,a5,1
   116e4:	00fba223          	sw	a5,4(s7)
   116e8:	bba1                	j	11440 <_malloc_r+0x2ae>
   116ea:	017ca023          	sw	s7,0(s9)
   116ee:	b9e9                	j	113c8 <_malloc_r+0x236>
   116f0:	15400693          	li	a3,340
   116f4:	02e6ed63          	bltu	a3,a4,1172e <_malloc_r+0x59c>
   116f8:	00f7d713          	srli	a4,a5,0xf
   116fc:	07870613          	addi	a2,a4,120
   11700:	060e                	slli	a2,a2,0x3
   11702:	07770693          	addi	a3,a4,119
   11706:	bbdd                	j	114fc <_malloc_r+0x36a>
   11708:	55400713          	li	a4,1364
   1170c:	02f76d63          	bltu	a4,a5,11746 <_malloc_r+0x5b4>
   11710:	0124d793          	srli	a5,s1,0x12
   11714:	07d78593          	addi	a1,a5,125
   11718:	07c78813          	addi	a6,a5,124
   1171c:	00359613          	slli	a2,a1,0x3
   11720:	b629                	j	1122a <_malloc_r+0x98>
   11722:	1ce1                	addi	s9,s9,-8
   11724:	9ae6                	add	s5,s5,s9
   11726:	417a8ab3          	sub	s5,s5,s7
   1172a:	4a01                	li	s4,0
   1172c:	b9c9                	j	113fe <_malloc_r+0x26c>
   1172e:	55400693          	li	a3,1364
   11732:	02e6e163          	bltu	a3,a4,11754 <_malloc_r+0x5c2>
   11736:	0127d713          	srli	a4,a5,0x12
   1173a:	07d70613          	addi	a2,a4,125
   1173e:	060e                	slli	a2,a2,0x3
   11740:	07c70693          	addi	a3,a4,124
   11744:	bb65                	j	114fc <_malloc_r+0x36a>
   11746:	3f800613          	li	a2,1016
   1174a:	07f00593          	li	a1,127
   1174e:	07e00813          	li	a6,126
   11752:	bce1                	j	1122a <_malloc_r+0x98>
   11754:	3f800613          	li	a2,1016
   11758:	07e00693          	li	a3,126
   1175c:	b345                	j	114fc <_malloc_r+0x36a>
   1175e:	0049a783          	lw	a5,4(s3)
   11762:	b565                	j	1160a <_malloc_r+0x478>

00011764 <__malloc_lock>:
   11764:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11768:	d14ff06f          	j	10c7c <__retarget_lock_acquire_recursive>

0001176c <__malloc_unlock>:
   1176c:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11770:	d18ff06f          	j	10c88 <__retarget_lock_release_recursive>

00011774 <_fclose_r>:
   11774:	1141                	addi	sp,sp,-16
   11776:	c606                	sw	ra,12(sp)
   11778:	c04a                	sw	s2,0(sp)
   1177a:	c9c1                	beqz	a1,1180a <_fclose_r+0x96>
   1177c:	c422                	sw	s0,8(sp)
   1177e:	c226                	sw	s1,4(sp)
   11780:	842e                	mv	s0,a1
   11782:	84aa                	mv	s1,a0
   11784:	c119                	beqz	a0,1178a <_fclose_r+0x16>
   11786:	595c                	lw	a5,52(a0)
   11788:	c3d5                	beqz	a5,1182c <_fclose_r+0xb8>
   1178a:	507c                	lw	a5,100(s0)
   1178c:	00c41703          	lh	a4,12(s0)
   11790:	8b85                	andi	a5,a5,1
   11792:	ebad                	bnez	a5,11804 <_fclose_r+0x90>
   11794:	20077713          	andi	a4,a4,512
   11798:	cf49                	beqz	a4,11832 <_fclose_r+0xbe>
   1179a:	85a2                	mv	a1,s0
   1179c:	8526                	mv	a0,s1
   1179e:	20c9                	jal	11860 <__sflush_r>
   117a0:	545c                	lw	a5,44(s0)
   117a2:	892a                	mv	s2,a0
   117a4:	c791                	beqz	a5,117b0 <_fclose_r+0x3c>
   117a6:	4c4c                	lw	a1,28(s0)
   117a8:	8526                	mv	a0,s1
   117aa:	9782                	jalr	a5
   117ac:	06054563          	bltz	a0,11816 <_fclose_r+0xa2>
   117b0:	00c45783          	lhu	a5,12(s0)
   117b4:	0807f793          	andi	a5,a5,128
   117b8:	e7ad                	bnez	a5,11822 <_fclose_r+0xae>
   117ba:	580c                	lw	a1,48(s0)
   117bc:	c991                	beqz	a1,117d0 <_fclose_r+0x5c>
   117be:	04040793          	addi	a5,s0,64
   117c2:	00f58563          	beq	a1,a5,117cc <_fclose_r+0x58>
   117c6:	8526                	mv	a0,s1
   117c8:	facff0ef          	jal	10f74 <_free_r>
   117cc:	02042823          	sw	zero,48(s0)
   117d0:	406c                	lw	a1,68(s0)
   117d2:	c591                	beqz	a1,117de <_fclose_r+0x6a>
   117d4:	8526                	mv	a0,s1
   117d6:	f9eff0ef          	jal	10f74 <_free_r>
   117da:	04042223          	sw	zero,68(s0)
   117de:	8d6ff0ef          	jal	108b4 <__sfp_lock_acquire>
   117e2:	507c                	lw	a5,100(s0)
   117e4:	00041623          	sh	zero,12(s0)
   117e8:	8b85                	andi	a5,a5,1
   117ea:	c3bd                	beqz	a5,11850 <_fclose_r+0xdc>
   117ec:	4c28                	lw	a0,88(s0)
   117ee:	c8aff0ef          	jal	10c78 <__retarget_lock_close_recursive>
   117f2:	8c8ff0ef          	jal	108ba <__sfp_lock_release>
   117f6:	40b2                	lw	ra,12(sp)
   117f8:	4422                	lw	s0,8(sp)
   117fa:	4492                	lw	s1,4(sp)
   117fc:	854a                	mv	a0,s2
   117fe:	4902                	lw	s2,0(sp)
   11800:	0141                	addi	sp,sp,16
   11802:	8082                	ret
   11804:	fb59                	bnez	a4,1179a <_fclose_r+0x26>
   11806:	4422                	lw	s0,8(sp)
   11808:	4492                	lw	s1,4(sp)
   1180a:	40b2                	lw	ra,12(sp)
   1180c:	4901                	li	s2,0
   1180e:	854a                	mv	a0,s2
   11810:	4902                	lw	s2,0(sp)
   11812:	0141                	addi	sp,sp,16
   11814:	8082                	ret
   11816:	00c45783          	lhu	a5,12(s0)
   1181a:	597d                	li	s2,-1
   1181c:	0807f793          	andi	a5,a5,128
   11820:	dfc9                	beqz	a5,117ba <_fclose_r+0x46>
   11822:	480c                	lw	a1,16(s0)
   11824:	8526                	mv	a0,s1
   11826:	f4eff0ef          	jal	10f74 <_free_r>
   1182a:	bf41                	j	117ba <_fclose_r+0x46>
   1182c:	84cff0ef          	jal	10878 <__sinit>
   11830:	bfa9                	j	1178a <_fclose_r+0x16>
   11832:	4c28                	lw	a0,88(s0)
   11834:	c48ff0ef          	jal	10c7c <__retarget_lock_acquire_recursive>
   11838:	00c41783          	lh	a5,12(s0)
   1183c:	ffb9                	bnez	a5,1179a <_fclose_r+0x26>
   1183e:	507c                	lw	a5,100(s0)
   11840:	8b85                	andi	a5,a5,1
   11842:	f3f1                	bnez	a5,11806 <_fclose_r+0x92>
   11844:	4c28                	lw	a0,88(s0)
   11846:	c42ff0ef          	jal	10c88 <__retarget_lock_release_recursive>
   1184a:	4422                	lw	s0,8(sp)
   1184c:	4492                	lw	s1,4(sp)
   1184e:	bf75                	j	1180a <_fclose_r+0x96>
   11850:	4c28                	lw	a0,88(s0)
   11852:	c36ff0ef          	jal	10c88 <__retarget_lock_release_recursive>
   11856:	bf59                	j	117ec <_fclose_r+0x78>

00011858 <fclose>:
   11858:	85aa                	mv	a1,a0
   1185a:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   1185e:	bf19                	j	11774 <_fclose_r>

00011860 <__sflush_r>:
   11860:	00c59703          	lh	a4,12(a1)
   11864:	1101                	addi	sp,sp,-32
   11866:	cc22                	sw	s0,24(sp)
   11868:	c64e                	sw	s3,12(sp)
   1186a:	ce06                	sw	ra,28(sp)
   1186c:	00877793          	andi	a5,a4,8
   11870:	842e                	mv	s0,a1
   11872:	89aa                	mv	s3,a0
   11874:	e7e1                	bnez	a5,1193c <__sflush_r+0xdc>
   11876:	6785                	lui	a5,0x1
   11878:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   1187c:	41d4                	lw	a3,4(a1)
   1187e:	8fd9                	or	a5,a5,a4
   11880:	00f59623          	sh	a5,12(a1)
   11884:	10d05963          	blez	a3,11996 <__sflush_r+0x136>
   11888:	02842803          	lw	a6,40(s0)
   1188c:	0a080263          	beqz	a6,11930 <__sflush_r+0xd0>
   11890:	ca26                	sw	s1,20(sp)
   11892:	01371693          	slli	a3,a4,0x13
   11896:	0009a483          	lw	s1,0(s3)
   1189a:	0009a023          	sw	zero,0(s3)
   1189e:	1006c363          	bltz	a3,119a4 <__sflush_r+0x144>
   118a2:	4c4c                	lw	a1,28(s0)
   118a4:	4601                	li	a2,0
   118a6:	4685                	li	a3,1
   118a8:	854e                	mv	a0,s3
   118aa:	9802                	jalr	a6
   118ac:	57fd                	li	a5,-1
   118ae:	862a                	mv	a2,a0
   118b0:	12f50163          	beq	a0,a5,119d2 <__sflush_r+0x172>
   118b4:	00c41783          	lh	a5,12(s0)
   118b8:	02842803          	lw	a6,40(s0)
   118bc:	8b91                	andi	a5,a5,4
   118be:	c799                	beqz	a5,118cc <__sflush_r+0x6c>
   118c0:	4058                	lw	a4,4(s0)
   118c2:	581c                	lw	a5,48(s0)
   118c4:	8e19                	sub	a2,a2,a4
   118c6:	c399                	beqz	a5,118cc <__sflush_r+0x6c>
   118c8:	5c5c                	lw	a5,60(s0)
   118ca:	8e1d                	sub	a2,a2,a5
   118cc:	4c4c                	lw	a1,28(s0)
   118ce:	4681                	li	a3,0
   118d0:	854e                	mv	a0,s3
   118d2:	9802                	jalr	a6
   118d4:	577d                	li	a4,-1
   118d6:	00c41783          	lh	a5,12(s0)
   118da:	0ce51763          	bne	a0,a4,119a8 <__sflush_r+0x148>
   118de:	0009a683          	lw	a3,0(s3)
   118e2:	4775                	li	a4,29
   118e4:	10d76363          	bltu	a4,a3,119ea <__sflush_r+0x18a>
   118e8:	20400737          	lui	a4,0x20400
   118ec:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   118ee:	00d75733          	srl	a4,a4,a3
   118f2:	8b05                	andi	a4,a4,1
   118f4:	cb7d                	beqz	a4,119ea <__sflush_r+0x18a>
   118f6:	4810                	lw	a2,16(s0)
   118f8:	777d                	lui	a4,0xfffff
   118fa:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   118fe:	8f7d                	and	a4,a4,a5
   11900:	00e41623          	sh	a4,12(s0)
   11904:	00042223          	sw	zero,4(s0)
   11908:	c010                	sw	a2,0(s0)
   1190a:	01379713          	slli	a4,a5,0x13
   1190e:	00075363          	bgez	a4,11914 <__sflush_r+0xb4>
   11912:	cacd                	beqz	a3,119c4 <__sflush_r+0x164>
   11914:	580c                	lw	a1,48(s0)
   11916:	0099a023          	sw	s1,0(s3)
   1191a:	c9d5                	beqz	a1,119ce <__sflush_r+0x16e>
   1191c:	04040793          	addi	a5,s0,64
   11920:	00f58563          	beq	a1,a5,1192a <__sflush_r+0xca>
   11924:	854e                	mv	a0,s3
   11926:	e4eff0ef          	jal	10f74 <_free_r>
   1192a:	44d2                	lw	s1,20(sp)
   1192c:	02042823          	sw	zero,48(s0)
   11930:	40f2                	lw	ra,28(sp)
   11932:	4462                	lw	s0,24(sp)
   11934:	49b2                	lw	s3,12(sp)
   11936:	4501                	li	a0,0
   11938:	6105                	addi	sp,sp,32
   1193a:	8082                	ret
   1193c:	c84a                	sw	s2,16(sp)
   1193e:	0105a903          	lw	s2,16(a1)
   11942:	04090f63          	beqz	s2,119a0 <__sflush_r+0x140>
   11946:	ca26                	sw	s1,20(sp)
   11948:	4184                	lw	s1,0(a1)
   1194a:	8b0d                	andi	a4,a4,3
   1194c:	0125a023          	sw	s2,0(a1)
   11950:	412484b3          	sub	s1,s1,s2
   11954:	4781                	li	a5,0
   11956:	e311                	bnez	a4,1195a <__sflush_r+0xfa>
   11958:	49dc                	lw	a5,20(a1)
   1195a:	c41c                	sw	a5,8(s0)
   1195c:	00904663          	bgtz	s1,11968 <__sflush_r+0x108>
   11960:	a83d                	j	1199e <__sflush_r+0x13e>
   11962:	992a                	add	s2,s2,a0
   11964:	02905d63          	blez	s1,1199e <__sflush_r+0x13e>
   11968:	505c                	lw	a5,36(s0)
   1196a:	4c4c                	lw	a1,28(s0)
   1196c:	86a6                	mv	a3,s1
   1196e:	864a                	mv	a2,s2
   11970:	854e                	mv	a0,s3
   11972:	9782                	jalr	a5
   11974:	8c89                	sub	s1,s1,a0
   11976:	fea046e3          	bgtz	a0,11962 <__sflush_r+0x102>
   1197a:	00c41783          	lh	a5,12(s0)
   1197e:	4942                	lw	s2,16(sp)
   11980:	0407e793          	ori	a5,a5,64
   11984:	40f2                	lw	ra,28(sp)
   11986:	00f41623          	sh	a5,12(s0)
   1198a:	4462                	lw	s0,24(sp)
   1198c:	44d2                	lw	s1,20(sp)
   1198e:	49b2                	lw	s3,12(sp)
   11990:	557d                	li	a0,-1
   11992:	6105                	addi	sp,sp,32
   11994:	8082                	ret
   11996:	5dd4                	lw	a3,60(a1)
   11998:	eed048e3          	bgtz	a3,11888 <__sflush_r+0x28>
   1199c:	bf51                	j	11930 <__sflush_r+0xd0>
   1199e:	44d2                	lw	s1,20(sp)
   119a0:	4942                	lw	s2,16(sp)
   119a2:	b779                	j	11930 <__sflush_r+0xd0>
   119a4:	4830                	lw	a2,80(s0)
   119a6:	bf19                	j	118bc <__sflush_r+0x5c>
   119a8:	4814                	lw	a3,16(s0)
   119aa:	777d                	lui	a4,0xfffff
   119ac:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   119b0:	8f7d                	and	a4,a4,a5
   119b2:	00e41623          	sh	a4,12(s0)
   119b6:	00042223          	sw	zero,4(s0)
   119ba:	c014                	sw	a3,0(s0)
   119bc:	01379713          	slli	a4,a5,0x13
   119c0:	f4075ae3          	bgez	a4,11914 <__sflush_r+0xb4>
   119c4:	580c                	lw	a1,48(s0)
   119c6:	c828                	sw	a0,80(s0)
   119c8:	0099a023          	sw	s1,0(s3)
   119cc:	f9a1                	bnez	a1,1191c <__sflush_r+0xbc>
   119ce:	44d2                	lw	s1,20(sp)
   119d0:	b785                	j	11930 <__sflush_r+0xd0>
   119d2:	0009a783          	lw	a5,0(s3)
   119d6:	ec078fe3          	beqz	a5,118b4 <__sflush_r+0x54>
   119da:	4775                	li	a4,29
   119dc:	00e78a63          	beq	a5,a4,119f0 <__sflush_r+0x190>
   119e0:	4759                	li	a4,22
   119e2:	00e78763          	beq	a5,a4,119f0 <__sflush_r+0x190>
   119e6:	00c41783          	lh	a5,12(s0)
   119ea:	0407e793          	ori	a5,a5,64
   119ee:	bf59                	j	11984 <__sflush_r+0x124>
   119f0:	0099a023          	sw	s1,0(s3)
   119f4:	44d2                	lw	s1,20(sp)
   119f6:	bf2d                	j	11930 <__sflush_r+0xd0>

000119f8 <_fflush_r>:
   119f8:	1141                	addi	sp,sp,-16
   119fa:	c422                	sw	s0,8(sp)
   119fc:	c226                	sw	s1,4(sp)
   119fe:	c606                	sw	ra,12(sp)
   11a00:	c04a                	sw	s2,0(sp)
   11a02:	84aa                	mv	s1,a0
   11a04:	842e                	mv	s0,a1
   11a06:	c119                	beqz	a0,11a0c <_fflush_r+0x14>
   11a08:	595c                	lw	a5,52(a0)
   11a0a:	c3bd                	beqz	a5,11a70 <_fflush_r+0x78>
   11a0c:	00c41783          	lh	a5,12(s0)
   11a10:	4901                	li	s2,0
   11a12:	c39d                	beqz	a5,11a38 <_fflush_r+0x40>
   11a14:	5078                	lw	a4,100(s0)
   11a16:	8b05                	andi	a4,a4,1
   11a18:	e701                	bnez	a4,11a20 <_fflush_r+0x28>
   11a1a:	2007f793          	andi	a5,a5,512
   11a1e:	c785                	beqz	a5,11a46 <_fflush_r+0x4e>
   11a20:	8526                	mv	a0,s1
   11a22:	85a2                	mv	a1,s0
   11a24:	3d35                	jal	11860 <__sflush_r>
   11a26:	507c                	lw	a5,100(s0)
   11a28:	892a                	mv	s2,a0
   11a2a:	8b85                	andi	a5,a5,1
   11a2c:	e791                	bnez	a5,11a38 <_fflush_r+0x40>
   11a2e:	00c45783          	lhu	a5,12(s0)
   11a32:	2007f793          	andi	a5,a5,512
   11a36:	c39d                	beqz	a5,11a5c <_fflush_r+0x64>
   11a38:	40b2                	lw	ra,12(sp)
   11a3a:	4422                	lw	s0,8(sp)
   11a3c:	4492                	lw	s1,4(sp)
   11a3e:	854a                	mv	a0,s2
   11a40:	4902                	lw	s2,0(sp)
   11a42:	0141                	addi	sp,sp,16
   11a44:	8082                	ret
   11a46:	4c28                	lw	a0,88(s0)
   11a48:	a34ff0ef          	jal	10c7c <__retarget_lock_acquire_recursive>
   11a4c:	8526                	mv	a0,s1
   11a4e:	85a2                	mv	a1,s0
   11a50:	3d01                	jal	11860 <__sflush_r>
   11a52:	507c                	lw	a5,100(s0)
   11a54:	892a                	mv	s2,a0
   11a56:	8b85                	andi	a5,a5,1
   11a58:	f3e5                	bnez	a5,11a38 <_fflush_r+0x40>
   11a5a:	bfd1                	j	11a2e <_fflush_r+0x36>
   11a5c:	4c28                	lw	a0,88(s0)
   11a5e:	a2aff0ef          	jal	10c88 <__retarget_lock_release_recursive>
   11a62:	40b2                	lw	ra,12(sp)
   11a64:	4422                	lw	s0,8(sp)
   11a66:	4492                	lw	s1,4(sp)
   11a68:	854a                	mv	a0,s2
   11a6a:	4902                	lw	s2,0(sp)
   11a6c:	0141                	addi	sp,sp,16
   11a6e:	8082                	ret
   11a70:	e09fe0ef          	jal	10878 <__sinit>
   11a74:	bf61                	j	11a0c <_fflush_r+0x14>

00011a76 <fflush>:
   11a76:	c53d                	beqz	a0,11ae4 <fflush+0x6e>
   11a78:	1141                	addi	sp,sp,-16
   11a7a:	c04a                	sw	s2,0(sp)
   11a7c:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   11a80:	c422                	sw	s0,8(sp)
   11a82:	c606                	sw	ra,12(sp)
   11a84:	c226                	sw	s1,4(sp)
   11a86:	842a                	mv	s0,a0
   11a88:	00090563          	beqz	s2,11a92 <fflush+0x1c>
   11a8c:	03492783          	lw	a5,52(s2)
   11a90:	cf95                	beqz	a5,11acc <fflush+0x56>
   11a92:	00c41783          	lh	a5,12(s0)
   11a96:	4481                	li	s1,0
   11a98:	c39d                	beqz	a5,11abe <fflush+0x48>
   11a9a:	5078                	lw	a4,100(s0)
   11a9c:	8b05                	andi	a4,a4,1
   11a9e:	e701                	bnez	a4,11aa6 <fflush+0x30>
   11aa0:	2007f793          	andi	a5,a5,512
   11aa4:	cb85                	beqz	a5,11ad4 <fflush+0x5e>
   11aa6:	854a                	mv	a0,s2
   11aa8:	85a2                	mv	a1,s0
   11aaa:	3b5d                	jal	11860 <__sflush_r>
   11aac:	507c                	lw	a5,100(s0)
   11aae:	84aa                	mv	s1,a0
   11ab0:	8b85                	andi	a5,a5,1
   11ab2:	e791                	bnez	a5,11abe <fflush+0x48>
   11ab4:	00c45783          	lhu	a5,12(s0)
   11ab8:	2007f793          	andi	a5,a5,512
   11abc:	c385                	beqz	a5,11adc <fflush+0x66>
   11abe:	40b2                	lw	ra,12(sp)
   11ac0:	4422                	lw	s0,8(sp)
   11ac2:	4902                	lw	s2,0(sp)
   11ac4:	8526                	mv	a0,s1
   11ac6:	4492                	lw	s1,4(sp)
   11ac8:	0141                	addi	sp,sp,16
   11aca:	8082                	ret
   11acc:	854a                	mv	a0,s2
   11ace:	dabfe0ef          	jal	10878 <__sinit>
   11ad2:	b7c1                	j	11a92 <fflush+0x1c>
   11ad4:	4c28                	lw	a0,88(s0)
   11ad6:	9a6ff0ef          	jal	10c7c <__retarget_lock_acquire_recursive>
   11ada:	b7f1                	j	11aa6 <fflush+0x30>
   11adc:	4c28                	lw	a0,88(s0)
   11ade:	9aaff0ef          	jal	10c88 <__retarget_lock_release_recursive>
   11ae2:	bff1                	j	11abe <fflush+0x48>
   11ae4:	00000617          	auipc	a2,0x0
   11ae8:	52c60613          	addi	a2,a2,1324 # 12010 <__sglue>
   11aec:	00000597          	auipc	a1,0x0
   11af0:	f0c58593          	addi	a1,a1,-244 # 119f8 <_fflush_r>
   11af4:	00000517          	auipc	a0,0x0
   11af8:	52c50513          	addi	a0,a0,1324 # 12020 <_impure_data>
   11afc:	e09fe06f          	j	10904 <_fwalk_sglue>

00011b00 <_sbrk_r>:
   11b00:	1141                	addi	sp,sp,-16
   11b02:	c422                	sw	s0,8(sp)
   11b04:	842a                	mv	s0,a0
   11b06:	852e                	mv	a0,a1
   11b08:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   11b0c:	c606                	sw	ra,12(sp)
   11b0e:	20f9                	jal	11bdc <_sbrk>
   11b10:	57fd                	li	a5,-1
   11b12:	00f50663          	beq	a0,a5,11b1e <_sbrk_r+0x1e>
   11b16:	40b2                	lw	ra,12(sp)
   11b18:	4422                	lw	s0,8(sp)
   11b1a:	0141                	addi	sp,sp,16
   11b1c:	8082                	ret
   11b1e:	c226                	sw	s1,4(sp)
   11b20:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   11b24:	409c                	lw	a5,0(s1)
   11b26:	c799                	beqz	a5,11b34 <_sbrk_r+0x34>
   11b28:	40b2                	lw	ra,12(sp)
   11b2a:	c01c                	sw	a5,0(s0)
   11b2c:	4422                	lw	s0,8(sp)
   11b2e:	4492                	lw	s1,4(sp)
   11b30:	0141                	addi	sp,sp,16
   11b32:	8082                	ret
   11b34:	40b2                	lw	ra,12(sp)
   11b36:	4422                	lw	s0,8(sp)
   11b38:	4492                	lw	s1,4(sp)
   11b3a:	0141                	addi	sp,sp,16
   11b3c:	8082                	ret

00011b3e <_close>:
   11b3e:	1141                	addi	sp,sp,-16
   11b40:	c606                	sw	ra,12(sp)
   11b42:	c422                	sw	s0,8(sp)
   11b44:	03900893          	li	a7,57
   11b48:	00000073          	ecall
   11b4c:	842a                	mv	s0,a0
   11b4e:	00054763          	bltz	a0,11b5c <_close+0x1e>
   11b52:	40b2                	lw	ra,12(sp)
   11b54:	8522                	mv	a0,s0
   11b56:	4422                	lw	s0,8(sp)
   11b58:	0141                	addi	sp,sp,16
   11b5a:	8082                	ret
   11b5c:	40800433          	neg	s0,s0
   11b60:	28d5                	jal	11c54 <__errno>
   11b62:	c100                	sw	s0,0(a0)
   11b64:	547d                	li	s0,-1
   11b66:	b7f5                	j	11b52 <_close+0x14>

00011b68 <_exit>:
   11b68:	05d00893          	li	a7,93
   11b6c:	00000073          	ecall
   11b70:	00054363          	bltz	a0,11b76 <_exit+0xe>
   11b74:	a001                	j	11b74 <_exit+0xc>
   11b76:	1141                	addi	sp,sp,-16
   11b78:	c422                	sw	s0,8(sp)
   11b7a:	842a                	mv	s0,a0
   11b7c:	c606                	sw	ra,12(sp)
   11b7e:	40800433          	neg	s0,s0
   11b82:	28c9                	jal	11c54 <__errno>
   11b84:	c100                	sw	s0,0(a0)
   11b86:	a001                	j	11b86 <_exit+0x1e>

00011b88 <_lseek>:
   11b88:	1141                	addi	sp,sp,-16
   11b8a:	c606                	sw	ra,12(sp)
   11b8c:	c422                	sw	s0,8(sp)
   11b8e:	03e00893          	li	a7,62
   11b92:	00000073          	ecall
   11b96:	842a                	mv	s0,a0
   11b98:	00054763          	bltz	a0,11ba6 <_lseek+0x1e>
   11b9c:	40b2                	lw	ra,12(sp)
   11b9e:	8522                	mv	a0,s0
   11ba0:	4422                	lw	s0,8(sp)
   11ba2:	0141                	addi	sp,sp,16
   11ba4:	8082                	ret
   11ba6:	40800433          	neg	s0,s0
   11baa:	206d                	jal	11c54 <__errno>
   11bac:	c100                	sw	s0,0(a0)
   11bae:	547d                	li	s0,-1
   11bb0:	b7f5                	j	11b9c <_lseek+0x14>

00011bb2 <_read>:
   11bb2:	1141                	addi	sp,sp,-16
   11bb4:	c606                	sw	ra,12(sp)
   11bb6:	c422                	sw	s0,8(sp)
   11bb8:	03f00893          	li	a7,63
   11bbc:	00000073          	ecall
   11bc0:	842a                	mv	s0,a0
   11bc2:	00054763          	bltz	a0,11bd0 <_read+0x1e>
   11bc6:	40b2                	lw	ra,12(sp)
   11bc8:	8522                	mv	a0,s0
   11bca:	4422                	lw	s0,8(sp)
   11bcc:	0141                	addi	sp,sp,16
   11bce:	8082                	ret
   11bd0:	40800433          	neg	s0,s0
   11bd4:	2041                	jal	11c54 <__errno>
   11bd6:	c100                	sw	s0,0(a0)
   11bd8:	547d                	li	s0,-1
   11bda:	b7f5                	j	11bc6 <_read+0x14>

00011bdc <_sbrk>:
   11bdc:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11be0:	4298                	lw	a4,0(a3)
   11be2:	1141                	addi	sp,sp,-16
   11be4:	c606                	sw	ra,12(sp)
   11be6:	87aa                	mv	a5,a0
   11be8:	eb19                	bnez	a4,11bfe <_sbrk+0x22>
   11bea:	0d600893          	li	a7,214
   11bee:	4501                	li	a0,0
   11bf0:	00000073          	ecall
   11bf4:	567d                	li	a2,-1
   11bf6:	872a                	mv	a4,a0
   11bf8:	02c50263          	beq	a0,a2,11c1c <_sbrk+0x40>
   11bfc:	c288                	sw	a0,0(a3)
   11bfe:	00e78533          	add	a0,a5,a4
   11c02:	0d600893          	li	a7,214
   11c06:	00000073          	ecall
   11c0a:	4298                	lw	a4,0(a3)
   11c0c:	97ba                	add	a5,a5,a4
   11c0e:	00f51763          	bne	a0,a5,11c1c <_sbrk+0x40>
   11c12:	40b2                	lw	ra,12(sp)
   11c14:	c288                	sw	a0,0(a3)
   11c16:	853a                	mv	a0,a4
   11c18:	0141                	addi	sp,sp,16
   11c1a:	8082                	ret
   11c1c:	2825                	jal	11c54 <__errno>
   11c1e:	40b2                	lw	ra,12(sp)
   11c20:	47b1                	li	a5,12
   11c22:	c11c                	sw	a5,0(a0)
   11c24:	557d                	li	a0,-1
   11c26:	0141                	addi	sp,sp,16
   11c28:	8082                	ret

00011c2a <_write>:
   11c2a:	1141                	addi	sp,sp,-16
   11c2c:	c606                	sw	ra,12(sp)
   11c2e:	c422                	sw	s0,8(sp)
   11c30:	04000893          	li	a7,64
   11c34:	00000073          	ecall
   11c38:	842a                	mv	s0,a0
   11c3a:	00054763          	bltz	a0,11c48 <_write+0x1e>
   11c3e:	40b2                	lw	ra,12(sp)
   11c40:	8522                	mv	a0,s0
   11c42:	4422                	lw	s0,8(sp)
   11c44:	0141                	addi	sp,sp,16
   11c46:	8082                	ret
   11c48:	40800433          	neg	s0,s0
   11c4c:	2021                	jal	11c54 <__errno>
   11c4e:	c100                	sw	s0,0(a0)
   11c50:	547d                	li	s0,-1
   11c52:	b7f5                	j	11c3e <_write+0x14>

00011c54 <__errno>:
   11c54:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11c58:	8082                	ret
