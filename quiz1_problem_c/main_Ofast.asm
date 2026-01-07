
test_Ofast.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	042010ef          	jal	11100 <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	5d9010ef          	jal	11ea4 <_exit>

000100d0 <main>:
   100d0:	4501                	li	a0,0
   100d2:	8082                	ret

000100d4 <register_fini>:
   100d4:	00000793          	li	a5,0
   100d8:	c799                	beqz	a5,100e6 <register_fini+0x12>
   100da:	00001517          	auipc	a0,0x1
   100de:	e9c50513          	addi	a0,a0,-356 # 10f76 <__libc_fini_array>
   100e2:	0170006f          	j	108f8 <atexit>
   100e6:	8082                	ret

000100e8 <_start>:
   100e8:	00002197          	auipc	gp,0x2
   100ec:	72818193          	addi	gp,gp,1832 # 12810 <__global_pointer$>
   100f0:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   100f4:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   100f8:	8e09                	sub	a2,a2,a0
   100fa:	4581                	li	a1,0
   100fc:	6cb000ef          	jal	10fc6 <memset>
   10100:	00001517          	auipc	a0,0x1
   10104:	e7650513          	addi	a0,a0,-394 # 10f76 <__libc_fini_array>
   10108:	7f0000ef          	jal	108f8 <atexit>
   1010c:	601000ef          	jal	10f0c <__libc_init_array>
   10110:	4502                	lw	a0,0(sp)
   10112:	004c                	addi	a1,sp,4
   10114:	4601                	li	a2,0
   10116:	3f6d                	jal	100d0 <main>
   10118:	bf71                	j	100b4 <exit>

0001011a <__do_global_dtors_aux>:
   1011a:	d4c1c783          	lbu	a5,-692(gp) # 1255c <completed.1>
   1011e:	eb85                	bnez	a5,1014e <__do_global_dtors_aux+0x34>
   10120:	00000793          	li	a5,0
   10124:	c38d                	beqz	a5,10146 <__do_global_dtors_aux+0x2c>
   10126:	1141                	addi	sp,sp,-16
   10128:	00002517          	auipc	a0,0x2
   1012c:	e7050513          	addi	a0,a0,-400 # 11f98 <__EH_FRAME_BEGIN__>
   10130:	c606                	sw	ra,12(sp)
   10132:	00000097          	auipc	ra,0x0
   10136:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   1013a:	40b2                	lw	ra,12(sp)
   1013c:	4785                	li	a5,1
   1013e:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   10142:	0141                	addi	sp,sp,16
   10144:	8082                	ret
   10146:	4785                	li	a5,1
   10148:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   1014c:	8082                	ret
   1014e:	8082                	ret

00010150 <frame_dummy>:
   10150:	00000793          	li	a5,0
   10154:	cb99                	beqz	a5,1016a <frame_dummy+0x1a>
   10156:	d8c18593          	addi	a1,gp,-628 # 1259c <object.0>
   1015a:	00002517          	auipc	a0,0x2
   1015e:	e3e50513          	addi	a0,a0,-450 # 11f98 <__EH_FRAME_BEGIN__>
   10162:	00000317          	auipc	t1,0x0
   10166:	00000067          	jr	zero # 0 <exit-0x100b4>
   1016a:	8082                	ret

0001016c <bf16_isnan>:
   1016c:	67a1                	lui	a5,0x8
   1016e:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   10172:	00a7f733          	and	a4,a5,a0
   10176:	0542                	slli	a0,a0,0x10
   10178:	8141                	srli	a0,a0,0x10
   1017a:	00f70463          	beq	a4,a5,10182 <bf16_isnan+0x16>
   1017e:	4501                	li	a0,0
   10180:	8082                	ret
   10182:	07f57513          	andi	a0,a0,127
   10186:	00a03533          	snez	a0,a0
   1018a:	8082                	ret

0001018c <bf16_isinf>:
   1018c:	0546                	slli	a0,a0,0x11
   1018e:	77e1                	lui	a5,0xffff8
   10190:	08078793          	addi	a5,a5,128 # ffff8080 <__BSS_END__+0xfffe57dc>
   10194:	8145                	srli	a0,a0,0x11
   10196:	953e                	add	a0,a0,a5
   10198:	00153513          	seqz	a0,a0
   1019c:	8082                	ret

0001019e <bf16_iszero>:
   1019e:	0546                	slli	a0,a0,0x11
   101a0:	00153513          	seqz	a0,a0
   101a4:	8082                	ret

000101a6 <f32_to_bf16>:
   101a6:	7f8007b7          	lui	a5,0x7f800
   101aa:	00a7f6b3          	and	a3,a5,a0
   101ae:	872a                	mv	a4,a0
   101b0:	8141                	srli	a0,a0,0x10
   101b2:	00f68a63          	beq	a3,a5,101c6 <f32_to_bf16+0x20>
   101b6:	66a1                	lui	a3,0x8
   101b8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80b5>
   101ba:	00157793          	andi	a5,a0,1
   101be:	96ba                	add	a3,a3,a4
   101c0:	00d78533          	add	a0,a5,a3
   101c4:	8141                	srli	a0,a0,0x10
   101c6:	8082                	ret

000101c8 <bf16_to_f32>:
   101c8:	0542                	slli	a0,a0,0x10
   101ca:	8082                	ret

000101cc <bf16_add>:
   101cc:	0542                	slli	a0,a0,0x10
   101ce:	8141                	srli	a0,a0,0x10
   101d0:	05c2                	slli	a1,a1,0x10
   101d2:	81c1                	srli	a1,a1,0x10
   101d4:	00755793          	srli	a5,a0,0x7
   101d8:	0075d693          	srli	a3,a1,0x7
   101dc:	0ff00713          	li	a4,255
   101e0:	0ff7f793          	zext.b	a5,a5
   101e4:	8ef9                	and	a3,a3,a4
   101e6:	00f55e13          	srli	t3,a0,0xf
   101ea:	00f5d893          	srli	a7,a1,0xf
   101ee:	07f57613          	andi	a2,a0,127
   101f2:	07f5f813          	andi	a6,a1,127
   101f6:	08e78163          	beq	a5,a4,10278 <bf16_add+0xac>
   101fa:	06e68d63          	beq	a3,a4,10274 <bf16_add+0xa8>
   101fe:	873e                	mv	a4,a5
   10200:	ef99                	bnez	a5,1021e <bf16_add+0x52>
   10202:	ca2d                	beqz	a2,10274 <bf16_add+0xa8>
   10204:	eeb1                	bnez	a3,10260 <bf16_add+0x94>
   10206:	10080963          	beqz	a6,10318 <bf16_add+0x14c>
   1020a:	111e0363          	beq	t3,a7,10310 <bf16_add+0x144>
   1020e:	40c806b3          	sub	a3,a6,a2
   10212:	13067763          	bgeu	a2,a6,10340 <bf16_add+0x174>
   10216:	4501                	li	a0,0
   10218:	8e46                	mv	t3,a7
   1021a:	eae1                	bnez	a3,102ea <bf16_add+0x11e>
   1021c:	8082                	ret
   1021e:	eaad                	bnez	a3,10290 <bf16_add+0xc4>
   10220:	fe080ee3          	beqz	a6,1021c <bf16_add+0x50>
   10224:	47a1                	li	a5,8
   10226:	0ee7e863          	bltu	a5,a4,10316 <bf16_add+0x14a>
   1022a:	08066613          	ori	a2,a2,128
   1022e:	40e85833          	sra	a6,a6,a4
   10232:	410606b3          	sub	a3,a2,a6
   10236:	0b1e1a63          	bne	t3,a7,102ea <bf16_add+0x11e>
   1023a:	00c806b3          	add	a3,a6,a2
   1023e:	1006f793          	andi	a5,a3,256
   10242:	c789                	beqz	a5,1024c <bf16_add+0x80>
   10244:	0705                	addi	a4,a4,1
   10246:	0742                	slli	a4,a4,0x10
   10248:	8741                	srai	a4,a4,0x10
   1024a:	8285                	srli	a3,a3,0x1
   1024c:	00fe1513          	slli	a0,t3,0xf
   10250:	071e                	slli	a4,a4,0x7
   10252:	8d59                	or	a0,a0,a4
   10254:	07f6f693          	andi	a3,a3,127
   10258:	8d55                	or	a0,a0,a3
   1025a:	0542                	slli	a0,a0,0x10
   1025c:	8141                	srli	a0,a0,0x10
   1025e:	8082                	ret
   10260:	40d00333          	neg	t1,a3
   10264:	0342                	slli	t1,t1,0x10
   10266:	08086813          	ori	a6,a6,128
   1026a:	41035313          	srai	t1,t1,0x10
   1026e:	57e1                	li	a5,-8
   10270:	08f35563          	bge	t1,a5,102fa <bf16_add+0x12e>
   10274:	852e                	mv	a0,a1
   10276:	8082                	ret
   10278:	f255                	bnez	a2,1021c <bf16_add+0x50>
   1027a:	faf691e3          	bne	a3,a5,1021c <bf16_add+0x50>
   1027e:	852e                	mv	a0,a1
   10280:	f8081ee3          	bnez	a6,1021c <bf16_add+0x50>
   10284:	6521                	lui	a0,0x8
   10286:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   1028a:	ff1e05e3          	beq	t3,a7,10274 <bf16_add+0xa8>
   1028e:	8082                	ret
   10290:	40d78eb3          	sub	t4,a5,a3
   10294:	8376                	mv	t1,t4
   10296:	0ec2                	slli	t4,t4,0x10
   10298:	08066613          	ori	a2,a2,128
   1029c:	08086813          	ori	a6,a6,128
   102a0:	010ede93          	srli	t4,t4,0x10
   102a4:	06605b63          	blez	t1,1031a <bf16_add+0x14e>
   102a8:	46a1                	li	a3,8
   102aa:	f666c9e3          	blt	a3,t1,1021c <bf16_add+0x50>
   102ae:	41d85833          	sra	a6,a6,t4
   102b2:	410606b3          	sub	a3,a2,a6
   102b6:	0842                	slli	a6,a6,0x10
   102b8:	01085813          	srli	a6,a6,0x10
   102bc:	031e1763          	bne	t3,a7,102ea <bf16_add+0x11e>
   102c0:	010606b3          	add	a3,a2,a6
   102c4:	1006f613          	andi	a2,a3,256
   102c8:	d251                	beqz	a2,1024c <bf16_add+0x80>
   102ca:	0785                	addi	a5,a5,1 # 7f800001 <__BSS_END__+0x7f7ed75d>
   102cc:	0ff00713          	li	a4,255
   102d0:	06e78063          	beq	a5,a4,10330 <bf16_add+0x164>
   102d4:	01079713          	slli	a4,a5,0x10
   102d8:	8285                	srli	a3,a3,0x1
   102da:	8741                	srai	a4,a4,0x10
   102dc:	bf85                	j	1024c <bf16_add+0x80>
   102de:	01061713          	slli	a4,a2,0x10
   102e2:	8741                	srai	a4,a4,0x10
   102e4:	0686                	slli	a3,a3,0x1
   102e6:	00e05863          	blez	a4,102f6 <bf16_add+0x12a>
   102ea:	0806f793          	andi	a5,a3,128
   102ee:	fff70613          	addi	a2,a4,-1
   102f2:	d7f5                	beqz	a5,102de <bf16_add+0x112>
   102f4:	bfa1                	j	1024c <bf16_add+0x80>
   102f6:	4501                	li	a0,0
   102f8:	8082                	ret
   102fa:	40600333          	neg	t1,t1
   102fe:	40665633          	sra	a2,a2,t1
   10302:	8736                	mv	a4,a3
   10304:	031e0263          	beq	t3,a7,10328 <bf16_add+0x15c>
   10308:	40c806b3          	sub	a3,a6,a2
   1030c:	8e46                	mv	t3,a7
   1030e:	bff1                	j	102ea <bf16_add+0x11e>
   10310:	010606b3          	add	a3,a2,a6
   10314:	bf25                	j	1024c <bf16_add+0x80>
   10316:	8082                	ret
   10318:	8082                	ret
   1031a:	f4031ae3          	bnez	t1,1026e <bf16_add+0xa2>
   1031e:	010606b3          	add	a3,a2,a6
   10322:	ef1e16e3          	bne	t3,a7,1020e <bf16_add+0x42>
   10326:	b755                	j	102ca <bf16_add+0xfe>
   10328:	0642                	slli	a2,a2,0x10
   1032a:	8241                	srli	a2,a2,0x10
   1032c:	87b6                	mv	a5,a3
   1032e:	bf49                	j	102c0 <bf16_add+0xf4>
   10330:	7761                	lui	a4,0xffff8
   10332:	67a1                	lui	a5,0x8
   10334:	8f69                	and	a4,a4,a0
   10336:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   1033a:	00f76533          	or	a0,a4,a5
   1033e:	8082                	ret
   10340:	410606b3          	sub	a3,a2,a6
   10344:	88f2                	mv	a7,t3
   10346:	bdc1                	j	10216 <bf16_add+0x4a>

00010348 <bf16_sub>:
   10348:	77e1                	lui	a5,0xffff8
   1034a:	8dbd                	xor	a1,a1,a5
   1034c:	0542                	slli	a0,a0,0x10
   1034e:	8141                	srli	a0,a0,0x10
   10350:	05c2                	slli	a1,a1,0x10
   10352:	81c1                	srli	a1,a1,0x10
   10354:	00755793          	srli	a5,a0,0x7
   10358:	0075d693          	srli	a3,a1,0x7
   1035c:	0ff00713          	li	a4,255
   10360:	0ff7f793          	zext.b	a5,a5
   10364:	8ef9                	and	a3,a3,a4
   10366:	00f5d893          	srli	a7,a1,0xf
   1036a:	07f5f813          	andi	a6,a1,127
   1036e:	00f55e13          	srli	t3,a0,0xf
   10372:	07f57613          	andi	a2,a0,127
   10376:	08e78163          	beq	a5,a4,103f8 <bf16_sub+0xb0>
   1037a:	06e68d63          	beq	a3,a4,103f4 <bf16_sub+0xac>
   1037e:	873e                	mv	a4,a5
   10380:	ef99                	bnez	a5,1039e <bf16_sub+0x56>
   10382:	ca2d                	beqz	a2,103f4 <bf16_sub+0xac>
   10384:	eeb1                	bnez	a3,103e0 <bf16_sub+0x98>
   10386:	10080963          	beqz	a6,10498 <bf16_sub+0x150>
   1038a:	111e0363          	beq	t3,a7,10490 <bf16_sub+0x148>
   1038e:	40c806b3          	sub	a3,a6,a2
   10392:	13067763          	bgeu	a2,a6,104c0 <bf16_sub+0x178>
   10396:	4501                	li	a0,0
   10398:	8e46                	mv	t3,a7
   1039a:	eae1                	bnez	a3,1046a <bf16_sub+0x122>
   1039c:	8082                	ret
   1039e:	eaad                	bnez	a3,10410 <bf16_sub+0xc8>
   103a0:	fe080ee3          	beqz	a6,1039c <bf16_sub+0x54>
   103a4:	47a1                	li	a5,8
   103a6:	0ee7e863          	bltu	a5,a4,10496 <bf16_sub+0x14e>
   103aa:	08066613          	ori	a2,a2,128
   103ae:	40e85833          	sra	a6,a6,a4
   103b2:	410606b3          	sub	a3,a2,a6
   103b6:	0b1e1a63          	bne	t3,a7,1046a <bf16_sub+0x122>
   103ba:	00c806b3          	add	a3,a6,a2
   103be:	1006f793          	andi	a5,a3,256
   103c2:	c789                	beqz	a5,103cc <bf16_sub+0x84>
   103c4:	0705                	addi	a4,a4,1 # ffff8001 <__BSS_END__+0xfffe575d>
   103c6:	0742                	slli	a4,a4,0x10
   103c8:	8741                	srai	a4,a4,0x10
   103ca:	8285                	srli	a3,a3,0x1
   103cc:	00fe1513          	slli	a0,t3,0xf
   103d0:	071e                	slli	a4,a4,0x7
   103d2:	8d59                	or	a0,a0,a4
   103d4:	07f6f693          	andi	a3,a3,127
   103d8:	8d55                	or	a0,a0,a3
   103da:	0542                	slli	a0,a0,0x10
   103dc:	8141                	srli	a0,a0,0x10
   103de:	8082                	ret
   103e0:	40d00333          	neg	t1,a3
   103e4:	0342                	slli	t1,t1,0x10
   103e6:	08086813          	ori	a6,a6,128
   103ea:	41035313          	srai	t1,t1,0x10
   103ee:	57e1                	li	a5,-8
   103f0:	08f35563          	bge	t1,a5,1047a <bf16_sub+0x132>
   103f4:	852e                	mv	a0,a1
   103f6:	8082                	ret
   103f8:	f255                	bnez	a2,1039c <bf16_sub+0x54>
   103fa:	faf691e3          	bne	a3,a5,1039c <bf16_sub+0x54>
   103fe:	852e                	mv	a0,a1
   10400:	f8081ee3          	bnez	a6,1039c <bf16_sub+0x54>
   10404:	6521                	lui	a0,0x8
   10406:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   1040a:	ff1e05e3          	beq	t3,a7,103f4 <bf16_sub+0xac>
   1040e:	8082                	ret
   10410:	40d78eb3          	sub	t4,a5,a3
   10414:	8376                	mv	t1,t4
   10416:	0ec2                	slli	t4,t4,0x10
   10418:	08066613          	ori	a2,a2,128
   1041c:	08086813          	ori	a6,a6,128
   10420:	010ede93          	srli	t4,t4,0x10
   10424:	06605b63          	blez	t1,1049a <bf16_sub+0x152>
   10428:	46a1                	li	a3,8
   1042a:	f666c9e3          	blt	a3,t1,1039c <bf16_sub+0x54>
   1042e:	41d85833          	sra	a6,a6,t4
   10432:	410606b3          	sub	a3,a2,a6
   10436:	0842                	slli	a6,a6,0x10
   10438:	01085813          	srli	a6,a6,0x10
   1043c:	031e1763          	bne	t3,a7,1046a <bf16_sub+0x122>
   10440:	010606b3          	add	a3,a2,a6
   10444:	1006f613          	andi	a2,a3,256
   10448:	d251                	beqz	a2,103cc <bf16_sub+0x84>
   1044a:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffe575d>
   1044c:	0ff00713          	li	a4,255
   10450:	06e78063          	beq	a5,a4,104b0 <bf16_sub+0x168>
   10454:	01079713          	slli	a4,a5,0x10
   10458:	8285                	srli	a3,a3,0x1
   1045a:	8741                	srai	a4,a4,0x10
   1045c:	bf85                	j	103cc <bf16_sub+0x84>
   1045e:	01061713          	slli	a4,a2,0x10
   10462:	8741                	srai	a4,a4,0x10
   10464:	0686                	slli	a3,a3,0x1
   10466:	00e05863          	blez	a4,10476 <bf16_sub+0x12e>
   1046a:	0806f793          	andi	a5,a3,128
   1046e:	fff70613          	addi	a2,a4,-1
   10472:	d7f5                	beqz	a5,1045e <bf16_sub+0x116>
   10474:	bfa1                	j	103cc <bf16_sub+0x84>
   10476:	4501                	li	a0,0
   10478:	8082                	ret
   1047a:	40600333          	neg	t1,t1
   1047e:	40665633          	sra	a2,a2,t1
   10482:	8736                	mv	a4,a3
   10484:	031e0263          	beq	t3,a7,104a8 <bf16_sub+0x160>
   10488:	40c806b3          	sub	a3,a6,a2
   1048c:	8e46                	mv	t3,a7
   1048e:	bff1                	j	1046a <bf16_sub+0x122>
   10490:	010606b3          	add	a3,a2,a6
   10494:	bf25                	j	103cc <bf16_sub+0x84>
   10496:	8082                	ret
   10498:	8082                	ret
   1049a:	f4031ae3          	bnez	t1,103ee <bf16_sub+0xa6>
   1049e:	010606b3          	add	a3,a2,a6
   104a2:	ef1e16e3          	bne	t3,a7,1038e <bf16_sub+0x46>
   104a6:	b755                	j	1044a <bf16_sub+0x102>
   104a8:	0642                	slli	a2,a2,0x10
   104aa:	8241                	srli	a2,a2,0x10
   104ac:	87b6                	mv	a5,a3
   104ae:	bf49                	j	10440 <bf16_sub+0xf8>
   104b0:	7761                	lui	a4,0xffff8
   104b2:	67a1                	lui	a5,0x8
   104b4:	8f69                	and	a4,a4,a0
   104b6:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   104ba:	00f76533          	or	a0,a4,a5
   104be:	8082                	ret
   104c0:	410606b3          	sub	a3,a2,a6
   104c4:	88f2                	mv	a7,t3
   104c6:	bdc1                	j	10396 <bf16_sub+0x4e>

