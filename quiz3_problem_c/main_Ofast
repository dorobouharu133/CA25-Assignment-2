
test_Ofast.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	4f5000ef          	jal	10db2 <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	28b010ef          	jal	11b56 <_exit>

000100d0 <main>:
   100d0:	7139                	addi	sp,sp,-64
   100d2:	dc22                	sw	s0,56(sp)
   100d4:	de06                	sw	ra,60(sp)
   100d6:	da26                	sw	s1,52(sp)
   100d8:	d84a                	sw	s2,48(sp)
   100da:	0060                	addi	s0,sp,12
   100dc:	02300793          	li	a5,35
   100e0:	04000893          	li	a7,64
   100e4:	00100513          	li	a0,1
   100e8:	85a2                	mv	a1,s0
   100ea:	863e                	mv	a2,a5
   100ec:	00000073          	ecall
   100f0:	4961                	li	s2,24
   100f2:	04000893          	li	a7,64
   100f6:	00100513          	li	a0,1
   100fa:	85a2                	mv	a1,s0
   100fc:	864a                	mv	a2,s2
   100fe:	00000073          	ecall
   10102:	44a1                	li	s1,8
   10104:	04000893          	li	a7,64
   10108:	00100513          	li	a0,1
   1010c:	85a2                	mv	a1,s0
   1010e:	8626                	mv	a2,s1
   10110:	00000073          	ecall
   10114:	6541                	lui	a0,0x10
   10116:	2a89                	jal	10268 <print_dec>
   10118:	04000893          	li	a7,64
   1011c:	00100513          	li	a0,1
   10120:	85a2                	mv	a1,s0
   10122:	864a                	mv	a2,s2
   10124:	00000073          	ecall
   10128:	4511                	li	a0,4
   1012a:	2a59                	jal	102c0 <fast_rsqrt.part.0>
   1012c:	87aa                	mv	a5,a0
   1012e:	04000893          	li	a7,64
   10132:	00100513          	li	a0,1
   10136:	85a2                	mv	a1,s0
   10138:	8626                	mv	a2,s1
   1013a:	00000073          	ecall
   1013e:	853e                	mv	a0,a5
   10140:	2225                	jal	10268 <print_dec>
   10142:	4969                	li	s2,26
   10144:	04000893          	li	a7,64
   10148:	00100513          	li	a0,1
   1014c:	85a2                	mv	a1,s0
   1014e:	864a                	mv	a2,s2
   10150:	00000073          	ecall
   10154:	4541                	li	a0,16
   10156:	22ad                	jal	102c0 <fast_rsqrt.part.0>
   10158:	87aa                	mv	a5,a0
   1015a:	04000893          	li	a7,64
   1015e:	00100513          	li	a0,1
   10162:	85a2                	mv	a1,s0
   10164:	8626                	mv	a2,s1
   10166:	00000073          	ecall
   1016a:	853e                	mv	a0,a5
   1016c:	28f5                	jal	10268 <print_dec>
   1016e:	04000893          	li	a7,64
   10172:	00100513          	li	a0,1
   10176:	85a2                	mv	a1,s0
   10178:	864a                	mv	a2,s2
   1017a:	00000073          	ecall
   1017e:	06400513          	li	a0,100
   10182:	2a3d                	jal	102c0 <fast_rsqrt.part.0>
   10184:	87aa                	mv	a5,a0
   10186:	04000893          	li	a7,64
   1018a:	00100513          	li	a0,1
   1018e:	85a2                	mv	a1,s0
   10190:	8626                	mv	a2,s1
   10192:	00000073          	ecall
   10196:	853e                	mv	a0,a5
   10198:	28c1                	jal	10268 <print_dec>
   1019a:	47ed                	li	a5,27
   1019c:	04000893          	li	a7,64
   101a0:	00100513          	li	a0,1
   101a4:	85a2                	mv	a1,s0
   101a6:	863e                	mv	a2,a5
   101a8:	00000073          	ecall
   101ac:	6505                	lui	a0,0x1
   101ae:	2a09                	jal	102c0 <fast_rsqrt.part.0>
   101b0:	87aa                	mv	a5,a0
   101b2:	04000893          	li	a7,64
   101b6:	00100513          	li	a0,1
   101ba:	85a2                	mv	a1,s0
   101bc:	8626                	mv	a2,s1
   101be:	00000073          	ecall
   101c2:	853e                	mv	a0,a5
   101c4:	2055                	jal	10268 <print_dec>
   101c6:	50f2                	lw	ra,60(sp)
   101c8:	5462                	lw	s0,56(sp)
   101ca:	54d2                	lw	s1,52(sp)
   101cc:	5942                	lw	s2,48(sp)
   101ce:	4501                	li	a0,0
   101d0:	6121                	addi	sp,sp,64
   101d2:	8082                	ret

000101d4 <register_fini>:
   101d4:	00000793          	li	a5,0
   101d8:	c791                	beqz	a5,101e4 <register_fini+0x10>
   101da:	00001517          	auipc	a0,0x1
   101de:	a4e50513          	addi	a0,a0,-1458 # 10c28 <__libc_fini_array>
   101e2:	a6e1                	j	105aa <atexit>
   101e4:	8082                	ret

000101e6 <_start>:
   101e6:	00002197          	auipc	gp,0x2
   101ea:	62a18193          	addi	gp,gp,1578 # 12810 <__global_pointer$>
   101ee:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   101f2:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   101f6:	8e09                	sub	a2,a2,a0
   101f8:	4581                	li	a1,0
   101fa:	27f000ef          	jal	10c78 <memset>
   101fe:	00001517          	auipc	a0,0x1
   10202:	a2a50513          	addi	a0,a0,-1494 # 10c28 <__libc_fini_array>
   10206:	2655                	jal	105aa <atexit>
   10208:	1b7000ef          	jal	10bbe <__libc_init_array>
   1020c:	4502                	lw	a0,0(sp)
   1020e:	004c                	addi	a1,sp,4
   10210:	4601                	li	a2,0
   10212:	3d7d                	jal	100d0 <main>
   10214:	b545                	j	100b4 <exit>

00010216 <__do_global_dtors_aux>:
   10216:	d4c1c783          	lbu	a5,-692(gp) # 1255c <completed.1>
   1021a:	eb85                	bnez	a5,1024a <__do_global_dtors_aux+0x34>
   1021c:	00000793          	li	a5,0
   10220:	c38d                	beqz	a5,10242 <__do_global_dtors_aux+0x2c>
   10222:	1141                	addi	sp,sp,-16
   10224:	00002517          	auipc	a0,0x2
   10228:	a6450513          	addi	a0,a0,-1436 # 11c88 <__EH_FRAME_BEGIN__>
   1022c:	c606                	sw	ra,12(sp)
   1022e:	00000097          	auipc	ra,0x0
   10232:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10236:	40b2                	lw	ra,12(sp)
   10238:	4785                	li	a5,1
   1023a:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   1023e:	0141                	addi	sp,sp,16
   10240:	8082                	ret
   10242:	4785                	li	a5,1
   10244:	d4f18623          	sb	a5,-692(gp) # 1255c <completed.1>
   10248:	8082                	ret
   1024a:	8082                	ret

0001024c <frame_dummy>:
   1024c:	00000793          	li	a5,0
   10250:	cb99                	beqz	a5,10266 <frame_dummy+0x1a>
   10252:	d8c18593          	addi	a1,gp,-628 # 1259c <object.0>
   10256:	00002517          	auipc	a0,0x2
   1025a:	a3250513          	addi	a0,a0,-1486 # 11c88 <__EH_FRAME_BEGIN__>
   1025e:	00000317          	auipc	t1,0x0
   10262:	00000067          	jr	zero # 0 <exit-0x100b4>
   10266:	8082                	ret

00010268 <print_dec>:
   10268:	1101                	addi	sp,sp,-32
   1026a:	01d10313          	addi	t1,sp,29
   1026e:	c91d                	beqz	a0,102a4 <print_dec+0x3c>
   10270:	01e10313          	addi	t1,sp,30
   10274:	48a5                	li	a7,9
   10276:	4805                	li	a6,1
   10278:	55fd                	li	a1,-1
   1027a:	137d                	addi	t1,t1,-1 # 1025d <frame_dummy+0x11>
   1027c:	4601                	li	a2,0
   1027e:	477d                	li	a4,31
   10280:	4781                	li	a5,0
   10282:	00e556b3          	srl	a3,a0,a4
   10286:	8a85                	andi	a3,a3,1
   10288:	0786                	slli	a5,a5,0x1
   1028a:	8fd5                	or	a5,a5,a3
   1028c:	00e816b3          	sll	a3,a6,a4
   10290:	177d                	addi	a4,a4,-1
   10292:	00f8f463          	bgeu	a7,a5,1029a <print_dec+0x32>
   10296:	17d9                	addi	a5,a5,-10
   10298:	8e55                	or	a2,a2,a3
   1029a:	feb714e3          	bne	a4,a1,10282 <print_dec+0x1a>
   1029e:	c219                	beqz	a2,102a4 <print_dec+0x3c>
   102a0:	8532                	mv	a0,a2
   102a2:	bfe1                	j	1027a <print_dec+0x12>
   102a4:	0305                	addi	t1,t1,1
   102a6:	101c                	addi	a5,sp,32
   102a8:	406787b3          	sub	a5,a5,t1
   102ac:	04000893          	li	a7,64
   102b0:	00100513          	li	a0,1
   102b4:	859a                	mv	a1,t1
   102b6:	863e                	mv	a2,a5
   102b8:	00000073          	ecall
   102bc:	6105                	addi	sp,sp,32
   102be:	8082                	ret

000102c0 <fast_rsqrt.part.0>:
   102c0:	1141                	addi	sp,sp,-16
   102c2:	c622                	sw	s0,12(sp)
   102c4:	832a                	mv	t1,a0
   102c6:	1a050663          	beqz	a0,10472 <fast_rsqrt.part.0+0x1b2>
   102ca:	67c1                	lui	a5,0x10
   102cc:	10f56363          	bltu	a0,a5,103d2 <fast_rsqrt.part.0+0x112>
   102d0:	87aa                	mv	a5,a0
   102d2:	4621                	li	a2,8
   102d4:	4701                	li	a4,0
   102d6:	010006b7          	lui	a3,0x1000
   102da:	00d7f463          	bgeu	a5,a3,102e2 <fast_rsqrt.part.0+0x22>
   102de:	07a2                	slli	a5,a5,0x8
   102e0:	8732                	mv	a4,a2
   102e2:	100006b7          	lui	a3,0x10000
   102e6:	00d7f463          	bgeu	a5,a3,102ee <fast_rsqrt.part.0+0x2e>
   102ea:	0711                	addi	a4,a4,4
   102ec:	0792                	slli	a5,a5,0x4
   102ee:	400006b7          	lui	a3,0x40000
   102f2:	14d7f863          	bgeu	a5,a3,10442 <fast_rsqrt.part.0+0x182>
   102f6:	00279693          	slli	a3,a5,0x2
   102fa:	0709                	addi	a4,a4,2
   102fc:	0006c363          	bltz	a3,10302 <fast_rsqrt.part.0+0x42>
   10300:	0705                	addi	a4,a4,1
   10302:	46fd                	li	a3,31
   10304:	8e99                	sub	a3,a3,a4
   10306:	6649                	lui	a2,0x12
   10308:	00169793          	slli	a5,a3,0x1
   1030c:	c4860613          	addi	a2,a2,-952 # 11c48 <rsqrt_table>
   10310:	4805                	li	a6,1
   10312:	97b2                	add	a5,a5,a2
   10314:	00d81833          	sll	a6,a6,a3
   10318:	0007d503          	lhu	a0,0(a5) # 10000 <exit-0xb4>
   1031c:	04687263          	bgeu	a6,t1,10360 <fast_rsqrt.part.0+0xa0>
   10320:	02000793          	li	a5,32
   10324:	8f99                	sub	a5,a5,a4
   10326:	0786                	slli	a5,a5,0x1
   10328:	963e                	add	a2,a2,a5
   1032a:	00065583          	lhu	a1,0(a2)
   1032e:	87c2                	mv	a5,a6
   10330:	40b505b3          	sub	a1,a0,a1
   10334:	40f307b3          	sub	a5,t1,a5
   10338:	00f33733          	sltu	a4,t1,a5
   1033c:	40e00733          	neg	a4,a4
   10340:	0107d813          	srli	a6,a5,0x10
   10344:	0742                	slli	a4,a4,0x10
   10346:	fe068613          	addi	a2,a3,-32 # 3fffffe0 <__BSS_END__+0x3ffed73c>
   1034a:	00e86733          	or	a4,a6,a4
   1034e:	07c2                	slli	a5,a5,0x10
   10350:	12064363          	bltz	a2,10476 <fast_rsqrt.part.0+0x1b6>
   10354:	00c757b3          	srl	a5,a4,a2
   10358:	02f587b3          	mul	a5,a1,a5
   1035c:	83c1                	srli	a5,a5,0x10
   1035e:	8d1d                	sub	a0,a0,a5
   10360:	4e89                	li	t4,2
   10362:	4585                	li	a1,1
   10364:	48fd                	li	a7,31
   10366:	02000813          	li	a6,32
   1036a:	00135e13          	srli	t3,t1,0x1
   1036e:	00030f37          	lui	t5,0x30
   10372:	4281                	li	t0,0
   10374:	4781                	li	a5,0
   10376:	fe078613          	addi	a2,a5,-32
   1037a:	00f596b3          	sll	a3,a1,a5
   1037e:	00f51733          	sll	a4,a0,a5
   10382:	867d                	srai	a2,a2,0x1f
   10384:	8ee9                	and	a3,a3,a0
   10386:	8f71                	and	a4,a4,a2
   10388:	0785                	addi	a5,a5,1
   1038a:	c291                	beqz	a3,1038e <fast_rsqrt.part.0+0xce>
   1038c:	92ba                	add	t0,t0,a4
   1038e:	ff0794e3          	bne	a5,a6,10376 <fast_rsqrt.part.0+0xb6>
   10392:	4601                	li	a2,0
   10394:	4f81                	li	t6,0
   10396:	4781                	li	a5,0
   10398:	a829                	j	103b2 <fast_rsqrt.part.0+0xf2>
   1039a:	4701                	li	a4,0
   1039c:	00d316b3          	sll	a3,t1,a3
   103a0:	9732                	add	a4,a4,a2
   103a2:	00c733b3          	sltu	t2,a4,a2
   103a6:	9fb6                	add	t6,t6,a3
   103a8:	863a                	mv	a2,a4
   103aa:	9f9e                	add	t6,t6,t2
   103ac:	0785                	addi	a5,a5,1
   103ae:	03078763          	beq	a5,a6,103dc <fast_rsqrt.part.0+0x11c>
   103b2:	00f59733          	sll	a4,a1,a5
   103b6:	00577733          	and	a4,a4,t0
   103ba:	fe078693          	addi	a3,a5,-32
   103be:	d77d                	beqz	a4,103ac <fast_rsqrt.part.0+0xec>
   103c0:	40f88733          	sub	a4,a7,a5
   103c4:	fc06dbe3          	bgez	a3,1039a <fast_rsqrt.part.0+0xda>
   103c8:	00ee56b3          	srl	a3,t3,a4
   103cc:	00f31733          	sll	a4,t1,a5
   103d0:	bfc1                	j	103a0 <fast_rsqrt.part.0+0xe0>
   103d2:	01051793          	slli	a5,a0,0x10
   103d6:	4661                	li	a2,24
   103d8:	4741                	li	a4,16
   103da:	bdf5                	j	102d6 <fast_rsqrt.part.0+0x16>
   103dc:	0fc2                	slli	t6,t6,0x10
   103de:	8241                	srli	a2,a2,0x10
   103e0:	00cfe633          	or	a2,t6,a2
   103e4:	40cf0633          	sub	a2,t5,a2
   103e8:	4281                	li	t0,0
   103ea:	4f81                	li	t6,0
   103ec:	4781                	li	a5,0
   103ee:	00155413          	srli	s0,a0,0x1
   103f2:	a829                	j	1040c <fast_rsqrt.part.0+0x14c>
   103f4:	4701                	li	a4,0
   103f6:	00d516b3          	sll	a3,a0,a3
   103fa:	9716                	add	a4,a4,t0
   103fc:	005733b3          	sltu	t2,a4,t0
   10400:	9fb6                	add	t6,t6,a3
   10402:	82ba                	mv	t0,a4
   10404:	9f9e                	add	t6,t6,t2
   10406:	0785                	addi	a5,a5,1
   10408:	03078163          	beq	a5,a6,1042a <fast_rsqrt.part.0+0x16a>
   1040c:	00f59733          	sll	a4,a1,a5
   10410:	8f71                	and	a4,a4,a2
   10412:	fe078693          	addi	a3,a5,-32
   10416:	db65                	beqz	a4,10406 <fast_rsqrt.part.0+0x146>
   10418:	40f88733          	sub	a4,a7,a5
   1041c:	fc06dce3          	bgez	a3,103f4 <fast_rsqrt.part.0+0x134>
   10420:	00e456b3          	srl	a3,s0,a4
   10424:	00f51733          	sll	a4,a0,a5
   10428:	bfc9                	j	103fa <fast_rsqrt.part.0+0x13a>
   1042a:	0fbe                	slli	t6,t6,0xf
   1042c:	0112d293          	srli	t0,t0,0x11
   10430:	005fe533          	or	a0,t6,t0
   10434:	00be8463          	beq	t4,a1,1043c <fast_rsqrt.part.0+0x17c>
   10438:	4e85                	li	t4,1
   1043a:	bf25                	j	10372 <fast_rsqrt.part.0+0xb2>
   1043c:	4432                	lw	s0,12(sp)
   1043e:	0141                	addi	sp,sp,16
   10440:	8082                	ret
   10442:	ea07dfe3          	bgez	a5,10300 <fast_rsqrt.part.0+0x40>
   10446:	48fd                	li	a7,31
   10448:	40e886b3          	sub	a3,a7,a4
   1044c:	6649                	lui	a2,0x12
   1044e:	00169793          	slli	a5,a3,0x1
   10452:	c4860613          	addi	a2,a2,-952 # 11c48 <rsqrt_table>
   10456:	4805                	li	a6,1
   10458:	97b2                	add	a5,a5,a2
   1045a:	00d81833          	sll	a6,a6,a3
   1045e:	0007d503          	lhu	a0,0(a5)
   10462:	ee687fe3          	bgeu	a6,t1,10360 <fast_rsqrt.part.0+0xa0>
   10466:	85aa                	mv	a1,a0
   10468:	800007b7          	lui	a5,0x80000
   1046c:	ed1684e3          	beq	a3,a7,10334 <fast_rsqrt.part.0+0x74>
   10470:	bd45                	j	10320 <fast_rsqrt.part.0+0x60>
   10472:	4501                	li	a0,0
   10474:	b5f5                	j	10360 <fast_rsqrt.part.0+0xa0>
   10476:	467d                	li	a2,31
   10478:	0706                	slli	a4,a4,0x1
   1047a:	8e15                	sub	a2,a2,a3
   1047c:	00d7d7b3          	srl	a5,a5,a3
   10480:	00c71733          	sll	a4,a4,a2
   10484:	8fd9                	or	a5,a5,a4
   10486:	bdc9                	j	10358 <fast_rsqrt.part.0+0x98>