000104c8 <bf16_mul>:
   104c8:	0542                	slli	a0,a0,0x10
   104ca:	8141                	srli	a0,a0,0x10
   104cc:	05c2                	slli	a1,a1,0x10
   104ce:	81c1                	srli	a1,a1,0x10
   104d0:	00755793          	srli	a5,a0,0x7
   104d4:	0075d613          	srli	a2,a1,0x7
   104d8:	0ff00893          	li	a7,255
   104dc:	0ff7f793          	zext.b	a5,a5
   104e0:	01167633          	and	a2,a2,a7
   104e4:	07f57713          	andi	a4,a0,127
   104e8:	07f5f693          	andi	a3,a1,127
   104ec:	00a5c833          	xor	a6,a1,a0
   104f0:	03178763          	beq	a5,a7,1051e <bf16_mul+0x56>
   104f4:	01160d63          	beq	a2,a7,1050e <bf16_mul+0x46>
   104f8:	00f85513          	srli	a0,a6,0xf
   104fc:	cf9d                	beqz	a5,1053a <bf16_mul+0x72>
   104fe:	e655                	bnez	a2,105aa <bf16_mul+0xe2>
   10500:	cae9                	beqz	a3,105d2 <bf16_mul+0x10a>
   10502:	f8278613          	addi	a2,a5,-126
   10506:	08076713          	ori	a4,a4,128
   1050a:	4781                	li	a5,0
   1050c:	a881                	j	1055c <bf16_mul+0x94>
   1050e:	852e                	mv	a0,a1
   10510:	e691                	bnez	a3,1051c <bf16_mul+0x54>
   10512:	6521                	lui	a0,0x8
   10514:	8f5d                	or	a4,a4,a5
   10516:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   1051a:	eb01                	bnez	a4,1052a <bf16_mul+0x62>
   1051c:	8082                	ret
   1051e:	ff7d                	bnez	a4,1051c <bf16_mul+0x54>
   10520:	6521                	lui	a0,0x8
   10522:	8ed1                	or	a3,a3,a2
   10524:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10528:	daf5                	beqz	a3,1051c <bf16_mul+0x54>
   1052a:	7561                	lui	a0,0xffff8
   1052c:	67a1                	lui	a5,0x8
   1052e:	00a87533          	and	a0,a6,a0
   10532:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   10536:	8d5d                	or	a0,a0,a5
   10538:	8082                	ret
   1053a:	cf41                	beqz	a4,105d2 <bf16_mul+0x10a>
   1053c:	00c6e5b3          	or	a1,a3,a2
   10540:	4781                	li	a5,0
   10542:	c9c1                	beqz	a1,105d2 <bf16_mul+0x10a>
   10544:	0706                	slli	a4,a4,0x1
   10546:	17fd                	addi	a5,a5,-1
   10548:	08077593          	andi	a1,a4,128
   1054c:	07c2                	slli	a5,a5,0x10
   1054e:	0742                	slli	a4,a4,0x10
   10550:	87c1                	srai	a5,a5,0x10
   10552:	8341                	srli	a4,a4,0x10
   10554:	d9e5                	beqz	a1,10544 <bf16_mul+0x7c>
   10556:	ea49                	bnez	a2,105e8 <bf16_mul+0x120>
   10558:	f8300613          	li	a2,-125
   1055c:	0686                	slli	a3,a3,0x1
   1055e:	17fd                	addi	a5,a5,-1
   10560:	0806f593          	andi	a1,a3,128
   10564:	07c2                	slli	a5,a5,0x10
   10566:	06c2                	slli	a3,a3,0x10
   10568:	87c1                	srai	a5,a5,0x10
   1056a:	82c1                	srli	a3,a3,0x10
   1056c:	d9e5                	beqz	a1,1055c <bf16_mul+0x94>
   1056e:	02d70733          	mul	a4,a4,a3
   10572:	963e                	add	a2,a2,a5
   10574:	01071793          	slli	a5,a4,0x10
   10578:	0407d963          	bgez	a5,105ca <bf16_mul+0x102>
   1057c:	8321                	srli	a4,a4,0x8
   1057e:	07f77713          	andi	a4,a4,127
   10582:	0605                	addi	a2,a2,1
   10584:	0fe00793          	li	a5,254
   10588:	fac7c1e3          	blt	a5,a2,1052a <bf16_mul+0x62>
   1058c:	04c05563          	blez	a2,105d6 <bf16_mul+0x10e>
   10590:	061e                	slli	a2,a2,0x7
   10592:	01061513          	slli	a0,a2,0x10
   10596:	8141                	srli	a0,a0,0x10
   10598:	77e1                	lui	a5,0xffff8
   1059a:	00f87833          	and	a6,a6,a5
   1059e:	01056533          	or	a0,a0,a6
   105a2:	8d59                	or	a0,a0,a4
   105a4:	0542                	slli	a0,a0,0x10
   105a6:	8141                	srli	a0,a0,0x10
   105a8:	8082                	ret
   105aa:	85be                	mv	a1,a5
   105ac:	08076713          	ori	a4,a4,128
   105b0:	4781                	li	a5,0
   105b2:	0806e693          	ori	a3,a3,128
   105b6:	02d70733          	mul	a4,a4,a3
   105ba:	962e                	add	a2,a2,a1
   105bc:	f8160613          	addi	a2,a2,-127
   105c0:	963e                	add	a2,a2,a5
   105c2:	01071793          	slli	a5,a4,0x10
   105c6:	fa07cbe3          	bltz	a5,1057c <bf16_mul+0xb4>
   105ca:	831d                	srli	a4,a4,0x7
   105cc:	07f77713          	andi	a4,a4,127
   105d0:	bf55                	j	10584 <bf16_mul+0xbc>
   105d2:	053e                	slli	a0,a0,0xf
   105d4:	8082                	ret
   105d6:	57e9                	li	a5,-6
   105d8:	fef64de3          	blt	a2,a5,105d2 <bf16_mul+0x10a>
   105dc:	4785                	li	a5,1
   105de:	8f91                	sub	a5,a5,a2
   105e0:	00f75733          	srl	a4,a4,a5
   105e4:	4501                	li	a0,0
   105e6:	bf4d                	j	10598 <bf16_mul+0xd0>
   105e8:	4585                	li	a1,1
   105ea:	b7e1                	j	105b2 <bf16_mul+0xea>

000105ec <bf16_div>:
   105ec:	05c2                	slli	a1,a1,0x10
   105ee:	81c1                	srli	a1,a1,0x10
   105f0:	0542                	slli	a0,a0,0x10
   105f2:	8141                	srli	a0,a0,0x10
   105f4:	0075d613          	srli	a2,a1,0x7
   105f8:	00755713          	srli	a4,a0,0x7
   105fc:	00a5c6b3          	xor	a3,a1,a0
   10600:	0ff00793          	li	a5,255
   10604:	0ff67613          	zext.b	a2,a2
   10608:	00f77333          	and	t1,a4,a5
   1060c:	00f6d893          	srli	a7,a3,0xf
   10610:	07f57813          	andi	a6,a0,127
   10614:	07f5fe13          	andi	t3,a1,127
   10618:	18f60063          	beq	a2,a5,10798 <bf16_div+0x1ac>
   1061c:	14060d63          	beqz	a2,10776 <bf16_div+0x18a>
   10620:	1cf30063          	beq	t1,a5,107e0 <bf16_div+0x1f4>
   10624:	1a030663          	beqz	t1,107d0 <bf16_div+0x1e4>
   10628:	08086813          	ori	a6,a6,128
   1062c:	080e6593          	ori	a1,t3,128
   10630:	00f81713          	slli	a4,a6,0xf
   10634:	00f59513          	slli	a0,a1,0xf
   10638:	1aa76863          	bltu	a4,a0,107e8 <bf16_div+0x1fc>
   1063c:	8f09                	sub	a4,a4,a0
   1063e:	4785                	li	a5,1
   10640:	00e59513          	slli	a0,a1,0xe
   10644:	0786                	slli	a5,a5,0x1
   10646:	1aa77463          	bgeu	a4,a0,107ee <bf16_div+0x202>
   1064a:	00d59513          	slli	a0,a1,0xd
   1064e:	0786                	slli	a5,a5,0x1
   10650:	00a76563          	bltu	a4,a0,1065a <bf16_div+0x6e>
   10654:	8f09                	sub	a4,a4,a0
   10656:	0017e793          	ori	a5,a5,1
   1065a:	00c59513          	slli	a0,a1,0xc
   1065e:	0786                	slli	a5,a5,0x1
   10660:	00a76563          	bltu	a4,a0,1066a <bf16_div+0x7e>
   10664:	8f09                	sub	a4,a4,a0
   10666:	0017e793          	ori	a5,a5,1
   1066a:	00b59513          	slli	a0,a1,0xb
   1066e:	0786                	slli	a5,a5,0x1
   10670:	00a76563          	bltu	a4,a0,1067a <bf16_div+0x8e>
   10674:	8f09                	sub	a4,a4,a0
   10676:	0017e793          	ori	a5,a5,1
   1067a:	00a59513          	slli	a0,a1,0xa
   1067e:	0786                	slli	a5,a5,0x1
   10680:	00a76563          	bltu	a4,a0,1068a <bf16_div+0x9e>
   10684:	8f09                	sub	a4,a4,a0
   10686:	0017e793          	ori	a5,a5,1
   1068a:	00959513          	slli	a0,a1,0x9
   1068e:	0786                	slli	a5,a5,0x1
   10690:	00a76563          	bltu	a4,a0,1069a <bf16_div+0xae>
   10694:	8f09                	sub	a4,a4,a0
   10696:	0017e793          	ori	a5,a5,1
   1069a:	00859513          	slli	a0,a1,0x8
   1069e:	0786                	slli	a5,a5,0x1
   106a0:	00a76563          	bltu	a4,a0,106aa <bf16_div+0xbe>
   106a4:	8f09                	sub	a4,a4,a0
   106a6:	0017e793          	ori	a5,a5,1
   106aa:	00759513          	slli	a0,a1,0x7
   106ae:	0786                	slli	a5,a5,0x1
   106b0:	00a76563          	bltu	a4,a0,106ba <bf16_div+0xce>
   106b4:	8f09                	sub	a4,a4,a0
   106b6:	0017e793          	ori	a5,a5,1
   106ba:	00659513          	slli	a0,a1,0x6
   106be:	0786                	slli	a5,a5,0x1
   106c0:	00a76563          	bltu	a4,a0,106ca <bf16_div+0xde>
   106c4:	8f09                	sub	a4,a4,a0
   106c6:	0017e793          	ori	a5,a5,1
   106ca:	00559513          	slli	a0,a1,0x5
   106ce:	0786                	slli	a5,a5,0x1
   106d0:	00a76563          	bltu	a4,a0,106da <bf16_div+0xee>
   106d4:	8f09                	sub	a4,a4,a0
   106d6:	0017e793          	ori	a5,a5,1
   106da:	00459513          	slli	a0,a1,0x4
   106de:	0786                	slli	a5,a5,0x1
   106e0:	00a76563          	bltu	a4,a0,106ea <bf16_div+0xfe>
   106e4:	8f09                	sub	a4,a4,a0
   106e6:	0017e793          	ori	a5,a5,1
   106ea:	00359513          	slli	a0,a1,0x3
   106ee:	0786                	slli	a5,a5,0x1
   106f0:	00a76563          	bltu	a4,a0,106fa <bf16_div+0x10e>
   106f4:	8f09                	sub	a4,a4,a0
   106f6:	0017e793          	ori	a5,a5,1
   106fa:	00259513          	slli	a0,a1,0x2
   106fe:	0786                	slli	a5,a5,0x1
   10700:	00a76563          	bltu	a4,a0,1070a <bf16_div+0x11e>
   10704:	8f09                	sub	a4,a4,a0
   10706:	0017e793          	ori	a5,a5,1
   1070a:	00159513          	slli	a0,a1,0x1
   1070e:	0786                	slli	a5,a5,0x1
   10710:	00a76563          	bltu	a4,a0,1071a <bf16_div+0x12e>
   10714:	8f09                	sub	a4,a4,a0
   10716:	0017e793          	ori	a5,a5,1
   1071a:	0786                	slli	a5,a5,0x1
   1071c:	00b76463          	bltu	a4,a1,10724 <bf16_div+0x138>
   10720:	0017e793          	ori	a5,a5,1
   10724:	40c305b3          	sub	a1,t1,a2
   10728:	00603733          	snez	a4,t1
   1072c:	972e                	add	a4,a4,a1
   1072e:	00163613          	seqz	a2,a2
   10732:	07e70713          	addi	a4,a4,126 # ffff807e <__BSS_END__+0xfffe57da>
   10736:	9732                	add	a4,a4,a2
   10738:	01079613          	slli	a2,a5,0x10
   1073c:	00064b63          	bltz	a2,10752 <bf16_div+0x166>
   10740:	4605                	li	a2,1
   10742:	00e65863          	bge	a2,a4,10752 <bf16_div+0x166>
   10746:	0786                	slli	a5,a5,0x1
   10748:	01079593          	slli	a1,a5,0x10
   1074c:	177d                	addi	a4,a4,-1
   1074e:	fe05dae3          	bgez	a1,10742 <bf16_div+0x156>
   10752:	0fe00613          	li	a2,254
   10756:	83a1                	srli	a5,a5,0x8
   10758:	04e64e63          	blt	a2,a4,107b4 <bf16_div+0x1c8>
   1075c:	04e05263          	blez	a4,107a0 <bf16_div+0x1b4>
   10760:	07f7f593          	andi	a1,a5,127
   10764:	071e                	slli	a4,a4,0x7
   10766:	77e1                	lui	a5,0xffff8
   10768:	8dd9                	or	a1,a1,a4
   1076a:	8efd                	and	a3,a3,a5
   1076c:	8dd5                	or	a1,a1,a3
   1076e:	05c2                	slli	a1,a1,0x10
   10770:	81c1                	srli	a1,a1,0x10
   10772:	852e                	mv	a0,a1
   10774:	8082                	ret
   10776:	020e0963          	beqz	t3,107a8 <bf16_div+0x1bc>
   1077a:	06f30363          	beq	t1,a5,107e0 <bf16_div+0x1f4>
   1077e:	06031c63          	bnez	t1,107f6 <bf16_div+0x20a>
   10782:	00080f63          	beqz	a6,107a0 <bf16_div+0x1b4>
   10786:	00f81713          	slli	a4,a6,0xf
   1078a:	00fe1513          	slli	a0,t3,0xf
   1078e:	85f2                	mv	a1,t3
   10790:	4781                	li	a5,0
   10792:	eaa775e3          	bgeu	a4,a0,1063c <bf16_div+0x50>
   10796:	b56d                	j	10640 <bf16_div+0x54>
   10798:	000e1663          	bnez	t3,107a4 <bf16_div+0x1b8>
   1079c:	02c30463          	beq	t1,a2,107c4 <bf16_div+0x1d8>
   107a0:	00f89593          	slli	a1,a7,0xf
   107a4:	852e                	mv	a0,a1
   107a6:	8082                	ret
   107a8:	65a1                	lui	a1,0x8
   107aa:	00686733          	or	a4,a6,t1
   107ae:	fc058593          	addi	a1,a1,-64 # 7fc0 <exit-0x80f4>
   107b2:	db6d                	beqz	a4,107a4 <bf16_div+0x1b8>
   107b4:	75e1                	lui	a1,0xffff8
   107b6:	67a1                	lui	a5,0x8
   107b8:	8df5                	and	a1,a1,a3
   107ba:	f8078793          	addi	a5,a5,-128 # 7f80 <exit-0x8134>
   107be:	8ddd                	or	a1,a1,a5
   107c0:	852e                	mv	a0,a1
   107c2:	8082                	ret
   107c4:	65a1                	lui	a1,0x8
   107c6:	fc058593          	addi	a1,a1,-64 # 7fc0 <exit-0x80f4>
   107ca:	fc080de3          	beqz	a6,107a4 <bf16_div+0x1b8>
   107ce:	bfc9                	j	107a0 <bf16_div+0x1b4>
   107d0:	fc0808e3          	beqz	a6,107a0 <bf16_div+0x1b4>
   107d4:	00f81713          	slli	a4,a6,0xf
   107d8:	080e6593          	ori	a1,t3,128
   107dc:	4781                	li	a5,0
   107de:	b58d                	j	10640 <bf16_div+0x54>
   107e0:	85aa                	mv	a1,a0
   107e2:	fc0811e3          	bnez	a6,107a4 <bf16_div+0x1b8>
   107e6:	b7f9                	j	107b4 <bf16_div+0x1c8>
   107e8:	00e59513          	slli	a0,a1,0xe
   107ec:	4781                	li	a5,0
   107ee:	8f09                	sub	a4,a4,a0
   107f0:	0017e793          	ori	a5,a5,1
   107f4:	bd99                	j	1064a <bf16_div+0x5e>
   107f6:	08086813          	ori	a6,a6,128
   107fa:	85f2                	mv	a1,t3
   107fc:	00f81713          	slli	a4,a6,0xf
   10800:	00fe1513          	slli	a0,t3,0xf
   10804:	bd25                	j	1063c <bf16_div+0x50>

00010806 <bf16_sqrt>:
   10806:	0542                	slli	a0,a0,0x10
   10808:	8141                	srli	a0,a0,0x10
   1080a:	0ff00613          	li	a2,255
   1080e:	00755793          	srli	a5,a0,0x7
   10812:	8ff1                	and	a5,a5,a2
   10814:	00f55713          	srli	a4,a0,0xf
   10818:	07f57693          	andi	a3,a0,127
   1081c:	08c78863          	beq	a5,a2,108ac <bf16_sqrt+0xa6>
   10820:	eb91                	bnez	a5,10834 <bf16_sqrt+0x2e>
   10822:	4501                	li	a0,0
   10824:	c6e9                	beqz	a3,108ee <bf16_sqrt+0xe8>
   10826:	6521                	lui	a0,0x8
   10828:	40e00733          	neg	a4,a4
   1082c:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   10830:	8d79                	and	a0,a0,a4
   10832:	8082                	ret
   10834:	6521                	lui	a0,0x8
   10836:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   1083a:	eb5d                	bnez	a4,108f0 <bf16_sqrt+0xea>
   1083c:	f8178713          	addi	a4,a5,-127
   10840:	00177613          	andi	a2,a4,1
   10844:	0806e513          	ori	a0,a3,128
   10848:	ea3d                	bnez	a2,108be <bf16_sqrt+0xb8>
   1084a:	8705                	srai	a4,a4,0x1
   1084c:	07f70713          	addi	a4,a4,127
   10850:	08000813          	li	a6,128
   10854:	10000593          	li	a1,256
   10858:	05a00613          	li	a2,90
   1085c:	00b607b3          	add	a5,a2,a1
   10860:	8385                	srli	a5,a5,0x1
   10862:	02f786b3          	mul	a3,a5,a5
   10866:	829d                	srli	a3,a3,0x7
   10868:	00d56f63          	bltu	a0,a3,10886 <bf16_sqrt+0x80>
   1086c:	00178613          	addi	a2,a5,1
   10870:	02c5e063          	bltu	a1,a2,10890 <bf16_sqrt+0x8a>
   10874:	883e                	mv	a6,a5
   10876:	00b607b3          	add	a5,a2,a1
   1087a:	8385                	srli	a5,a5,0x1
   1087c:	02f786b3          	mul	a3,a5,a5
   10880:	829d                	srli	a3,a3,0x7
   10882:	fed575e3          	bgeu	a0,a3,1086c <bf16_sqrt+0x66>
   10886:	fff78593          	addi	a1,a5,-1
   1088a:	fcc5f9e3          	bgeu	a1,a2,1085c <bf16_sqrt+0x56>
   1088e:	87c2                	mv	a5,a6
   10890:	0ff00693          	li	a3,255
   10894:	02f6fc63          	bgeu	a3,a5,108cc <bf16_sqrt+0xc6>
   10898:	00170513          	addi	a0,a4,1
   1089c:	051e                	slli	a0,a0,0x7
   1089e:	0542                	slli	a0,a0,0x10
   108a0:	8141                	srli	a0,a0,0x10
   108a2:	8385                	srli	a5,a5,0x1
   108a4:	07f7f793          	andi	a5,a5,127
   108a8:	8d5d                	or	a0,a0,a5
   108aa:	8082                	ret
   108ac:	fefd                	bnez	a3,108aa <bf16_sqrt+0xa4>
   108ae:	6521                	lui	a0,0x8
   108b0:	fc050513          	addi	a0,a0,-64 # 7fc0 <exit-0x80f4>
   108b4:	fb7d                	bnez	a4,108aa <bf16_sqrt+0xa4>
   108b6:	6521                	lui	a0,0x8
   108b8:	f8050513          	addi	a0,a0,-128 # 7f80 <exit-0x8134>
   108bc:	8082                	ret
   108be:	f8078793          	addi	a5,a5,-128
   108c2:	8785                	srai	a5,a5,0x1
   108c4:	07f78713          	addi	a4,a5,127
   108c8:	0506                	slli	a0,a0,0x1
   108ca:	b759                	j	10850 <bf16_sqrt+0x4a>
   108cc:	07f00693          	li	a3,127
   108d0:	00f6ea63          	bltu	a3,a5,108e4 <bf16_sqrt+0xde>
   108d4:	4605                	li	a2,1
   108d6:	a019                	j	108dc <bf16_sqrt+0xd6>
   108d8:	00c70d63          	beq	a4,a2,108f2 <bf16_sqrt+0xec>
   108dc:	0786                	slli	a5,a5,0x1
   108de:	177d                	addi	a4,a4,-1
   108e0:	fef6fce3          	bgeu	a3,a5,108d8 <bf16_sqrt+0xd2>
   108e4:	00771513          	slli	a0,a4,0x7
   108e8:	0542                	slli	a0,a0,0x10
   108ea:	8141                	srli	a0,a0,0x10
   108ec:	bf65                	j	108a4 <bf16_sqrt+0x9e>
   108ee:	8082                	ret
   108f0:	8082                	ret
   108f2:	08000513          	li	a0,128
   108f6:	b77d                	j	108a4 <bf16_sqrt+0x9e>

000108f8 <atexit>:
   108f8:	85aa                	mv	a1,a0
   108fa:	4681                	li	a3,0
   108fc:	4601                	li	a2,0
   108fe:	4501                	li	a0,0
   10900:	76e0006f          	j	1106e <__register_exitproc>

00010904 <stdio_exit_handler>:
   10904:	00001617          	auipc	a2,0x1
   10908:	70c60613          	addi	a2,a2,1804 # 12010 <__sglue>
   1090c:	00001597          	auipc	a1,0x1
   10910:	1a458593          	addi	a1,a1,420 # 11ab0 <_fclose_r>
   10914:	00001517          	auipc	a0,0x1
   10918:	70c50513          	addi	a0,a0,1804 # 12020 <_impure_data>
   1091c:	a615                	j	10c40 <_fwalk_sglue>

0001091e <cleanup_stdio>:
   1091e:	414c                	lw	a1,4(a0)
   10920:	1141                	addi	sp,sp,-16
   10922:	c422                	sw	s0,8(sp)
   10924:	c606                	sw	ra,12(sp)
   10926:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   1092a:	842a                	mv	s0,a0
   1092c:	00f58463          	beq	a1,a5,10934 <cleanup_stdio+0x16>
   10930:	180010ef          	jal	11ab0 <_fclose_r>
   10934:	440c                	lw	a1,8(s0)
   10936:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   1093a:	00f58563          	beq	a1,a5,10944 <cleanup_stdio+0x26>
   1093e:	8522                	mv	a0,s0
   10940:	170010ef          	jal	11ab0 <_fclose_r>
   10944:	444c                	lw	a1,12(s0)
   10946:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   1094a:	00f58863          	beq	a1,a5,1095a <cleanup_stdio+0x3c>
   1094e:	8522                	mv	a0,s0
   10950:	4422                	lw	s0,8(sp)
   10952:	40b2                	lw	ra,12(sp)
   10954:	0141                	addi	sp,sp,16
   10956:	15a0106f          	j	11ab0 <_fclose_r>
   1095a:	40b2                	lw	ra,12(sp)
   1095c:	4422                	lw	s0,8(sp)
   1095e:	0141                	addi	sp,sp,16
   10960:	8082                	ret

00010962 <__fp_lock>:
   10962:	51fc                	lw	a5,100(a1)
   10964:	8b85                	andi	a5,a5,1
   10966:	e791                	bnez	a5,10972 <__fp_lock+0x10>
   10968:	00c5d783          	lhu	a5,12(a1)
   1096c:	2007f793          	andi	a5,a5,512
   10970:	c399                	beqz	a5,10976 <__fp_lock+0x14>
   10972:	4501                	li	a0,0
   10974:	8082                	ret
   10976:	4da8                	lw	a0,88(a1)
   10978:	1141                	addi	sp,sp,-16
   1097a:	c606                	sw	ra,12(sp)
   1097c:	2d35                	jal	10fb8 <__retarget_lock_acquire_recursive>
   1097e:	40b2                	lw	ra,12(sp)
   10980:	4501                	li	a0,0
   10982:	0141                	addi	sp,sp,16
   10984:	8082                	ret

00010986 <__fp_unlock>:
   10986:	51fc                	lw	a5,100(a1)
   10988:	8b85                	andi	a5,a5,1
   1098a:	e791                	bnez	a5,10996 <__fp_unlock+0x10>
   1098c:	00c5d783          	lhu	a5,12(a1)
   10990:	2007f793          	andi	a5,a5,512
   10994:	c399                	beqz	a5,1099a <__fp_unlock+0x14>
   10996:	4501                	li	a0,0
   10998:	8082                	ret
   1099a:	4da8                	lw	a0,88(a1)
   1099c:	1141                	addi	sp,sp,-16
   1099e:	c606                	sw	ra,12(sp)
   109a0:	2515                	jal	10fc4 <__retarget_lock_release_recursive>
   109a2:	40b2                	lw	ra,12(sp)
   109a4:	4501                	li	a0,0
   109a6:	0141                	addi	sp,sp,16
   109a8:	8082                	ret

000109aa <global_stdio_init.part.0>:
   109aa:	1101                	addi	sp,sp,-32
   109ac:	ce06                	sw	ra,28(sp)
   109ae:	cc22                	sw	s0,24(sp)
   109b0:	ca26                	sw	s1,20(sp)
   109b2:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   109b6:	c84a                	sw	s2,16(sp)
   109b8:	c64e                	sw	s3,12(sp)
   109ba:	c452                	sw	s4,8(sp)
   109bc:	00000717          	auipc	a4,0x0
   109c0:	f4870713          	addi	a4,a4,-184 # 10904 <stdio_exit_handler>
   109c4:	4791                	li	a5,4
   109c6:	4621                	li	a2,8
   109c8:	4581                	li	a1,0
   109ca:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   109ce:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   109d2:	c45c                	sw	a5,12(s0)
   109d4:	00042023          	sw	zero,0(s0)
   109d8:	00042223          	sw	zero,4(s0)
   109dc:	00042423          	sw	zero,8(s0)
   109e0:	06042223          	sw	zero,100(s0)
   109e4:	00042823          	sw	zero,16(s0)
   109e8:	00042a23          	sw	zero,20(s0)
   109ec:	00042c23          	sw	zero,24(s0)
   109f0:	2bd9                	jal	10fc6 <memset>
   109f2:	00000a17          	auipc	s4,0x0
   109f6:	2c0a0a13          	addi	s4,s4,704 # 10cb2 <__sread>
   109fa:	00000997          	auipc	s3,0x0
   109fe:	2f298993          	addi	s3,s3,754 # 10cec <__swrite>
   10a02:	00000917          	auipc	s2,0x0
   10a06:	33a90913          	addi	s2,s2,826 # 10d3c <__sseek>
   10a0a:	00000497          	auipc	s1,0x0
   10a0e:	36e48493          	addi	s1,s1,878 # 10d78 <__sclose>
   10a12:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   10a16:	03442023          	sw	s4,32(s0)
   10a1a:	03342223          	sw	s3,36(s0)
   10a1e:	03242423          	sw	s2,40(s0)
   10a22:	d444                	sw	s1,44(s0)
   10a24:	cc40                	sw	s0,28(s0)
   10a26:	2369                	jal	10fb0 <__retarget_lock_init_recursive>
   10a28:	67c1                	lui	a5,0x10
   10a2a:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   10a2c:	4621                	li	a2,8
   10a2e:	4581                	li	a1,0
   10a30:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   10a34:	d87c                	sw	a5,116(s0)
   10a36:	06042423          	sw	zero,104(s0)
   10a3a:	06042623          	sw	zero,108(s0)
   10a3e:	06042823          	sw	zero,112(s0)
   10a42:	0c042623          	sw	zero,204(s0)
   10a46:	06042c23          	sw	zero,120(s0)
   10a4a:	06042e23          	sw	zero,124(s0)
   10a4e:	08042023          	sw	zero,128(s0)
   10a52:	2b95                	jal	10fc6 <memset>
   10a54:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   10a58:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   10a5c:	09442423          	sw	s4,136(s0)
   10a60:	09342623          	sw	s3,140(s0)
   10a64:	09242823          	sw	s2,144(s0)
   10a68:	08942a23          	sw	s1,148(s0)
   10a6c:	08f42223          	sw	a5,132(s0)
   10a70:	2381                	jal	10fb0 <__retarget_lock_init_recursive>
   10a72:	000207b7          	lui	a5,0x20
   10a76:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   10a78:	4621                	li	a2,8
   10a7a:	4581                	li	a1,0
   10a7c:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   10a80:	0cf42e23          	sw	a5,220(s0)
   10a84:	0c042823          	sw	zero,208(s0)
   10a88:	0c042a23          	sw	zero,212(s0)
   10a8c:	0c042c23          	sw	zero,216(s0)
   10a90:	12042a23          	sw	zero,308(s0)
   10a94:	0e042023          	sw	zero,224(s0)
   10a98:	0e042223          	sw	zero,228(s0)
   10a9c:	0e042423          	sw	zero,232(s0)
   10aa0:	231d                	jal	10fc6 <memset>
   10aa2:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   10aa6:	0f442823          	sw	s4,240(s0)
   10aaa:	0f342a23          	sw	s3,244(s0)
   10aae:	0f242c23          	sw	s2,248(s0)
   10ab2:	0e942e23          	sw	s1,252(s0)
   10ab6:	0ef42623          	sw	a5,236(s0)
   10aba:	4462                	lw	s0,24(sp)
   10abc:	40f2                	lw	ra,28(sp)
   10abe:	44d2                	lw	s1,20(sp)
   10ac0:	4942                	lw	s2,16(sp)
   10ac2:	49b2                	lw	s3,12(sp)
   10ac4:	4a22                	lw	s4,8(sp)
   10ac6:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   10aca:	6105                	addi	sp,sp,32
   10acc:	a1d5                	j	10fb0 <__retarget_lock_init_recursive>

00010ace <__sfp>:
   10ace:	1101                	addi	sp,sp,-32
   10ad0:	c64e                	sw	s3,12(sp)
   10ad2:	89aa                	mv	s3,a0
   10ad4:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10ad8:	ce06                	sw	ra,28(sp)
   10ada:	cc22                	sw	s0,24(sp)
   10adc:	ca26                	sw	s1,20(sp)
   10ade:	c84a                	sw	s2,16(sp)
   10ae0:	29e1                	jal	10fb8 <__retarget_lock_acquire_recursive>
   10ae2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   10ae6:	cfc5                	beqz	a5,10b9e <__sfp+0xd0>
   10ae8:	00001917          	auipc	s2,0x1
   10aec:	52890913          	addi	s2,s2,1320 # 12010 <__sglue>
   10af0:	54fd                	li	s1,-1
   10af2:	00492783          	lw	a5,4(s2)
   10af6:	00892403          	lw	s0,8(s2)
   10afa:	17fd                	addi	a5,a5,-1
   10afc:	0007d763          	bgez	a5,10b0a <__sfp+0x3c>
   10b00:	a0ad                	j	10b6a <__sfp+0x9c>
   10b02:	06840413          	addi	s0,s0,104
   10b06:	06978263          	beq	a5,s1,10b6a <__sfp+0x9c>
   10b0a:	00c41703          	lh	a4,12(s0)
   10b0e:	17fd                	addi	a5,a5,-1
   10b10:	fb6d                	bnez	a4,10b02 <__sfp+0x34>
   10b12:	77c1                	lui	a5,0xffff0
   10b14:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   10b16:	c45c                	sw	a5,12(s0)
   10b18:	05840513          	addi	a0,s0,88
   10b1c:	06042223          	sw	zero,100(s0)
   10b20:	2941                	jal	10fb0 <__retarget_lock_init_recursive>
   10b22:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10b26:	2979                	jal	10fc4 <__retarget_lock_release_recursive>
   10b28:	05c40513          	addi	a0,s0,92
   10b2c:	00042023          	sw	zero,0(s0)
   10b30:	00042423          	sw	zero,8(s0)
   10b34:	00042223          	sw	zero,4(s0)
   10b38:	00042823          	sw	zero,16(s0)
   10b3c:	00042a23          	sw	zero,20(s0)
   10b40:	00042c23          	sw	zero,24(s0)
   10b44:	4621                	li	a2,8
   10b46:	4581                	li	a1,0
   10b48:	29bd                	jal	10fc6 <memset>
   10b4a:	02042823          	sw	zero,48(s0)
   10b4e:	02042a23          	sw	zero,52(s0)
   10b52:	04042223          	sw	zero,68(s0)
   10b56:	04042423          	sw	zero,72(s0)
   10b5a:	40f2                	lw	ra,28(sp)
   10b5c:	8522                	mv	a0,s0
   10b5e:	4462                	lw	s0,24(sp)
   10b60:	44d2                	lw	s1,20(sp)
   10b62:	4942                	lw	s2,16(sp)
   10b64:	49b2                	lw	s3,12(sp)
   10b66:	6105                	addi	sp,sp,32
   10b68:	8082                	ret
   10b6a:	00092403          	lw	s0,0(s2)
   10b6e:	c019                	beqz	s0,10b74 <__sfp+0xa6>
   10b70:	8922                	mv	s2,s0
   10b72:	b741                	j	10af2 <__sfp+0x24>
   10b74:	1ac00593          	li	a1,428
   10b78:	854e                	mv	a0,s3
   10b7a:	155000ef          	jal	114ce <_malloc_r>
   10b7e:	842a                	mv	s0,a0
   10b80:	c10d                	beqz	a0,10ba2 <__sfp+0xd4>
   10b82:	4791                	li	a5,4
   10b84:	0531                	addi	a0,a0,12
   10b86:	00042023          	sw	zero,0(s0)
   10b8a:	c05c                	sw	a5,4(s0)
   10b8c:	c408                	sw	a0,8(s0)
   10b8e:	1a000613          	li	a2,416
   10b92:	4581                	li	a1,0
   10b94:	290d                	jal	10fc6 <memset>
   10b96:	00892023          	sw	s0,0(s2)
   10b9a:	8922                	mv	s2,s0
   10b9c:	bf99                	j	10af2 <__sfp+0x24>
   10b9e:	3531                	jal	109aa <global_stdio_init.part.0>
   10ba0:	b7a1                	j	10ae8 <__sfp+0x1a>
   10ba2:	00092023          	sw	zero,0(s2)
   10ba6:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10baa:	2929                	jal	10fc4 <__retarget_lock_release_recursive>
   10bac:	47b1                	li	a5,12
   10bae:	00f9a023          	sw	a5,0(s3)
   10bb2:	b765                	j	10b5a <__sfp+0x8c>

00010bb4 <__sinit>:
   10bb4:	1141                	addi	sp,sp,-16
   10bb6:	c422                	sw	s0,8(sp)
   10bb8:	842a                	mv	s0,a0
   10bba:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10bbe:	c606                	sw	ra,12(sp)
   10bc0:	2ee5                	jal	10fb8 <__retarget_lock_acquire_recursive>
   10bc2:	585c                	lw	a5,52(s0)
   10bc4:	eb89                	bnez	a5,10bd6 <__sinit+0x22>
   10bc6:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   10bca:	00000717          	auipc	a4,0x0
   10bce:	d5470713          	addi	a4,a4,-684 # 1091e <cleanup_stdio>
   10bd2:	d858                	sw	a4,52(s0)
   10bd4:	c799                	beqz	a5,10be2 <__sinit+0x2e>
   10bd6:	4422                	lw	s0,8(sp)
   10bd8:	40b2                	lw	ra,12(sp)
   10bda:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10bde:	0141                	addi	sp,sp,16
   10be0:	a6d5                	j	10fc4 <__retarget_lock_release_recursive>
   10be2:	33e1                	jal	109aa <global_stdio_init.part.0>
   10be4:	4422                	lw	s0,8(sp)
   10be6:	40b2                	lw	ra,12(sp)
   10be8:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10bec:	0141                	addi	sp,sp,16
   10bee:	aed9                	j	10fc4 <__retarget_lock_release_recursive>

00010bf0 <__sfp_lock_acquire>:
   10bf0:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10bf4:	a6d1                	j	10fb8 <__retarget_lock_acquire_recursive>

00010bf6 <__sfp_lock_release>:
   10bf6:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10bfa:	a6e9                	j	10fc4 <__retarget_lock_release_recursive>

00010bfc <__fp_lock_all>:
   10bfc:	1141                	addi	sp,sp,-16
   10bfe:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10c02:	c606                	sw	ra,12(sp)
   10c04:	2e55                	jal	10fb8 <__retarget_lock_acquire_recursive>
   10c06:	40b2                	lw	ra,12(sp)
   10c08:	00001617          	auipc	a2,0x1
   10c0c:	40860613          	addi	a2,a2,1032 # 12010 <__sglue>
   10c10:	00000597          	auipc	a1,0x0
   10c14:	d5258593          	addi	a1,a1,-686 # 10962 <__fp_lock>
   10c18:	4501                	li	a0,0
   10c1a:	0141                	addi	sp,sp,16
   10c1c:	a015                	j	10c40 <_fwalk_sglue>

00010c1e <__fp_unlock_all>:
   10c1e:	1141                	addi	sp,sp,-16
   10c20:	00001617          	auipc	a2,0x1
   10c24:	3f060613          	addi	a2,a2,1008 # 12010 <__sglue>
   10c28:	00000597          	auipc	a1,0x0
   10c2c:	d5e58593          	addi	a1,a1,-674 # 10986 <__fp_unlock>
   10c30:	4501                	li	a0,0
   10c32:	c606                	sw	ra,12(sp)
   10c34:	2031                	jal	10c40 <_fwalk_sglue>
   10c36:	40b2                	lw	ra,12(sp)
   10c38:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10c3c:	0141                	addi	sp,sp,16
   10c3e:	a659                	j	10fc4 <__retarget_lock_release_recursive>

00010c40 <_fwalk_sglue>:
   10c40:	7179                	addi	sp,sp,-48
   10c42:	d04a                	sw	s2,32(sp)
   10c44:	ce4e                	sw	s3,28(sp)
   10c46:	cc52                	sw	s4,24(sp)
   10c48:	ca56                	sw	s5,20(sp)
   10c4a:	c85a                	sw	s6,16(sp)
   10c4c:	c65e                	sw	s7,12(sp)
   10c4e:	d606                	sw	ra,44(sp)
   10c50:	d422                	sw	s0,40(sp)
   10c52:	d226                	sw	s1,36(sp)
   10c54:	8b2a                	mv	s6,a0
   10c56:	8bae                	mv	s7,a1
   10c58:	8ab2                	mv	s5,a2
   10c5a:	4a01                	li	s4,0
   10c5c:	4985                	li	s3,1
   10c5e:	597d                	li	s2,-1
   10c60:	004aa483          	lw	s1,4(s5)
   10c64:	008aa403          	lw	s0,8(s5)
   10c68:	14fd                	addi	s1,s1,-1
   10c6a:	0204c463          	bltz	s1,10c92 <_fwalk_sglue+0x52>
   10c6e:	00c45783          	lhu	a5,12(s0)
   10c72:	00f9fb63          	bgeu	s3,a5,10c88 <_fwalk_sglue+0x48>
   10c76:	00e41783          	lh	a5,14(s0)
   10c7a:	85a2                	mv	a1,s0
   10c7c:	855a                	mv	a0,s6
   10c7e:	01278563          	beq	a5,s2,10c88 <_fwalk_sglue+0x48>
   10c82:	9b82                	jalr	s7
   10c84:	00aa6a33          	or	s4,s4,a0
   10c88:	14fd                	addi	s1,s1,-1
   10c8a:	06840413          	addi	s0,s0,104
   10c8e:	ff2490e3          	bne	s1,s2,10c6e <_fwalk_sglue+0x2e>
   10c92:	000aaa83          	lw	s5,0(s5)
   10c96:	fc0a95e3          	bnez	s5,10c60 <_fwalk_sglue+0x20>
   10c9a:	50b2                	lw	ra,44(sp)
   10c9c:	5422                	lw	s0,40(sp)
   10c9e:	5492                	lw	s1,36(sp)
   10ca0:	5902                	lw	s2,32(sp)
   10ca2:	49f2                	lw	s3,28(sp)
   10ca4:	4ad2                	lw	s5,20(sp)
   10ca6:	4b42                	lw	s6,16(sp)
   10ca8:	4bb2                	lw	s7,12(sp)
   10caa:	8552                	mv	a0,s4
   10cac:	4a62                	lw	s4,24(sp)
   10cae:	6145                	addi	sp,sp,48
   10cb0:	8082                	ret

00010cb2 <__sread>:
   10cb2:	1141                	addi	sp,sp,-16
   10cb4:	c422                	sw	s0,8(sp)
   10cb6:	842e                	mv	s0,a1
   10cb8:	00e59583          	lh	a1,14(a1)
   10cbc:	c606                	sw	ra,12(sp)
   10cbe:	22c9                	jal	10e80 <_read_r>
   10cc0:	00054963          	bltz	a0,10cd2 <__sread+0x20>
   10cc4:	483c                	lw	a5,80(s0)
   10cc6:	40b2                	lw	ra,12(sp)
   10cc8:	97aa                	add	a5,a5,a0
   10cca:	c83c                	sw	a5,80(s0)
   10ccc:	4422                	lw	s0,8(sp)
   10cce:	0141                	addi	sp,sp,16
   10cd0:	8082                	ret
   10cd2:	00c45783          	lhu	a5,12(s0)
   10cd6:	777d                	lui	a4,0xfffff
   10cd8:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10cda:	8ff9                	and	a5,a5,a4
   10cdc:	40b2                	lw	ra,12(sp)
   10cde:	00f41623          	sh	a5,12(s0)
   10ce2:	4422                	lw	s0,8(sp)
   10ce4:	0141                	addi	sp,sp,16
   10ce6:	8082                	ret