00010488 <memcpy>:
   10488:	fff60813          	addi	a6,a2,-1
   1048c:	ce3d                	beqz	a2,1050a <memcpy+0x82>
   1048e:	4799                	li	a5,6
   10490:	00158713          	addi	a4,a1,1
   10494:	0707f163          	bgeu	a5,a6,104f6 <memcpy+0x6e>
   10498:	00b567b3          	or	a5,a0,a1
   1049c:	8b8d                	andi	a5,a5,3
   1049e:	00158713          	addi	a4,a1,1
   104a2:	ebb1                	bnez	a5,104f6 <memcpy+0x6e>
   104a4:	40e507b3          	sub	a5,a0,a4
   104a8:	0037b793          	sltiu	a5,a5,3
   104ac:	e7a9                	bnez	a5,104f6 <memcpy+0x6e>
   104ae:	ffc67893          	andi	a7,a2,-4
   104b2:	011586b3          	add	a3,a1,a7
   104b6:	87aa                	mv	a5,a0
   104b8:	4198                	lw	a4,0(a1)
   104ba:	0591                	addi	a1,a1,4
   104bc:	0791                	addi	a5,a5,4 # 80000004 <__BSS_END__+0x7ffed760>
   104be:	fee7ae23          	sw	a4,-4(a5)
   104c2:	feb69be3          	bne	a3,a1,104b8 <memcpy+0x30>
   104c6:	41180833          	sub	a6,a6,a7
   104ca:	011507b3          	add	a5,a0,a7
   104ce:	03160e63          	beq	a2,a7,1050a <memcpy+0x82>
   104d2:	0006c703          	lbu	a4,0(a3)
   104d6:	00e78023          	sb	a4,0(a5)
   104da:	02080863          	beqz	a6,1050a <memcpy+0x82>
   104de:	0016c603          	lbu	a2,1(a3)
   104e2:	4705                	li	a4,1
   104e4:	00c780a3          	sb	a2,1(a5)
   104e8:	02e80163          	beq	a6,a4,1050a <memcpy+0x82>
   104ec:	0026c703          	lbu	a4,2(a3)
   104f0:	00e78123          	sb	a4,2(a5)
   104f4:	8082                	ret
   104f6:	962a                	add	a2,a2,a0
   104f8:	87aa                	mv	a5,a0
   104fa:	fff74683          	lbu	a3,-1(a4)
   104fe:	0785                	addi	a5,a5,1
   10500:	0705                	addi	a4,a4,1
   10502:	fed78fa3          	sb	a3,-1(a5)
   10506:	fec79ae3          	bne	a5,a2,104fa <memcpy+0x72>
   1050a:	8082                	ret

0001050c <__mulsi3>:
   1050c:	872a                	mv	a4,a0
   1050e:	4501                	li	a0,0
   10510:	c999                	beqz	a1,10526 <__mulsi3+0x1a>
   10512:	0015f793          	andi	a5,a1,1
   10516:	40f007b3          	neg	a5,a5
   1051a:	8ff9                	and	a5,a5,a4
   1051c:	8185                	srli	a1,a1,0x1
   1051e:	953e                	add	a0,a0,a5
   10520:	0706                	slli	a4,a4,0x1
   10522:	f9e5                	bnez	a1,10512 <__mulsi3+0x6>
   10524:	8082                	ret
   10526:	8082                	ret

00010528 <fast_rsqrt>:
   10528:	c509                	beqz	a0,10532 <fast_rsqrt+0xa>
   1052a:	4705                	li	a4,1
   1052c:	00e50563          	beq	a0,a4,10536 <fast_rsqrt+0xe>
   10530:	bb41                	j	102c0 <fast_rsqrt.part.0>
   10532:	557d                	li	a0,-1
   10534:	8082                	ret
   10536:	6541                	lui	a0,0x10
   10538:	8082                	ret

0001053a <fast_distance_3d>:
   1053a:	1141                	addi	sp,sp,-16
   1053c:	02c607b3          	mul	a5,a2,a2
   10540:	c422                	sw	s0,8(sp)
   10542:	c226                	sw	s1,4(sp)
   10544:	c606                	sw	ra,12(sp)
   10546:	02b58433          	mul	s0,a1,a1
   1054a:	02c61633          	mulh	a2,a2,a2
   1054e:	943e                	add	s0,s0,a5
   10550:	00f437b3          	sltu	a5,s0,a5
   10554:	02b595b3          	mulh	a1,a1,a1
   10558:	02a504b3          	mul	s1,a0,a0
   1055c:	962e                	add	a2,a2,a1
   1055e:	97b2                	add	a5,a5,a2
   10560:	02a51533          	mulh	a0,a0,a0
   10564:	94a2                	add	s1,s1,s0
   10566:	0084b433          	sltu	s0,s1,s0
   1056a:	97aa                	add	a5,a5,a0
   1056c:	943e                	add	s0,s0,a5
   1056e:	c411                	beqz	s0,1057a <fast_distance_3d+0x40>
   10570:	01041793          	slli	a5,s0,0x10
   10574:	80c1                	srli	s1,s1,0x10
   10576:	8cdd                	or	s1,s1,a5
   10578:	8041                	srli	s0,s0,0x10
   1057a:	557d                	li	a0,-1
   1057c:	c491                	beqz	s1,10588 <fast_distance_3d+0x4e>
   1057e:	4785                	li	a5,1
   10580:	02f48363          	beq	s1,a5,105a6 <fast_distance_3d+0x6c>
   10584:	8526                	mv	a0,s1
   10586:	3b2d                	jal	102c0 <fast_rsqrt.part.0>
   10588:	02a4b7b3          	mulhu	a5,s1,a0
   1058c:	40b2                	lw	ra,12(sp)
   1058e:	02a40433          	mul	s0,s0,a0
   10592:	02a48533          	mul	a0,s1,a0
   10596:	943e                	add	s0,s0,a5
   10598:	0442                	slli	s0,s0,0x10
   1059a:	4492                	lw	s1,4(sp)
   1059c:	8141                	srli	a0,a0,0x10
   1059e:	8d41                	or	a0,a0,s0
   105a0:	4422                	lw	s0,8(sp)
   105a2:	0141                	addi	sp,sp,16
   105a4:	8082                	ret
   105a6:	6541                	lui	a0,0x10
   105a8:	b7c5                	j	10588 <fast_distance_3d+0x4e>

000105aa <atexit>:
   105aa:	85aa                	mv	a1,a0
   105ac:	4681                	li	a3,0
   105ae:	4601                	li	a2,0
   105b0:	4501                	li	a0,0
   105b2:	76e0006f          	j	10d20 <__register_exitproc>

000105b6 <stdio_exit_handler>:
   105b6:	00002617          	auipc	a2,0x2
   105ba:	a5a60613          	addi	a2,a2,-1446 # 12010 <__sglue>
   105be:	00001597          	auipc	a1,0x1
   105c2:	1a458593          	addi	a1,a1,420 # 11762 <_fclose_r>
   105c6:	00002517          	auipc	a0,0x2
   105ca:	a5a50513          	addi	a0,a0,-1446 # 12020 <_impure_data>
   105ce:	a615                	j	108f2 <_fwalk_sglue>

000105d0 <cleanup_stdio>:
   105d0:	414c                	lw	a1,4(a0)
   105d2:	1141                	addi	sp,sp,-16
   105d4:	c422                	sw	s0,8(sp)
   105d6:	c606                	sw	ra,12(sp)
   105d8:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   105dc:	842a                	mv	s0,a0
   105de:	00f58463          	beq	a1,a5,105e6 <cleanup_stdio+0x16>
   105e2:	180010ef          	jal	11762 <_fclose_r>
   105e6:	440c                	lw	a1,8(s0)
   105e8:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   105ec:	00f58563          	beq	a1,a5,105f6 <cleanup_stdio+0x26>
   105f0:	8522                	mv	a0,s0
   105f2:	170010ef          	jal	11762 <_fclose_r>
   105f6:	444c                	lw	a1,12(s0)
   105f8:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   105fc:	00f58863          	beq	a1,a5,1060c <cleanup_stdio+0x3c>
   10600:	8522                	mv	a0,s0
   10602:	4422                	lw	s0,8(sp)
   10604:	40b2                	lw	ra,12(sp)
   10606:	0141                	addi	sp,sp,16
   10608:	15a0106f          	j	11762 <_fclose_r>
   1060c:	40b2                	lw	ra,12(sp)
   1060e:	4422                	lw	s0,8(sp)
   10610:	0141                	addi	sp,sp,16
   10612:	8082                	ret

00010614 <__fp_lock>:
   10614:	51fc                	lw	a5,100(a1)
   10616:	8b85                	andi	a5,a5,1
   10618:	e791                	bnez	a5,10624 <__fp_lock+0x10>
   1061a:	00c5d783          	lhu	a5,12(a1)
   1061e:	2007f793          	andi	a5,a5,512
   10622:	c399                	beqz	a5,10628 <__fp_lock+0x14>
   10624:	4501                	li	a0,0
   10626:	8082                	ret
   10628:	4da8                	lw	a0,88(a1)
   1062a:	1141                	addi	sp,sp,-16
   1062c:	c606                	sw	ra,12(sp)
   1062e:	2d35                	jal	10c6a <__retarget_lock_acquire_recursive>
   10630:	40b2                	lw	ra,12(sp)
   10632:	4501                	li	a0,0
   10634:	0141                	addi	sp,sp,16
   10636:	8082                	ret

00010638 <__fp_unlock>:
   10638:	51fc                	lw	a5,100(a1)
   1063a:	8b85                	andi	a5,a5,1
   1063c:	e791                	bnez	a5,10648 <__fp_unlock+0x10>
   1063e:	00c5d783          	lhu	a5,12(a1)
   10642:	2007f793          	andi	a5,a5,512
   10646:	c399                	beqz	a5,1064c <__fp_unlock+0x14>
   10648:	4501                	li	a0,0
   1064a:	8082                	ret
   1064c:	4da8                	lw	a0,88(a1)
   1064e:	1141                	addi	sp,sp,-16
   10650:	c606                	sw	ra,12(sp)
   10652:	2515                	jal	10c76 <__retarget_lock_release_recursive>
   10654:	40b2                	lw	ra,12(sp)
   10656:	4501                	li	a0,0
   10658:	0141                	addi	sp,sp,16
   1065a:	8082                	ret

0001065c <global_stdio_init.part.0>:
   1065c:	1101                	addi	sp,sp,-32
   1065e:	ce06                	sw	ra,28(sp)
   10660:	cc22                	sw	s0,24(sp)
   10662:	ca26                	sw	s1,20(sp)
   10664:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   10668:	c84a                	sw	s2,16(sp)
   1066a:	c64e                	sw	s3,12(sp)
   1066c:	c452                	sw	s4,8(sp)
   1066e:	00000717          	auipc	a4,0x0
   10672:	f4870713          	addi	a4,a4,-184 # 105b6 <stdio_exit_handler>
   10676:	4791                	li	a5,4
   10678:	4621                	li	a2,8
   1067a:	4581                	li	a1,0
   1067c:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   10680:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   10684:	c45c                	sw	a5,12(s0)
   10686:	00042023          	sw	zero,0(s0)
   1068a:	00042223          	sw	zero,4(s0)
   1068e:	00042423          	sw	zero,8(s0)
   10692:	06042223          	sw	zero,100(s0)
   10696:	00042823          	sw	zero,16(s0)
   1069a:	00042a23          	sw	zero,20(s0)
   1069e:	00042c23          	sw	zero,24(s0)
   106a2:	2bd9                	jal	10c78 <memset>
   106a4:	00000a17          	auipc	s4,0x0
   106a8:	2c0a0a13          	addi	s4,s4,704 # 10964 <__sread>
   106ac:	00000997          	auipc	s3,0x0
   106b0:	2f298993          	addi	s3,s3,754 # 1099e <__swrite>
   106b4:	00000917          	auipc	s2,0x0
   106b8:	33a90913          	addi	s2,s2,826 # 109ee <__sseek>
   106bc:	00000497          	auipc	s1,0x0
   106c0:	36e48493          	addi	s1,s1,878 # 10a2a <__sclose>
   106c4:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   106c8:	03442023          	sw	s4,32(s0)
   106cc:	03342223          	sw	s3,36(s0)
   106d0:	03242423          	sw	s2,40(s0)
   106d4:	d444                	sw	s1,44(s0)
   106d6:	cc40                	sw	s0,28(s0)
   106d8:	2369                	jal	10c62 <__retarget_lock_init_recursive>
   106da:	67c1                	lui	a5,0x10
   106dc:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   106de:	4621                	li	a2,8
   106e0:	4581                	li	a1,0
   106e2:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   106e6:	d87c                	sw	a5,116(s0)
   106e8:	06042423          	sw	zero,104(s0)
   106ec:	06042623          	sw	zero,108(s0)
   106f0:	06042823          	sw	zero,112(s0)
   106f4:	0c042623          	sw	zero,204(s0)
   106f8:	06042c23          	sw	zero,120(s0)
   106fc:	06042e23          	sw	zero,124(s0)
   10700:	08042023          	sw	zero,128(s0)
   10704:	2b95                	jal	10c78 <memset>
   10706:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   1070a:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   1070e:	09442423          	sw	s4,136(s0)
   10712:	09342623          	sw	s3,140(s0)
   10716:	09242823          	sw	s2,144(s0)
   1071a:	08942a23          	sw	s1,148(s0)
   1071e:	08f42223          	sw	a5,132(s0)
   10722:	2381                	jal	10c62 <__retarget_lock_init_recursive>
   10724:	000207b7          	lui	a5,0x20
   10728:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   1072a:	4621                	li	a2,8
   1072c:	4581                	li	a1,0
   1072e:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   10732:	0cf42e23          	sw	a5,220(s0)
   10736:	0c042823          	sw	zero,208(s0)
   1073a:	0c042a23          	sw	zero,212(s0)
   1073e:	0c042c23          	sw	zero,216(s0)
   10742:	12042a23          	sw	zero,308(s0)
   10746:	0e042023          	sw	zero,224(s0)
   1074a:	0e042223          	sw	zero,228(s0)
   1074e:	0e042423          	sw	zero,232(s0)
   10752:	231d                	jal	10c78 <memset>
   10754:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   10758:	0f442823          	sw	s4,240(s0)
   1075c:	0f342a23          	sw	s3,244(s0)
   10760:	0f242c23          	sw	s2,248(s0)
   10764:	0e942e23          	sw	s1,252(s0)
   10768:	0ef42623          	sw	a5,236(s0)
   1076c:	4462                	lw	s0,24(sp)
   1076e:	40f2                	lw	ra,28(sp)
   10770:	44d2                	lw	s1,20(sp)
   10772:	4942                	lw	s2,16(sp)
   10774:	49b2                	lw	s3,12(sp)
   10776:	4a22                	lw	s4,8(sp)
   10778:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   1077c:	6105                	addi	sp,sp,32
   1077e:	a1d5                	j	10c62 <__retarget_lock_init_recursive>

00010780 <__sfp>:
   10780:	1101                	addi	sp,sp,-32
   10782:	c64e                	sw	s3,12(sp)
   10784:	89aa                	mv	s3,a0
   10786:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1078a:	ce06                	sw	ra,28(sp)
   1078c:	cc22                	sw	s0,24(sp)
   1078e:	ca26                	sw	s1,20(sp)
   10790:	c84a                	sw	s2,16(sp)
   10792:	29e1                	jal	10c6a <__retarget_lock_acquire_recursive>
   10794:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   10798:	cfc5                	beqz	a5,10850 <__sfp+0xd0>
   1079a:	00002917          	auipc	s2,0x2
   1079e:	87690913          	addi	s2,s2,-1930 # 12010 <__sglue>
   107a2:	54fd                	li	s1,-1
   107a4:	00492783          	lw	a5,4(s2)
   107a8:	00892403          	lw	s0,8(s2)
   107ac:	17fd                	addi	a5,a5,-1
   107ae:	0007d763          	bgez	a5,107bc <__sfp+0x3c>
   107b2:	a0ad                	j	1081c <__sfp+0x9c>
   107b4:	06840413          	addi	s0,s0,104
   107b8:	06978263          	beq	a5,s1,1081c <__sfp+0x9c>
   107bc:	00c41703          	lh	a4,12(s0)
   107c0:	17fd                	addi	a5,a5,-1
   107c2:	fb6d                	bnez	a4,107b4 <__sfp+0x34>
   107c4:	77c1                	lui	a5,0xffff0
   107c6:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   107c8:	c45c                	sw	a5,12(s0)
   107ca:	05840513          	addi	a0,s0,88
   107ce:	06042223          	sw	zero,100(s0)
   107d2:	2941                	jal	10c62 <__retarget_lock_init_recursive>
   107d4:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   107d8:	2979                	jal	10c76 <__retarget_lock_release_recursive>
   107da:	05c40513          	addi	a0,s0,92
   107de:	00042023          	sw	zero,0(s0)
   107e2:	00042423          	sw	zero,8(s0)
   107e6:	00042223          	sw	zero,4(s0)
   107ea:	00042823          	sw	zero,16(s0)
   107ee:	00042a23          	sw	zero,20(s0)
   107f2:	00042c23          	sw	zero,24(s0)
   107f6:	4621                	li	a2,8
   107f8:	4581                	li	a1,0
   107fa:	29bd                	jal	10c78 <memset>
   107fc:	02042823          	sw	zero,48(s0)
   10800:	02042a23          	sw	zero,52(s0)
   10804:	04042223          	sw	zero,68(s0)
   10808:	04042423          	sw	zero,72(s0)
   1080c:	40f2                	lw	ra,28(sp)
   1080e:	8522                	mv	a0,s0
   10810:	4462                	lw	s0,24(sp)
   10812:	44d2                	lw	s1,20(sp)
   10814:	4942                	lw	s2,16(sp)
   10816:	49b2                	lw	s3,12(sp)
   10818:	6105                	addi	sp,sp,32
   1081a:	8082                	ret
   1081c:	00092403          	lw	s0,0(s2)
   10820:	c019                	beqz	s0,10826 <__sfp+0xa6>
   10822:	8922                	mv	s2,s0
   10824:	b741                	j	107a4 <__sfp+0x24>
   10826:	1ac00593          	li	a1,428
   1082a:	854e                	mv	a0,s3
   1082c:	155000ef          	jal	11180 <_malloc_r>
   10830:	842a                	mv	s0,a0
   10832:	c10d                	beqz	a0,10854 <__sfp+0xd4>
   10834:	4791                	li	a5,4
   10836:	0531                	addi	a0,a0,12
   10838:	00042023          	sw	zero,0(s0)
   1083c:	c05c                	sw	a5,4(s0)
   1083e:	c408                	sw	a0,8(s0)
   10840:	1a000613          	li	a2,416
   10844:	4581                	li	a1,0
   10846:	290d                	jal	10c78 <memset>
   10848:	00892023          	sw	s0,0(s2)
   1084c:	8922                	mv	s2,s0
   1084e:	bf99                	j	107a4 <__sfp+0x24>
   10850:	3531                	jal	1065c <global_stdio_init.part.0>
   10852:	b7a1                	j	1079a <__sfp+0x1a>
   10854:	00092023          	sw	zero,0(s2)
   10858:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1085c:	2929                	jal	10c76 <__retarget_lock_release_recursive>
   1085e:	47b1                	li	a5,12
   10860:	00f9a023          	sw	a5,0(s3)
   10864:	b765                	j	1080c <__sfp+0x8c>

00010866 <__sinit>:
   10866:	1141                	addi	sp,sp,-16
   10868:	c422                	sw	s0,8(sp)
   1086a:	842a                	mv	s0,a0
   1086c:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10870:	c606                	sw	ra,12(sp)
   10872:	2ee5                	jal	10c6a <__retarget_lock_acquire_recursive>
   10874:	585c                	lw	a5,52(s0)
   10876:	eb89                	bnez	a5,10888 <__sinit+0x22>
   10878:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   1087c:	00000717          	auipc	a4,0x0
   10880:	d5470713          	addi	a4,a4,-684 # 105d0 <cleanup_stdio>
   10884:	d858                	sw	a4,52(s0)
   10886:	c799                	beqz	a5,10894 <__sinit+0x2e>
   10888:	4422                	lw	s0,8(sp)
   1088a:	40b2                	lw	ra,12(sp)
   1088c:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10890:	0141                	addi	sp,sp,16
   10892:	a6d5                	j	10c76 <__retarget_lock_release_recursive>
   10894:	33e1                	jal	1065c <global_stdio_init.part.0>
   10896:	4422                	lw	s0,8(sp)
   10898:	40b2                	lw	ra,12(sp)
   1089a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1089e:	0141                	addi	sp,sp,16
   108a0:	aed9                	j	10c76 <__retarget_lock_release_recursive>

000108a2 <__sfp_lock_acquire>:
   108a2:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108a6:	a6d1                	j	10c6a <__retarget_lock_acquire_recursive>

000108a8 <__sfp_lock_release>:
   108a8:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108ac:	a6e9                	j	10c76 <__retarget_lock_release_recursive>

000108ae <__fp_lock_all>:
   108ae:	1141                	addi	sp,sp,-16
   108b0:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108b4:	c606                	sw	ra,12(sp)
   108b6:	2e55                	jal	10c6a <__retarget_lock_acquire_recursive>
   108b8:	40b2                	lw	ra,12(sp)
   108ba:	00001617          	auipc	a2,0x1
   108be:	75660613          	addi	a2,a2,1878 # 12010 <__sglue>
   108c2:	00000597          	auipc	a1,0x0
   108c6:	d5258593          	addi	a1,a1,-686 # 10614 <__fp_lock>
   108ca:	4501                	li	a0,0
   108cc:	0141                	addi	sp,sp,16
   108ce:	a015                	j	108f2 <_fwalk_sglue>

000108d0 <__fp_unlock_all>:
   108d0:	1141                	addi	sp,sp,-16
   108d2:	00001617          	auipc	a2,0x1
   108d6:	73e60613          	addi	a2,a2,1854 # 12010 <__sglue>
   108da:	00000597          	auipc	a1,0x0
   108de:	d5e58593          	addi	a1,a1,-674 # 10638 <__fp_unlock>
   108e2:	4501                	li	a0,0
   108e4:	c606                	sw	ra,12(sp)
   108e6:	2031                	jal	108f2 <_fwalk_sglue>
   108e8:	40b2                	lw	ra,12(sp)
   108ea:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   108ee:	0141                	addi	sp,sp,16
   108f0:	a659                	j	10c76 <__retarget_lock_release_recursive>

000108f2 <_fwalk_sglue>:
   108f2:	7179                	addi	sp,sp,-48
   108f4:	d04a                	sw	s2,32(sp)
   108f6:	ce4e                	sw	s3,28(sp)
   108f8:	cc52                	sw	s4,24(sp)
   108fa:	ca56                	sw	s5,20(sp)
   108fc:	c85a                	sw	s6,16(sp)
   108fe:	c65e                	sw	s7,12(sp)
   10900:	d606                	sw	ra,44(sp)
   10902:	d422                	sw	s0,40(sp)
   10904:	d226                	sw	s1,36(sp)
   10906:	8b2a                	mv	s6,a0
   10908:	8bae                	mv	s7,a1
   1090a:	8ab2                	mv	s5,a2
   1090c:	4a01                	li	s4,0
   1090e:	4985                	li	s3,1
   10910:	597d                	li	s2,-1
   10912:	004aa483          	lw	s1,4(s5)
   10916:	008aa403          	lw	s0,8(s5)
   1091a:	14fd                	addi	s1,s1,-1
   1091c:	0204c463          	bltz	s1,10944 <_fwalk_sglue+0x52>
   10920:	00c45783          	lhu	a5,12(s0)
   10924:	00f9fb63          	bgeu	s3,a5,1093a <_fwalk_sglue+0x48>
   10928:	00e41783          	lh	a5,14(s0)
   1092c:	85a2                	mv	a1,s0
   1092e:	855a                	mv	a0,s6
   10930:	01278563          	beq	a5,s2,1093a <_fwalk_sglue+0x48>
   10934:	9b82                	jalr	s7
   10936:	00aa6a33          	or	s4,s4,a0
   1093a:	14fd                	addi	s1,s1,-1
   1093c:	06840413          	addi	s0,s0,104
   10940:	ff2490e3          	bne	s1,s2,10920 <_fwalk_sglue+0x2e>
   10944:	000aaa83          	lw	s5,0(s5)
   10948:	fc0a95e3          	bnez	s5,10912 <_fwalk_sglue+0x20>
   1094c:	50b2                	lw	ra,44(sp)
   1094e:	5422                	lw	s0,40(sp)
   10950:	5492                	lw	s1,36(sp)
   10952:	5902                	lw	s2,32(sp)
   10954:	49f2                	lw	s3,28(sp)
   10956:	4ad2                	lw	s5,20(sp)
   10958:	4b42                	lw	s6,16(sp)
   1095a:	4bb2                	lw	s7,12(sp)
   1095c:	8552                	mv	a0,s4
   1095e:	4a62                	lw	s4,24(sp)
   10960:	6145                	addi	sp,sp,48
   10962:	8082                	ret

00010964 <__sread>:
   10964:	1141                	addi	sp,sp,-16
   10966:	c422                	sw	s0,8(sp)
   10968:	842e                	mv	s0,a1
   1096a:	00e59583          	lh	a1,14(a1)
   1096e:	c606                	sw	ra,12(sp)
   10970:	22c9                	jal	10b32 <_read_r>
   10972:	00054963          	bltz	a0,10984 <__sread+0x20>
   10976:	483c                	lw	a5,80(s0)
   10978:	40b2                	lw	ra,12(sp)
   1097a:	97aa                	add	a5,a5,a0
   1097c:	c83c                	sw	a5,80(s0)
   1097e:	4422                	lw	s0,8(sp)
   10980:	0141                	addi	sp,sp,16
   10982:	8082                	ret
   10984:	00c45783          	lhu	a5,12(s0)
   10988:	777d                	lui	a4,0xfffff
   1098a:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   1098c:	8ff9                	and	a5,a5,a4
   1098e:	40b2                	lw	ra,12(sp)
   10990:	00f41623          	sh	a5,12(s0)
   10994:	4422                	lw	s0,8(sp)
   10996:	0141                	addi	sp,sp,16
   10998:	8082                	ret

0001099a <__seofread>:
   1099a:	4501                	li	a0,0
   1099c:	8082                	ret

0001099e <__swrite>:
   1099e:	00c59783          	lh	a5,12(a1)
   109a2:	1101                	addi	sp,sp,-32
   109a4:	cc22                	sw	s0,24(sp)
   109a6:	ca26                	sw	s1,20(sp)
   109a8:	c84a                	sw	s2,16(sp)
   109aa:	c64e                	sw	s3,12(sp)
   109ac:	ce06                	sw	ra,28(sp)
   109ae:	1007f713          	andi	a4,a5,256
   109b2:	842e                	mv	s0,a1
   109b4:	8932                	mv	s2,a2
   109b6:	89b6                	mv	s3,a3
   109b8:	84aa                	mv	s1,a0
   109ba:	e315                	bnez	a4,109de <__swrite+0x40>
   109bc:	777d                	lui	a4,0xfffff
   109be:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   109c0:	8ff9                	and	a5,a5,a4
   109c2:	00e41583          	lh	a1,14(s0)
   109c6:	00f41623          	sh	a5,12(s0)
   109ca:	4462                	lw	s0,24(sp)
   109cc:	40f2                	lw	ra,28(sp)
   109ce:	86ce                	mv	a3,s3
   109d0:	864a                	mv	a2,s2
   109d2:	49b2                	lw	s3,12(sp)
   109d4:	4942                	lw	s2,16(sp)
   109d6:	8526                	mv	a0,s1
   109d8:	44d2                	lw	s1,20(sp)
   109da:	6105                	addi	sp,sp,32
   109dc:	aa71                	j	10b78 <_write_r>
   109de:	00e59583          	lh	a1,14(a1)
   109e2:	4689                	li	a3,2
   109e4:	4601                	li	a2,0
   109e6:	2219                	jal	10aec <_lseek_r>
   109e8:	00c41783          	lh	a5,12(s0)
   109ec:	bfc1                	j	109bc <__swrite+0x1e>

000109ee <__sseek>:
   109ee:	1141                	addi	sp,sp,-16
   109f0:	c422                	sw	s0,8(sp)
   109f2:	842e                	mv	s0,a1
   109f4:	00e59583          	lh	a1,14(a1)
   109f8:	c606                	sw	ra,12(sp)
   109fa:	28cd                	jal	10aec <_lseek_r>
   109fc:	577d                	li	a4,-1
   109fe:	00c41783          	lh	a5,12(s0)
   10a02:	00e50b63          	beq	a0,a4,10a18 <__sseek+0x2a>
   10a06:	6705                	lui	a4,0x1
   10a08:	8fd9                	or	a5,a5,a4
   10a0a:	40b2                	lw	ra,12(sp)
   10a0c:	c828                	sw	a0,80(s0)
   10a0e:	00f41623          	sh	a5,12(s0)
   10a12:	4422                	lw	s0,8(sp)
   10a14:	0141                	addi	sp,sp,16
   10a16:	8082                	ret
   10a18:	777d                	lui	a4,0xfffff
   10a1a:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10a1c:	8ff9                	and	a5,a5,a4
   10a1e:	40b2                	lw	ra,12(sp)
   10a20:	00f41623          	sh	a5,12(s0)
   10a24:	4422                	lw	s0,8(sp)
   10a26:	0141                	addi	sp,sp,16
   10a28:	8082                	ret

00010a2a <__sclose>:
   10a2a:	00e59583          	lh	a1,14(a1)
   10a2e:	a009                	j	10a30 <_close_r>

00010a30 <_close_r>:
   10a30:	1141                	addi	sp,sp,-16
   10a32:	c422                	sw	s0,8(sp)
   10a34:	842a                	mv	s0,a0
   10a36:	852e                	mv	a0,a1
   10a38:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10a3c:	c606                	sw	ra,12(sp)
   10a3e:	0ee010ef          	jal	11b2c <_close>
   10a42:	57fd                	li	a5,-1
   10a44:	00f50663          	beq	a0,a5,10a50 <_close_r+0x20>
   10a48:	40b2                	lw	ra,12(sp)
   10a4a:	4422                	lw	s0,8(sp)
   10a4c:	0141                	addi	sp,sp,16
   10a4e:	8082                	ret
   10a50:	c226                	sw	s1,4(sp)
   10a52:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10a56:	409c                	lw	a5,0(s1)
   10a58:	c799                	beqz	a5,10a66 <_close_r+0x36>
   10a5a:	40b2                	lw	ra,12(sp)
   10a5c:	c01c                	sw	a5,0(s0)
   10a5e:	4422                	lw	s0,8(sp)
   10a60:	4492                	lw	s1,4(sp)
   10a62:	0141                	addi	sp,sp,16
   10a64:	8082                	ret
   10a66:	40b2                	lw	ra,12(sp)
   10a68:	4422                	lw	s0,8(sp)
   10a6a:	4492                	lw	s1,4(sp)
   10a6c:	0141                	addi	sp,sp,16
   10a6e:	8082                	ret

00010a70 <_reclaim_reent>:
   10a70:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   10a74:	06a78b63          	beq	a5,a0,10aea <_reclaim_reent+0x7a>
   10a78:	416c                	lw	a1,68(a0)
   10a7a:	1101                	addi	sp,sp,-32
   10a7c:	ca26                	sw	s1,20(sp)
   10a7e:	ce06                	sw	ra,28(sp)
   10a80:	cc22                	sw	s0,24(sp)
   10a82:	84aa                	mv	s1,a0
   10a84:	c59d                	beqz	a1,10ab2 <_reclaim_reent+0x42>
   10a86:	c84a                	sw	s2,16(sp)
   10a88:	c64e                	sw	s3,12(sp)
   10a8a:	4901                	li	s2,0
   10a8c:	08000993          	li	s3,128
   10a90:	012587b3          	add	a5,a1,s2
   10a94:	4380                	lw	s0,0(a5)
   10a96:	c419                	beqz	s0,10aa4 <_reclaim_reent+0x34>
   10a98:	85a2                	mv	a1,s0
   10a9a:	4000                	lw	s0,0(s0)
   10a9c:	8526                	mv	a0,s1
   10a9e:	21d1                	jal	10f62 <_free_r>
   10aa0:	fc65                	bnez	s0,10a98 <_reclaim_reent+0x28>
   10aa2:	40ec                	lw	a1,68(s1)
   10aa4:	0911                	addi	s2,s2,4
   10aa6:	ff3915e3          	bne	s2,s3,10a90 <_reclaim_reent+0x20>
   10aaa:	8526                	mv	a0,s1
   10aac:	295d                	jal	10f62 <_free_r>
   10aae:	4942                	lw	s2,16(sp)
   10ab0:	49b2                	lw	s3,12(sp)
   10ab2:	5c8c                	lw	a1,56(s1)
   10ab4:	c199                	beqz	a1,10aba <_reclaim_reent+0x4a>
   10ab6:	8526                	mv	a0,s1
   10ab8:	216d                	jal	10f62 <_free_r>
   10aba:	40a0                	lw	s0,64(s1)
   10abc:	c411                	beqz	s0,10ac8 <_reclaim_reent+0x58>
   10abe:	85a2                	mv	a1,s0
   10ac0:	4000                	lw	s0,0(s0)
   10ac2:	8526                	mv	a0,s1
   10ac4:	2979                	jal	10f62 <_free_r>
   10ac6:	fc65                	bnez	s0,10abe <_reclaim_reent+0x4e>
   10ac8:	44ec                	lw	a1,76(s1)
   10aca:	c199                	beqz	a1,10ad0 <_reclaim_reent+0x60>
   10acc:	8526                	mv	a0,s1
   10ace:	2951                	jal	10f62 <_free_r>
   10ad0:	58dc                	lw	a5,52(s1)
   10ad2:	c799                	beqz	a5,10ae0 <_reclaim_reent+0x70>
   10ad4:	4462                	lw	s0,24(sp)
   10ad6:	40f2                	lw	ra,28(sp)
   10ad8:	8526                	mv	a0,s1
   10ada:	44d2                	lw	s1,20(sp)
   10adc:	6105                	addi	sp,sp,32
   10ade:	8782                	jr	a5
   10ae0:	40f2                	lw	ra,28(sp)
   10ae2:	4462                	lw	s0,24(sp)
   10ae4:	44d2                	lw	s1,20(sp)
   10ae6:	6105                	addi	sp,sp,32
   10ae8:	8082                	ret
   10aea:	8082                	ret

00010aec <_lseek_r>:
   10aec:	1141                	addi	sp,sp,-16
   10aee:	872e                	mv	a4,a1
   10af0:	c422                	sw	s0,8(sp)
   10af2:	85b2                	mv	a1,a2
   10af4:	842a                	mv	s0,a0
   10af6:	8636                	mv	a2,a3
   10af8:	853a                	mv	a0,a4
   10afa:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10afe:	c606                	sw	ra,12(sp)
   10b00:	076010ef          	jal	11b76 <_lseek>
   10b04:	57fd                	li	a5,-1
   10b06:	00f50663          	beq	a0,a5,10b12 <_lseek_r+0x26>
   10b0a:	40b2                	lw	ra,12(sp)
   10b0c:	4422                	lw	s0,8(sp)
   10b0e:	0141                	addi	sp,sp,16
   10b10:	8082                	ret
   10b12:	c226                	sw	s1,4(sp)
   10b14:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10b18:	409c                	lw	a5,0(s1)
   10b1a:	c799                	beqz	a5,10b28 <_lseek_r+0x3c>
   10b1c:	40b2                	lw	ra,12(sp)
   10b1e:	c01c                	sw	a5,0(s0)
   10b20:	4422                	lw	s0,8(sp)
   10b22:	4492                	lw	s1,4(sp)
   10b24:	0141                	addi	sp,sp,16
   10b26:	8082                	ret
   10b28:	40b2                	lw	ra,12(sp)
   10b2a:	4422                	lw	s0,8(sp)
   10b2c:	4492                	lw	s1,4(sp)
   10b2e:	0141                	addi	sp,sp,16
   10b30:	8082                	ret

00010b32 <_read_r>:
   10b32:	1141                	addi	sp,sp,-16
   10b34:	872e                	mv	a4,a1
   10b36:	c422                	sw	s0,8(sp)
   10b38:	85b2                	mv	a1,a2
   10b3a:	842a                	mv	s0,a0
   10b3c:	8636                	mv	a2,a3
   10b3e:	853a                	mv	a0,a4
   10b40:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b44:	c606                	sw	ra,12(sp)
   10b46:	05a010ef          	jal	11ba0 <_read>
   10b4a:	57fd                	li	a5,-1
   10b4c:	00f50663          	beq	a0,a5,10b58 <_read_r+0x26>
   10b50:	40b2                	lw	ra,12(sp)
   10b52:	4422                	lw	s0,8(sp)
   10b54:	0141                	addi	sp,sp,16
   10b56:	8082                	ret
   10b58:	c226                	sw	s1,4(sp)
   10b5a:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10b5e:	409c                	lw	a5,0(s1)
   10b60:	c799                	beqz	a5,10b6e <_read_r+0x3c>
   10b62:	40b2                	lw	ra,12(sp)
   10b64:	c01c                	sw	a5,0(s0)
   10b66:	4422                	lw	s0,8(sp)
   10b68:	4492                	lw	s1,4(sp)
   10b6a:	0141                	addi	sp,sp,16
   10b6c:	8082                	ret
   10b6e:	40b2                	lw	ra,12(sp)
   10b70:	4422                	lw	s0,8(sp)
   10b72:	4492                	lw	s1,4(sp)
   10b74:	0141                	addi	sp,sp,16
   10b76:	8082                	ret