00010ce8 <__seofread>:
   10ce8:	4501                	li	a0,0
   10cea:	8082                	ret

00010cec <__swrite>:
   10cec:	00c59783          	lh	a5,12(a1)
   10cf0:	1101                	addi	sp,sp,-32
   10cf2:	cc22                	sw	s0,24(sp)
   10cf4:	ca26                	sw	s1,20(sp)
   10cf6:	c84a                	sw	s2,16(sp)
   10cf8:	c64e                	sw	s3,12(sp)
   10cfa:	ce06                	sw	ra,28(sp)
   10cfc:	1007f713          	andi	a4,a5,256
   10d00:	842e                	mv	s0,a1
   10d02:	8932                	mv	s2,a2
   10d04:	89b6                	mv	s3,a3
   10d06:	84aa                	mv	s1,a0
   10d08:	e315                	bnez	a4,10d2c <__swrite+0x40>
   10d0a:	777d                	lui	a4,0xfffff
   10d0c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10d0e:	8ff9                	and	a5,a5,a4
   10d10:	00e41583          	lh	a1,14(s0)
   10d14:	00f41623          	sh	a5,12(s0)
   10d18:	4462                	lw	s0,24(sp)
   10d1a:	40f2                	lw	ra,28(sp)
   10d1c:	86ce                	mv	a3,s3
   10d1e:	864a                	mv	a2,s2
   10d20:	49b2                	lw	s3,12(sp)
   10d22:	4942                	lw	s2,16(sp)
   10d24:	8526                	mv	a0,s1
   10d26:	44d2                	lw	s1,20(sp)
   10d28:	6105                	addi	sp,sp,32
   10d2a:	aa71                	j	10ec6 <_write_r>
   10d2c:	00e59583          	lh	a1,14(a1)
   10d30:	4689                	li	a3,2
   10d32:	4601                	li	a2,0
   10d34:	2219                	jal	10e3a <_lseek_r>
   10d36:	00c41783          	lh	a5,12(s0)
   10d3a:	bfc1                	j	10d0a <__swrite+0x1e>

00010d3c <__sseek>:
   10d3c:	1141                	addi	sp,sp,-16
   10d3e:	c422                	sw	s0,8(sp)
   10d40:	842e                	mv	s0,a1
   10d42:	00e59583          	lh	a1,14(a1)
   10d46:	c606                	sw	ra,12(sp)
   10d48:	28cd                	jal	10e3a <_lseek_r>
   10d4a:	577d                	li	a4,-1
   10d4c:	00c41783          	lh	a5,12(s0)
   10d50:	00e50b63          	beq	a0,a4,10d66 <__sseek+0x2a>
   10d54:	6705                	lui	a4,0x1
   10d56:	8fd9                	or	a5,a5,a4
   10d58:	40b2                	lw	ra,12(sp)
   10d5a:	c828                	sw	a0,80(s0)
   10d5c:	00f41623          	sh	a5,12(s0)
   10d60:	4422                	lw	s0,8(sp)
   10d62:	0141                	addi	sp,sp,16
   10d64:	8082                	ret
   10d66:	777d                	lui	a4,0xfffff
   10d68:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10d6a:	8ff9                	and	a5,a5,a4
   10d6c:	40b2                	lw	ra,12(sp)
   10d6e:	00f41623          	sh	a5,12(s0)
   10d72:	4422                	lw	s0,8(sp)
   10d74:	0141                	addi	sp,sp,16
   10d76:	8082                	ret

00010d78 <__sclose>:
   10d78:	00e59583          	lh	a1,14(a1)
   10d7c:	a009                	j	10d7e <_close_r>

00010d7e <_close_r>:
   10d7e:	1141                	addi	sp,sp,-16
   10d80:	c422                	sw	s0,8(sp)
   10d82:	842a                	mv	s0,a0
   10d84:	852e                	mv	a0,a1
   10d86:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10d8a:	c606                	sw	ra,12(sp)
   10d8c:	0ee010ef          	jal	11e7a <_close>
   10d90:	57fd                	li	a5,-1
   10d92:	00f50663          	beq	a0,a5,10d9e <_close_r+0x20>
   10d96:	40b2                	lw	ra,12(sp)
   10d98:	4422                	lw	s0,8(sp)
   10d9a:	0141                	addi	sp,sp,16
   10d9c:	8082                	ret
   10d9e:	c226                	sw	s1,4(sp)
   10da0:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10da4:	409c                	lw	a5,0(s1)
   10da6:	c799                	beqz	a5,10db4 <_close_r+0x36>
   10da8:	40b2                	lw	ra,12(sp)
   10daa:	c01c                	sw	a5,0(s0)
   10dac:	4422                	lw	s0,8(sp)
   10dae:	4492                	lw	s1,4(sp)
   10db0:	0141                	addi	sp,sp,16
   10db2:	8082                	ret
   10db4:	40b2                	lw	ra,12(sp)
   10db6:	4422                	lw	s0,8(sp)
   10db8:	4492                	lw	s1,4(sp)
   10dba:	0141                	addi	sp,sp,16
   10dbc:	8082                	ret

00010dbe <_reclaim_reent>:
   10dbe:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   10dc2:	06a78b63          	beq	a5,a0,10e38 <_reclaim_reent+0x7a>
   10dc6:	416c                	lw	a1,68(a0)
   10dc8:	1101                	addi	sp,sp,-32
   10dca:	ca26                	sw	s1,20(sp)
   10dcc:	ce06                	sw	ra,28(sp)
   10dce:	cc22                	sw	s0,24(sp)
   10dd0:	84aa                	mv	s1,a0
   10dd2:	c59d                	beqz	a1,10e00 <_reclaim_reent+0x42>
   10dd4:	c84a                	sw	s2,16(sp)
   10dd6:	c64e                	sw	s3,12(sp)
   10dd8:	4901                	li	s2,0
   10dda:	08000993          	li	s3,128
   10dde:	012587b3          	add	a5,a1,s2
   10de2:	4380                	lw	s0,0(a5)
   10de4:	c419                	beqz	s0,10df2 <_reclaim_reent+0x34>
   10de6:	85a2                	mv	a1,s0
   10de8:	4000                	lw	s0,0(s0)
   10dea:	8526                	mv	a0,s1
   10dec:	21d1                	jal	112b0 <_free_r>
   10dee:	fc65                	bnez	s0,10de6 <_reclaim_reent+0x28>
   10df0:	40ec                	lw	a1,68(s1)
   10df2:	0911                	addi	s2,s2,4
   10df4:	ff3915e3          	bne	s2,s3,10dde <_reclaim_reent+0x20>
   10df8:	8526                	mv	a0,s1
   10dfa:	295d                	jal	112b0 <_free_r>
   10dfc:	4942                	lw	s2,16(sp)
   10dfe:	49b2                	lw	s3,12(sp)
   10e00:	5c8c                	lw	a1,56(s1)
   10e02:	c199                	beqz	a1,10e08 <_reclaim_reent+0x4a>
   10e04:	8526                	mv	a0,s1
   10e06:	216d                	jal	112b0 <_free_r>
   10e08:	40a0                	lw	s0,64(s1)
   10e0a:	c411                	beqz	s0,10e16 <_reclaim_reent+0x58>
   10e0c:	85a2                	mv	a1,s0
   10e0e:	4000                	lw	s0,0(s0)
   10e10:	8526                	mv	a0,s1
   10e12:	2979                	jal	112b0 <_free_r>
   10e14:	fc65                	bnez	s0,10e0c <_reclaim_reent+0x4e>
   10e16:	44ec                	lw	a1,76(s1)
   10e18:	c199                	beqz	a1,10e1e <_reclaim_reent+0x60>
   10e1a:	8526                	mv	a0,s1
   10e1c:	2951                	jal	112b0 <_free_r>
   10e1e:	58dc                	lw	a5,52(s1)
   10e20:	c799                	beqz	a5,10e2e <_reclaim_reent+0x70>
   10e22:	4462                	lw	s0,24(sp)
   10e24:	40f2                	lw	ra,28(sp)
   10e26:	8526                	mv	a0,s1
   10e28:	44d2                	lw	s1,20(sp)
   10e2a:	6105                	addi	sp,sp,32
   10e2c:	8782                	jr	a5
   10e2e:	40f2                	lw	ra,28(sp)
   10e30:	4462                	lw	s0,24(sp)
   10e32:	44d2                	lw	s1,20(sp)
   10e34:	6105                	addi	sp,sp,32
   10e36:	8082                	ret
   10e38:	8082                	ret

00010e3a <_lseek_r>:
   10e3a:	1141                	addi	sp,sp,-16
   10e3c:	872e                	mv	a4,a1
   10e3e:	c422                	sw	s0,8(sp)
   10e40:	85b2                	mv	a1,a2
   10e42:	842a                	mv	s0,a0
   10e44:	8636                	mv	a2,a3
   10e46:	853a                	mv	a0,a4
   10e48:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10e4c:	c606                	sw	ra,12(sp)
   10e4e:	076010ef          	jal	11ec4 <_lseek>
   10e52:	57fd                	li	a5,-1
   10e54:	00f50663          	beq	a0,a5,10e60 <_lseek_r+0x26>
   10e58:	40b2                	lw	ra,12(sp)
   10e5a:	4422                	lw	s0,8(sp)
   10e5c:	0141                	addi	sp,sp,16
   10e5e:	8082                	ret
   10e60:	c226                	sw	s1,4(sp)
   10e62:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10e66:	409c                	lw	a5,0(s1)
   10e68:	c799                	beqz	a5,10e76 <_lseek_r+0x3c>
   10e6a:	40b2                	lw	ra,12(sp)
   10e6c:	c01c                	sw	a5,0(s0)
   10e6e:	4422                	lw	s0,8(sp)
   10e70:	4492                	lw	s1,4(sp)
   10e72:	0141                	addi	sp,sp,16
   10e74:	8082                	ret
   10e76:	40b2                	lw	ra,12(sp)
   10e78:	4422                	lw	s0,8(sp)
   10e7a:	4492                	lw	s1,4(sp)
   10e7c:	0141                	addi	sp,sp,16
   10e7e:	8082                	ret

00010e80 <_read_r>:
   10e80:	1141                	addi	sp,sp,-16
   10e82:	872e                	mv	a4,a1
   10e84:	c422                	sw	s0,8(sp)
   10e86:	85b2                	mv	a1,a2
   10e88:	842a                	mv	s0,a0
   10e8a:	8636                	mv	a2,a3
   10e8c:	853a                	mv	a0,a4
   10e8e:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10e92:	c606                	sw	ra,12(sp)
   10e94:	05a010ef          	jal	11eee <_read>
   10e98:	57fd                	li	a5,-1
   10e9a:	00f50663          	beq	a0,a5,10ea6 <_read_r+0x26>
   10e9e:	40b2                	lw	ra,12(sp)
   10ea0:	4422                	lw	s0,8(sp)
   10ea2:	0141                	addi	sp,sp,16
   10ea4:	8082                	ret
   10ea6:	c226                	sw	s1,4(sp)
   10ea8:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10eac:	409c                	lw	a5,0(s1)
   10eae:	c799                	beqz	a5,10ebc <_read_r+0x3c>
   10eb0:	40b2                	lw	ra,12(sp)
   10eb2:	c01c                	sw	a5,0(s0)
   10eb4:	4422                	lw	s0,8(sp)
   10eb6:	4492                	lw	s1,4(sp)
   10eb8:	0141                	addi	sp,sp,16
   10eba:	8082                	ret
   10ebc:	40b2                	lw	ra,12(sp)
   10ebe:	4422                	lw	s0,8(sp)
   10ec0:	4492                	lw	s1,4(sp)
   10ec2:	0141                	addi	sp,sp,16
   10ec4:	8082                	ret

00010ec6 <_write_r>:
   10ec6:	1141                	addi	sp,sp,-16
   10ec8:	872e                	mv	a4,a1
   10eca:	c422                	sw	s0,8(sp)
   10ecc:	85b2                	mv	a1,a2
   10ece:	842a                	mv	s0,a0
   10ed0:	8636                	mv	a2,a3
   10ed2:	853a                	mv	a0,a4
   10ed4:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10ed8:	c606                	sw	ra,12(sp)
   10eda:	08c010ef          	jal	11f66 <_write>
   10ede:	57fd                	li	a5,-1
   10ee0:	00f50663          	beq	a0,a5,10eec <_write_r+0x26>
   10ee4:	40b2                	lw	ra,12(sp)
   10ee6:	4422                	lw	s0,8(sp)
   10ee8:	0141                	addi	sp,sp,16
   10eea:	8082                	ret
   10eec:	c226                	sw	s1,4(sp)
   10eee:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10ef2:	409c                	lw	a5,0(s1)
   10ef4:	c799                	beqz	a5,10f02 <_write_r+0x3c>
   10ef6:	40b2                	lw	ra,12(sp)
   10ef8:	c01c                	sw	a5,0(s0)
   10efa:	4422                	lw	s0,8(sp)
   10efc:	4492                	lw	s1,4(sp)
   10efe:	0141                	addi	sp,sp,16
   10f00:	8082                	ret
   10f02:	40b2                	lw	ra,12(sp)
   10f04:	4422                	lw	s0,8(sp)
   10f06:	4492                	lw	s1,4(sp)
   10f08:	0141                	addi	sp,sp,16
   10f0a:	8082                	ret

00010f0c <__libc_init_array>:
   10f0c:	1141                	addi	sp,sp,-16
   10f0e:	c422                	sw	s0,8(sp)
   10f10:	c04a                	sw	s2,0(sp)
   10f12:	00001797          	auipc	a5,0x1
   10f16:	0ee78793          	addi	a5,a5,238 # 12000 <__init_array_start>
   10f1a:	00001417          	auipc	s0,0x1
   10f1e:	0e640413          	addi	s0,s0,230 # 12000 <__init_array_start>
   10f22:	c606                	sw	ra,12(sp)
   10f24:	c226                	sw	s1,4(sp)
   10f26:	40878933          	sub	s2,a5,s0
   10f2a:	00878b63          	beq	a5,s0,10f40 <__libc_init_array+0x34>
   10f2e:	40295913          	srai	s2,s2,0x2
   10f32:	4481                	li	s1,0
   10f34:	401c                	lw	a5,0(s0)
   10f36:	0485                	addi	s1,s1,1
   10f38:	0411                	addi	s0,s0,4
   10f3a:	9782                	jalr	a5
   10f3c:	ff24ece3          	bltu	s1,s2,10f34 <__libc_init_array+0x28>
   10f40:	00001797          	auipc	a5,0x1
   10f44:	0c878793          	addi	a5,a5,200 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10f48:	00001417          	auipc	s0,0x1
   10f4c:	0b840413          	addi	s0,s0,184 # 12000 <__init_array_start>
   10f50:	40878933          	sub	s2,a5,s0
   10f54:	40295913          	srai	s2,s2,0x2
   10f58:	00878963          	beq	a5,s0,10f6a <__libc_init_array+0x5e>
   10f5c:	4481                	li	s1,0
   10f5e:	401c                	lw	a5,0(s0)
   10f60:	0485                	addi	s1,s1,1
   10f62:	0411                	addi	s0,s0,4
   10f64:	9782                	jalr	a5
   10f66:	ff24ece3          	bltu	s1,s2,10f5e <__libc_init_array+0x52>
   10f6a:	40b2                	lw	ra,12(sp)
   10f6c:	4422                	lw	s0,8(sp)
   10f6e:	4492                	lw	s1,4(sp)
   10f70:	4902                	lw	s2,0(sp)
   10f72:	0141                	addi	sp,sp,16
   10f74:	8082                	ret

00010f76 <__libc_fini_array>:
   10f76:	1141                	addi	sp,sp,-16
   10f78:	c422                	sw	s0,8(sp)
   10f7a:	00001797          	auipc	a5,0x1
   10f7e:	08e78793          	addi	a5,a5,142 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10f82:	00001417          	auipc	s0,0x1
   10f86:	08a40413          	addi	s0,s0,138 # 1200c <__fini_array_end>
   10f8a:	8c1d                	sub	s0,s0,a5
   10f8c:	c226                	sw	s1,4(sp)
   10f8e:	c606                	sw	ra,12(sp)
   10f90:	40245493          	srai	s1,s0,0x2
   10f94:	c881                	beqz	s1,10fa4 <__libc_fini_array+0x2e>
   10f96:	1471                	addi	s0,s0,-4
   10f98:	943e                	add	s0,s0,a5
   10f9a:	401c                	lw	a5,0(s0)
   10f9c:	14fd                	addi	s1,s1,-1
   10f9e:	1471                	addi	s0,s0,-4
   10fa0:	9782                	jalr	a5
   10fa2:	fce5                	bnez	s1,10f9a <__libc_fini_array+0x24>
   10fa4:	40b2                	lw	ra,12(sp)
   10fa6:	4422                	lw	s0,8(sp)
   10fa8:	4492                	lw	s1,4(sp)
   10faa:	0141                	addi	sp,sp,16
   10fac:	8082                	ret

00010fae <__retarget_lock_init>:
   10fae:	8082                	ret

00010fb0 <__retarget_lock_init_recursive>:
   10fb0:	8082                	ret

00010fb2 <__retarget_lock_close>:
   10fb2:	8082                	ret

00010fb4 <__retarget_lock_close_recursive>:
   10fb4:	8082                	ret

00010fb6 <__retarget_lock_acquire>:
   10fb6:	8082                	ret

00010fb8 <__retarget_lock_acquire_recursive>:
   10fb8:	8082                	ret

00010fba <__retarget_lock_try_acquire>:
   10fba:	4505                	li	a0,1
   10fbc:	8082                	ret

00010fbe <__retarget_lock_try_acquire_recursive>:
   10fbe:	4505                	li	a0,1
   10fc0:	8082                	ret

00010fc2 <__retarget_lock_release>:
   10fc2:	8082                	ret

00010fc4 <__retarget_lock_release_recursive>:
   10fc4:	8082                	ret

00010fc6 <memset>:
   10fc6:	433d                	li	t1,15
   10fc8:	872a                	mv	a4,a0
   10fca:	02c37363          	bgeu	t1,a2,10ff0 <memset+0x2a>
   10fce:	00f77793          	andi	a5,a4,15
   10fd2:	efbd                	bnez	a5,11050 <memset+0x8a>
   10fd4:	e5ad                	bnez	a1,1103e <memset+0x78>
   10fd6:	ff067693          	andi	a3,a2,-16
   10fda:	8a3d                	andi	a2,a2,15
   10fdc:	96ba                	add	a3,a3,a4
   10fde:	c30c                	sw	a1,0(a4)
   10fe0:	c34c                	sw	a1,4(a4)
   10fe2:	c70c                	sw	a1,8(a4)
   10fe4:	c74c                	sw	a1,12(a4)
   10fe6:	0741                	addi	a4,a4,16
   10fe8:	fed76be3          	bltu	a4,a3,10fde <memset+0x18>
   10fec:	e211                	bnez	a2,10ff0 <memset+0x2a>
   10fee:	8082                	ret
   10ff0:	40c306b3          	sub	a3,t1,a2
   10ff4:	068a                	slli	a3,a3,0x2
   10ff6:	00000297          	auipc	t0,0x0
   10ffa:	9696                	add	a3,a3,t0
   10ffc:	00a68067          	jr	10(a3)
   11000:	00b70723          	sb	a1,14(a4)
   11004:	00b706a3          	sb	a1,13(a4)
   11008:	00b70623          	sb	a1,12(a4)
   1100c:	00b705a3          	sb	a1,11(a4)
   11010:	00b70523          	sb	a1,10(a4)
   11014:	00b704a3          	sb	a1,9(a4)
   11018:	00b70423          	sb	a1,8(a4)
   1101c:	00b703a3          	sb	a1,7(a4)
   11020:	00b70323          	sb	a1,6(a4)
   11024:	00b702a3          	sb	a1,5(a4)
   11028:	00b70223          	sb	a1,4(a4)
   1102c:	00b701a3          	sb	a1,3(a4)
   11030:	00b70123          	sb	a1,2(a4)
   11034:	00b700a3          	sb	a1,1(a4)
   11038:	00b70023          	sb	a1,0(a4)
   1103c:	8082                	ret
   1103e:	0ff5f593          	zext.b	a1,a1
   11042:	00859693          	slli	a3,a1,0x8
   11046:	8dd5                	or	a1,a1,a3
   11048:	01059693          	slli	a3,a1,0x10
   1104c:	8dd5                	or	a1,a1,a3
   1104e:	b761                	j	10fd6 <memset+0x10>
   11050:	00279693          	slli	a3,a5,0x2
   11054:	00000297          	auipc	t0,0x0
   11058:	9696                	add	a3,a3,t0
   1105a:	8286                	mv	t0,ra
   1105c:	fa8680e7          	jalr	-88(a3)
   11060:	8096                	mv	ra,t0
   11062:	17c1                	addi	a5,a5,-16
   11064:	8f1d                	sub	a4,a4,a5
   11066:	963e                	add	a2,a2,a5
   11068:	f8c374e3          	bgeu	t1,a2,10ff0 <memset+0x2a>
   1106c:	b7a5                	j	10fd4 <memset+0xe>