00010b78 <_write_r>:
   10b78:	1141                	addi	sp,sp,-16
   10b7a:	872e                	mv	a4,a1
   10b7c:	c422                	sw	s0,8(sp)
   10b7e:	85b2                	mv	a1,a2
   10b80:	842a                	mv	s0,a0
   10b82:	8636                	mv	a2,a3
   10b84:	853a                	mv	a0,a4
   10b86:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b8a:	c606                	sw	ra,12(sp)
   10b8c:	08c010ef          	jal	11c18 <_write>
   10b90:	57fd                	li	a5,-1
   10b92:	00f50663          	beq	a0,a5,10b9e <_write_r+0x26>
   10b96:	40b2                	lw	ra,12(sp)
   10b98:	4422                	lw	s0,8(sp)
   10b9a:	0141                	addi	sp,sp,16
   10b9c:	8082                	ret
   10b9e:	c226                	sw	s1,4(sp)
   10ba0:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10ba4:	409c                	lw	a5,0(s1)
   10ba6:	c799                	beqz	a5,10bb4 <_write_r+0x3c>
   10ba8:	40b2                	lw	ra,12(sp)
   10baa:	c01c                	sw	a5,0(s0)
   10bac:	4422                	lw	s0,8(sp)
   10bae:	4492                	lw	s1,4(sp)
   10bb0:	0141                	addi	sp,sp,16
   10bb2:	8082                	ret
   10bb4:	40b2                	lw	ra,12(sp)
   10bb6:	4422                	lw	s0,8(sp)
   10bb8:	4492                	lw	s1,4(sp)
   10bba:	0141                	addi	sp,sp,16
   10bbc:	8082                	ret

00010bbe <__libc_init_array>:
   10bbe:	1141                	addi	sp,sp,-16
   10bc0:	c422                	sw	s0,8(sp)
   10bc2:	c04a                	sw	s2,0(sp)
   10bc4:	00001797          	auipc	a5,0x1
   10bc8:	43c78793          	addi	a5,a5,1084 # 12000 <__init_array_start>
   10bcc:	00001417          	auipc	s0,0x1
   10bd0:	43440413          	addi	s0,s0,1076 # 12000 <__init_array_start>
   10bd4:	c606                	sw	ra,12(sp)
   10bd6:	c226                	sw	s1,4(sp)
   10bd8:	40878933          	sub	s2,a5,s0
   10bdc:	00878b63          	beq	a5,s0,10bf2 <__libc_init_array+0x34>
   10be0:	40295913          	srai	s2,s2,0x2
   10be4:	4481                	li	s1,0
   10be6:	401c                	lw	a5,0(s0)
   10be8:	0485                	addi	s1,s1,1
   10bea:	0411                	addi	s0,s0,4
   10bec:	9782                	jalr	a5
   10bee:	ff24ece3          	bltu	s1,s2,10be6 <__libc_init_array+0x28>
   10bf2:	00001797          	auipc	a5,0x1
   10bf6:	41678793          	addi	a5,a5,1046 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10bfa:	00001417          	auipc	s0,0x1
   10bfe:	40640413          	addi	s0,s0,1030 # 12000 <__init_array_start>
   10c02:	40878933          	sub	s2,a5,s0
   10c06:	40295913          	srai	s2,s2,0x2
   10c0a:	00878963          	beq	a5,s0,10c1c <__libc_init_array+0x5e>
   10c0e:	4481                	li	s1,0
   10c10:	401c                	lw	a5,0(s0)
   10c12:	0485                	addi	s1,s1,1
   10c14:	0411                	addi	s0,s0,4
   10c16:	9782                	jalr	a5
   10c18:	ff24ece3          	bltu	s1,s2,10c10 <__libc_init_array+0x52>
   10c1c:	40b2                	lw	ra,12(sp)
   10c1e:	4422                	lw	s0,8(sp)
   10c20:	4492                	lw	s1,4(sp)
   10c22:	4902                	lw	s2,0(sp)
   10c24:	0141                	addi	sp,sp,16
   10c26:	8082                	ret

00010c28 <__libc_fini_array>:
   10c28:	1141                	addi	sp,sp,-16
   10c2a:	c422                	sw	s0,8(sp)
   10c2c:	00001797          	auipc	a5,0x1
   10c30:	3dc78793          	addi	a5,a5,988 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10c34:	00001417          	auipc	s0,0x1
   10c38:	3d840413          	addi	s0,s0,984 # 1200c <__fini_array_end>
   10c3c:	8c1d                	sub	s0,s0,a5
   10c3e:	c226                	sw	s1,4(sp)
   10c40:	c606                	sw	ra,12(sp)
   10c42:	40245493          	srai	s1,s0,0x2
   10c46:	c881                	beqz	s1,10c56 <__libc_fini_array+0x2e>
   10c48:	1471                	addi	s0,s0,-4
   10c4a:	943e                	add	s0,s0,a5
   10c4c:	401c                	lw	a5,0(s0)
   10c4e:	14fd                	addi	s1,s1,-1
   10c50:	1471                	addi	s0,s0,-4
   10c52:	9782                	jalr	a5
   10c54:	fce5                	bnez	s1,10c4c <__libc_fini_array+0x24>
   10c56:	40b2                	lw	ra,12(sp)
   10c58:	4422                	lw	s0,8(sp)
   10c5a:	4492                	lw	s1,4(sp)
   10c5c:	0141                	addi	sp,sp,16
   10c5e:	8082                	ret

00010c60 <__retarget_lock_init>:
   10c60:	8082                	ret

00010c62 <__retarget_lock_init_recursive>:
   10c62:	8082                	ret

00010c64 <__retarget_lock_close>:
   10c64:	8082                	ret

00010c66 <__retarget_lock_close_recursive>:
   10c66:	8082                	ret

00010c68 <__retarget_lock_acquire>:
   10c68:	8082                	ret

00010c6a <__retarget_lock_acquire_recursive>:
   10c6a:	8082                	ret

00010c6c <__retarget_lock_try_acquire>:
   10c6c:	4505                	li	a0,1
   10c6e:	8082                	ret

00010c70 <__retarget_lock_try_acquire_recursive>:
   10c70:	4505                	li	a0,1
   10c72:	8082                	ret

00010c74 <__retarget_lock_release>:
   10c74:	8082                	ret

00010c76 <__retarget_lock_release_recursive>:
   10c76:	8082                	ret

00010c78 <memset>:
   10c78:	433d                	li	t1,15
   10c7a:	872a                	mv	a4,a0
   10c7c:	02c37363          	bgeu	t1,a2,10ca2 <memset+0x2a>
   10c80:	00f77793          	andi	a5,a4,15
   10c84:	efbd                	bnez	a5,10d02 <memset+0x8a>
   10c86:	e5ad                	bnez	a1,10cf0 <memset+0x78>
   10c88:	ff067693          	andi	a3,a2,-16
   10c8c:	8a3d                	andi	a2,a2,15
   10c8e:	96ba                	add	a3,a3,a4
   10c90:	c30c                	sw	a1,0(a4)
   10c92:	c34c                	sw	a1,4(a4)
   10c94:	c70c                	sw	a1,8(a4)
   10c96:	c74c                	sw	a1,12(a4)
   10c98:	0741                	addi	a4,a4,16
   10c9a:	fed76be3          	bltu	a4,a3,10c90 <memset+0x18>
   10c9e:	e211                	bnez	a2,10ca2 <memset+0x2a>
   10ca0:	8082                	ret
   10ca2:	40c306b3          	sub	a3,t1,a2
   10ca6:	068a                	slli	a3,a3,0x2
   10ca8:	00000297          	auipc	t0,0x0
   10cac:	9696                	add	a3,a3,t0
   10cae:	00a68067          	jr	10(a3)
   10cb2:	00b70723          	sb	a1,14(a4)
   10cb6:	00b706a3          	sb	a1,13(a4)
   10cba:	00b70623          	sb	a1,12(a4)
   10cbe:	00b705a3          	sb	a1,11(a4)
   10cc2:	00b70523          	sb	a1,10(a4)
   10cc6:	00b704a3          	sb	a1,9(a4)
   10cca:	00b70423          	sb	a1,8(a4)
   10cce:	00b703a3          	sb	a1,7(a4)
   10cd2:	00b70323          	sb	a1,6(a4)
   10cd6:	00b702a3          	sb	a1,5(a4)
   10cda:	00b70223          	sb	a1,4(a4)
   10cde:	00b701a3          	sb	a1,3(a4)
   10ce2:	00b70123          	sb	a1,2(a4)
   10ce6:	00b700a3          	sb	a1,1(a4)
   10cea:	00b70023          	sb	a1,0(a4)
   10cee:	8082                	ret
   10cf0:	0ff5f593          	zext.b	a1,a1
   10cf4:	00859693          	slli	a3,a1,0x8
   10cf8:	8dd5                	or	a1,a1,a3
   10cfa:	01059693          	slli	a3,a1,0x10
   10cfe:	8dd5                	or	a1,a1,a3
   10d00:	b761                	j	10c88 <memset+0x10>
   10d02:	00279693          	slli	a3,a5,0x2
   10d06:	00000297          	auipc	t0,0x0
   10d0a:	9696                	add	a3,a3,t0
   10d0c:	8286                	mv	t0,ra
   10d0e:	fa8680e7          	jalr	-88(a3)
   10d12:	8096                	mv	ra,t0
   10d14:	17c1                	addi	a5,a5,-16
   10d16:	8f1d                	sub	a4,a4,a5
   10d18:	963e                	add	a2,a2,a5
   10d1a:	f8c374e3          	bgeu	t1,a2,10ca2 <memset+0x2a>
   10d1e:	b7a5                	j	10c86 <memset+0xe>

00010d20 <__register_exitproc>:
   10d20:	1101                	addi	sp,sp,-32
   10d22:	c84a                	sw	s2,16(sp)
   10d24:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   10d28:	cc22                	sw	s0,24(sp)
   10d2a:	842a                	mv	s0,a0
   10d2c:	00092503          	lw	a0,0(s2)
   10d30:	ca26                	sw	s1,20(sp)
   10d32:	c64e                	sw	s3,12(sp)
   10d34:	c452                	sw	s4,8(sp)
   10d36:	ce06                	sw	ra,28(sp)
   10d38:	84ae                	mv	s1,a1
   10d3a:	8a32                	mv	s4,a2
   10d3c:	89b6                	mv	s3,a3
   10d3e:	3735                	jal	10c6a <__retarget_lock_acquire_recursive>
   10d40:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   10d44:	431c                	lw	a5,0(a4)
   10d46:	cfb9                	beqz	a5,10da4 <__register_exitproc+0x84>
   10d48:	43d8                	lw	a4,4(a5)
   10d4a:	45fd                	li	a1,31
   10d4c:	00092503          	lw	a0,0(s2)
   10d50:	04e5ce63          	blt	a1,a4,10dac <__register_exitproc+0x8c>
   10d54:	00271593          	slli	a1,a4,0x2
   10d58:	ec19                	bnez	s0,10d76 <__register_exitproc+0x56>
   10d5a:	0705                	addi	a4,a4,1
   10d5c:	c3d8                	sw	a4,4(a5)
   10d5e:	97ae                	add	a5,a5,a1
   10d60:	c784                	sw	s1,8(a5)
   10d62:	3f11                	jal	10c76 <__retarget_lock_release_recursive>
   10d64:	4501                	li	a0,0
   10d66:	40f2                	lw	ra,28(sp)
   10d68:	4462                	lw	s0,24(sp)
   10d6a:	44d2                	lw	s1,20(sp)
   10d6c:	4942                	lw	s2,16(sp)
   10d6e:	49b2                	lw	s3,12(sp)
   10d70:	4a22                	lw	s4,8(sp)
   10d72:	6105                	addi	sp,sp,32
   10d74:	8082                	ret
   10d76:	00b78833          	add	a6,a5,a1
   10d7a:	09482423          	sw	s4,136(a6)
   10d7e:	1887a683          	lw	a3,392(a5)
   10d82:	4605                	li	a2,1
   10d84:	00e61633          	sll	a2,a2,a4
   10d88:	8ed1                	or	a3,a3,a2
   10d8a:	18d7a423          	sw	a3,392(a5)
   10d8e:	11382423          	sw	s3,264(a6)
   10d92:	4689                	li	a3,2
   10d94:	fcd413e3          	bne	s0,a3,10d5a <__register_exitproc+0x3a>
   10d98:	18c7a683          	lw	a3,396(a5)
   10d9c:	8ed1                	or	a3,a3,a2
   10d9e:	18d7a623          	sw	a3,396(a5)
   10da2:	bf65                	j	10d5a <__register_exitproc+0x3a>
   10da4:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   10da8:	c31c                	sw	a5,0(a4)
   10daa:	bf79                	j	10d48 <__register_exitproc+0x28>
   10dac:	35e9                	jal	10c76 <__retarget_lock_release_recursive>
   10dae:	557d                	li	a0,-1
   10db0:	bf5d                	j	10d66 <__register_exitproc+0x46>

00010db2 <__call_exitprocs>:
   10db2:	7179                	addi	sp,sp,-48
   10db4:	c65e                	sw	s7,12(sp)
   10db6:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   10dba:	c85a                	sw	s6,16(sp)
   10dbc:	8b2a                	mv	s6,a0
   10dbe:	000ba503          	lw	a0,0(s7)
   10dc2:	cc52                	sw	s4,24(sp)
   10dc4:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   10dc8:	d04a                	sw	s2,32(sp)
   10dca:	c462                	sw	s8,8(sp)
   10dcc:	d606                	sw	ra,44(sp)
   10dce:	8c2e                	mv	s8,a1
   10dd0:	3d69                	jal	10c6a <__retarget_lock_acquire_recursive>
   10dd2:	000a2903          	lw	s2,0(s4)
   10dd6:	04090063          	beqz	s2,10e16 <__call_exitprocs+0x64>
   10dda:	ce4e                	sw	s3,28(sp)
   10ddc:	ca56                	sw	s5,20(sp)
   10dde:	d422                	sw	s0,40(sp)
   10de0:	d226                	sw	s1,36(sp)
   10de2:	c266                	sw	s9,4(sp)
   10de4:	59fd                	li	s3,-1
   10de6:	4a85                	li	s5,1
   10de8:	00492483          	lw	s1,4(s2)
   10dec:	fff48413          	addi	s0,s1,-1
   10df0:	00044e63          	bltz	s0,10e0c <__call_exitprocs+0x5a>
   10df4:	048a                	slli	s1,s1,0x2
   10df6:	94ca                	add	s1,s1,s2
   10df8:	020c0963          	beqz	s8,10e2a <__call_exitprocs+0x78>
   10dfc:	1044a783          	lw	a5,260(s1)
   10e00:	03878563          	beq	a5,s8,10e2a <__call_exitprocs+0x78>
   10e04:	147d                	addi	s0,s0,-1
   10e06:	14f1                	addi	s1,s1,-4
   10e08:	ff341ae3          	bne	s0,s3,10dfc <__call_exitprocs+0x4a>
   10e0c:	5422                	lw	s0,40(sp)
   10e0e:	5492                	lw	s1,36(sp)
   10e10:	49f2                	lw	s3,28(sp)
   10e12:	4ad2                	lw	s5,20(sp)
   10e14:	4c92                	lw	s9,4(sp)
   10e16:	000ba503          	lw	a0,0(s7)
   10e1a:	50b2                	lw	ra,44(sp)
   10e1c:	5902                	lw	s2,32(sp)
   10e1e:	4a62                	lw	s4,24(sp)
   10e20:	4b42                	lw	s6,16(sp)
   10e22:	4bb2                	lw	s7,12(sp)
   10e24:	4c22                	lw	s8,8(sp)
   10e26:	6145                	addi	sp,sp,48
   10e28:	b5b9                	j	10c76 <__retarget_lock_release_recursive>
   10e2a:	00492783          	lw	a5,4(s2)
   10e2e:	40d4                	lw	a3,4(s1)
   10e30:	17fd                	addi	a5,a5,-1
   10e32:	04878c63          	beq	a5,s0,10e8a <__call_exitprocs+0xd8>
   10e36:	0004a223          	sw	zero,4(s1)
   10e3a:	c295                	beqz	a3,10e5e <__call_exitprocs+0xac>
   10e3c:	18892783          	lw	a5,392(s2)
   10e40:	008a9733          	sll	a4,s5,s0
   10e44:	00492c83          	lw	s9,4(s2)
   10e48:	8ff9                	and	a5,a5,a4
   10e4a:	ef99                	bnez	a5,10e68 <__call_exitprocs+0xb6>
   10e4c:	9682                	jalr	a3
   10e4e:	00492703          	lw	a4,4(s2)
   10e52:	000a2783          	lw	a5,0(s4)
   10e56:	03971763          	bne	a4,s9,10e84 <__call_exitprocs+0xd2>
   10e5a:	03279563          	bne	a5,s2,10e84 <__call_exitprocs+0xd2>
   10e5e:	147d                	addi	s0,s0,-1
   10e60:	14f1                	addi	s1,s1,-4
   10e62:	f9341be3          	bne	s0,s3,10df8 <__call_exitprocs+0x46>
   10e66:	b75d                	j	10e0c <__call_exitprocs+0x5a>
   10e68:	18c92783          	lw	a5,396(s2)
   10e6c:	0844a583          	lw	a1,132(s1)
   10e70:	8f7d                	and	a4,a4,a5
   10e72:	ef19                	bnez	a4,10e90 <__call_exitprocs+0xde>
   10e74:	855a                	mv	a0,s6
   10e76:	9682                	jalr	a3
   10e78:	00492703          	lw	a4,4(s2)
   10e7c:	000a2783          	lw	a5,0(s4)
   10e80:	fd970de3          	beq	a4,s9,10e5a <__call_exitprocs+0xa8>
   10e84:	d7c1                	beqz	a5,10e0c <__call_exitprocs+0x5a>
   10e86:	893e                	mv	s2,a5
   10e88:	b785                	j	10de8 <__call_exitprocs+0x36>
   10e8a:	00892223          	sw	s0,4(s2)
   10e8e:	b775                	j	10e3a <__call_exitprocs+0x88>
   10e90:	852e                	mv	a0,a1
   10e92:	9682                	jalr	a3
   10e94:	bf6d                	j	10e4e <__call_exitprocs+0x9c>

00010e96 <_malloc_trim_r>:
   10e96:	1101                	addi	sp,sp,-32
   10e98:	cc22                	sw	s0,24(sp)
   10e9a:	ca26                	sw	s1,20(sp)
   10e9c:	c84a                	sw	s2,16(sp)
   10e9e:	c64e                	sw	s3,12(sp)
   10ea0:	c452                	sw	s4,8(sp)
   10ea2:	89ae                	mv	s3,a1
   10ea4:	ce06                	sw	ra,28(sp)
   10ea6:	892a                	mv	s2,a0
   10ea8:	00001a17          	auipc	s4,0x1
   10eac:	298a0a13          	addi	s4,s4,664 # 12140 <__malloc_av_>
   10eb0:	0a3000ef          	jal	11752 <__malloc_lock>
   10eb4:	008a2783          	lw	a5,8(s4)
   10eb8:	6405                	lui	s0,0x1
   10eba:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   10ebc:	43c4                	lw	s1,4(a5)
   10ebe:	6785                	lui	a5,0x1
   10ec0:	98f1                	andi	s1,s1,-4
   10ec2:	9426                	add	s0,s0,s1
   10ec4:	41340433          	sub	s0,s0,s3
   10ec8:	8031                	srli	s0,s0,0xc
   10eca:	147d                	addi	s0,s0,-1
   10ecc:	0432                	slli	s0,s0,0xc
   10ece:	00f44b63          	blt	s0,a5,10ee4 <_malloc_trim_r+0x4e>
   10ed2:	4581                	li	a1,0
   10ed4:	854a                	mv	a0,s2
   10ed6:	419000ef          	jal	11aee <_sbrk_r>
   10eda:	008a2783          	lw	a5,8(s4)
   10ede:	97a6                	add	a5,a5,s1
   10ee0:	00f50e63          	beq	a0,a5,10efc <_malloc_trim_r+0x66>
   10ee4:	854a                	mv	a0,s2
   10ee6:	075000ef          	jal	1175a <__malloc_unlock>
   10eea:	40f2                	lw	ra,28(sp)
   10eec:	4462                	lw	s0,24(sp)
   10eee:	44d2                	lw	s1,20(sp)
   10ef0:	4942                	lw	s2,16(sp)
   10ef2:	49b2                	lw	s3,12(sp)
   10ef4:	4a22                	lw	s4,8(sp)
   10ef6:	4501                	li	a0,0
   10ef8:	6105                	addi	sp,sp,32
   10efa:	8082                	ret
   10efc:	408005b3          	neg	a1,s0
   10f00:	854a                	mv	a0,s2
   10f02:	3ed000ef          	jal	11aee <_sbrk_r>
   10f06:	57fd                	li	a5,-1
   10f08:	02f50963          	beq	a0,a5,10f3a <_malloc_trim_r+0xa4>
   10f0c:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   10f10:	008a2683          	lw	a3,8(s4)
   10f14:	431c                	lw	a5,0(a4)
   10f16:	8c81                	sub	s1,s1,s0
   10f18:	0014e493          	ori	s1,s1,1
   10f1c:	854a                	mv	a0,s2
   10f1e:	8f81                	sub	a5,a5,s0
   10f20:	c2c4                	sw	s1,4(a3)
   10f22:	c31c                	sw	a5,0(a4)
   10f24:	037000ef          	jal	1175a <__malloc_unlock>
   10f28:	40f2                	lw	ra,28(sp)
   10f2a:	4462                	lw	s0,24(sp)
   10f2c:	44d2                	lw	s1,20(sp)
   10f2e:	4942                	lw	s2,16(sp)
   10f30:	49b2                	lw	s3,12(sp)
   10f32:	4a22                	lw	s4,8(sp)
   10f34:	4505                	li	a0,1
   10f36:	6105                	addi	sp,sp,32
   10f38:	8082                	ret
   10f3a:	4581                	li	a1,0
   10f3c:	854a                	mv	a0,s2
   10f3e:	3b1000ef          	jal	11aee <_sbrk_r>
   10f42:	008a2703          	lw	a4,8(s4)
   10f46:	46bd                	li	a3,15
   10f48:	40e507b3          	sub	a5,a0,a4
   10f4c:	f8f6dce3          	bge	a3,a5,10ee4 <_malloc_trim_r+0x4e>
   10f50:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   10f54:	0017e793          	ori	a5,a5,1
   10f58:	c35c                	sw	a5,4(a4)
   10f5a:	8d15                	sub	a0,a0,a3
   10f5c:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   10f60:	b751                	j	10ee4 <_malloc_trim_r+0x4e>

00010f62 <_free_r>:
   10f62:	cdf1                	beqz	a1,1103e <_free_r+0xdc>
   10f64:	1141                	addi	sp,sp,-16
   10f66:	c422                	sw	s0,8(sp)
   10f68:	c226                	sw	s1,4(sp)
   10f6a:	842e                	mv	s0,a1
   10f6c:	84aa                	mv	s1,a0
   10f6e:	c606                	sw	ra,12(sp)
   10f70:	7e2000ef          	jal	11752 <__malloc_lock>
   10f74:	ffc42583          	lw	a1,-4(s0)
   10f78:	ff840713          	addi	a4,s0,-8
   10f7c:	00001817          	auipc	a6,0x1
   10f80:	1c480813          	addi	a6,a6,452 # 12140 <__malloc_av_>
   10f84:	ffe5f793          	andi	a5,a1,-2
   10f88:	00f70633          	add	a2,a4,a5
   10f8c:	4254                	lw	a3,4(a2)
   10f8e:	00882503          	lw	a0,8(a6)
   10f92:	0015f893          	andi	a7,a1,1
   10f96:	9af1                	andi	a3,a3,-4
   10f98:	10c50d63          	beq	a0,a2,110b2 <_free_r+0x150>
   10f9c:	c254                	sw	a3,4(a2)
   10f9e:	00d60533          	add	a0,a2,a3
   10fa2:	4148                	lw	a0,4(a0)
   10fa4:	8905                	andi	a0,a0,1
   10fa6:	06089963          	bnez	a7,11018 <_free_r+0xb6>
   10faa:	ff842303          	lw	t1,-8(s0)
   10fae:	00001897          	auipc	a7,0x1
   10fb2:	19a88893          	addi	a7,a7,410 # 12148 <__malloc_av_+0x8>
   10fb6:	40670733          	sub	a4,a4,t1
   10fba:	470c                	lw	a1,8(a4)
   10fbc:	979a                	add	a5,a5,t1
   10fbe:	0d158e63          	beq	a1,a7,1109a <_free_r+0x138>
   10fc2:	00c72303          	lw	t1,12(a4)
   10fc6:	0065a623          	sw	t1,12(a1)
   10fca:	00b32423          	sw	a1,8(t1)
   10fce:	10050b63          	beqz	a0,110e4 <_free_r+0x182>
   10fd2:	0017e693          	ori	a3,a5,1
   10fd6:	c354                	sw	a3,4(a4)
   10fd8:	c21c                	sw	a5,0(a2)
   10fda:	1ff00693          	li	a3,511
   10fde:	06f6ea63          	bltu	a3,a5,11052 <_free_r+0xf0>
   10fe2:	ff87f693          	andi	a3,a5,-8
   10fe6:	06a1                	addi	a3,a3,8
   10fe8:	00482583          	lw	a1,4(a6)
   10fec:	96c2                	add	a3,a3,a6
   10fee:	4290                	lw	a2,0(a3)
   10ff0:	0057d513          	srli	a0,a5,0x5
   10ff4:	4785                	li	a5,1
   10ff6:	00a797b3          	sll	a5,a5,a0
   10ffa:	8fcd                	or	a5,a5,a1
   10ffc:	ff868593          	addi	a1,a3,-8
   11000:	c710                	sw	a2,8(a4)
   11002:	c74c                	sw	a1,12(a4)
   11004:	00f82223          	sw	a5,4(a6)
   11008:	c298                	sw	a4,0(a3)
   1100a:	c658                	sw	a4,12(a2)
   1100c:	4422                	lw	s0,8(sp)
   1100e:	40b2                	lw	ra,12(sp)
   11010:	8526                	mv	a0,s1
   11012:	4492                	lw	s1,4(sp)
   11014:	0141                	addi	sp,sp,16
   11016:	a791                	j	1175a <__malloc_unlock>
   11018:	e505                	bnez	a0,11040 <_free_r+0xde>
   1101a:	97b6                	add	a5,a5,a3
   1101c:	00001897          	auipc	a7,0x1
   11020:	12c88893          	addi	a7,a7,300 # 12148 <__malloc_av_+0x8>
   11024:	4614                	lw	a3,8(a2)
   11026:	0017e513          	ori	a0,a5,1
   1102a:	00f705b3          	add	a1,a4,a5
   1102e:	0f168763          	beq	a3,a7,1111c <_free_r+0x1ba>
   11032:	4650                	lw	a2,12(a2)
   11034:	c6d0                	sw	a2,12(a3)
   11036:	c614                	sw	a3,8(a2)
   11038:	c348                	sw	a0,4(a4)
   1103a:	c19c                	sw	a5,0(a1)
   1103c:	bf79                	j	10fda <_free_r+0x78>
   1103e:	8082                	ret
   11040:	0015e593          	ori	a1,a1,1
   11044:	feb42e23          	sw	a1,-4(s0)
   11048:	c21c                	sw	a5,0(a2)
   1104a:	1ff00693          	li	a3,511
   1104e:	f8f6fae3          	bgeu	a3,a5,10fe2 <_free_r+0x80>
   11052:	0097d693          	srli	a3,a5,0x9
   11056:	4611                	li	a2,4
   11058:	08d66863          	bltu	a2,a3,110e8 <_free_r+0x186>
   1105c:	0067d693          	srli	a3,a5,0x6
   11060:	03968593          	addi	a1,a3,57
   11064:	058e                	slli	a1,a1,0x3
   11066:	03868613          	addi	a2,a3,56
   1106a:	95c2                	add	a1,a1,a6
   1106c:	4194                	lw	a3,0(a1)
   1106e:	15e1                	addi	a1,a1,-8
   11070:	00d59663          	bne	a1,a3,1107c <_free_r+0x11a>
   11074:	a87d                	j	11132 <_free_r+0x1d0>
   11076:	4694                	lw	a3,8(a3)
   11078:	00d58663          	beq	a1,a3,11084 <_free_r+0x122>
   1107c:	42d0                	lw	a2,4(a3)
   1107e:	9a71                	andi	a2,a2,-4
   11080:	fec7ebe3          	bltu	a5,a2,11076 <_free_r+0x114>
   11084:	46cc                	lw	a1,12(a3)
   11086:	c74c                	sw	a1,12(a4)
   11088:	c714                	sw	a3,8(a4)
   1108a:	4422                	lw	s0,8(sp)
   1108c:	40b2                	lw	ra,12(sp)
   1108e:	c598                	sw	a4,8(a1)
   11090:	8526                	mv	a0,s1
   11092:	4492                	lw	s1,4(sp)
   11094:	c6d8                	sw	a4,12(a3)
   11096:	0141                	addi	sp,sp,16
   11098:	a5c9                	j	1175a <__malloc_unlock>
   1109a:	e535                	bnez	a0,11106 <_free_r+0x1a4>
   1109c:	464c                	lw	a1,12(a2)
   1109e:	4610                	lw	a2,8(a2)
   110a0:	96be                	add	a3,a3,a5
   110a2:	0016e793          	ori	a5,a3,1
   110a6:	c64c                	sw	a1,12(a2)
   110a8:	c590                	sw	a2,8(a1)
   110aa:	c35c                	sw	a5,4(a4)
   110ac:	9736                	add	a4,a4,a3
   110ae:	c314                	sw	a3,0(a4)
   110b0:	bfb1                	j	1100c <_free_r+0xaa>
   110b2:	96be                	add	a3,a3,a5
   110b4:	00089a63          	bnez	a7,110c8 <_free_r+0x166>
   110b8:	ff842583          	lw	a1,-8(s0)
   110bc:	8f0d                	sub	a4,a4,a1
   110be:	475c                	lw	a5,12(a4)
   110c0:	4710                	lw	a2,8(a4)
   110c2:	96ae                	add	a3,a3,a1
   110c4:	c65c                	sw	a5,12(a2)
   110c6:	c790                	sw	a2,8(a5)
   110c8:	0016e613          	ori	a2,a3,1
   110cc:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   110d0:	c350                	sw	a2,4(a4)
   110d2:	00e82423          	sw	a4,8(a6)
   110d6:	f2f6ebe3          	bltu	a3,a5,1100c <_free_r+0xaa>
   110da:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   110de:	8526                	mv	a0,s1
   110e0:	3b5d                	jal	10e96 <_malloc_trim_r>
   110e2:	b72d                	j	1100c <_free_r+0xaa>
   110e4:	97b6                	add	a5,a5,a3
   110e6:	bf3d                	j	11024 <_free_r+0xc2>
   110e8:	4651                	li	a2,20
   110ea:	02d67363          	bgeu	a2,a3,11110 <_free_r+0x1ae>
   110ee:	05400613          	li	a2,84
   110f2:	04d66a63          	bltu	a2,a3,11146 <_free_r+0x1e4>
   110f6:	00c7d693          	srli	a3,a5,0xc
   110fa:	06f68593          	addi	a1,a3,111
   110fe:	058e                	slli	a1,a1,0x3
   11100:	06e68613          	addi	a2,a3,110
   11104:	b79d                	j	1106a <_free_r+0x108>
   11106:	0017e693          	ori	a3,a5,1
   1110a:	c354                	sw	a3,4(a4)
   1110c:	c21c                	sw	a5,0(a2)
   1110e:	bdfd                	j	1100c <_free_r+0xaa>
   11110:	05c68593          	addi	a1,a3,92
   11114:	058e                	slli	a1,a1,0x3
   11116:	05b68613          	addi	a2,a3,91
   1111a:	bf81                	j	1106a <_free_r+0x108>
   1111c:	00e82a23          	sw	a4,20(a6)
   11120:	00e82823          	sw	a4,16(a6)
   11124:	01172623          	sw	a7,12(a4)
   11128:	01172423          	sw	a7,8(a4)
   1112c:	c348                	sw	a0,4(a4)
   1112e:	c19c                	sw	a5,0(a1)
   11130:	bdf1                	j	1100c <_free_r+0xaa>
   11132:	00482503          	lw	a0,4(a6)
   11136:	8609                	srai	a2,a2,0x2
   11138:	4785                	li	a5,1
   1113a:	00c797b3          	sll	a5,a5,a2
   1113e:	8fc9                	or	a5,a5,a0
   11140:	00f82223          	sw	a5,4(a6)
   11144:	b789                	j	11086 <_free_r+0x124>
   11146:	15400613          	li	a2,340
   1114a:	00d66a63          	bltu	a2,a3,1115e <_free_r+0x1fc>
   1114e:	00f7d693          	srli	a3,a5,0xf
   11152:	07868593          	addi	a1,a3,120
   11156:	058e                	slli	a1,a1,0x3
   11158:	07768613          	addi	a2,a3,119
   1115c:	b739                	j	1106a <_free_r+0x108>
   1115e:	55400613          	li	a2,1364
   11162:	00d66a63          	bltu	a2,a3,11176 <_free_r+0x214>
   11166:	0127d693          	srli	a3,a5,0x12
   1116a:	07d68593          	addi	a1,a3,125
   1116e:	058e                	slli	a1,a1,0x3
   11170:	07c68613          	addi	a2,a3,124
   11174:	bddd                	j	1106a <_free_r+0x108>
   11176:	3f800593          	li	a1,1016
   1117a:	07e00613          	li	a2,126
   1117e:	b5f5                	j	1106a <_free_r+0x108>