0001106e <__register_exitproc>:
   1106e:	1101                	addi	sp,sp,-32
   11070:	c84a                	sw	s2,16(sp)
   11072:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   11076:	cc22                	sw	s0,24(sp)
   11078:	842a                	mv	s0,a0
   1107a:	00092503          	lw	a0,0(s2)
   1107e:	ca26                	sw	s1,20(sp)
   11080:	c64e                	sw	s3,12(sp)
   11082:	c452                	sw	s4,8(sp)
   11084:	ce06                	sw	ra,28(sp)
   11086:	84ae                	mv	s1,a1
   11088:	8a32                	mv	s4,a2
   1108a:	89b6                	mv	s3,a3
   1108c:	3735                	jal	10fb8 <__retarget_lock_acquire_recursive>
   1108e:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   11092:	431c                	lw	a5,0(a4)
   11094:	cfb9                	beqz	a5,110f2 <__register_exitproc+0x84>
   11096:	43d8                	lw	a4,4(a5)
   11098:	45fd                	li	a1,31
   1109a:	00092503          	lw	a0,0(s2)
   1109e:	04e5ce63          	blt	a1,a4,110fa <__register_exitproc+0x8c>
   110a2:	00271593          	slli	a1,a4,0x2
   110a6:	ec19                	bnez	s0,110c4 <__register_exitproc+0x56>
   110a8:	0705                	addi	a4,a4,1
   110aa:	c3d8                	sw	a4,4(a5)
   110ac:	97ae                	add	a5,a5,a1
   110ae:	c784                	sw	s1,8(a5)
   110b0:	3f11                	jal	10fc4 <__retarget_lock_release_recursive>
   110b2:	4501                	li	a0,0
   110b4:	40f2                	lw	ra,28(sp)
   110b6:	4462                	lw	s0,24(sp)
   110b8:	44d2                	lw	s1,20(sp)
   110ba:	4942                	lw	s2,16(sp)
   110bc:	49b2                	lw	s3,12(sp)
   110be:	4a22                	lw	s4,8(sp)
   110c0:	6105                	addi	sp,sp,32
   110c2:	8082                	ret
   110c4:	00b78833          	add	a6,a5,a1
   110c8:	09482423          	sw	s4,136(a6)
   110cc:	1887a683          	lw	a3,392(a5)
   110d0:	4605                	li	a2,1
   110d2:	00e61633          	sll	a2,a2,a4
   110d6:	8ed1                	or	a3,a3,a2
   110d8:	18d7a423          	sw	a3,392(a5)
   110dc:	11382423          	sw	s3,264(a6)
   110e0:	4689                	li	a3,2
   110e2:	fcd413e3          	bne	s0,a3,110a8 <__register_exitproc+0x3a>
   110e6:	18c7a683          	lw	a3,396(a5)
   110ea:	8ed1                	or	a3,a3,a2
   110ec:	18d7a623          	sw	a3,396(a5)
   110f0:	bf65                	j	110a8 <__register_exitproc+0x3a>
   110f2:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   110f6:	c31c                	sw	a5,0(a4)
   110f8:	bf79                	j	11096 <__register_exitproc+0x28>
   110fa:	35e9                	jal	10fc4 <__retarget_lock_release_recursive>
   110fc:	557d                	li	a0,-1
   110fe:	bf5d                	j	110b4 <__register_exitproc+0x46>

00011100 <__call_exitprocs>:
   11100:	7179                	addi	sp,sp,-48
   11102:	c65e                	sw	s7,12(sp)
   11104:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   11108:	c85a                	sw	s6,16(sp)
   1110a:	8b2a                	mv	s6,a0
   1110c:	000ba503          	lw	a0,0(s7)
   11110:	cc52                	sw	s4,24(sp)
   11112:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   11116:	d04a                	sw	s2,32(sp)
   11118:	c462                	sw	s8,8(sp)
   1111a:	d606                	sw	ra,44(sp)
   1111c:	8c2e                	mv	s8,a1
   1111e:	3d69                	jal	10fb8 <__retarget_lock_acquire_recursive>
   11120:	000a2903          	lw	s2,0(s4)
   11124:	04090063          	beqz	s2,11164 <__call_exitprocs+0x64>
   11128:	ce4e                	sw	s3,28(sp)
   1112a:	ca56                	sw	s5,20(sp)
   1112c:	d422                	sw	s0,40(sp)
   1112e:	d226                	sw	s1,36(sp)
   11130:	c266                	sw	s9,4(sp)
   11132:	59fd                	li	s3,-1
   11134:	4a85                	li	s5,1
   11136:	00492483          	lw	s1,4(s2)
   1113a:	fff48413          	addi	s0,s1,-1
   1113e:	00044e63          	bltz	s0,1115a <__call_exitprocs+0x5a>
   11142:	048a                	slli	s1,s1,0x2
   11144:	94ca                	add	s1,s1,s2
   11146:	020c0963          	beqz	s8,11178 <__call_exitprocs+0x78>
   1114a:	1044a783          	lw	a5,260(s1)
   1114e:	03878563          	beq	a5,s8,11178 <__call_exitprocs+0x78>
   11152:	147d                	addi	s0,s0,-1
   11154:	14f1                	addi	s1,s1,-4
   11156:	ff341ae3          	bne	s0,s3,1114a <__call_exitprocs+0x4a>
   1115a:	5422                	lw	s0,40(sp)
   1115c:	5492                	lw	s1,36(sp)
   1115e:	49f2                	lw	s3,28(sp)
   11160:	4ad2                	lw	s5,20(sp)
   11162:	4c92                	lw	s9,4(sp)
   11164:	000ba503          	lw	a0,0(s7)
   11168:	50b2                	lw	ra,44(sp)
   1116a:	5902                	lw	s2,32(sp)
   1116c:	4a62                	lw	s4,24(sp)
   1116e:	4b42                	lw	s6,16(sp)
   11170:	4bb2                	lw	s7,12(sp)
   11172:	4c22                	lw	s8,8(sp)
   11174:	6145                	addi	sp,sp,48
   11176:	b5b9                	j	10fc4 <__retarget_lock_release_recursive>
   11178:	00492783          	lw	a5,4(s2)
   1117c:	40d4                	lw	a3,4(s1)
   1117e:	17fd                	addi	a5,a5,-1
   11180:	04878c63          	beq	a5,s0,111d8 <__call_exitprocs+0xd8>
   11184:	0004a223          	sw	zero,4(s1)
   11188:	c295                	beqz	a3,111ac <__call_exitprocs+0xac>
   1118a:	18892783          	lw	a5,392(s2)
   1118e:	008a9733          	sll	a4,s5,s0
   11192:	00492c83          	lw	s9,4(s2)
   11196:	8ff9                	and	a5,a5,a4
   11198:	ef99                	bnez	a5,111b6 <__call_exitprocs+0xb6>
   1119a:	9682                	jalr	a3
   1119c:	00492703          	lw	a4,4(s2)
   111a0:	000a2783          	lw	a5,0(s4)
   111a4:	03971763          	bne	a4,s9,111d2 <__call_exitprocs+0xd2>
   111a8:	03279563          	bne	a5,s2,111d2 <__call_exitprocs+0xd2>
   111ac:	147d                	addi	s0,s0,-1
   111ae:	14f1                	addi	s1,s1,-4
   111b0:	f9341be3          	bne	s0,s3,11146 <__call_exitprocs+0x46>
   111b4:	b75d                	j	1115a <__call_exitprocs+0x5a>
   111b6:	18c92783          	lw	a5,396(s2)
   111ba:	0844a583          	lw	a1,132(s1)
   111be:	8f7d                	and	a4,a4,a5
   111c0:	ef19                	bnez	a4,111de <__call_exitprocs+0xde>
   111c2:	855a                	mv	a0,s6
   111c4:	9682                	jalr	a3
   111c6:	00492703          	lw	a4,4(s2)
   111ca:	000a2783          	lw	a5,0(s4)
   111ce:	fd970de3          	beq	a4,s9,111a8 <__call_exitprocs+0xa8>
   111d2:	d7c1                	beqz	a5,1115a <__call_exitprocs+0x5a>
   111d4:	893e                	mv	s2,a5
   111d6:	b785                	j	11136 <__call_exitprocs+0x36>
   111d8:	00892223          	sw	s0,4(s2)
   111dc:	b775                	j	11188 <__call_exitprocs+0x88>
   111de:	852e                	mv	a0,a1
   111e0:	9682                	jalr	a3
   111e2:	bf6d                	j	1119c <__call_exitprocs+0x9c>

000111e4 <_malloc_trim_r>:
   111e4:	1101                	addi	sp,sp,-32
   111e6:	cc22                	sw	s0,24(sp)
   111e8:	ca26                	sw	s1,20(sp)
   111ea:	c84a                	sw	s2,16(sp)
   111ec:	c64e                	sw	s3,12(sp)
   111ee:	c452                	sw	s4,8(sp)
   111f0:	89ae                	mv	s3,a1
   111f2:	ce06                	sw	ra,28(sp)
   111f4:	892a                	mv	s2,a0
   111f6:	00001a17          	auipc	s4,0x1
   111fa:	f4aa0a13          	addi	s4,s4,-182 # 12140 <__malloc_av_>
   111fe:	0a3000ef          	jal	11aa0 <__malloc_lock>
   11202:	008a2783          	lw	a5,8(s4)
   11206:	6405                	lui	s0,0x1
   11208:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   1120a:	43c4                	lw	s1,4(a5)
   1120c:	6785                	lui	a5,0x1
   1120e:	98f1                	andi	s1,s1,-4
   11210:	9426                	add	s0,s0,s1
   11212:	41340433          	sub	s0,s0,s3
   11216:	8031                	srli	s0,s0,0xc
   11218:	147d                	addi	s0,s0,-1
   1121a:	0432                	slli	s0,s0,0xc
   1121c:	00f44b63          	blt	s0,a5,11232 <_malloc_trim_r+0x4e>
   11220:	4581                	li	a1,0
   11222:	854a                	mv	a0,s2
   11224:	419000ef          	jal	11e3c <_sbrk_r>
   11228:	008a2783          	lw	a5,8(s4)
   1122c:	97a6                	add	a5,a5,s1
   1122e:	00f50e63          	beq	a0,a5,1124a <_malloc_trim_r+0x66>
   11232:	854a                	mv	a0,s2
   11234:	075000ef          	jal	11aa8 <__malloc_unlock>
   11238:	40f2                	lw	ra,28(sp)
   1123a:	4462                	lw	s0,24(sp)
   1123c:	44d2                	lw	s1,20(sp)
   1123e:	4942                	lw	s2,16(sp)
   11240:	49b2                	lw	s3,12(sp)
   11242:	4a22                	lw	s4,8(sp)
   11244:	4501                	li	a0,0
   11246:	6105                	addi	sp,sp,32
   11248:	8082                	ret
   1124a:	408005b3          	neg	a1,s0
   1124e:	854a                	mv	a0,s2
   11250:	3ed000ef          	jal	11e3c <_sbrk_r>
   11254:	57fd                	li	a5,-1
   11256:	02f50963          	beq	a0,a5,11288 <_malloc_trim_r+0xa4>
   1125a:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   1125e:	008a2683          	lw	a3,8(s4)
   11262:	431c                	lw	a5,0(a4)
   11264:	8c81                	sub	s1,s1,s0
   11266:	0014e493          	ori	s1,s1,1
   1126a:	854a                	mv	a0,s2
   1126c:	8f81                	sub	a5,a5,s0
   1126e:	c2c4                	sw	s1,4(a3)
   11270:	c31c                	sw	a5,0(a4)
   11272:	037000ef          	jal	11aa8 <__malloc_unlock>
   11276:	40f2                	lw	ra,28(sp)
   11278:	4462                	lw	s0,24(sp)
   1127a:	44d2                	lw	s1,20(sp)
   1127c:	4942                	lw	s2,16(sp)
   1127e:	49b2                	lw	s3,12(sp)
   11280:	4a22                	lw	s4,8(sp)
   11282:	4505                	li	a0,1
   11284:	6105                	addi	sp,sp,32
   11286:	8082                	ret
   11288:	4581                	li	a1,0
   1128a:	854a                	mv	a0,s2
   1128c:	3b1000ef          	jal	11e3c <_sbrk_r>
   11290:	008a2703          	lw	a4,8(s4)
   11294:	46bd                	li	a3,15
   11296:	40e507b3          	sub	a5,a0,a4
   1129a:	f8f6dce3          	bge	a3,a5,11232 <_malloc_trim_r+0x4e>
   1129e:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   112a2:	0017e793          	ori	a5,a5,1
   112a6:	c35c                	sw	a5,4(a4)
   112a8:	8d15                	sub	a0,a0,a3
   112aa:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   112ae:	b751                	j	11232 <_malloc_trim_r+0x4e>

000112b0 <_free_r>:
   112b0:	cdf1                	beqz	a1,1138c <_free_r+0xdc>
   112b2:	1141                	addi	sp,sp,-16
   112b4:	c422                	sw	s0,8(sp)
   112b6:	c226                	sw	s1,4(sp)
   112b8:	842e                	mv	s0,a1
   112ba:	84aa                	mv	s1,a0
   112bc:	c606                	sw	ra,12(sp)
   112be:	7e2000ef          	jal	11aa0 <__malloc_lock>
   112c2:	ffc42583          	lw	a1,-4(s0)
   112c6:	ff840713          	addi	a4,s0,-8
   112ca:	00001817          	auipc	a6,0x1
   112ce:	e7680813          	addi	a6,a6,-394 # 12140 <__malloc_av_>
   112d2:	ffe5f793          	andi	a5,a1,-2
   112d6:	00f70633          	add	a2,a4,a5
   112da:	4254                	lw	a3,4(a2)
   112dc:	00882503          	lw	a0,8(a6)
   112e0:	0015f893          	andi	a7,a1,1
   112e4:	9af1                	andi	a3,a3,-4
   112e6:	10c50d63          	beq	a0,a2,11400 <_free_r+0x150>
   112ea:	c254                	sw	a3,4(a2)
   112ec:	00d60533          	add	a0,a2,a3
   112f0:	4148                	lw	a0,4(a0)
   112f2:	8905                	andi	a0,a0,1
   112f4:	06089963          	bnez	a7,11366 <_free_r+0xb6>
   112f8:	ff842303          	lw	t1,-8(s0)
   112fc:	00001897          	auipc	a7,0x1
   11300:	e4c88893          	addi	a7,a7,-436 # 12148 <__malloc_av_+0x8>
   11304:	40670733          	sub	a4,a4,t1
   11308:	470c                	lw	a1,8(a4)
   1130a:	979a                	add	a5,a5,t1
   1130c:	0d158e63          	beq	a1,a7,113e8 <_free_r+0x138>
   11310:	00c72303          	lw	t1,12(a4)
   11314:	0065a623          	sw	t1,12(a1)
   11318:	00b32423          	sw	a1,8(t1) # 1016a <frame_dummy+0x1a>
   1131c:	10050b63          	beqz	a0,11432 <_free_r+0x182>
   11320:	0017e693          	ori	a3,a5,1
   11324:	c354                	sw	a3,4(a4)
   11326:	c21c                	sw	a5,0(a2)
   11328:	1ff00693          	li	a3,511
   1132c:	06f6ea63          	bltu	a3,a5,113a0 <_free_r+0xf0>
   11330:	ff87f693          	andi	a3,a5,-8
   11334:	06a1                	addi	a3,a3,8
   11336:	00482583          	lw	a1,4(a6)
   1133a:	96c2                	add	a3,a3,a6
   1133c:	4290                	lw	a2,0(a3)
   1133e:	0057d513          	srli	a0,a5,0x5
   11342:	4785                	li	a5,1
   11344:	00a797b3          	sll	a5,a5,a0
   11348:	8fcd                	or	a5,a5,a1
   1134a:	ff868593          	addi	a1,a3,-8
   1134e:	c710                	sw	a2,8(a4)
   11350:	c74c                	sw	a1,12(a4)
   11352:	00f82223          	sw	a5,4(a6)
   11356:	c298                	sw	a4,0(a3)
   11358:	c658                	sw	a4,12(a2)
   1135a:	4422                	lw	s0,8(sp)
   1135c:	40b2                	lw	ra,12(sp)
   1135e:	8526                	mv	a0,s1
   11360:	4492                	lw	s1,4(sp)
   11362:	0141                	addi	sp,sp,16
   11364:	a791                	j	11aa8 <__malloc_unlock>
   11366:	e505                	bnez	a0,1138e <_free_r+0xde>
   11368:	97b6                	add	a5,a5,a3
   1136a:	00001897          	auipc	a7,0x1
   1136e:	dde88893          	addi	a7,a7,-546 # 12148 <__malloc_av_+0x8>
   11372:	4614                	lw	a3,8(a2)
   11374:	0017e513          	ori	a0,a5,1
   11378:	00f705b3          	add	a1,a4,a5
   1137c:	0f168763          	beq	a3,a7,1146a <_free_r+0x1ba>
   11380:	4650                	lw	a2,12(a2)
   11382:	c6d0                	sw	a2,12(a3)
   11384:	c614                	sw	a3,8(a2)
   11386:	c348                	sw	a0,4(a4)
   11388:	c19c                	sw	a5,0(a1)
   1138a:	bf79                	j	11328 <_free_r+0x78>
   1138c:	8082                	ret
   1138e:	0015e593          	ori	a1,a1,1
   11392:	feb42e23          	sw	a1,-4(s0)
   11396:	c21c                	sw	a5,0(a2)
   11398:	1ff00693          	li	a3,511
   1139c:	f8f6fae3          	bgeu	a3,a5,11330 <_free_r+0x80>
   113a0:	0097d693          	srli	a3,a5,0x9
   113a4:	4611                	li	a2,4
   113a6:	08d66863          	bltu	a2,a3,11436 <_free_r+0x186>
   113aa:	0067d693          	srli	a3,a5,0x6
   113ae:	03968593          	addi	a1,a3,57
   113b2:	058e                	slli	a1,a1,0x3
   113b4:	03868613          	addi	a2,a3,56
   113b8:	95c2                	add	a1,a1,a6
   113ba:	4194                	lw	a3,0(a1)
   113bc:	15e1                	addi	a1,a1,-8
   113be:	00d59663          	bne	a1,a3,113ca <_free_r+0x11a>
   113c2:	a87d                	j	11480 <_free_r+0x1d0>
   113c4:	4694                	lw	a3,8(a3)
   113c6:	00d58663          	beq	a1,a3,113d2 <_free_r+0x122>
   113ca:	42d0                	lw	a2,4(a3)
   113cc:	9a71                	andi	a2,a2,-4
   113ce:	fec7ebe3          	bltu	a5,a2,113c4 <_free_r+0x114>
   113d2:	46cc                	lw	a1,12(a3)
   113d4:	c74c                	sw	a1,12(a4)
   113d6:	c714                	sw	a3,8(a4)
   113d8:	4422                	lw	s0,8(sp)
   113da:	40b2                	lw	ra,12(sp)
   113dc:	c598                	sw	a4,8(a1)
   113de:	8526                	mv	a0,s1
   113e0:	4492                	lw	s1,4(sp)
   113e2:	c6d8                	sw	a4,12(a3)
   113e4:	0141                	addi	sp,sp,16
   113e6:	a5c9                	j	11aa8 <__malloc_unlock>
   113e8:	e535                	bnez	a0,11454 <_free_r+0x1a4>
   113ea:	464c                	lw	a1,12(a2)
   113ec:	4610                	lw	a2,8(a2)
   113ee:	96be                	add	a3,a3,a5
   113f0:	0016e793          	ori	a5,a3,1
   113f4:	c64c                	sw	a1,12(a2)
   113f6:	c590                	sw	a2,8(a1)
   113f8:	c35c                	sw	a5,4(a4)
   113fa:	9736                	add	a4,a4,a3
   113fc:	c314                	sw	a3,0(a4)
   113fe:	bfb1                	j	1135a <_free_r+0xaa>
   11400:	96be                	add	a3,a3,a5
   11402:	00089a63          	bnez	a7,11416 <_free_r+0x166>
   11406:	ff842583          	lw	a1,-8(s0)
   1140a:	8f0d                	sub	a4,a4,a1
   1140c:	475c                	lw	a5,12(a4)
   1140e:	4710                	lw	a2,8(a4)
   11410:	96ae                	add	a3,a3,a1
   11412:	c65c                	sw	a5,12(a2)
   11414:	c790                	sw	a2,8(a5)
   11416:	0016e613          	ori	a2,a3,1
   1141a:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   1141e:	c350                	sw	a2,4(a4)
   11420:	00e82423          	sw	a4,8(a6)
   11424:	f2f6ebe3          	bltu	a3,a5,1135a <_free_r+0xaa>
   11428:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   1142c:	8526                	mv	a0,s1
   1142e:	3b5d                	jal	111e4 <_malloc_trim_r>
   11430:	b72d                	j	1135a <_free_r+0xaa>
   11432:	97b6                	add	a5,a5,a3
   11434:	bf3d                	j	11372 <_free_r+0xc2>
   11436:	4651                	li	a2,20
   11438:	02d67363          	bgeu	a2,a3,1145e <_free_r+0x1ae>
   1143c:	05400613          	li	a2,84
   11440:	04d66a63          	bltu	a2,a3,11494 <_free_r+0x1e4>
   11444:	00c7d693          	srli	a3,a5,0xc
   11448:	06f68593          	addi	a1,a3,111
   1144c:	058e                	slli	a1,a1,0x3
   1144e:	06e68613          	addi	a2,a3,110
   11452:	b79d                	j	113b8 <_free_r+0x108>
   11454:	0017e693          	ori	a3,a5,1
   11458:	c354                	sw	a3,4(a4)
   1145a:	c21c                	sw	a5,0(a2)
   1145c:	bdfd                	j	1135a <_free_r+0xaa>
   1145e:	05c68593          	addi	a1,a3,92
   11462:	058e                	slli	a1,a1,0x3
   11464:	05b68613          	addi	a2,a3,91
   11468:	bf81                	j	113b8 <_free_r+0x108>
   1146a:	00e82a23          	sw	a4,20(a6)
   1146e:	00e82823          	sw	a4,16(a6)
   11472:	01172623          	sw	a7,12(a4)
   11476:	01172423          	sw	a7,8(a4)
   1147a:	c348                	sw	a0,4(a4)
   1147c:	c19c                	sw	a5,0(a1)
   1147e:	bdf1                	j	1135a <_free_r+0xaa>
   11480:	00482503          	lw	a0,4(a6)
   11484:	8609                	srai	a2,a2,0x2
   11486:	4785                	li	a5,1
   11488:	00c797b3          	sll	a5,a5,a2
   1148c:	8fc9                	or	a5,a5,a0
   1148e:	00f82223          	sw	a5,4(a6)
   11492:	b789                	j	113d4 <_free_r+0x124>
   11494:	15400613          	li	a2,340
   11498:	00d66a63          	bltu	a2,a3,114ac <_free_r+0x1fc>
   1149c:	00f7d693          	srli	a3,a5,0xf
   114a0:	07868593          	addi	a1,a3,120
   114a4:	058e                	slli	a1,a1,0x3
   114a6:	07768613          	addi	a2,a3,119
   114aa:	b739                	j	113b8 <_free_r+0x108>
   114ac:	55400613          	li	a2,1364
   114b0:	00d66a63          	bltu	a2,a3,114c4 <_free_r+0x214>
   114b4:	0127d693          	srli	a3,a5,0x12
   114b8:	07d68593          	addi	a1,a3,125
   114bc:	058e                	slli	a1,a1,0x3
   114be:	07c68613          	addi	a2,a3,124
   114c2:	bddd                	j	113b8 <_free_r+0x108>
   114c4:	3f800593          	li	a1,1016
   114c8:	07e00613          	li	a2,126
   114cc:	b5f5                	j	113b8 <_free_r+0x108>

000114ce <_malloc_r>:
   114ce:	7179                	addi	sp,sp,-48
   114d0:	d04a                	sw	s2,32(sp)
   114d2:	d606                	sw	ra,44(sp)
   114d4:	d422                	sw	s0,40(sp)
   114d6:	d226                	sw	s1,36(sp)
   114d8:	ce4e                	sw	s3,28(sp)
   114da:	00b58793          	addi	a5,a1,11
   114de:	4759                	li	a4,22
   114e0:	892a                	mv	s2,a0
   114e2:	04f76863          	bltu	a4,a5,11532 <_malloc_r+0x64>
   114e6:	44c1                	li	s1,16
   114e8:	16b4ea63          	bltu	s1,a1,1165c <_malloc_r+0x18e>
   114ec:	2b55                	jal	11aa0 <__malloc_lock>
   114ee:	47e1                	li	a5,24
   114f0:	4589                	li	a1,2
   114f2:	00001997          	auipc	s3,0x1
   114f6:	c4e98993          	addi	s3,s3,-946 # 12140 <__malloc_av_>
   114fa:	97ce                	add	a5,a5,s3
   114fc:	43c0                	lw	s0,4(a5)
   114fe:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   11502:	30e40963          	beq	s0,a4,11814 <_malloc_r+0x346>
   11506:	405c                	lw	a5,4(s0)
   11508:	4454                	lw	a3,12(s0)
   1150a:	4410                	lw	a2,8(s0)
   1150c:	9bf1                	andi	a5,a5,-4
   1150e:	97a2                	add	a5,a5,s0
   11510:	43d8                	lw	a4,4(a5)
   11512:	c654                	sw	a3,12(a2)
   11514:	c690                	sw	a2,8(a3)
   11516:	00176713          	ori	a4,a4,1
   1151a:	854a                	mv	a0,s2
   1151c:	c3d8                	sw	a4,4(a5)
   1151e:	2369                	jal	11aa8 <__malloc_unlock>
   11520:	50b2                	lw	ra,44(sp)
   11522:	00840513          	addi	a0,s0,8
   11526:	5422                	lw	s0,40(sp)
   11528:	5492                	lw	s1,36(sp)
   1152a:	5902                	lw	s2,32(sp)
   1152c:	49f2                	lw	s3,28(sp)
   1152e:	6145                	addi	sp,sp,48
   11530:	8082                	ret
   11532:	ff87f493          	andi	s1,a5,-8
   11536:	1207c363          	bltz	a5,1165c <_malloc_r+0x18e>
   1153a:	12b4e163          	bltu	s1,a1,1165c <_malloc_r+0x18e>
   1153e:	238d                	jal	11aa0 <__malloc_lock>
   11540:	1f700793          	li	a5,503
   11544:	3897f763          	bgeu	a5,s1,118d2 <_malloc_r+0x404>
   11548:	0094d793          	srli	a5,s1,0x9
   1154c:	12078363          	beqz	a5,11672 <_malloc_r+0x1a4>
   11550:	4711                	li	a4,4
   11552:	30f76663          	bltu	a4,a5,1185e <_malloc_r+0x390>
   11556:	0064d793          	srli	a5,s1,0x6
   1155a:	03978593          	addi	a1,a5,57
   1155e:	03878813          	addi	a6,a5,56
   11562:	00359613          	slli	a2,a1,0x3
   11566:	00001997          	auipc	s3,0x1
   1156a:	bda98993          	addi	s3,s3,-1062 # 12140 <__malloc_av_>
   1156e:	964e                	add	a2,a2,s3
   11570:	4240                	lw	s0,4(a2)
   11572:	1661                	addi	a2,a2,-8
   11574:	02860163          	beq	a2,s0,11596 <_malloc_r+0xc8>
   11578:	453d                	li	a0,15
   1157a:	a039                	j	11588 <_malloc_r+0xba>
   1157c:	4454                	lw	a3,12(s0)
   1157e:	26075863          	bgez	a4,117ee <_malloc_r+0x320>
   11582:	00d60a63          	beq	a2,a3,11596 <_malloc_r+0xc8>
   11586:	8436                	mv	s0,a3
   11588:	405c                	lw	a5,4(s0)
   1158a:	9bf1                	andi	a5,a5,-4
   1158c:	40978733          	sub	a4,a5,s1
   11590:	fee556e3          	bge	a0,a4,1157c <_malloc_r+0xae>
   11594:	85c2                	mv	a1,a6
   11596:	0109a403          	lw	s0,16(s3)
   1159a:	00001897          	auipc	a7,0x1
   1159e:	bae88893          	addi	a7,a7,-1106 # 12148 <__malloc_av_+0x8>
   115a2:	1f140c63          	beq	s0,a7,1179a <_malloc_r+0x2cc>
   115a6:	405c                	lw	a5,4(s0)
   115a8:	46bd                	li	a3,15
   115aa:	9bf1                	andi	a5,a5,-4
   115ac:	40978733          	sub	a4,a5,s1
   115b0:	32e6c663          	blt	a3,a4,118dc <_malloc_r+0x40e>
   115b4:	0119aa23          	sw	a7,20(s3)
   115b8:	0119a823          	sw	a7,16(s3)
   115bc:	30075163          	bgez	a4,118be <_malloc_r+0x3f0>
   115c0:	1ff00713          	li	a4,511
   115c4:	0049a503          	lw	a0,4(s3)
   115c8:	24f76b63          	bltu	a4,a5,1181e <_malloc_r+0x350>
   115cc:	ff87f713          	andi	a4,a5,-8
   115d0:	0721                	addi	a4,a4,8
   115d2:	974e                	add	a4,a4,s3
   115d4:	4314                	lw	a3,0(a4)
   115d6:	0057d613          	srli	a2,a5,0x5
   115da:	4785                	li	a5,1
   115dc:	00c797b3          	sll	a5,a5,a2
   115e0:	8d5d                	or	a0,a0,a5
   115e2:	ff870793          	addi	a5,a4,-8
   115e6:	c414                	sw	a3,8(s0)
   115e8:	c45c                	sw	a5,12(s0)
   115ea:	00a9a223          	sw	a0,4(s3)
   115ee:	c300                	sw	s0,0(a4)
   115f0:	c6c0                	sw	s0,12(a3)
   115f2:	4025d793          	srai	a5,a1,0x2
   115f6:	4605                	li	a2,1
   115f8:	00f61633          	sll	a2,a2,a5
   115fc:	08c56263          	bltu	a0,a2,11680 <_malloc_r+0x1b2>
   11600:	00a677b3          	and	a5,a2,a0
   11604:	ef81                	bnez	a5,1161c <_malloc_r+0x14e>
   11606:	0606                	slli	a2,a2,0x1
   11608:	99f1                	andi	a1,a1,-4
   1160a:	00a677b3          	and	a5,a2,a0
   1160e:	0591                	addi	a1,a1,4
   11610:	e791                	bnez	a5,1161c <_malloc_r+0x14e>
   11612:	0606                	slli	a2,a2,0x1
   11614:	00a677b3          	and	a5,a2,a0
   11618:	0591                	addi	a1,a1,4
   1161a:	dfe5                	beqz	a5,11612 <_malloc_r+0x144>
   1161c:	483d                	li	a6,15
   1161e:	00359313          	slli	t1,a1,0x3
   11622:	934e                	add	t1,t1,s3
   11624:	851a                	mv	a0,t1
   11626:	455c                	lw	a5,12(a0)
   11628:	8e2e                	mv	t3,a1
   1162a:	24f50a63          	beq	a0,a5,1187e <_malloc_r+0x3b0>
   1162e:	43d8                	lw	a4,4(a5)
   11630:	843e                	mv	s0,a5
   11632:	47dc                	lw	a5,12(a5)
   11634:	9b71                	andi	a4,a4,-4
   11636:	409706b3          	sub	a3,a4,s1
   1163a:	24d84963          	blt	a6,a3,1188c <_malloc_r+0x3be>
   1163e:	fe06c6e3          	bltz	a3,1162a <_malloc_r+0x15c>
   11642:	9722                	add	a4,a4,s0
   11644:	4354                	lw	a3,4(a4)
   11646:	4410                	lw	a2,8(s0)
   11648:	854a                	mv	a0,s2
   1164a:	0016e693          	ori	a3,a3,1
   1164e:	c354                	sw	a3,4(a4)
   11650:	c65c                	sw	a5,12(a2)
   11652:	c790                	sw	a2,8(a5)
   11654:	2991                	jal	11aa8 <__malloc_unlock>
   11656:	00840513          	addi	a0,s0,8
   1165a:	a029                	j	11664 <_malloc_r+0x196>
   1165c:	47b1                	li	a5,12
   1165e:	00f92023          	sw	a5,0(s2)
   11662:	4501                	li	a0,0
   11664:	50b2                	lw	ra,44(sp)
   11666:	5422                	lw	s0,40(sp)
   11668:	5492                	lw	s1,36(sp)
   1166a:	5902                	lw	s2,32(sp)
   1166c:	49f2                	lw	s3,28(sp)
   1166e:	6145                	addi	sp,sp,48
   11670:	8082                	ret
   11672:	20000613          	li	a2,512
   11676:	04000593          	li	a1,64
   1167a:	03f00813          	li	a6,63
   1167e:	b5e5                	j	11566 <_malloc_r+0x98>
   11680:	0089a403          	lw	s0,8(s3)
   11684:	c85a                	sw	s6,16(sp)
   11686:	405c                	lw	a5,4(s0)
   11688:	ffc7fb13          	andi	s6,a5,-4
   1168c:	009b6763          	bltu	s6,s1,1169a <_malloc_r+0x1cc>
   11690:	409b0733          	sub	a4,s6,s1
   11694:	47bd                	li	a5,15
   11696:	12e7c763          	blt	a5,a4,117c4 <_malloc_r+0x2f6>
   1169a:	c266                	sw	s9,4(sp)
   1169c:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   116a0:	ca56                	sw	s5,20(sp)
   116a2:	000ca703          	lw	a4,0(s9)
   116a6:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   116aa:	cc52                	sw	s4,24(sp)
   116ac:	c65e                	sw	s7,12(sp)
   116ae:	57fd                	li	a5,-1
   116b0:	01640a33          	add	s4,s0,s6
   116b4:	9aa6                	add	s5,s5,s1
   116b6:	2cf70163          	beq	a4,a5,11978 <_malloc_r+0x4aa>
   116ba:	6785                	lui	a5,0x1
   116bc:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   116be:	9abe                	add	s5,s5,a5
   116c0:	77fd                	lui	a5,0xfffff
   116c2:	00fafab3          	and	s5,s5,a5
   116c6:	85d6                	mv	a1,s5
   116c8:	854a                	mv	a0,s2
   116ca:	772000ef          	jal	11e3c <_sbrk_r>
   116ce:	57fd                	li	a5,-1
   116d0:	8baa                	mv	s7,a0
   116d2:	32f50963          	beq	a0,a5,11a04 <_malloc_r+0x536>
   116d6:	c462                	sw	s8,8(sp)
   116d8:	0d456463          	bltu	a0,s4,117a0 <_malloc_r+0x2d2>
   116dc:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   116e0:	000c2583          	lw	a1,0(s8)
   116e4:	95d6                	add	a1,a1,s5
   116e6:	00bc2023          	sw	a1,0(s8)
   116ea:	872e                	mv	a4,a1
   116ec:	32aa0063          	beq	s4,a0,11a0c <_malloc_r+0x53e>
   116f0:	000ca683          	lw	a3,0(s9)
   116f4:	57fd                	li	a5,-1
   116f6:	32f68863          	beq	a3,a5,11a26 <_malloc_r+0x558>
   116fa:	414b87b3          	sub	a5,s7,s4
   116fe:	97ba                	add	a5,a5,a4
   11700:	00fc2023          	sw	a5,0(s8)
   11704:	007bfc93          	andi	s9,s7,7
   11708:	280c8263          	beqz	s9,1198c <_malloc_r+0x4be>
   1170c:	419b8bb3          	sub	s7,s7,s9
   11710:	6585                	lui	a1,0x1
   11712:	0ba1                	addi	s7,s7,8
   11714:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   11716:	9ade                	add	s5,s5,s7
   11718:	419585b3          	sub	a1,a1,s9
   1171c:	415585b3          	sub	a1,a1,s5
   11720:	05d2                	slli	a1,a1,0x14
   11722:	0145da13          	srli	s4,a1,0x14
   11726:	85d2                	mv	a1,s4
   11728:	854a                	mv	a0,s2
   1172a:	2f09                	jal	11e3c <_sbrk_r>
   1172c:	57fd                	li	a5,-1
   1172e:	32f50863          	beq	a0,a5,11a5e <_malloc_r+0x590>
   11732:	41750533          	sub	a0,a0,s7
   11736:	01450ab3          	add	s5,a0,s4
   1173a:	000c2703          	lw	a4,0(s8)
   1173e:	0179a423          	sw	s7,8(s3)
   11742:	001ae793          	ori	a5,s5,1
   11746:	00ea05b3          	add	a1,s4,a4
   1174a:	00fba223          	sw	a5,4(s7)
   1174e:	00bc2023          	sw	a1,0(s8)
   11752:	03340563          	beq	s0,s3,1177c <_malloc_r+0x2ae>
   11756:	46bd                	li	a3,15
   11758:	2566f963          	bgeu	a3,s6,119aa <_malloc_r+0x4dc>
   1175c:	4058                	lw	a4,4(s0)
   1175e:	ff4b0793          	addi	a5,s6,-12
   11762:	9be1                	andi	a5,a5,-8
   11764:	8b05                	andi	a4,a4,1
   11766:	8f5d                	or	a4,a4,a5
   11768:	c058                	sw	a4,4(s0)
   1176a:	4615                	li	a2,5
   1176c:	00f40733          	add	a4,s0,a5
   11770:	c350                	sw	a2,4(a4)
   11772:	c710                	sw	a2,8(a4)
   11774:	1ef6e863          	bltu	a3,a5,11964 <_malloc_r+0x496>
   11778:	004ba783          	lw	a5,4(s7)
   1177c:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   11780:	4314                	lw	a3,0(a4)
   11782:	00b6f363          	bgeu	a3,a1,11788 <_malloc_r+0x2ba>
   11786:	c30c                	sw	a1,0(a4)
   11788:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   1178c:	4314                	lw	a3,0(a4)
   1178e:	00b6f363          	bgeu	a3,a1,11794 <_malloc_r+0x2c6>
   11792:	c30c                	sw	a1,0(a4)
   11794:	4c22                	lw	s8,8(sp)
   11796:	845e                	mv	s0,s7
   11798:	a811                	j	117ac <_malloc_r+0x2de>
   1179a:	0049a503          	lw	a0,4(s3)
   1179e:	bd91                	j	115f2 <_malloc_r+0x124>
   117a0:	25340a63          	beq	s0,s3,119f4 <_malloc_r+0x526>
   117a4:	0089a403          	lw	s0,8(s3)
   117a8:	4c22                	lw	s8,8(sp)
   117aa:	405c                	lw	a5,4(s0)
   117ac:	9bf1                	andi	a5,a5,-4
   117ae:	40978733          	sub	a4,a5,s1
   117b2:	2097e063          	bltu	a5,s1,119b2 <_malloc_r+0x4e4>
   117b6:	47bd                	li	a5,15
   117b8:	1ee7dd63          	bge	a5,a4,119b2 <_malloc_r+0x4e4>
   117bc:	4a62                	lw	s4,24(sp)
   117be:	4ad2                	lw	s5,20(sp)
   117c0:	4bb2                	lw	s7,12(sp)
   117c2:	4c92                	lw	s9,4(sp)
   117c4:	0014e793          	ori	a5,s1,1
   117c8:	c05c                	sw	a5,4(s0)
   117ca:	94a2                	add	s1,s1,s0
   117cc:	0099a423          	sw	s1,8(s3)
   117d0:	00176713          	ori	a4,a4,1
   117d4:	854a                	mv	a0,s2
   117d6:	c0d8                	sw	a4,4(s1)
   117d8:	2cc1                	jal	11aa8 <__malloc_unlock>
   117da:	50b2                	lw	ra,44(sp)
   117dc:	00840513          	addi	a0,s0,8
   117e0:	5422                	lw	s0,40(sp)
   117e2:	4b42                	lw	s6,16(sp)
   117e4:	5492                	lw	s1,36(sp)
   117e6:	5902                	lw	s2,32(sp)
   117e8:	49f2                	lw	s3,28(sp)
   117ea:	6145                	addi	sp,sp,48
   117ec:	8082                	ret
   117ee:	4410                	lw	a2,8(s0)
   117f0:	97a2                	add	a5,a5,s0
   117f2:	43d8                	lw	a4,4(a5)
   117f4:	c654                	sw	a3,12(a2)
   117f6:	c690                	sw	a2,8(a3)
   117f8:	00176713          	ori	a4,a4,1
   117fc:	854a                	mv	a0,s2
   117fe:	c3d8                	sw	a4,4(a5)
   11800:	2465                	jal	11aa8 <__malloc_unlock>
   11802:	50b2                	lw	ra,44(sp)
   11804:	00840513          	addi	a0,s0,8
   11808:	5422                	lw	s0,40(sp)
   1180a:	5492                	lw	s1,36(sp)
   1180c:	5902                	lw	s2,32(sp)
   1180e:	49f2                	lw	s3,28(sp)
   11810:	6145                	addi	sp,sp,48
   11812:	8082                	ret
   11814:	47c0                	lw	s0,12(a5)
   11816:	0589                	addi	a1,a1,2
   11818:	d6878fe3          	beq	a5,s0,11596 <_malloc_r+0xc8>
   1181c:	b1ed                	j	11506 <_malloc_r+0x38>
   1181e:	0097d713          	srli	a4,a5,0x9
   11822:	4691                	li	a3,4
   11824:	0ee6f263          	bgeu	a3,a4,11908 <_malloc_r+0x43a>
   11828:	46d1                	li	a3,20
   1182a:	18e6ec63          	bltu	a3,a4,119c2 <_malloc_r+0x4f4>
   1182e:	05c70613          	addi	a2,a4,92
   11832:	060e                	slli	a2,a2,0x3
   11834:	05b70693          	addi	a3,a4,91
   11838:	964e                	add	a2,a2,s3
   1183a:	4218                	lw	a4,0(a2)
   1183c:	1661                	addi	a2,a2,-8
   1183e:	00e61663          	bne	a2,a4,1184a <_malloc_r+0x37c>
   11842:	aa2d                	j	1197c <_malloc_r+0x4ae>
   11844:	4718                	lw	a4,8(a4)
   11846:	00e60663          	beq	a2,a4,11852 <_malloc_r+0x384>
   1184a:	4354                	lw	a3,4(a4)
   1184c:	9af1                	andi	a3,a3,-4
   1184e:	fed7ebe3          	bltu	a5,a3,11844 <_malloc_r+0x376>
   11852:	4750                	lw	a2,12(a4)
   11854:	c450                	sw	a2,12(s0)
   11856:	c418                	sw	a4,8(s0)
   11858:	c600                	sw	s0,8(a2)
   1185a:	c740                	sw	s0,12(a4)
   1185c:	bb59                	j	115f2 <_malloc_r+0x124>
   1185e:	4751                	li	a4,20
   11860:	0af77c63          	bgeu	a4,a5,11918 <_malloc_r+0x44a>
   11864:	05400713          	li	a4,84
   11868:	16f76963          	bltu	a4,a5,119da <_malloc_r+0x50c>
   1186c:	00c4d793          	srli	a5,s1,0xc
   11870:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   11874:	06e78813          	addi	a6,a5,110
   11878:	00359613          	slli	a2,a1,0x3
   1187c:	b1ed                	j	11566 <_malloc_r+0x98>
   1187e:	0e05                	addi	t3,t3,1
   11880:	003e7793          	andi	a5,t3,3
   11884:	0521                	addi	a0,a0,8
   11886:	c7cd                	beqz	a5,11930 <_malloc_r+0x462>
   11888:	455c                	lw	a5,12(a0)
   1188a:	b345                	j	1162a <_malloc_r+0x15c>
   1188c:	4410                	lw	a2,8(s0)
   1188e:	0014e593          	ori	a1,s1,1
   11892:	c04c                	sw	a1,4(s0)
   11894:	c65c                	sw	a5,12(a2)
   11896:	c790                	sw	a2,8(a5)
   11898:	94a2                	add	s1,s1,s0
   1189a:	0099aa23          	sw	s1,20(s3)
   1189e:	0099a823          	sw	s1,16(s3)
   118a2:	0016e793          	ori	a5,a3,1
   118a6:	9722                	add	a4,a4,s0
   118a8:	0114a623          	sw	a7,12(s1)
   118ac:	0114a423          	sw	a7,8(s1)
   118b0:	c0dc                	sw	a5,4(s1)
   118b2:	854a                	mv	a0,s2
   118b4:	c314                	sw	a3,0(a4)
   118b6:	2acd                	jal	11aa8 <__malloc_unlock>
   118b8:	00840513          	addi	a0,s0,8
   118bc:	b365                	j	11664 <_malloc_r+0x196>
   118be:	97a2                	add	a5,a5,s0
   118c0:	43d8                	lw	a4,4(a5)
   118c2:	854a                	mv	a0,s2
   118c4:	00176713          	ori	a4,a4,1
   118c8:	c3d8                	sw	a4,4(a5)
   118ca:	2af9                	jal	11aa8 <__malloc_unlock>
   118cc:	00840513          	addi	a0,s0,8
   118d0:	bb51                	j	11664 <_malloc_r+0x196>
   118d2:	0034d593          	srli	a1,s1,0x3
   118d6:	00848793          	addi	a5,s1,8
   118da:	b921                	j	114f2 <_malloc_r+0x24>
   118dc:	0014e693          	ori	a3,s1,1
   118e0:	c054                	sw	a3,4(s0)
   118e2:	94a2                	add	s1,s1,s0
   118e4:	0099aa23          	sw	s1,20(s3)
   118e8:	0099a823          	sw	s1,16(s3)
   118ec:	00176693          	ori	a3,a4,1
   118f0:	97a2                	add	a5,a5,s0
   118f2:	0114a623          	sw	a7,12(s1)
   118f6:	0114a423          	sw	a7,8(s1)
   118fa:	c0d4                	sw	a3,4(s1)
   118fc:	854a                	mv	a0,s2
   118fe:	c398                	sw	a4,0(a5)
   11900:	2265                	jal	11aa8 <__malloc_unlock>
   11902:	00840513          	addi	a0,s0,8
   11906:	bbb9                	j	11664 <_malloc_r+0x196>
   11908:	0067d713          	srli	a4,a5,0x6
   1190c:	03970613          	addi	a2,a4,57
   11910:	060e                	slli	a2,a2,0x3
   11912:	03870693          	addi	a3,a4,56
   11916:	b70d                	j	11838 <_malloc_r+0x36a>
   11918:	05c78593          	addi	a1,a5,92
   1191c:	05b78813          	addi	a6,a5,91
   11920:	00359613          	slli	a2,a1,0x3
   11924:	b189                	j	11566 <_malloc_r+0x98>
   11926:	00832783          	lw	a5,8(t1)
   1192a:	15fd                	addi	a1,a1,-1
   1192c:	16679763          	bne	a5,t1,11a9a <_malloc_r+0x5cc>
   11930:	0035f793          	andi	a5,a1,3
   11934:	1361                	addi	t1,t1,-8
   11936:	fbe5                	bnez	a5,11926 <_malloc_r+0x458>
   11938:	0049a703          	lw	a4,4(s3)
   1193c:	fff64793          	not	a5,a2
   11940:	8ff9                	and	a5,a5,a4
   11942:	00f9a223          	sw	a5,4(s3)
   11946:	0606                	slli	a2,a2,0x1
   11948:	d2c7ece3          	bltu	a5,a2,11680 <_malloc_r+0x1b2>
   1194c:	d2060ae3          	beqz	a2,11680 <_malloc_r+0x1b2>
   11950:	00f67733          	and	a4,a2,a5
   11954:	e711                	bnez	a4,11960 <_malloc_r+0x492>
   11956:	0606                	slli	a2,a2,0x1
   11958:	00f67733          	and	a4,a2,a5
   1195c:	0e11                	addi	t3,t3,4
   1195e:	df65                	beqz	a4,11956 <_malloc_r+0x488>
   11960:	85f2                	mv	a1,t3
   11962:	b975                	j	1161e <_malloc_r+0x150>
   11964:	00840593          	addi	a1,s0,8
   11968:	854a                	mv	a0,s2
   1196a:	947ff0ef          	jal	112b0 <_free_r>
   1196e:	000c2583          	lw	a1,0(s8)
   11972:	0089ab83          	lw	s7,8(s3)
   11976:	b509                	j	11778 <_malloc_r+0x2aa>
   11978:	0ac1                	addi	s5,s5,16
   1197a:	b3b1                	j	116c6 <_malloc_r+0x1f8>
   1197c:	8689                	srai	a3,a3,0x2
   1197e:	4785                	li	a5,1
   11980:	00d797b3          	sll	a5,a5,a3
   11984:	8d5d                	or	a0,a0,a5
   11986:	00a9a223          	sw	a0,4(s3)
   1198a:	b5e9                	j	11854 <_malloc_r+0x386>
   1198c:	015b85b3          	add	a1,s7,s5
   11990:	40b005b3          	neg	a1,a1
   11994:	05d2                	slli	a1,a1,0x14
   11996:	0145da13          	srli	s4,a1,0x14
   1199a:	85d2                	mv	a1,s4
   1199c:	854a                	mv	a0,s2
   1199e:	2979                	jal	11e3c <_sbrk_r>
   119a0:	57fd                	li	a5,-1
   119a2:	d8f518e3          	bne	a0,a5,11732 <_malloc_r+0x264>
   119a6:	4a01                	li	s4,0
   119a8:	bb49                	j	1173a <_malloc_r+0x26c>
   119aa:	4c22                	lw	s8,8(sp)
   119ac:	4785                	li	a5,1
   119ae:	00fba223          	sw	a5,4(s7)
   119b2:	854a                	mv	a0,s2
   119b4:	28d5                	jal	11aa8 <__malloc_unlock>
   119b6:	4a62                	lw	s4,24(sp)
   119b8:	4ad2                	lw	s5,20(sp)
   119ba:	4b42                	lw	s6,16(sp)
   119bc:	4bb2                	lw	s7,12(sp)
   119be:	4c92                	lw	s9,4(sp)
   119c0:	b14d                	j	11662 <_malloc_r+0x194>
   119c2:	05400693          	li	a3,84
   119c6:	06e6e363          	bltu	a3,a4,11a2c <_malloc_r+0x55e>
   119ca:	00c7d713          	srli	a4,a5,0xc
   119ce:	06f70613          	addi	a2,a4,111
   119d2:	060e                	slli	a2,a2,0x3
   119d4:	06e70693          	addi	a3,a4,110
   119d8:	b585                	j	11838 <_malloc_r+0x36a>
   119da:	15400713          	li	a4,340
   119de:	06f76363          	bltu	a4,a5,11a44 <_malloc_r+0x576>
   119e2:	00f4d793          	srli	a5,s1,0xf
   119e6:	07878593          	addi	a1,a5,120
   119ea:	07778813          	addi	a6,a5,119
   119ee:	00359613          	slli	a2,a1,0x3
   119f2:	be95                	j	11566 <_malloc_r+0x98>
   119f4:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   119f8:	000c2703          	lw	a4,0(s8)
   119fc:	9756                	add	a4,a4,s5
   119fe:	00ec2023          	sw	a4,0(s8)
   11a02:	b1fd                	j	116f0 <_malloc_r+0x222>
   11a04:	0089a403          	lw	s0,8(s3)
   11a08:	405c                	lw	a5,4(s0)
   11a0a:	b34d                	j	117ac <_malloc_r+0x2de>
   11a0c:	01451793          	slli	a5,a0,0x14
   11a10:	ce0790e3          	bnez	a5,116f0 <_malloc_r+0x222>
   11a14:	0089ab83          	lw	s7,8(s3)
   11a18:	015b07b3          	add	a5,s6,s5
   11a1c:	0017e793          	ori	a5,a5,1
   11a20:	00fba223          	sw	a5,4(s7)
   11a24:	bba1                	j	1177c <_malloc_r+0x2ae>
   11a26:	017ca023          	sw	s7,0(s9)
   11a2a:	b9e9                	j	11704 <_malloc_r+0x236>
   11a2c:	15400693          	li	a3,340
   11a30:	02e6ed63          	bltu	a3,a4,11a6a <_malloc_r+0x59c>
   11a34:	00f7d713          	srli	a4,a5,0xf
   11a38:	07870613          	addi	a2,a4,120
   11a3c:	060e                	slli	a2,a2,0x3
   11a3e:	07770693          	addi	a3,a4,119
   11a42:	bbdd                	j	11838 <_malloc_r+0x36a>
   11a44:	55400713          	li	a4,1364
   11a48:	02f76d63          	bltu	a4,a5,11a82 <_malloc_r+0x5b4>
   11a4c:	0124d793          	srli	a5,s1,0x12
   11a50:	07d78593          	addi	a1,a5,125
   11a54:	07c78813          	addi	a6,a5,124
   11a58:	00359613          	slli	a2,a1,0x3
   11a5c:	b629                	j	11566 <_malloc_r+0x98>
   11a5e:	1ce1                	addi	s9,s9,-8
   11a60:	9ae6                	add	s5,s5,s9
   11a62:	417a8ab3          	sub	s5,s5,s7
   11a66:	4a01                	li	s4,0
   11a68:	b9c9                	j	1173a <_malloc_r+0x26c>
   11a6a:	55400693          	li	a3,1364
   11a6e:	02e6e163          	bltu	a3,a4,11a90 <_malloc_r+0x5c2>
   11a72:	0127d713          	srli	a4,a5,0x12
   11a76:	07d70613          	addi	a2,a4,125
   11a7a:	060e                	slli	a2,a2,0x3
   11a7c:	07c70693          	addi	a3,a4,124
   11a80:	bb65                	j	11838 <_malloc_r+0x36a>
   11a82:	3f800613          	li	a2,1016
   11a86:	07f00593          	li	a1,127
   11a8a:	07e00813          	li	a6,126
   11a8e:	bce1                	j	11566 <_malloc_r+0x98>
   11a90:	3f800613          	li	a2,1016
   11a94:	07e00693          	li	a3,126
   11a98:	b345                	j	11838 <_malloc_r+0x36a>
   11a9a:	0049a783          	lw	a5,4(s3)
   11a9e:	b565                	j	11946 <_malloc_r+0x478>