00011180 <_malloc_r>:
   11180:	7179                	addi	sp,sp,-48
   11182:	d04a                	sw	s2,32(sp)
   11184:	d606                	sw	ra,44(sp)
   11186:	d422                	sw	s0,40(sp)
   11188:	d226                	sw	s1,36(sp)
   1118a:	ce4e                	sw	s3,28(sp)
   1118c:	00b58793          	addi	a5,a1,11
   11190:	4759                	li	a4,22
   11192:	892a                	mv	s2,a0
   11194:	04f76863          	bltu	a4,a5,111e4 <_malloc_r+0x64>
   11198:	44c1                	li	s1,16
   1119a:	16b4ea63          	bltu	s1,a1,1130e <_malloc_r+0x18e>
   1119e:	2b55                	jal	11752 <__malloc_lock>
   111a0:	47e1                	li	a5,24
   111a2:	4589                	li	a1,2
   111a4:	00001997          	auipc	s3,0x1
   111a8:	f9c98993          	addi	s3,s3,-100 # 12140 <__malloc_av_>
   111ac:	97ce                	add	a5,a5,s3
   111ae:	43c0                	lw	s0,4(a5)
   111b0:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   111b4:	30e40963          	beq	s0,a4,114c6 <_malloc_r+0x346>
   111b8:	405c                	lw	a5,4(s0)
   111ba:	4454                	lw	a3,12(s0)
   111bc:	4410                	lw	a2,8(s0)
   111be:	9bf1                	andi	a5,a5,-4
   111c0:	97a2                	add	a5,a5,s0
   111c2:	43d8                	lw	a4,4(a5)
   111c4:	c654                	sw	a3,12(a2)
   111c6:	c690                	sw	a2,8(a3)
   111c8:	00176713          	ori	a4,a4,1
   111cc:	854a                	mv	a0,s2
   111ce:	c3d8                	sw	a4,4(a5)
   111d0:	2369                	jal	1175a <__malloc_unlock>
   111d2:	50b2                	lw	ra,44(sp)
   111d4:	00840513          	addi	a0,s0,8
   111d8:	5422                	lw	s0,40(sp)
   111da:	5492                	lw	s1,36(sp)
   111dc:	5902                	lw	s2,32(sp)
   111de:	49f2                	lw	s3,28(sp)
   111e0:	6145                	addi	sp,sp,48
   111e2:	8082                	ret
   111e4:	ff87f493          	andi	s1,a5,-8
   111e8:	1207c363          	bltz	a5,1130e <_malloc_r+0x18e>
   111ec:	12b4e163          	bltu	s1,a1,1130e <_malloc_r+0x18e>
   111f0:	238d                	jal	11752 <__malloc_lock>
   111f2:	1f700793          	li	a5,503
   111f6:	3897f763          	bgeu	a5,s1,11584 <_malloc_r+0x404>
   111fa:	0094d793          	srli	a5,s1,0x9
   111fe:	12078363          	beqz	a5,11324 <_malloc_r+0x1a4>
   11202:	4711                	li	a4,4
   11204:	30f76663          	bltu	a4,a5,11510 <_malloc_r+0x390>
   11208:	0064d793          	srli	a5,s1,0x6
   1120c:	03978593          	addi	a1,a5,57
   11210:	03878813          	addi	a6,a5,56
   11214:	00359613          	slli	a2,a1,0x3
   11218:	00001997          	auipc	s3,0x1
   1121c:	f2898993          	addi	s3,s3,-216 # 12140 <__malloc_av_>
   11220:	964e                	add	a2,a2,s3
   11222:	4240                	lw	s0,4(a2)
   11224:	1661                	addi	a2,a2,-8
   11226:	02860163          	beq	a2,s0,11248 <_malloc_r+0xc8>
   1122a:	453d                	li	a0,15
   1122c:	a039                	j	1123a <_malloc_r+0xba>
   1122e:	4454                	lw	a3,12(s0)
   11230:	26075863          	bgez	a4,114a0 <_malloc_r+0x320>
   11234:	00d60a63          	beq	a2,a3,11248 <_malloc_r+0xc8>
   11238:	8436                	mv	s0,a3
   1123a:	405c                	lw	a5,4(s0)
   1123c:	9bf1                	andi	a5,a5,-4
   1123e:	40978733          	sub	a4,a5,s1
   11242:	fee556e3          	bge	a0,a4,1122e <_malloc_r+0xae>
   11246:	85c2                	mv	a1,a6
   11248:	0109a403          	lw	s0,16(s3)
   1124c:	00001897          	auipc	a7,0x1
   11250:	efc88893          	addi	a7,a7,-260 # 12148 <__malloc_av_+0x8>
   11254:	1f140c63          	beq	s0,a7,1144c <_malloc_r+0x2cc>
   11258:	405c                	lw	a5,4(s0)
   1125a:	46bd                	li	a3,15
   1125c:	9bf1                	andi	a5,a5,-4
   1125e:	40978733          	sub	a4,a5,s1
   11262:	32e6c663          	blt	a3,a4,1158e <_malloc_r+0x40e>
   11266:	0119aa23          	sw	a7,20(s3)
   1126a:	0119a823          	sw	a7,16(s3)
   1126e:	30075163          	bgez	a4,11570 <_malloc_r+0x3f0>
   11272:	1ff00713          	li	a4,511
   11276:	0049a503          	lw	a0,4(s3)
   1127a:	24f76b63          	bltu	a4,a5,114d0 <_malloc_r+0x350>
   1127e:	ff87f713          	andi	a4,a5,-8
   11282:	0721                	addi	a4,a4,8
   11284:	974e                	add	a4,a4,s3
   11286:	4314                	lw	a3,0(a4)
   11288:	0057d613          	srli	a2,a5,0x5
   1128c:	4785                	li	a5,1
   1128e:	00c797b3          	sll	a5,a5,a2
   11292:	8d5d                	or	a0,a0,a5
   11294:	ff870793          	addi	a5,a4,-8
   11298:	c414                	sw	a3,8(s0)
   1129a:	c45c                	sw	a5,12(s0)
   1129c:	00a9a223          	sw	a0,4(s3)
   112a0:	c300                	sw	s0,0(a4)
   112a2:	c6c0                	sw	s0,12(a3)
   112a4:	4025d793          	srai	a5,a1,0x2
   112a8:	4605                	li	a2,1
   112aa:	00f61633          	sll	a2,a2,a5
   112ae:	08c56263          	bltu	a0,a2,11332 <_malloc_r+0x1b2>
   112b2:	00a677b3          	and	a5,a2,a0
   112b6:	ef81                	bnez	a5,112ce <_malloc_r+0x14e>
   112b8:	0606                	slli	a2,a2,0x1
   112ba:	99f1                	andi	a1,a1,-4
   112bc:	00a677b3          	and	a5,a2,a0
   112c0:	0591                	addi	a1,a1,4
   112c2:	e791                	bnez	a5,112ce <_malloc_r+0x14e>
   112c4:	0606                	slli	a2,a2,0x1
   112c6:	00a677b3          	and	a5,a2,a0
   112ca:	0591                	addi	a1,a1,4
   112cc:	dfe5                	beqz	a5,112c4 <_malloc_r+0x144>
   112ce:	483d                	li	a6,15
   112d0:	00359313          	slli	t1,a1,0x3
   112d4:	934e                	add	t1,t1,s3
   112d6:	851a                	mv	a0,t1
   112d8:	455c                	lw	a5,12(a0)
   112da:	8e2e                	mv	t3,a1
   112dc:	24f50a63          	beq	a0,a5,11530 <_malloc_r+0x3b0>
   112e0:	43d8                	lw	a4,4(a5)
   112e2:	843e                	mv	s0,a5
   112e4:	47dc                	lw	a5,12(a5)
   112e6:	9b71                	andi	a4,a4,-4
   112e8:	409706b3          	sub	a3,a4,s1
   112ec:	24d84963          	blt	a6,a3,1153e <_malloc_r+0x3be>
   112f0:	fe06c6e3          	bltz	a3,112dc <_malloc_r+0x15c>
   112f4:	9722                	add	a4,a4,s0
   112f6:	4354                	lw	a3,4(a4)
   112f8:	4410                	lw	a2,8(s0)
   112fa:	854a                	mv	a0,s2
   112fc:	0016e693          	ori	a3,a3,1
   11300:	c354                	sw	a3,4(a4)
   11302:	c65c                	sw	a5,12(a2)
   11304:	c790                	sw	a2,8(a5)
   11306:	2991                	jal	1175a <__malloc_unlock>
   11308:	00840513          	addi	a0,s0,8
   1130c:	a029                	j	11316 <_malloc_r+0x196>
   1130e:	47b1                	li	a5,12
   11310:	00f92023          	sw	a5,0(s2)
   11314:	4501                	li	a0,0
   11316:	50b2                	lw	ra,44(sp)
   11318:	5422                	lw	s0,40(sp)
   1131a:	5492                	lw	s1,36(sp)
   1131c:	5902                	lw	s2,32(sp)
   1131e:	49f2                	lw	s3,28(sp)
   11320:	6145                	addi	sp,sp,48
   11322:	8082                	ret
   11324:	20000613          	li	a2,512
   11328:	04000593          	li	a1,64
   1132c:	03f00813          	li	a6,63
   11330:	b5e5                	j	11218 <_malloc_r+0x98>
   11332:	0089a403          	lw	s0,8(s3)
   11336:	c85a                	sw	s6,16(sp)
   11338:	405c                	lw	a5,4(s0)
   1133a:	ffc7fb13          	andi	s6,a5,-4
   1133e:	009b6763          	bltu	s6,s1,1134c <_malloc_r+0x1cc>
   11342:	409b0733          	sub	a4,s6,s1
   11346:	47bd                	li	a5,15
   11348:	12e7c763          	blt	a5,a4,11476 <_malloc_r+0x2f6>
   1134c:	c266                	sw	s9,4(sp)
   1134e:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   11352:	ca56                	sw	s5,20(sp)
   11354:	000ca703          	lw	a4,0(s9)
   11358:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   1135c:	cc52                	sw	s4,24(sp)
   1135e:	c65e                	sw	s7,12(sp)
   11360:	57fd                	li	a5,-1
   11362:	01640a33          	add	s4,s0,s6
   11366:	9aa6                	add	s5,s5,s1
   11368:	2cf70163          	beq	a4,a5,1162a <_malloc_r+0x4aa>
   1136c:	6785                	lui	a5,0x1
   1136e:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   11370:	9abe                	add	s5,s5,a5
   11372:	77fd                	lui	a5,0xfffff
   11374:	00fafab3          	and	s5,s5,a5
   11378:	85d6                	mv	a1,s5
   1137a:	854a                	mv	a0,s2
   1137c:	772000ef          	jal	11aee <_sbrk_r>
   11380:	57fd                	li	a5,-1
   11382:	8baa                	mv	s7,a0
   11384:	32f50963          	beq	a0,a5,116b6 <_malloc_r+0x536>
   11388:	c462                	sw	s8,8(sp)
   1138a:	0d456463          	bltu	a0,s4,11452 <_malloc_r+0x2d2>
   1138e:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   11392:	000c2583          	lw	a1,0(s8)
   11396:	95d6                	add	a1,a1,s5
   11398:	00bc2023          	sw	a1,0(s8)
   1139c:	872e                	mv	a4,a1
   1139e:	32aa0063          	beq	s4,a0,116be <_malloc_r+0x53e>
   113a2:	000ca683          	lw	a3,0(s9)
   113a6:	57fd                	li	a5,-1
   113a8:	32f68863          	beq	a3,a5,116d8 <_malloc_r+0x558>
   113ac:	414b87b3          	sub	a5,s7,s4
   113b0:	97ba                	add	a5,a5,a4
   113b2:	00fc2023          	sw	a5,0(s8)
   113b6:	007bfc93          	andi	s9,s7,7
   113ba:	280c8263          	beqz	s9,1163e <_malloc_r+0x4be>
   113be:	419b8bb3          	sub	s7,s7,s9
   113c2:	6585                	lui	a1,0x1
   113c4:	0ba1                	addi	s7,s7,8
   113c6:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   113c8:	9ade                	add	s5,s5,s7
   113ca:	419585b3          	sub	a1,a1,s9
   113ce:	415585b3          	sub	a1,a1,s5
   113d2:	05d2                	slli	a1,a1,0x14
   113d4:	0145da13          	srli	s4,a1,0x14
   113d8:	85d2                	mv	a1,s4
   113da:	854a                	mv	a0,s2
   113dc:	2f09                	jal	11aee <_sbrk_r>
   113de:	57fd                	li	a5,-1
   113e0:	32f50863          	beq	a0,a5,11710 <_malloc_r+0x590>
   113e4:	41750533          	sub	a0,a0,s7
   113e8:	01450ab3          	add	s5,a0,s4
   113ec:	000c2703          	lw	a4,0(s8)
   113f0:	0179a423          	sw	s7,8(s3)
   113f4:	001ae793          	ori	a5,s5,1
   113f8:	00ea05b3          	add	a1,s4,a4
   113fc:	00fba223          	sw	a5,4(s7)
   11400:	00bc2023          	sw	a1,0(s8)
   11404:	03340563          	beq	s0,s3,1142e <_malloc_r+0x2ae>
   11408:	46bd                	li	a3,15
   1140a:	2566f963          	bgeu	a3,s6,1165c <_malloc_r+0x4dc>
   1140e:	4058                	lw	a4,4(s0)
   11410:	ff4b0793          	addi	a5,s6,-12
   11414:	9be1                	andi	a5,a5,-8
   11416:	8b05                	andi	a4,a4,1
   11418:	8f5d                	or	a4,a4,a5
   1141a:	c058                	sw	a4,4(s0)
   1141c:	4615                	li	a2,5
   1141e:	00f40733          	add	a4,s0,a5
   11422:	c350                	sw	a2,4(a4)
   11424:	c710                	sw	a2,8(a4)
   11426:	1ef6e863          	bltu	a3,a5,11616 <_malloc_r+0x496>
   1142a:	004ba783          	lw	a5,4(s7)
   1142e:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   11432:	4314                	lw	a3,0(a4)
   11434:	00b6f363          	bgeu	a3,a1,1143a <_malloc_r+0x2ba>
   11438:	c30c                	sw	a1,0(a4)
   1143a:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   1143e:	4314                	lw	a3,0(a4)
   11440:	00b6f363          	bgeu	a3,a1,11446 <_malloc_r+0x2c6>
   11444:	c30c                	sw	a1,0(a4)
   11446:	4c22                	lw	s8,8(sp)
   11448:	845e                	mv	s0,s7
   1144a:	a811                	j	1145e <_malloc_r+0x2de>
   1144c:	0049a503          	lw	a0,4(s3)
   11450:	bd91                	j	112a4 <_malloc_r+0x124>
   11452:	25340a63          	beq	s0,s3,116a6 <_malloc_r+0x526>
   11456:	0089a403          	lw	s0,8(s3)
   1145a:	4c22                	lw	s8,8(sp)
   1145c:	405c                	lw	a5,4(s0)
   1145e:	9bf1                	andi	a5,a5,-4
   11460:	40978733          	sub	a4,a5,s1
   11464:	2097e063          	bltu	a5,s1,11664 <_malloc_r+0x4e4>
   11468:	47bd                	li	a5,15
   1146a:	1ee7dd63          	bge	a5,a4,11664 <_malloc_r+0x4e4>
   1146e:	4a62                	lw	s4,24(sp)
   11470:	4ad2                	lw	s5,20(sp)
   11472:	4bb2                	lw	s7,12(sp)
   11474:	4c92                	lw	s9,4(sp)
   11476:	0014e793          	ori	a5,s1,1
   1147a:	c05c                	sw	a5,4(s0)
   1147c:	94a2                	add	s1,s1,s0
   1147e:	0099a423          	sw	s1,8(s3)
   11482:	00176713          	ori	a4,a4,1
   11486:	854a                	mv	a0,s2
   11488:	c0d8                	sw	a4,4(s1)
   1148a:	2cc1                	jal	1175a <__malloc_unlock>
   1148c:	50b2                	lw	ra,44(sp)
   1148e:	00840513          	addi	a0,s0,8
   11492:	5422                	lw	s0,40(sp)
   11494:	4b42                	lw	s6,16(sp)
   11496:	5492                	lw	s1,36(sp)
   11498:	5902                	lw	s2,32(sp)
   1149a:	49f2                	lw	s3,28(sp)
   1149c:	6145                	addi	sp,sp,48
   1149e:	8082                	ret
   114a0:	4410                	lw	a2,8(s0)
   114a2:	97a2                	add	a5,a5,s0
   114a4:	43d8                	lw	a4,4(a5)
   114a6:	c654                	sw	a3,12(a2)
   114a8:	c690                	sw	a2,8(a3)
   114aa:	00176713          	ori	a4,a4,1
   114ae:	854a                	mv	a0,s2
   114b0:	c3d8                	sw	a4,4(a5)
   114b2:	2465                	jal	1175a <__malloc_unlock>
   114b4:	50b2                	lw	ra,44(sp)
   114b6:	00840513          	addi	a0,s0,8
   114ba:	5422                	lw	s0,40(sp)
   114bc:	5492                	lw	s1,36(sp)
   114be:	5902                	lw	s2,32(sp)
   114c0:	49f2                	lw	s3,28(sp)
   114c2:	6145                	addi	sp,sp,48
   114c4:	8082                	ret
   114c6:	47c0                	lw	s0,12(a5)
   114c8:	0589                	addi	a1,a1,2
   114ca:	d6878fe3          	beq	a5,s0,11248 <_malloc_r+0xc8>
   114ce:	b1ed                	j	111b8 <_malloc_r+0x38>
   114d0:	0097d713          	srli	a4,a5,0x9
   114d4:	4691                	li	a3,4
   114d6:	0ee6f263          	bgeu	a3,a4,115ba <_malloc_r+0x43a>
   114da:	46d1                	li	a3,20
   114dc:	18e6ec63          	bltu	a3,a4,11674 <_malloc_r+0x4f4>
   114e0:	05c70613          	addi	a2,a4,92
   114e4:	060e                	slli	a2,a2,0x3
   114e6:	05b70693          	addi	a3,a4,91
   114ea:	964e                	add	a2,a2,s3
   114ec:	4218                	lw	a4,0(a2)
   114ee:	1661                	addi	a2,a2,-8
   114f0:	00e61663          	bne	a2,a4,114fc <_malloc_r+0x37c>
   114f4:	aa2d                	j	1162e <_malloc_r+0x4ae>
   114f6:	4718                	lw	a4,8(a4)
   114f8:	00e60663          	beq	a2,a4,11504 <_malloc_r+0x384>
   114fc:	4354                	lw	a3,4(a4)
   114fe:	9af1                	andi	a3,a3,-4
   11500:	fed7ebe3          	bltu	a5,a3,114f6 <_malloc_r+0x376>
   11504:	4750                	lw	a2,12(a4)
   11506:	c450                	sw	a2,12(s0)
   11508:	c418                	sw	a4,8(s0)
   1150a:	c600                	sw	s0,8(a2)
   1150c:	c740                	sw	s0,12(a4)
   1150e:	bb59                	j	112a4 <_malloc_r+0x124>
   11510:	4751                	li	a4,20
   11512:	0af77c63          	bgeu	a4,a5,115ca <_malloc_r+0x44a>
   11516:	05400713          	li	a4,84
   1151a:	16f76963          	bltu	a4,a5,1168c <_malloc_r+0x50c>
   1151e:	00c4d793          	srli	a5,s1,0xc
   11522:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   11526:	06e78813          	addi	a6,a5,110
   1152a:	00359613          	slli	a2,a1,0x3
   1152e:	b1ed                	j	11218 <_malloc_r+0x98>
   11530:	0e05                	addi	t3,t3,1
   11532:	003e7793          	andi	a5,t3,3
   11536:	0521                	addi	a0,a0,8
   11538:	c7cd                	beqz	a5,115e2 <_malloc_r+0x462>
   1153a:	455c                	lw	a5,12(a0)
   1153c:	b345                	j	112dc <_malloc_r+0x15c>
   1153e:	4410                	lw	a2,8(s0)
   11540:	0014e593          	ori	a1,s1,1
   11544:	c04c                	sw	a1,4(s0)
   11546:	c65c                	sw	a5,12(a2)
   11548:	c790                	sw	a2,8(a5)
   1154a:	94a2                	add	s1,s1,s0
   1154c:	0099aa23          	sw	s1,20(s3)
   11550:	0099a823          	sw	s1,16(s3)
   11554:	0016e793          	ori	a5,a3,1
   11558:	9722                	add	a4,a4,s0
   1155a:	0114a623          	sw	a7,12(s1)
   1155e:	0114a423          	sw	a7,8(s1)
   11562:	c0dc                	sw	a5,4(s1)
   11564:	854a                	mv	a0,s2
   11566:	c314                	sw	a3,0(a4)
   11568:	2acd                	jal	1175a <__malloc_unlock>
   1156a:	00840513          	addi	a0,s0,8
   1156e:	b365                	j	11316 <_malloc_r+0x196>
   11570:	97a2                	add	a5,a5,s0
   11572:	43d8                	lw	a4,4(a5)
   11574:	854a                	mv	a0,s2
   11576:	00176713          	ori	a4,a4,1
   1157a:	c3d8                	sw	a4,4(a5)
   1157c:	2af9                	jal	1175a <__malloc_unlock>
   1157e:	00840513          	addi	a0,s0,8
   11582:	bb51                	j	11316 <_malloc_r+0x196>
   11584:	0034d593          	srli	a1,s1,0x3
   11588:	00848793          	addi	a5,s1,8
   1158c:	b921                	j	111a4 <_malloc_r+0x24>
   1158e:	0014e693          	ori	a3,s1,1
   11592:	c054                	sw	a3,4(s0)
   11594:	94a2                	add	s1,s1,s0
   11596:	0099aa23          	sw	s1,20(s3)
   1159a:	0099a823          	sw	s1,16(s3)
   1159e:	00176693          	ori	a3,a4,1
   115a2:	97a2                	add	a5,a5,s0
   115a4:	0114a623          	sw	a7,12(s1)
   115a8:	0114a423          	sw	a7,8(s1)
   115ac:	c0d4                	sw	a3,4(s1)
   115ae:	854a                	mv	a0,s2
   115b0:	c398                	sw	a4,0(a5)
   115b2:	2265                	jal	1175a <__malloc_unlock>
   115b4:	00840513          	addi	a0,s0,8
   115b8:	bbb9                	j	11316 <_malloc_r+0x196>
   115ba:	0067d713          	srli	a4,a5,0x6
   115be:	03970613          	addi	a2,a4,57
   115c2:	060e                	slli	a2,a2,0x3
   115c4:	03870693          	addi	a3,a4,56
   115c8:	b70d                	j	114ea <_malloc_r+0x36a>
   115ca:	05c78593          	addi	a1,a5,92
   115ce:	05b78813          	addi	a6,a5,91
   115d2:	00359613          	slli	a2,a1,0x3
   115d6:	b189                	j	11218 <_malloc_r+0x98>
   115d8:	00832783          	lw	a5,8(t1)
   115dc:	15fd                	addi	a1,a1,-1
   115de:	16679763          	bne	a5,t1,1174c <_malloc_r+0x5cc>
   115e2:	0035f793          	andi	a5,a1,3
   115e6:	1361                	addi	t1,t1,-8
   115e8:	fbe5                	bnez	a5,115d8 <_malloc_r+0x458>
   115ea:	0049a703          	lw	a4,4(s3)
   115ee:	fff64793          	not	a5,a2
   115f2:	8ff9                	and	a5,a5,a4
   115f4:	00f9a223          	sw	a5,4(s3)
   115f8:	0606                	slli	a2,a2,0x1
   115fa:	d2c7ece3          	bltu	a5,a2,11332 <_malloc_r+0x1b2>
   115fe:	d2060ae3          	beqz	a2,11332 <_malloc_r+0x1b2>
   11602:	00f67733          	and	a4,a2,a5
   11606:	e711                	bnez	a4,11612 <_malloc_r+0x492>
   11608:	0606                	slli	a2,a2,0x1
   1160a:	00f67733          	and	a4,a2,a5
   1160e:	0e11                	addi	t3,t3,4
   11610:	df65                	beqz	a4,11608 <_malloc_r+0x488>
   11612:	85f2                	mv	a1,t3
   11614:	b975                	j	112d0 <_malloc_r+0x150>
   11616:	00840593          	addi	a1,s0,8
   1161a:	854a                	mv	a0,s2
   1161c:	947ff0ef          	jal	10f62 <_free_r>
   11620:	000c2583          	lw	a1,0(s8)
   11624:	0089ab83          	lw	s7,8(s3)
   11628:	b509                	j	1142a <_malloc_r+0x2aa>
   1162a:	0ac1                	addi	s5,s5,16
   1162c:	b3b1                	j	11378 <_malloc_r+0x1f8>
   1162e:	8689                	srai	a3,a3,0x2
   11630:	4785                	li	a5,1
   11632:	00d797b3          	sll	a5,a5,a3
   11636:	8d5d                	or	a0,a0,a5
   11638:	00a9a223          	sw	a0,4(s3)
   1163c:	b5e9                	j	11506 <_malloc_r+0x386>
   1163e:	015b85b3          	add	a1,s7,s5
   11642:	40b005b3          	neg	a1,a1
   11646:	05d2                	slli	a1,a1,0x14
   11648:	0145da13          	srli	s4,a1,0x14
   1164c:	85d2                	mv	a1,s4
   1164e:	854a                	mv	a0,s2
   11650:	2979                	jal	11aee <_sbrk_r>
   11652:	57fd                	li	a5,-1
   11654:	d8f518e3          	bne	a0,a5,113e4 <_malloc_r+0x264>
   11658:	4a01                	li	s4,0
   1165a:	bb49                	j	113ec <_malloc_r+0x26c>
   1165c:	4c22                	lw	s8,8(sp)
   1165e:	4785                	li	a5,1
   11660:	00fba223          	sw	a5,4(s7)
   11664:	854a                	mv	a0,s2
   11666:	28d5                	jal	1175a <__malloc_unlock>
   11668:	4a62                	lw	s4,24(sp)
   1166a:	4ad2                	lw	s5,20(sp)
   1166c:	4b42                	lw	s6,16(sp)
   1166e:	4bb2                	lw	s7,12(sp)
   11670:	4c92                	lw	s9,4(sp)
   11672:	b14d                	j	11314 <_malloc_r+0x194>
   11674:	05400693          	li	a3,84
   11678:	06e6e363          	bltu	a3,a4,116de <_malloc_r+0x55e>
   1167c:	00c7d713          	srli	a4,a5,0xc
   11680:	06f70613          	addi	a2,a4,111
   11684:	060e                	slli	a2,a2,0x3
   11686:	06e70693          	addi	a3,a4,110
   1168a:	b585                	j	114ea <_malloc_r+0x36a>
   1168c:	15400713          	li	a4,340
   11690:	06f76363          	bltu	a4,a5,116f6 <_malloc_r+0x576>
   11694:	00f4d793          	srli	a5,s1,0xf
   11698:	07878593          	addi	a1,a5,120
   1169c:	07778813          	addi	a6,a5,119
   116a0:	00359613          	slli	a2,a1,0x3
   116a4:	be95                	j	11218 <_malloc_r+0x98>
   116a6:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   116aa:	000c2703          	lw	a4,0(s8)
   116ae:	9756                	add	a4,a4,s5
   116b0:	00ec2023          	sw	a4,0(s8)
   116b4:	b1fd                	j	113a2 <_malloc_r+0x222>
   116b6:	0089a403          	lw	s0,8(s3)
   116ba:	405c                	lw	a5,4(s0)
   116bc:	b34d                	j	1145e <_malloc_r+0x2de>
   116be:	01451793          	slli	a5,a0,0x14
   116c2:	ce0790e3          	bnez	a5,113a2 <_malloc_r+0x222>
   116c6:	0089ab83          	lw	s7,8(s3)
   116ca:	015b07b3          	add	a5,s6,s5
   116ce:	0017e793          	ori	a5,a5,1
   116d2:	00fba223          	sw	a5,4(s7)
   116d6:	bba1                	j	1142e <_malloc_r+0x2ae>
   116d8:	017ca023          	sw	s7,0(s9)
   116dc:	b9e9                	j	113b6 <_malloc_r+0x236>
   116de:	15400693          	li	a3,340
   116e2:	02e6ed63          	bltu	a3,a4,1171c <_malloc_r+0x59c>
   116e6:	00f7d713          	srli	a4,a5,0xf
   116ea:	07870613          	addi	a2,a4,120
   116ee:	060e                	slli	a2,a2,0x3
   116f0:	07770693          	addi	a3,a4,119
   116f4:	bbdd                	j	114ea <_malloc_r+0x36a>
   116f6:	55400713          	li	a4,1364
   116fa:	02f76d63          	bltu	a4,a5,11734 <_malloc_r+0x5b4>
   116fe:	0124d793          	srli	a5,s1,0x12
   11702:	07d78593          	addi	a1,a5,125
   11706:	07c78813          	addi	a6,a5,124
   1170a:	00359613          	slli	a2,a1,0x3
   1170e:	b629                	j	11218 <_malloc_r+0x98>
   11710:	1ce1                	addi	s9,s9,-8
   11712:	9ae6                	add	s5,s5,s9
   11714:	417a8ab3          	sub	s5,s5,s7
   11718:	4a01                	li	s4,0
   1171a:	b9c9                	j	113ec <_malloc_r+0x26c>
   1171c:	55400693          	li	a3,1364
   11720:	02e6e163          	bltu	a3,a4,11742 <_malloc_r+0x5c2>
   11724:	0127d713          	srli	a4,a5,0x12
   11728:	07d70613          	addi	a2,a4,125
   1172c:	060e                	slli	a2,a2,0x3
   1172e:	07c70693          	addi	a3,a4,124
   11732:	bb65                	j	114ea <_malloc_r+0x36a>
   11734:	3f800613          	li	a2,1016
   11738:	07f00593          	li	a1,127
   1173c:	07e00813          	li	a6,126
   11740:	bce1                	j	11218 <_malloc_r+0x98>
   11742:	3f800613          	li	a2,1016
   11746:	07e00693          	li	a3,126
   1174a:	b345                	j	114ea <_malloc_r+0x36a>
   1174c:	0049a783          	lw	a5,4(s3)
   11750:	b565                	j	115f8 <_malloc_r+0x478>