00011aa0 <__malloc_lock>:
   11aa0:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11aa4:	d14ff06f          	j	10fb8 <__retarget_lock_acquire_recursive>

00011aa8 <__malloc_unlock>:
   11aa8:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11aac:	d18ff06f          	j	10fc4 <__retarget_lock_release_recursive>

00011ab0 <_fclose_r>:
   11ab0:	1141                	addi	sp,sp,-16
   11ab2:	c606                	sw	ra,12(sp)
   11ab4:	c04a                	sw	s2,0(sp)
   11ab6:	c9c1                	beqz	a1,11b46 <_fclose_r+0x96>
   11ab8:	c422                	sw	s0,8(sp)
   11aba:	c226                	sw	s1,4(sp)
   11abc:	842e                	mv	s0,a1
   11abe:	84aa                	mv	s1,a0
   11ac0:	c119                	beqz	a0,11ac6 <_fclose_r+0x16>
   11ac2:	595c                	lw	a5,52(a0)
   11ac4:	c3d5                	beqz	a5,11b68 <_fclose_r+0xb8>
   11ac6:	507c                	lw	a5,100(s0)
   11ac8:	00c41703          	lh	a4,12(s0)
   11acc:	8b85                	andi	a5,a5,1
   11ace:	ebad                	bnez	a5,11b40 <_fclose_r+0x90>
   11ad0:	20077713          	andi	a4,a4,512
   11ad4:	cf49                	beqz	a4,11b6e <_fclose_r+0xbe>
   11ad6:	85a2                	mv	a1,s0
   11ad8:	8526                	mv	a0,s1
   11ada:	20c9                	jal	11b9c <__sflush_r>
   11adc:	545c                	lw	a5,44(s0)
   11ade:	892a                	mv	s2,a0
   11ae0:	c791                	beqz	a5,11aec <_fclose_r+0x3c>
   11ae2:	4c4c                	lw	a1,28(s0)
   11ae4:	8526                	mv	a0,s1
   11ae6:	9782                	jalr	a5
   11ae8:	06054563          	bltz	a0,11b52 <_fclose_r+0xa2>
   11aec:	00c45783          	lhu	a5,12(s0)
   11af0:	0807f793          	andi	a5,a5,128
   11af4:	e7ad                	bnez	a5,11b5e <_fclose_r+0xae>
   11af6:	580c                	lw	a1,48(s0)
   11af8:	c991                	beqz	a1,11b0c <_fclose_r+0x5c>
   11afa:	04040793          	addi	a5,s0,64
   11afe:	00f58563          	beq	a1,a5,11b08 <_fclose_r+0x58>
   11b02:	8526                	mv	a0,s1
   11b04:	facff0ef          	jal	112b0 <_free_r>
   11b08:	02042823          	sw	zero,48(s0)
   11b0c:	406c                	lw	a1,68(s0)
   11b0e:	c591                	beqz	a1,11b1a <_fclose_r+0x6a>
   11b10:	8526                	mv	a0,s1
   11b12:	f9eff0ef          	jal	112b0 <_free_r>
   11b16:	04042223          	sw	zero,68(s0)
   11b1a:	8d6ff0ef          	jal	10bf0 <__sfp_lock_acquire>
   11b1e:	507c                	lw	a5,100(s0)
   11b20:	00041623          	sh	zero,12(s0)
   11b24:	8b85                	andi	a5,a5,1
   11b26:	c3bd                	beqz	a5,11b8c <_fclose_r+0xdc>
   11b28:	4c28                	lw	a0,88(s0)
   11b2a:	c8aff0ef          	jal	10fb4 <__retarget_lock_close_recursive>
   11b2e:	8c8ff0ef          	jal	10bf6 <__sfp_lock_release>
   11b32:	40b2                	lw	ra,12(sp)
   11b34:	4422                	lw	s0,8(sp)
   11b36:	4492                	lw	s1,4(sp)
   11b38:	854a                	mv	a0,s2
   11b3a:	4902                	lw	s2,0(sp)
   11b3c:	0141                	addi	sp,sp,16
   11b3e:	8082                	ret
   11b40:	fb59                	bnez	a4,11ad6 <_fclose_r+0x26>
   11b42:	4422                	lw	s0,8(sp)
   11b44:	4492                	lw	s1,4(sp)
   11b46:	40b2                	lw	ra,12(sp)
   11b48:	4901                	li	s2,0
   11b4a:	854a                	mv	a0,s2
   11b4c:	4902                	lw	s2,0(sp)
   11b4e:	0141                	addi	sp,sp,16
   11b50:	8082                	ret
   11b52:	00c45783          	lhu	a5,12(s0)
   11b56:	597d                	li	s2,-1
   11b58:	0807f793          	andi	a5,a5,128
   11b5c:	dfc9                	beqz	a5,11af6 <_fclose_r+0x46>
   11b5e:	480c                	lw	a1,16(s0)
   11b60:	8526                	mv	a0,s1
   11b62:	f4eff0ef          	jal	112b0 <_free_r>
   11b66:	bf41                	j	11af6 <_fclose_r+0x46>
   11b68:	84cff0ef          	jal	10bb4 <__sinit>
   11b6c:	bfa9                	j	11ac6 <_fclose_r+0x16>
   11b6e:	4c28                	lw	a0,88(s0)
   11b70:	c48ff0ef          	jal	10fb8 <__retarget_lock_acquire_recursive>
   11b74:	00c41783          	lh	a5,12(s0)
   11b78:	ffb9                	bnez	a5,11ad6 <_fclose_r+0x26>
   11b7a:	507c                	lw	a5,100(s0)
   11b7c:	8b85                	andi	a5,a5,1
   11b7e:	f3f1                	bnez	a5,11b42 <_fclose_r+0x92>
   11b80:	4c28                	lw	a0,88(s0)
   11b82:	c42ff0ef          	jal	10fc4 <__retarget_lock_release_recursive>
   11b86:	4422                	lw	s0,8(sp)
   11b88:	4492                	lw	s1,4(sp)
   11b8a:	bf75                	j	11b46 <_fclose_r+0x96>
   11b8c:	4c28                	lw	a0,88(s0)
   11b8e:	c36ff0ef          	jal	10fc4 <__retarget_lock_release_recursive>
   11b92:	bf59                	j	11b28 <_fclose_r+0x78>

00011b94 <fclose>:
   11b94:	85aa                	mv	a1,a0
   11b96:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11b9a:	bf19                	j	11ab0 <_fclose_r>