00011752 <__malloc_lock>:
   11752:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11756:	d14ff06f          	j	10c6a <__retarget_lock_acquire_recursive>

0001175a <__malloc_unlock>:
   1175a:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   1175e:	d18ff06f          	j	10c76 <__retarget_lock_release_recursive>

00011762 <_fclose_r>:
   11762:	1141                	addi	sp,sp,-16
   11764:	c606                	sw	ra,12(sp)
   11766:	c04a                	sw	s2,0(sp)
   11768:	c9c1                	beqz	a1,117f8 <_fclose_r+0x96>
   1176a:	c422                	sw	s0,8(sp)
   1176c:	c226                	sw	s1,4(sp)
   1176e:	842e                	mv	s0,a1
   11770:	84aa                	mv	s1,a0
   11772:	c119                	beqz	a0,11778 <_fclose_r+0x16>
   11774:	595c                	lw	a5,52(a0)
   11776:	c3d5                	beqz	a5,1181a <_fclose_r+0xb8>
   11778:	507c                	lw	a5,100(s0)
   1177a:	00c41703          	lh	a4,12(s0)
   1177e:	8b85                	andi	a5,a5,1
   11780:	ebad                	bnez	a5,117f2 <_fclose_r+0x90>
   11782:	20077713          	andi	a4,a4,512
   11786:	cf49                	beqz	a4,11820 <_fclose_r+0xbe>
   11788:	85a2                	mv	a1,s0
   1178a:	8526                	mv	a0,s1
   1178c:	20c9                	jal	1184e <__sflush_r>
   1178e:	545c                	lw	a5,44(s0)
   11790:	892a                	mv	s2,a0
   11792:	c791                	beqz	a5,1179e <_fclose_r+0x3c>
   11794:	4c4c                	lw	a1,28(s0)
   11796:	8526                	mv	a0,s1
   11798:	9782                	jalr	a5
   1179a:	06054563          	bltz	a0,11804 <_fclose_r+0xa2>
   1179e:	00c45783          	lhu	a5,12(s0)
   117a2:	0807f793          	andi	a5,a5,128
   117a6:	e7ad                	bnez	a5,11810 <_fclose_r+0xae>
   117a8:	580c                	lw	a1,48(s0)
   117aa:	c991                	beqz	a1,117be <_fclose_r+0x5c>
   117ac:	04040793          	addi	a5,s0,64
   117b0:	00f58563          	beq	a1,a5,117ba <_fclose_r+0x58>
   117b4:	8526                	mv	a0,s1
   117b6:	facff0ef          	jal	10f62 <_free_r>
   117ba:	02042823          	sw	zero,48(s0)
   117be:	406c                	lw	a1,68(s0)
   117c0:	c591                	beqz	a1,117cc <_fclose_r+0x6a>
   117c2:	8526                	mv	a0,s1
   117c4:	f9eff0ef          	jal	10f62 <_free_r>
   117c8:	04042223          	sw	zero,68(s0)
   117cc:	8d6ff0ef          	jal	108a2 <__sfp_lock_acquire>
   117d0:	507c                	lw	a5,100(s0)
   117d2:	00041623          	sh	zero,12(s0)
   117d6:	8b85                	andi	a5,a5,1
   117d8:	c3bd                	beqz	a5,1183e <_fclose_r+0xdc>
   117da:	4c28                	lw	a0,88(s0)
   117dc:	c8aff0ef          	jal	10c66 <__retarget_lock_close_recursive>
   117e0:	8c8ff0ef          	jal	108a8 <__sfp_lock_release>
   117e4:	40b2                	lw	ra,12(sp)
   117e6:	4422                	lw	s0,8(sp)
   117e8:	4492                	lw	s1,4(sp)
   117ea:	854a                	mv	a0,s2
   117ec:	4902                	lw	s2,0(sp)
   117ee:	0141                	addi	sp,sp,16
   117f0:	8082                	ret
   117f2:	fb59                	bnez	a4,11788 <_fclose_r+0x26>
   117f4:	4422                	lw	s0,8(sp)
   117f6:	4492                	lw	s1,4(sp)
   117f8:	40b2                	lw	ra,12(sp)
   117fa:	4901                	li	s2,0
   117fc:	854a                	mv	a0,s2
   117fe:	4902                	lw	s2,0(sp)
   11800:	0141                	addi	sp,sp,16
   11802:	8082                	ret
   11804:	00c45783          	lhu	a5,12(s0)
   11808:	597d                	li	s2,-1
   1180a:	0807f793          	andi	a5,a5,128
   1180e:	dfc9                	beqz	a5,117a8 <_fclose_r+0x46>
   11810:	480c                	lw	a1,16(s0)
   11812:	8526                	mv	a0,s1
   11814:	f4eff0ef          	jal	10f62 <_free_r>
   11818:	bf41                	j	117a8 <_fclose_r+0x46>
   1181a:	84cff0ef          	jal	10866 <__sinit>
   1181e:	bfa9                	j	11778 <_fclose_r+0x16>
   11820:	4c28                	lw	a0,88(s0)
   11822:	c48ff0ef          	jal	10c6a <__retarget_lock_acquire_recursive>
   11826:	00c41783          	lh	a5,12(s0)
   1182a:	ffb9                	bnez	a5,11788 <_fclose_r+0x26>
   1182c:	507c                	lw	a5,100(s0)
   1182e:	8b85                	andi	a5,a5,1
   11830:	f3f1                	bnez	a5,117f4 <_fclose_r+0x92>
   11832:	4c28                	lw	a0,88(s0)
   11834:	c42ff0ef          	jal	10c76 <__retarget_lock_release_recursive>
   11838:	4422                	lw	s0,8(sp)
   1183a:	4492                	lw	s1,4(sp)
   1183c:	bf75                	j	117f8 <_fclose_r+0x96>
   1183e:	4c28                	lw	a0,88(s0)
   11840:	c36ff0ef          	jal	10c76 <__retarget_lock_release_recursive>
   11844:	bf59                	j	117da <_fclose_r+0x78>

00011846 <fclose>:
   11846:	85aa                	mv	a1,a0
   11848:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   1184c:	bf19                	j	11762 <_fclose_r>

0001184e <__sflush_r>:
   1184e:	00c59703          	lh	a4,12(a1)
   11852:	1101                	addi	sp,sp,-32
   11854:	cc22                	sw	s0,24(sp)
   11856:	c64e                	sw	s3,12(sp)
   11858:	ce06                	sw	ra,28(sp)
   1185a:	00877793          	andi	a5,a4,8
   1185e:	842e                	mv	s0,a1
   11860:	89aa                	mv	s3,a0
   11862:	e7e1                	bnez	a5,1192a <__sflush_r+0xdc>
   11864:	6785                	lui	a5,0x1
   11866:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   1186a:	41d4                	lw	a3,4(a1)
   1186c:	8fd9                	or	a5,a5,a4
   1186e:	00f59623          	sh	a5,12(a1)
   11872:	10d05963          	blez	a3,11984 <__sflush_r+0x136>
   11876:	02842803          	lw	a6,40(s0)
   1187a:	0a080263          	beqz	a6,1191e <__sflush_r+0xd0>
   1187e:	ca26                	sw	s1,20(sp)
   11880:	01371693          	slli	a3,a4,0x13
   11884:	0009a483          	lw	s1,0(s3)
   11888:	0009a023          	sw	zero,0(s3)
   1188c:	1006c363          	bltz	a3,11992 <__sflush_r+0x144>
   11890:	4c4c                	lw	a1,28(s0)
   11892:	4601                	li	a2,0
   11894:	4685                	li	a3,1
   11896:	854e                	mv	a0,s3
   11898:	9802                	jalr	a6
   1189a:	57fd                	li	a5,-1
   1189c:	862a                	mv	a2,a0
   1189e:	12f50163          	beq	a0,a5,119c0 <__sflush_r+0x172>
   118a2:	00c41783          	lh	a5,12(s0)
   118a6:	02842803          	lw	a6,40(s0)
   118aa:	8b91                	andi	a5,a5,4
   118ac:	c799                	beqz	a5,118ba <__sflush_r+0x6c>
   118ae:	4058                	lw	a4,4(s0)
   118b0:	581c                	lw	a5,48(s0)
   118b2:	8e19                	sub	a2,a2,a4
   118b4:	c399                	beqz	a5,118ba <__sflush_r+0x6c>
   118b6:	5c5c                	lw	a5,60(s0)
   118b8:	8e1d                	sub	a2,a2,a5
   118ba:	4c4c                	lw	a1,28(s0)
   118bc:	4681                	li	a3,0
   118be:	854e                	mv	a0,s3
   118c0:	9802                	jalr	a6
   118c2:	577d                	li	a4,-1
   118c4:	00c41783          	lh	a5,12(s0)
   118c8:	0ce51763          	bne	a0,a4,11996 <__sflush_r+0x148>
   118cc:	0009a683          	lw	a3,0(s3)
   118d0:	4775                	li	a4,29
   118d2:	10d76363          	bltu	a4,a3,119d8 <__sflush_r+0x18a>
   118d6:	20400737          	lui	a4,0x20400
   118da:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   118dc:	00d75733          	srl	a4,a4,a3
   118e0:	8b05                	andi	a4,a4,1
   118e2:	cb7d                	beqz	a4,119d8 <__sflush_r+0x18a>
   118e4:	4810                	lw	a2,16(s0)
   118e6:	777d                	lui	a4,0xfffff
   118e8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   118ec:	8f7d                	and	a4,a4,a5
   118ee:	00e41623          	sh	a4,12(s0)
   118f2:	00042223          	sw	zero,4(s0)
   118f6:	c010                	sw	a2,0(s0)
   118f8:	01379713          	slli	a4,a5,0x13
   118fc:	00075363          	bgez	a4,11902 <__sflush_r+0xb4>
   11900:	cacd                	beqz	a3,119b2 <__sflush_r+0x164>
   11902:	580c                	lw	a1,48(s0)
   11904:	0099a023          	sw	s1,0(s3)
   11908:	c9d5                	beqz	a1,119bc <__sflush_r+0x16e>
   1190a:	04040793          	addi	a5,s0,64
   1190e:	00f58563          	beq	a1,a5,11918 <__sflush_r+0xca>
   11912:	854e                	mv	a0,s3
   11914:	e4eff0ef          	jal	10f62 <_free_r>
   11918:	44d2                	lw	s1,20(sp)
   1191a:	02042823          	sw	zero,48(s0)
   1191e:	40f2                	lw	ra,28(sp)
   11920:	4462                	lw	s0,24(sp)
   11922:	49b2                	lw	s3,12(sp)
   11924:	4501                	li	a0,0
   11926:	6105                	addi	sp,sp,32
   11928:	8082                	ret
   1192a:	c84a                	sw	s2,16(sp)
   1192c:	0105a903          	lw	s2,16(a1)
   11930:	04090f63          	beqz	s2,1198e <__sflush_r+0x140>
   11934:	ca26                	sw	s1,20(sp)
   11936:	4184                	lw	s1,0(a1)
   11938:	8b0d                	andi	a4,a4,3
   1193a:	0125a023          	sw	s2,0(a1)
   1193e:	412484b3          	sub	s1,s1,s2
   11942:	4781                	li	a5,0
   11944:	e311                	bnez	a4,11948 <__sflush_r+0xfa>
   11946:	49dc                	lw	a5,20(a1)
   11948:	c41c                	sw	a5,8(s0)
   1194a:	00904663          	bgtz	s1,11956 <__sflush_r+0x108>
   1194e:	a83d                	j	1198c <__sflush_r+0x13e>
   11950:	992a                	add	s2,s2,a0
   11952:	02905d63          	blez	s1,1198c <__sflush_r+0x13e>
   11956:	505c                	lw	a5,36(s0)
   11958:	4c4c                	lw	a1,28(s0)
   1195a:	86a6                	mv	a3,s1
   1195c:	864a                	mv	a2,s2
   1195e:	854e                	mv	a0,s3
   11960:	9782                	jalr	a5
   11962:	8c89                	sub	s1,s1,a0
   11964:	fea046e3          	bgtz	a0,11950 <__sflush_r+0x102>
   11968:	00c41783          	lh	a5,12(s0)
   1196c:	4942                	lw	s2,16(sp)
   1196e:	0407e793          	ori	a5,a5,64
   11972:	40f2                	lw	ra,28(sp)
   11974:	00f41623          	sh	a5,12(s0)
   11978:	4462                	lw	s0,24(sp)
   1197a:	44d2                	lw	s1,20(sp)
   1197c:	49b2                	lw	s3,12(sp)
   1197e:	557d                	li	a0,-1
   11980:	6105                	addi	sp,sp,32
   11982:	8082                	ret
   11984:	5dd4                	lw	a3,60(a1)
   11986:	eed048e3          	bgtz	a3,11876 <__sflush_r+0x28>
   1198a:	bf51                	j	1191e <__sflush_r+0xd0>
   1198c:	44d2                	lw	s1,20(sp)
   1198e:	4942                	lw	s2,16(sp)
   11990:	b779                	j	1191e <__sflush_r+0xd0>
   11992:	4830                	lw	a2,80(s0)
   11994:	bf19                	j	118aa <__sflush_r+0x5c>
   11996:	4814                	lw	a3,16(s0)
   11998:	777d                	lui	a4,0xfffff
   1199a:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   1199e:	8f7d                	and	a4,a4,a5
   119a0:	00e41623          	sh	a4,12(s0)
   119a4:	00042223          	sw	zero,4(s0)
   119a8:	c014                	sw	a3,0(s0)
   119aa:	01379713          	slli	a4,a5,0x13
   119ae:	f4075ae3          	bgez	a4,11902 <__sflush_r+0xb4>
   119b2:	580c                	lw	a1,48(s0)
   119b4:	c828                	sw	a0,80(s0)
   119b6:	0099a023          	sw	s1,0(s3)
   119ba:	f9a1                	bnez	a1,1190a <__sflush_r+0xbc>
   119bc:	44d2                	lw	s1,20(sp)
   119be:	b785                	j	1191e <__sflush_r+0xd0>
   119c0:	0009a783          	lw	a5,0(s3)
   119c4:	ec078fe3          	beqz	a5,118a2 <__sflush_r+0x54>
   119c8:	4775                	li	a4,29
   119ca:	00e78a63          	beq	a5,a4,119de <__sflush_r+0x190>
   119ce:	4759                	li	a4,22
   119d0:	00e78763          	beq	a5,a4,119de <__sflush_r+0x190>
   119d4:	00c41783          	lh	a5,12(s0)
   119d8:	0407e793          	ori	a5,a5,64
   119dc:	bf59                	j	11972 <__sflush_r+0x124>
   119de:	0099a023          	sw	s1,0(s3)
   119e2:	44d2                	lw	s1,20(sp)
   119e4:	bf2d                	j	1191e <__sflush_r+0xd0>

000119e6 <_fflush_r>:
   119e6:	1141                	addi	sp,sp,-16
   119e8:	c422                	sw	s0,8(sp)
   119ea:	c226                	sw	s1,4(sp)
   119ec:	c606                	sw	ra,12(sp)
   119ee:	c04a                	sw	s2,0(sp)
   119f0:	84aa                	mv	s1,a0
   119f2:	842e                	mv	s0,a1
   119f4:	c119                	beqz	a0,119fa <_fflush_r+0x14>
   119f6:	595c                	lw	a5,52(a0)
   119f8:	c3bd                	beqz	a5,11a5e <_fflush_r+0x78>
   119fa:	00c41783          	lh	a5,12(s0)
   119fe:	4901                	li	s2,0
   11a00:	c39d                	beqz	a5,11a26 <_fflush_r+0x40>
   11a02:	5078                	lw	a4,100(s0)
   11a04:	8b05                	andi	a4,a4,1
   11a06:	e701                	bnez	a4,11a0e <_fflush_r+0x28>
   11a08:	2007f793          	andi	a5,a5,512
   11a0c:	c785                	beqz	a5,11a34 <_fflush_r+0x4e>
   11a0e:	8526                	mv	a0,s1
   11a10:	85a2                	mv	a1,s0
   11a12:	3d35                	jal	1184e <__sflush_r>
   11a14:	507c                	lw	a5,100(s0)
   11a16:	892a                	mv	s2,a0
   11a18:	8b85                	andi	a5,a5,1
   11a1a:	e791                	bnez	a5,11a26 <_fflush_r+0x40>
   11a1c:	00c45783          	lhu	a5,12(s0)
   11a20:	2007f793          	andi	a5,a5,512
   11a24:	c39d                	beqz	a5,11a4a <_fflush_r+0x64>
   11a26:	40b2                	lw	ra,12(sp)
   11a28:	4422                	lw	s0,8(sp)
   11a2a:	4492                	lw	s1,4(sp)
   11a2c:	854a                	mv	a0,s2
   11a2e:	4902                	lw	s2,0(sp)
   11a30:	0141                	addi	sp,sp,16
   11a32:	8082                	ret
   11a34:	4c28                	lw	a0,88(s0)
   11a36:	a34ff0ef          	jal	10c6a <__retarget_lock_acquire_recursive>
   11a3a:	8526                	mv	a0,s1
   11a3c:	85a2                	mv	a1,s0
   11a3e:	3d01                	jal	1184e <__sflush_r>
   11a40:	507c                	lw	a5,100(s0)
   11a42:	892a                	mv	s2,a0
   11a44:	8b85                	andi	a5,a5,1
   11a46:	f3e5                	bnez	a5,11a26 <_fflush_r+0x40>
   11a48:	bfd1                	j	11a1c <_fflush_r+0x36>
   11a4a:	4c28                	lw	a0,88(s0)
   11a4c:	a2aff0ef          	jal	10c76 <__retarget_lock_release_recursive>
   11a50:	40b2                	lw	ra,12(sp)
   11a52:	4422                	lw	s0,8(sp)
   11a54:	4492                	lw	s1,4(sp)
   11a56:	854a                	mv	a0,s2
   11a58:	4902                	lw	s2,0(sp)
   11a5a:	0141                	addi	sp,sp,16
   11a5c:	8082                	ret
   11a5e:	e09fe0ef          	jal	10866 <__sinit>
   11a62:	bf61                	j	119fa <_fflush_r+0x14>

00011a64 <fflush>:
   11a64:	c53d                	beqz	a0,11ad2 <fflush+0x6e>
   11a66:	1141                	addi	sp,sp,-16
   11a68:	c04a                	sw	s2,0(sp)
   11a6a:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   11a6e:	c422                	sw	s0,8(sp)
   11a70:	c606                	sw	ra,12(sp)
   11a72:	c226                	sw	s1,4(sp)
   11a74:	842a                	mv	s0,a0
   11a76:	00090563          	beqz	s2,11a80 <fflush+0x1c>
   11a7a:	03492783          	lw	a5,52(s2)
   11a7e:	cf95                	beqz	a5,11aba <fflush+0x56>
   11a80:	00c41783          	lh	a5,12(s0)
   11a84:	4481                	li	s1,0
   11a86:	c39d                	beqz	a5,11aac <fflush+0x48>
   11a88:	5078                	lw	a4,100(s0)
   11a8a:	8b05                	andi	a4,a4,1
   11a8c:	e701                	bnez	a4,11a94 <fflush+0x30>
   11a8e:	2007f793          	andi	a5,a5,512
   11a92:	cb85                	beqz	a5,11ac2 <fflush+0x5e>
   11a94:	854a                	mv	a0,s2
   11a96:	85a2                	mv	a1,s0
   11a98:	3b5d                	jal	1184e <__sflush_r>
   11a9a:	507c                	lw	a5,100(s0)
   11a9c:	84aa                	mv	s1,a0
   11a9e:	8b85                	andi	a5,a5,1
   11aa0:	e791                	bnez	a5,11aac <fflush+0x48>
   11aa2:	00c45783          	lhu	a5,12(s0)
   11aa6:	2007f793          	andi	a5,a5,512
   11aaa:	c385                	beqz	a5,11aca <fflush+0x66>
   11aac:	40b2                	lw	ra,12(sp)
   11aae:	4422                	lw	s0,8(sp)
   11ab0:	4902                	lw	s2,0(sp)
   11ab2:	8526                	mv	a0,s1
   11ab4:	4492                	lw	s1,4(sp)
   11ab6:	0141                	addi	sp,sp,16
   11ab8:	8082                	ret
   11aba:	854a                	mv	a0,s2
   11abc:	dabfe0ef          	jal	10866 <__sinit>
   11ac0:	b7c1                	j	11a80 <fflush+0x1c>
   11ac2:	4c28                	lw	a0,88(s0)
   11ac4:	9a6ff0ef          	jal	10c6a <__retarget_lock_acquire_recursive>
   11ac8:	b7f1                	j	11a94 <fflush+0x30>
   11aca:	4c28                	lw	a0,88(s0)
   11acc:	9aaff0ef          	jal	10c76 <__retarget_lock_release_recursive>
   11ad0:	bff1                	j	11aac <fflush+0x48>
   11ad2:	00000617          	auipc	a2,0x0
   11ad6:	53e60613          	addi	a2,a2,1342 # 12010 <__sglue>
   11ada:	00000597          	auipc	a1,0x0
   11ade:	f0c58593          	addi	a1,a1,-244 # 119e6 <_fflush_r>
   11ae2:	00000517          	auipc	a0,0x0
   11ae6:	53e50513          	addi	a0,a0,1342 # 12020 <_impure_data>
   11aea:	e09fe06f          	j	108f2 <_fwalk_sglue>

00011aee <_sbrk_r>:
   11aee:	1141                	addi	sp,sp,-16
   11af0:	c422                	sw	s0,8(sp)
   11af2:	842a                	mv	s0,a0
   11af4:	852e                	mv	a0,a1
   11af6:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   11afa:	c606                	sw	ra,12(sp)
   11afc:	20f9                	jal	11bca <_sbrk>
   11afe:	57fd                	li	a5,-1
   11b00:	00f50663          	beq	a0,a5,11b0c <_sbrk_r+0x1e>
   11b04:	40b2                	lw	ra,12(sp)
   11b06:	4422                	lw	s0,8(sp)
   11b08:	0141                	addi	sp,sp,16
   11b0a:	8082                	ret
   11b0c:	c226                	sw	s1,4(sp)
   11b0e:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   11b12:	409c                	lw	a5,0(s1)
   11b14:	c799                	beqz	a5,11b22 <_sbrk_r+0x34>
   11b16:	40b2                	lw	ra,12(sp)
   11b18:	c01c                	sw	a5,0(s0)
   11b1a:	4422                	lw	s0,8(sp)
   11b1c:	4492                	lw	s1,4(sp)
   11b1e:	0141                	addi	sp,sp,16
   11b20:	8082                	ret
   11b22:	40b2                	lw	ra,12(sp)
   11b24:	4422                	lw	s0,8(sp)
   11b26:	4492                	lw	s1,4(sp)
   11b28:	0141                	addi	sp,sp,16
   11b2a:	8082                	ret

00011b2c <_close>:
   11b2c:	1141                	addi	sp,sp,-16
   11b2e:	c606                	sw	ra,12(sp)
   11b30:	c422                	sw	s0,8(sp)
   11b32:	03900893          	li	a7,57
   11b36:	00000073          	ecall
   11b3a:	842a                	mv	s0,a0
   11b3c:	00054763          	bltz	a0,11b4a <_close+0x1e>
   11b40:	40b2                	lw	ra,12(sp)
   11b42:	8522                	mv	a0,s0
   11b44:	4422                	lw	s0,8(sp)
   11b46:	0141                	addi	sp,sp,16
   11b48:	8082                	ret
   11b4a:	40800433          	neg	s0,s0
   11b4e:	28d5                	jal	11c42 <__errno>
   11b50:	c100                	sw	s0,0(a0)
   11b52:	547d                	li	s0,-1
   11b54:	b7f5                	j	11b40 <_close+0x14>

00011b56 <_exit>:
   11b56:	05d00893          	li	a7,93
   11b5a:	00000073          	ecall
   11b5e:	00054363          	bltz	a0,11b64 <_exit+0xe>
   11b62:	a001                	j	11b62 <_exit+0xc>
   11b64:	1141                	addi	sp,sp,-16
   11b66:	c422                	sw	s0,8(sp)
   11b68:	842a                	mv	s0,a0
   11b6a:	c606                	sw	ra,12(sp)
   11b6c:	40800433          	neg	s0,s0
   11b70:	28c9                	jal	11c42 <__errno>
   11b72:	c100                	sw	s0,0(a0)
   11b74:	a001                	j	11b74 <_exit+0x1e>

00011b76 <_lseek>:
   11b76:	1141                	addi	sp,sp,-16
   11b78:	c606                	sw	ra,12(sp)
   11b7a:	c422                	sw	s0,8(sp)
   11b7c:	03e00893          	li	a7,62
   11b80:	00000073          	ecall
   11b84:	842a                	mv	s0,a0
   11b86:	00054763          	bltz	a0,11b94 <_lseek+0x1e>
   11b8a:	40b2                	lw	ra,12(sp)
   11b8c:	8522                	mv	a0,s0
   11b8e:	4422                	lw	s0,8(sp)
   11b90:	0141                	addi	sp,sp,16
   11b92:	8082                	ret
   11b94:	40800433          	neg	s0,s0
   11b98:	206d                	jal	11c42 <__errno>
   11b9a:	c100                	sw	s0,0(a0)
   11b9c:	547d                	li	s0,-1
   11b9e:	b7f5                	j	11b8a <_lseek+0x14>

00011ba0 <_read>:
   11ba0:	1141                	addi	sp,sp,-16
   11ba2:	c606                	sw	ra,12(sp)
   11ba4:	c422                	sw	s0,8(sp)
   11ba6:	03f00893          	li	a7,63
   11baa:	00000073          	ecall
   11bae:	842a                	mv	s0,a0
   11bb0:	00054763          	bltz	a0,11bbe <_read+0x1e>
   11bb4:	40b2                	lw	ra,12(sp)
   11bb6:	8522                	mv	a0,s0
   11bb8:	4422                	lw	s0,8(sp)
   11bba:	0141                	addi	sp,sp,16
   11bbc:	8082                	ret
   11bbe:	40800433          	neg	s0,s0
   11bc2:	2041                	jal	11c42 <__errno>
   11bc4:	c100                	sw	s0,0(a0)
   11bc6:	547d                	li	s0,-1
   11bc8:	b7f5                	j	11bb4 <_read+0x14>

00011bca <_sbrk>:
   11bca:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11bce:	4298                	lw	a4,0(a3)
   11bd0:	1141                	addi	sp,sp,-16
   11bd2:	c606                	sw	ra,12(sp)
   11bd4:	87aa                	mv	a5,a0
   11bd6:	eb19                	bnez	a4,11bec <_sbrk+0x22>
   11bd8:	0d600893          	li	a7,214
   11bdc:	4501                	li	a0,0
   11bde:	00000073          	ecall
   11be2:	567d                	li	a2,-1
   11be4:	872a                	mv	a4,a0
   11be6:	02c50263          	beq	a0,a2,11c0a <_sbrk+0x40>
   11bea:	c288                	sw	a0,0(a3)
   11bec:	00e78533          	add	a0,a5,a4
   11bf0:	0d600893          	li	a7,214
   11bf4:	00000073          	ecall
   11bf8:	4298                	lw	a4,0(a3)
   11bfa:	97ba                	add	a5,a5,a4
   11bfc:	00f51763          	bne	a0,a5,11c0a <_sbrk+0x40>
   11c00:	40b2                	lw	ra,12(sp)
   11c02:	c288                	sw	a0,0(a3)
   11c04:	853a                	mv	a0,a4
   11c06:	0141                	addi	sp,sp,16
   11c08:	8082                	ret
   11c0a:	2825                	jal	11c42 <__errno>
   11c0c:	40b2                	lw	ra,12(sp)
   11c0e:	47b1                	li	a5,12
   11c10:	c11c                	sw	a5,0(a0)
   11c12:	557d                	li	a0,-1
   11c14:	0141                	addi	sp,sp,16
   11c16:	8082                	ret

00011c18 <_write>:
   11c18:	1141                	addi	sp,sp,-16
   11c1a:	c606                	sw	ra,12(sp)
   11c1c:	c422                	sw	s0,8(sp)
   11c1e:	04000893          	li	a7,64
   11c22:	00000073          	ecall
   11c26:	842a                	mv	s0,a0
   11c28:	00054763          	bltz	a0,11c36 <_write+0x1e>
   11c2c:	40b2                	lw	ra,12(sp)
   11c2e:	8522                	mv	a0,s0
   11c30:	4422                	lw	s0,8(sp)
   11c32:	0141                	addi	sp,sp,16
   11c34:	8082                	ret
   11c36:	40800433          	neg	s0,s0
   11c3a:	2021                	jal	11c42 <__errno>
   11c3c:	c100                	sw	s0,0(a0)
   11c3e:	547d                	li	s0,-1
   11c40:	b7f5                	j	11c2c <_write+0x14>

00011c42 <__errno>:
   11c42:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11c46:	8082                	ret