00011b9c <__sflush_r>:
   11b9c:	00c59703          	lh	a4,12(a1)
   11ba0:	1101                	addi	sp,sp,-32
   11ba2:	cc22                	sw	s0,24(sp)
   11ba4:	c64e                	sw	s3,12(sp)
   11ba6:	ce06                	sw	ra,28(sp)
   11ba8:	00877793          	andi	a5,a4,8
   11bac:	842e                	mv	s0,a1
   11bae:	89aa                	mv	s3,a0
   11bb0:	e7e1                	bnez	a5,11c78 <__sflush_r+0xdc>
   11bb2:	6785                	lui	a5,0x1
   11bb4:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   11bb8:	41d4                	lw	a3,4(a1)
   11bba:	8fd9                	or	a5,a5,a4
   11bbc:	00f59623          	sh	a5,12(a1)
   11bc0:	10d05963          	blez	a3,11cd2 <__sflush_r+0x136>
   11bc4:	02842803          	lw	a6,40(s0)
   11bc8:	0a080263          	beqz	a6,11c6c <__sflush_r+0xd0>
   11bcc:	ca26                	sw	s1,20(sp)
   11bce:	01371693          	slli	a3,a4,0x13
   11bd2:	0009a483          	lw	s1,0(s3)
   11bd6:	0009a023          	sw	zero,0(s3)
   11bda:	1006c363          	bltz	a3,11ce0 <__sflush_r+0x144>
   11bde:	4c4c                	lw	a1,28(s0)
   11be0:	4601                	li	a2,0
   11be2:	4685                	li	a3,1
   11be4:	854e                	mv	a0,s3
   11be6:	9802                	jalr	a6
   11be8:	57fd                	li	a5,-1
   11bea:	862a                	mv	a2,a0
   11bec:	12f50163          	beq	a0,a5,11d0e <__sflush_r+0x172>
   11bf0:	00c41783          	lh	a5,12(s0)
   11bf4:	02842803          	lw	a6,40(s0)
   11bf8:	8b91                	andi	a5,a5,4
   11bfa:	c799                	beqz	a5,11c08 <__sflush_r+0x6c>
   11bfc:	4058                	lw	a4,4(s0)
   11bfe:	581c                	lw	a5,48(s0)
   11c00:	8e19                	sub	a2,a2,a4
   11c02:	c399                	beqz	a5,11c08 <__sflush_r+0x6c>
   11c04:	5c5c                	lw	a5,60(s0)
   11c06:	8e1d                	sub	a2,a2,a5
   11c08:	4c4c                	lw	a1,28(s0)
   11c0a:	4681                	li	a3,0
   11c0c:	854e                	mv	a0,s3
   11c0e:	9802                	jalr	a6
   11c10:	577d                	li	a4,-1
   11c12:	00c41783          	lh	a5,12(s0)
   11c16:	0ce51763          	bne	a0,a4,11ce4 <__sflush_r+0x148>
   11c1a:	0009a683          	lw	a3,0(s3)
   11c1e:	4775                	li	a4,29
   11c20:	10d76363          	bltu	a4,a3,11d26 <__sflush_r+0x18a>
   11c24:	20400737          	lui	a4,0x20400
   11c28:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   11c2a:	00d75733          	srl	a4,a4,a3
   11c2e:	8b05                	andi	a4,a4,1
   11c30:	cb7d                	beqz	a4,11d26 <__sflush_r+0x18a>
   11c32:	4810                	lw	a2,16(s0)
   11c34:	777d                	lui	a4,0xfffff
   11c36:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11c3a:	8f7d                	and	a4,a4,a5
   11c3c:	00e41623          	sh	a4,12(s0)
   11c40:	00042223          	sw	zero,4(s0)
   11c44:	c010                	sw	a2,0(s0)
   11c46:	01379713          	slli	a4,a5,0x13
   11c4a:	00075363          	bgez	a4,11c50 <__sflush_r+0xb4>
   11c4e:	cacd                	beqz	a3,11d00 <__sflush_r+0x164>
   11c50:	580c                	lw	a1,48(s0)
   11c52:	0099a023          	sw	s1,0(s3)
   11c56:	c9d5                	beqz	a1,11d0a <__sflush_r+0x16e>
   11c58:	04040793          	addi	a5,s0,64
   11c5c:	00f58563          	beq	a1,a5,11c66 <__sflush_r+0xca>
   11c60:	854e                	mv	a0,s3
   11c62:	e4eff0ef          	jal	112b0 <_free_r>
   11c66:	44d2                	lw	s1,20(sp)
   11c68:	02042823          	sw	zero,48(s0)
   11c6c:	40f2                	lw	ra,28(sp)
   11c6e:	4462                	lw	s0,24(sp)
   11c70:	49b2                	lw	s3,12(sp)
   11c72:	4501                	li	a0,0
   11c74:	6105                	addi	sp,sp,32
   11c76:	8082                	ret
   11c78:	c84a                	sw	s2,16(sp)
   11c7a:	0105a903          	lw	s2,16(a1)
   11c7e:	04090f63          	beqz	s2,11cdc <__sflush_r+0x140>
   11c82:	ca26                	sw	s1,20(sp)
   11c84:	4184                	lw	s1,0(a1)
   11c86:	8b0d                	andi	a4,a4,3
   11c88:	0125a023          	sw	s2,0(a1)
   11c8c:	412484b3          	sub	s1,s1,s2
   11c90:	4781                	li	a5,0
   11c92:	e311                	bnez	a4,11c96 <__sflush_r+0xfa>
   11c94:	49dc                	lw	a5,20(a1)
   11c96:	c41c                	sw	a5,8(s0)
   11c98:	00904663          	bgtz	s1,11ca4 <__sflush_r+0x108>
   11c9c:	a83d                	j	11cda <__sflush_r+0x13e>
   11c9e:	992a                	add	s2,s2,a0
   11ca0:	02905d63          	blez	s1,11cda <__sflush_r+0x13e>
   11ca4:	505c                	lw	a5,36(s0)
   11ca6:	4c4c                	lw	a1,28(s0)
   11ca8:	86a6                	mv	a3,s1
   11caa:	864a                	mv	a2,s2
   11cac:	854e                	mv	a0,s3
   11cae:	9782                	jalr	a5
   11cb0:	8c89                	sub	s1,s1,a0
   11cb2:	fea046e3          	bgtz	a0,11c9e <__sflush_r+0x102>
   11cb6:	00c41783          	lh	a5,12(s0)
   11cba:	4942                	lw	s2,16(sp)
   11cbc:	0407e793          	ori	a5,a5,64
   11cc0:	40f2                	lw	ra,28(sp)
   11cc2:	00f41623          	sh	a5,12(s0)
   11cc6:	4462                	lw	s0,24(sp)
   11cc8:	44d2                	lw	s1,20(sp)
   11cca:	49b2                	lw	s3,12(sp)
   11ccc:	557d                	li	a0,-1
   11cce:	6105                	addi	sp,sp,32
   11cd0:	8082                	ret
   11cd2:	5dd4                	lw	a3,60(a1)
   11cd4:	eed048e3          	bgtz	a3,11bc4 <__sflush_r+0x28>
   11cd8:	bf51                	j	11c6c <__sflush_r+0xd0>
   11cda:	44d2                	lw	s1,20(sp)
   11cdc:	4942                	lw	s2,16(sp)
   11cde:	b779                	j	11c6c <__sflush_r+0xd0>
   11ce0:	4830                	lw	a2,80(s0)
   11ce2:	bf19                	j	11bf8 <__sflush_r+0x5c>
   11ce4:	4814                	lw	a3,16(s0)
   11ce6:	777d                	lui	a4,0xfffff
   11ce8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11cec:	8f7d                	and	a4,a4,a5
   11cee:	00e41623          	sh	a4,12(s0)
   11cf2:	00042223          	sw	zero,4(s0)
   11cf6:	c014                	sw	a3,0(s0)
   11cf8:	01379713          	slli	a4,a5,0x13
   11cfc:	f4075ae3          	bgez	a4,11c50 <__sflush_r+0xb4>
   11d00:	580c                	lw	a1,48(s0)
   11d02:	c828                	sw	a0,80(s0)
   11d04:	0099a023          	sw	s1,0(s3)
   11d08:	f9a1                	bnez	a1,11c58 <__sflush_r+0xbc>
   11d0a:	44d2                	lw	s1,20(sp)
   11d0c:	b785                	j	11c6c <__sflush_r+0xd0>
   11d0e:	0009a783          	lw	a5,0(s3)
   11d12:	ec078fe3          	beqz	a5,11bf0 <__sflush_r+0x54>
   11d16:	4775                	li	a4,29
   11d18:	00e78a63          	beq	a5,a4,11d2c <__sflush_r+0x190>
   11d1c:	4759                	li	a4,22
   11d1e:	00e78763          	beq	a5,a4,11d2c <__sflush_r+0x190>
   11d22:	00c41783          	lh	a5,12(s0)
   11d26:	0407e793          	ori	a5,a5,64
   11d2a:	bf59                	j	11cc0 <__sflush_r+0x124>
   11d2c:	0099a023          	sw	s1,0(s3)
   11d30:	44d2                	lw	s1,20(sp)
   11d32:	bf2d                	j	11c6c <__sflush_r+0xd0>

00011d34 <_fflush_r>:
   11d34:	1141                	addi	sp,sp,-16
   11d36:	c422                	sw	s0,8(sp)
   11d38:	c226                	sw	s1,4(sp)
   11d3a:	c606                	sw	ra,12(sp)
   11d3c:	c04a                	sw	s2,0(sp)
   11d3e:	84aa                	mv	s1,a0
   11d40:	842e                	mv	s0,a1
   11d42:	c119                	beqz	a0,11d48 <_fflush_r+0x14>
   11d44:	595c                	lw	a5,52(a0)
   11d46:	c3bd                	beqz	a5,11dac <_fflush_r+0x78>
   11d48:	00c41783          	lh	a5,12(s0)
   11d4c:	4901                	li	s2,0
   11d4e:	c39d                	beqz	a5,11d74 <_fflush_r+0x40>
   11d50:	5078                	lw	a4,100(s0)
   11d52:	8b05                	andi	a4,a4,1
   11d54:	e701                	bnez	a4,11d5c <_fflush_r+0x28>
   11d56:	2007f793          	andi	a5,a5,512
   11d5a:	c785                	beqz	a5,11d82 <_fflush_r+0x4e>
   11d5c:	8526                	mv	a0,s1
   11d5e:	85a2                	mv	a1,s0
   11d60:	3d35                	jal	11b9c <__sflush_r>
   11d62:	507c                	lw	a5,100(s0)
   11d64:	892a                	mv	s2,a0
   11d66:	8b85                	andi	a5,a5,1
   11d68:	e791                	bnez	a5,11d74 <_fflush_r+0x40>
   11d6a:	00c45783          	lhu	a5,12(s0)
   11d6e:	2007f793          	andi	a5,a5,512
   11d72:	c39d                	beqz	a5,11d98 <_fflush_r+0x64>
   11d74:	40b2                	lw	ra,12(sp)
   11d76:	4422                	lw	s0,8(sp)
   11d78:	4492                	lw	s1,4(sp)
   11d7a:	854a                	mv	a0,s2
   11d7c:	4902                	lw	s2,0(sp)
   11d7e:	0141                	addi	sp,sp,16
   11d80:	8082                	ret
   11d82:	4c28                	lw	a0,88(s0)
   11d84:	a34ff0ef          	jal	10fb8 <__retarget_lock_acquire_recursive>
   11d88:	8526                	mv	a0,s1
   11d8a:	85a2                	mv	a1,s0
   11d8c:	3d01                	jal	11b9c <__sflush_r>
   11d8e:	507c                	lw	a5,100(s0)
   11d90:	892a                	mv	s2,a0
   11d92:	8b85                	andi	a5,a5,1
   11d94:	f3e5                	bnez	a5,11d74 <_fflush_r+0x40>
   11d96:	bfd1                	j	11d6a <_fflush_r+0x36>
   11d98:	4c28                	lw	a0,88(s0)
   11d9a:	a2aff0ef          	jal	10fc4 <__retarget_lock_release_recursive>
   11d9e:	40b2                	lw	ra,12(sp)
   11da0:	4422                	lw	s0,8(sp)
   11da2:	4492                	lw	s1,4(sp)
   11da4:	854a                	mv	a0,s2
   11da6:	4902                	lw	s2,0(sp)
   11da8:	0141                	addi	sp,sp,16
   11daa:	8082                	ret
   11dac:	e09fe0ef          	jal	10bb4 <__sinit>
   11db0:	bf61                	j	11d48 <_fflush_r+0x14>

00011db2 <fflush>:
   11db2:	c53d                	beqz	a0,11e20 <fflush+0x6e>
   11db4:	1141                	addi	sp,sp,-16
   11db6:	c04a                	sw	s2,0(sp)
   11db8:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   11dbc:	c422                	sw	s0,8(sp)
   11dbe:	c606                	sw	ra,12(sp)
   11dc0:	c226                	sw	s1,4(sp)
   11dc2:	842a                	mv	s0,a0
   11dc4:	00090563          	beqz	s2,11dce <fflush+0x1c>
   11dc8:	03492783          	lw	a5,52(s2)
   11dcc:	cf95                	beqz	a5,11e08 <fflush+0x56>
   11dce:	00c41783          	lh	a5,12(s0)
   11dd2:	4481                	li	s1,0
   11dd4:	c39d                	beqz	a5,11dfa <fflush+0x48>
   11dd6:	5078                	lw	a4,100(s0)
   11dd8:	8b05                	andi	a4,a4,1
   11dda:	e701                	bnez	a4,11de2 <fflush+0x30>
   11ddc:	2007f793          	andi	a5,a5,512
   11de0:	cb85                	beqz	a5,11e10 <fflush+0x5e>
   11de2:	854a                	mv	a0,s2
   11de4:	85a2                	mv	a1,s0
   11de6:	3b5d                	jal	11b9c <__sflush_r>
   11de8:	507c                	lw	a5,100(s0)
   11dea:	84aa                	mv	s1,a0
   11dec:	8b85                	andi	a5,a5,1
   11dee:	e791                	bnez	a5,11dfa <fflush+0x48>
   11df0:	00c45783          	lhu	a5,12(s0)
   11df4:	2007f793          	andi	a5,a5,512
   11df8:	c385                	beqz	a5,11e18 <fflush+0x66>
   11dfa:	40b2                	lw	ra,12(sp)
   11dfc:	4422                	lw	s0,8(sp)
   11dfe:	4902                	lw	s2,0(sp)
   11e00:	8526                	mv	a0,s1
   11e02:	4492                	lw	s1,4(sp)
   11e04:	0141                	addi	sp,sp,16
   11e06:	8082                	ret
   11e08:	854a                	mv	a0,s2
   11e0a:	dabfe0ef          	jal	10bb4 <__sinit>
   11e0e:	b7c1                	j	11dce <fflush+0x1c>
   11e10:	4c28                	lw	a0,88(s0)
   11e12:	9a6ff0ef          	jal	10fb8 <__retarget_lock_acquire_recursive>
   11e16:	b7f1                	j	11de2 <fflush+0x30>
   11e18:	4c28                	lw	a0,88(s0)
   11e1a:	9aaff0ef          	jal	10fc4 <__retarget_lock_release_recursive>
   11e1e:	bff1                	j	11dfa <fflush+0x48>
   11e20:	00000617          	auipc	a2,0x0
   11e24:	1f060613          	addi	a2,a2,496 # 12010 <__sglue>
   11e28:	00000597          	auipc	a1,0x0
   11e2c:	f0c58593          	addi	a1,a1,-244 # 11d34 <_fflush_r>
   11e30:	00000517          	auipc	a0,0x0
   11e34:	1f050513          	addi	a0,a0,496 # 12020 <_impure_data>
   11e38:	e09fe06f          	j	10c40 <_fwalk_sglue>

00011e3c <_sbrk_r>:
   11e3c:	1141                	addi	sp,sp,-16
   11e3e:	c422                	sw	s0,8(sp)
   11e40:	842a                	mv	s0,a0
   11e42:	852e                	mv	a0,a1
   11e44:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   11e48:	c606                	sw	ra,12(sp)
   11e4a:	20f9                	jal	11f18 <_sbrk>
   11e4c:	57fd                	li	a5,-1
   11e4e:	00f50663          	beq	a0,a5,11e5a <_sbrk_r+0x1e>
   11e52:	40b2                	lw	ra,12(sp)
   11e54:	4422                	lw	s0,8(sp)
   11e56:	0141                	addi	sp,sp,16
   11e58:	8082                	ret
   11e5a:	c226                	sw	s1,4(sp)
   11e5c:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   11e60:	409c                	lw	a5,0(s1)
   11e62:	c799                	beqz	a5,11e70 <_sbrk_r+0x34>
   11e64:	40b2                	lw	ra,12(sp)
   11e66:	c01c                	sw	a5,0(s0)
   11e68:	4422                	lw	s0,8(sp)
   11e6a:	4492                	lw	s1,4(sp)
   11e6c:	0141                	addi	sp,sp,16
   11e6e:	8082                	ret
   11e70:	40b2                	lw	ra,12(sp)
   11e72:	4422                	lw	s0,8(sp)
   11e74:	4492                	lw	s1,4(sp)
   11e76:	0141                	addi	sp,sp,16
   11e78:	8082                	ret

00011e7a <_close>:
   11e7a:	1141                	addi	sp,sp,-16
   11e7c:	c606                	sw	ra,12(sp)
   11e7e:	c422                	sw	s0,8(sp)
   11e80:	03900893          	li	a7,57
   11e84:	00000073          	ecall
   11e88:	842a                	mv	s0,a0
   11e8a:	00054763          	bltz	a0,11e98 <_close+0x1e>
   11e8e:	40b2                	lw	ra,12(sp)
   11e90:	8522                	mv	a0,s0
   11e92:	4422                	lw	s0,8(sp)
   11e94:	0141                	addi	sp,sp,16
   11e96:	8082                	ret
   11e98:	40800433          	neg	s0,s0
   11e9c:	28d5                	jal	11f90 <__errno>
   11e9e:	c100                	sw	s0,0(a0)
   11ea0:	547d                	li	s0,-1
   11ea2:	b7f5                	j	11e8e <_close+0x14>

00011ea4 <_exit>:
   11ea4:	05d00893          	li	a7,93
   11ea8:	00000073          	ecall
   11eac:	00054363          	bltz	a0,11eb2 <_exit+0xe>
   11eb0:	a001                	j	11eb0 <_exit+0xc>
   11eb2:	1141                	addi	sp,sp,-16
   11eb4:	c422                	sw	s0,8(sp)
   11eb6:	842a                	mv	s0,a0
   11eb8:	c606                	sw	ra,12(sp)
   11eba:	40800433          	neg	s0,s0
   11ebe:	28c9                	jal	11f90 <__errno>
   11ec0:	c100                	sw	s0,0(a0)
   11ec2:	a001                	j	11ec2 <_exit+0x1e>

00011ec4 <_lseek>:
   11ec4:	1141                	addi	sp,sp,-16
   11ec6:	c606                	sw	ra,12(sp)
   11ec8:	c422                	sw	s0,8(sp)
   11eca:	03e00893          	li	a7,62
   11ece:	00000073          	ecall
   11ed2:	842a                	mv	s0,a0
   11ed4:	00054763          	bltz	a0,11ee2 <_lseek+0x1e>
   11ed8:	40b2                	lw	ra,12(sp)
   11eda:	8522                	mv	a0,s0
   11edc:	4422                	lw	s0,8(sp)
   11ede:	0141                	addi	sp,sp,16
   11ee0:	8082                	ret
   11ee2:	40800433          	neg	s0,s0
   11ee6:	206d                	jal	11f90 <__errno>
   11ee8:	c100                	sw	s0,0(a0)
   11eea:	547d                	li	s0,-1
   11eec:	b7f5                	j	11ed8 <_lseek+0x14>

00011eee <_read>:
   11eee:	1141                	addi	sp,sp,-16
   11ef0:	c606                	sw	ra,12(sp)
   11ef2:	c422                	sw	s0,8(sp)
   11ef4:	03f00893          	li	a7,63
   11ef8:	00000073          	ecall
   11efc:	842a                	mv	s0,a0
   11efe:	00054763          	bltz	a0,11f0c <_read+0x1e>
   11f02:	40b2                	lw	ra,12(sp)
   11f04:	8522                	mv	a0,s0
   11f06:	4422                	lw	s0,8(sp)
   11f08:	0141                	addi	sp,sp,16
   11f0a:	8082                	ret
   11f0c:	40800433          	neg	s0,s0
   11f10:	2041                	jal	11f90 <__errno>
   11f12:	c100                	sw	s0,0(a0)
   11f14:	547d                	li	s0,-1
   11f16:	b7f5                	j	11f02 <_read+0x14>

00011f18 <_sbrk>:
   11f18:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11f1c:	4298                	lw	a4,0(a3)
   11f1e:	1141                	addi	sp,sp,-16
   11f20:	c606                	sw	ra,12(sp)
   11f22:	87aa                	mv	a5,a0
   11f24:	eb19                	bnez	a4,11f3a <_sbrk+0x22>
   11f26:	0d600893          	li	a7,214
   11f2a:	4501                	li	a0,0
   11f2c:	00000073          	ecall
   11f30:	567d                	li	a2,-1
   11f32:	872a                	mv	a4,a0
   11f34:	02c50263          	beq	a0,a2,11f58 <_sbrk+0x40>
   11f38:	c288                	sw	a0,0(a3)
   11f3a:	00e78533          	add	a0,a5,a4
   11f3e:	0d600893          	li	a7,214
   11f42:	00000073          	ecall
   11f46:	4298                	lw	a4,0(a3)
   11f48:	97ba                	add	a5,a5,a4
   11f4a:	00f51763          	bne	a0,a5,11f58 <_sbrk+0x40>
   11f4e:	40b2                	lw	ra,12(sp)
   11f50:	c288                	sw	a0,0(a3)
   11f52:	853a                	mv	a0,a4
   11f54:	0141                	addi	sp,sp,16
   11f56:	8082                	ret
   11f58:	2825                	jal	11f90 <__errno>
   11f5a:	40b2                	lw	ra,12(sp)
   11f5c:	47b1                	li	a5,12
   11f5e:	c11c                	sw	a5,0(a0)
   11f60:	557d                	li	a0,-1
   11f62:	0141                	addi	sp,sp,16
   11f64:	8082                	ret

00011f66 <_write>:
   11f66:	1141                	addi	sp,sp,-16
   11f68:	c606                	sw	ra,12(sp)
   11f6a:	c422                	sw	s0,8(sp)
   11f6c:	04000893          	li	a7,64
   11f70:	00000073          	ecall
   11f74:	842a                	mv	s0,a0
   11f76:	00054763          	bltz	a0,11f84 <_write+0x1e>
   11f7a:	40b2                	lw	ra,12(sp)
   11f7c:	8522                	mv	a0,s0
   11f7e:	4422                	lw	s0,8(sp)
   11f80:	0141                	addi	sp,sp,16
   11f82:	8082                	ret
   11f84:	40800433          	neg	s0,s0
   11f88:	2021                	jal	11f90 <__errno>
   11f8a:	c100                	sw	s0,0(a0)
   11f8c:	547d                	li	s0,-1
   11f8e:	b7f5                	j	11f7a <_write+0x14>

00011f90 <__errno>:
   11f90:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11f94:	8082                	ret
