
test_original_Ofast.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	67b000ef          	jal	10f38 <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	411010ef          	jal	11cdc <_exit>

000100d0 <main>:
   100d0:	4505                	li	a0,1
   100d2:	8082                	ret

000100d4 <register_fini>:
   100d4:	00000793          	li	a5,0
   100d8:	c791                	beqz	a5,100e4 <register_fini+0x10>
   100da:	00001517          	auipc	a0,0x1
   100de:	cd450513          	addi	a0,a0,-812 # 10dae <__libc_fini_array>
   100e2:	a5b9                	j	10730 <atexit>
   100e4:	8082                	ret

000100e6 <_start>:
   100e6:	00002197          	auipc	gp,0x2
   100ea:	72a18193          	addi	gp,gp,1834 # 12810 <__global_pointer$>
   100ee:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   100f2:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   100f6:	8e09                	sub	a2,a2,a0
   100f8:	4581                	li	a1,0
   100fa:	505000ef          	jal	10dfe <memset>
   100fe:	00001517          	auipc	a0,0x1
   10102:	cb050513          	addi	a0,a0,-848 # 10dae <__libc_fini_array>
   10106:	252d                	jal	10730 <atexit>
   10108:	43d000ef          	jal	10d44 <__libc_init_array>
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
   10128:	cac50513          	addi	a0,a0,-852 # 11dd0 <__EH_FRAME_BEGIN__>
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
   1015a:	c7a50513          	addi	a0,a0,-902 # 11dd0 <__EH_FRAME_BEGIN__>
   1015e:	00000317          	auipc	t1,0x0
   10162:	00000067          	jr	zero # 0 <exit-0x100b4>
   10166:	8082                	ret

00010168 <memcpy>:
   10168:	fff60813          	addi	a6,a2,-1
   1016c:	ce3d                	beqz	a2,101ea <memcpy+0x82>
   1016e:	4799                	li	a5,6
   10170:	00158713          	addi	a4,a1,1
   10174:	0707f163          	bgeu	a5,a6,101d6 <memcpy+0x6e>
   10178:	00b567b3          	or	a5,a0,a1
   1017c:	8b8d                	andi	a5,a5,3
   1017e:	00158713          	addi	a4,a1,1
   10182:	ebb1                	bnez	a5,101d6 <memcpy+0x6e>
   10184:	40e507b3          	sub	a5,a0,a4
   10188:	0037b793          	sltiu	a5,a5,3
   1018c:	e7a9                	bnez	a5,101d6 <memcpy+0x6e>
   1018e:	ffc67893          	andi	a7,a2,-4
   10192:	011586b3          	add	a3,a1,a7
   10196:	87aa                	mv	a5,a0
   10198:	4198                	lw	a4,0(a1)
   1019a:	0591                	addi	a1,a1,4
   1019c:	0791                	addi	a5,a5,4
   1019e:	fee7ae23          	sw	a4,-4(a5)
   101a2:	feb69be3          	bne	a3,a1,10198 <memcpy+0x30>
   101a6:	41180833          	sub	a6,a6,a7
   101aa:	011507b3          	add	a5,a0,a7
   101ae:	03160e63          	beq	a2,a7,101ea <memcpy+0x82>
   101b2:	0006c703          	lbu	a4,0(a3)
   101b6:	00e78023          	sb	a4,0(a5)
   101ba:	02080863          	beqz	a6,101ea <memcpy+0x82>
   101be:	0016c603          	lbu	a2,1(a3)
   101c2:	4705                	li	a4,1
   101c4:	00c780a3          	sb	a2,1(a5)
   101c8:	02e80163          	beq	a6,a4,101ea <memcpy+0x82>
   101cc:	0026c703          	lbu	a4,2(a3)
   101d0:	00e78123          	sb	a4,2(a5)
   101d4:	8082                	ret
   101d6:	962a                	add	a2,a2,a0
   101d8:	87aa                	mv	a5,a0
   101da:	fff74683          	lbu	a3,-1(a4)
   101de:	0785                	addi	a5,a5,1
   101e0:	0705                	addi	a4,a4,1
   101e2:	fed78fa3          	sb	a3,-1(a5)
   101e6:	fec79ae3          	bne	a5,a2,101da <memcpy+0x72>
   101ea:	8082                	ret

000101ec <__mulsi3>:
   101ec:	872a                	mv	a4,a0
   101ee:	4501                	li	a0,0
   101f0:	c999                	beqz	a1,10206 <__mulsi3+0x1a>
   101f2:	0015f793          	andi	a5,a1,1
   101f6:	40f007b3          	neg	a5,a5
   101fa:	8ff9                	and	a5,a5,a4
   101fc:	8185                	srli	a1,a1,0x1
   101fe:	953e                	add	a0,a0,a5
   10200:	0706                	slli	a4,a4,0x1
   10202:	f9e5                	bnez	a1,101f2 <__mulsi3+0x6>
   10204:	8082                	ret
   10206:	8082                	ret

00010208 <clz>:
   10208:	01055713          	srli	a4,a0,0x10
   1020c:	02000793          	li	a5,32
   10210:	c319                	beqz	a4,10216 <clz+0xe>
   10212:	853a                	mv	a0,a4
   10214:	47c1                	li	a5,16
   10216:	00855713          	srli	a4,a0,0x8
   1021a:	c319                	beqz	a4,10220 <clz+0x18>
   1021c:	17e1                	addi	a5,a5,-8
   1021e:	853a                	mv	a0,a4
   10220:	00455713          	srli	a4,a0,0x4
   10224:	c319                	beqz	a4,1022a <clz+0x22>
   10226:	17f1                	addi	a5,a5,-4
   10228:	853a                	mv	a0,a4
   1022a:	00255713          	srli	a4,a0,0x2
   1022e:	c319                	beqz	a4,10234 <clz+0x2c>
   10230:	17f9                	addi	a5,a5,-2
   10232:	853a                	mv	a0,a4
   10234:	00155713          	srli	a4,a0,0x1
   10238:	c319                	beqz	a4,1023e <clz+0x36>
   1023a:	17fd                	addi	a5,a5,-1
   1023c:	853a                	mv	a0,a4
   1023e:	40a78533          	sub	a0,a5,a0
   10242:	8082                	ret

00010244 <uf8_decode>:
   10244:	00455693          	srli	a3,a0,0x4
   10248:	473d                	li	a4,15
   1024a:	67a1                	lui	a5,0x8
   1024c:	8f15                	sub	a4,a4,a3
   1024e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80b5>
   10250:	40e7d7b3          	sra	a5,a5,a4
   10254:	893d                	andi	a0,a0,15
   10256:	00d51533          	sll	a0,a0,a3
   1025a:	0792                	slli	a5,a5,0x4
   1025c:	953e                	add	a0,a0,a5
   1025e:	8082                	ret

00010260 <uf8_encode>:
   10260:	47bd                	li	a5,15
   10262:	20a7f263          	bgeu	a5,a0,10466 <uf8_encode+0x206>
   10266:	01055713          	srli	a4,a0,0x10
   1026a:	20070163          	beqz	a4,1046c <uf8_encode+0x20c>
   1026e:	01855793          	srli	a5,a0,0x18
   10272:	46c1                	li	a3,16
   10274:	34078f63          	beqz	a5,105d2 <uf8_encode+0x372>
   10278:	0047d713          	srli	a4,a5,0x4
   1027c:	16e1                	addi	a3,a3,-8
   1027e:	36071063          	bnez	a4,105de <uf8_encode+0x37e>
   10282:	0027d713          	srli	a4,a5,0x2
   10286:	1e070a63          	beqz	a4,1047a <uf8_encode+0x21a>
   1028a:	838d                	srli	a5,a5,0x3
   1028c:	32079663          	bnez	a5,105b8 <uf8_encode+0x358>
   10290:	02200793          	li	a5,34
   10294:	40d786b3          	sub	a3,a5,a3
   10298:	16f1                	addi	a3,a3,-4
   1029a:	0ff6f713          	zext.b	a4,a3
   1029e:	46bd                	li	a3,15
   102a0:	0ff77793          	zext.b	a5,a4
   102a4:	32e6e463          	bltu	a3,a4,105cc <uf8_encode+0x36c>
   102a8:	4685                	li	a3,1
   102aa:	3cd70f63          	beq	a4,a3,10688 <uf8_encode+0x428>
   102ae:	4689                	li	a3,2
   102b0:	3ed70663          	beq	a4,a3,1069c <uf8_encode+0x43c>
   102b4:	468d                	li	a3,3
   102b6:	32d70d63          	beq	a4,a3,105f0 <uf8_encode+0x390>
   102ba:	4691                	li	a3,4
   102bc:	3cd70d63          	beq	a4,a3,10696 <uf8_encode+0x436>
   102c0:	4695                	li	a3,5
   102c2:	3ed70f63          	beq	a4,a3,106c0 <uf8_encode+0x460>
   102c6:	4699                	li	a3,6
   102c8:	3ed70f63          	beq	a4,a3,106c6 <uf8_encode+0x466>
   102cc:	469d                	li	a3,7
   102ce:	3ed70f63          	beq	a4,a3,106cc <uf8_encode+0x46c>
   102d2:	46a1                	li	a3,8
   102d4:	3ed70f63          	beq	a4,a3,106d2 <uf8_encode+0x472>
   102d8:	46a5                	li	a3,9
   102da:	3ed70f63          	beq	a4,a3,106d8 <uf8_encode+0x478>
   102de:	46a9                	li	a3,10
   102e0:	3ed70f63          	beq	a4,a3,106de <uf8_encode+0x47e>
   102e4:	46ad                	li	a3,11
   102e6:	3ed70f63          	beq	a4,a3,106e4 <uf8_encode+0x484>
   102ea:	46b1                	li	a3,12
   102ec:	3ed70f63          	beq	a4,a3,106ea <uf8_encode+0x48a>
   102f0:	46b5                	li	a3,13
   102f2:	3ed70f63          	beq	a4,a3,106f0 <uf8_encode+0x490>
   102f6:	00040637          	lui	a2,0x40
   102fa:	46b9                	li	a3,14
   102fc:	1641                	addi	a2,a2,-16 # 3fff0 <__BSS_END__+0x2d74c>
   102fe:	2ed70b63          	beq	a4,a3,105f4 <uf8_encode+0x394>
   10302:	00080737          	lui	a4,0x80
   10306:	173d                	addi	a4,a4,-17 # 7ffef <__BSS_END__+0x6d74b>
   10308:	40a76363          	bltu	a4,a0,1070e <uf8_encode+0x4ae>
   1030c:	00040737          	lui	a4,0x40
   10310:	00080637          	lui	a2,0x80
   10314:	173d                	addi	a4,a4,-17 # 3ffef <__BSS_END__+0x2d74b>
   10316:	1641                	addi	a2,a2,-16 # 7fff0 <__BSS_END__+0x6d74c>
   10318:	40a76263          	bltu	a4,a0,1071c <uf8_encode+0x4bc>
   1031c:	ffe78593          	addi	a1,a5,-2
   10320:	00265693          	srli	a3,a2,0x2
   10324:	0ff5f593          	zext.b	a1,a1
   10328:	16d1                	addi	a3,a3,-12
   1032a:	30058063          	beqz	a1,1062a <uf8_encode+0x3ca>
   1032e:	30d57663          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   10332:	ffd78593          	addi	a1,a5,-3
   10336:	820d                	srli	a2,a2,0x3
   10338:	0ff5f593          	zext.b	a1,a1
   1033c:	ffa60713          	addi	a4,a2,-6
   10340:	ff260693          	addi	a3,a2,-14
   10344:	2e058363          	beqz	a1,1062a <uf8_encode+0x3ca>
   10348:	2ed57963          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   1034c:	ffc78593          	addi	a1,a5,-4
   10350:	00175693          	srli	a3,a4,0x1
   10354:	0ff5f593          	zext.b	a1,a1
   10358:	16d1                	addi	a3,a3,-12
   1035a:	2c058863          	beqz	a1,1062a <uf8_encode+0x3ca>
   1035e:	2cd57e63          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   10362:	ffb78593          	addi	a1,a5,-5
   10366:	8309                	srli	a4,a4,0x2
   10368:	0ff5f593          	zext.b	a1,a1
   1036c:	ffa70613          	addi	a2,a4,-6
   10370:	ff270693          	addi	a3,a4,-14
   10374:	2a058b63          	beqz	a1,1062a <uf8_encode+0x3ca>
   10378:	2cd57163          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   1037c:	ffa78593          	addi	a1,a5,-6
   10380:	00165693          	srli	a3,a2,0x1
   10384:	0ff5f593          	zext.b	a1,a1
   10388:	16d1                	addi	a3,a3,-12
   1038a:	2a058063          	beqz	a1,1062a <uf8_encode+0x3ca>
   1038e:	2ad57663          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   10392:	ff978593          	addi	a1,a5,-7
   10396:	8209                	srli	a2,a2,0x2
   10398:	0ff5f593          	zext.b	a1,a1
   1039c:	ffa60713          	addi	a4,a2,-6
   103a0:	ff260693          	addi	a3,a2,-14
   103a4:	28058363          	beqz	a1,1062a <uf8_encode+0x3ca>
   103a8:	28d57963          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   103ac:	ff878593          	addi	a1,a5,-8
   103b0:	00175693          	srli	a3,a4,0x1
   103b4:	0ff5f593          	zext.b	a1,a1
   103b8:	16d1                	addi	a3,a3,-12
   103ba:	26058863          	beqz	a1,1062a <uf8_encode+0x3ca>
   103be:	26d57e63          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   103c2:	ff778593          	addi	a1,a5,-9
   103c6:	8309                	srli	a4,a4,0x2
   103c8:	0ff5f593          	zext.b	a1,a1
   103cc:	ffa70613          	addi	a2,a4,-6
   103d0:	ff270693          	addi	a3,a4,-14
   103d4:	24058b63          	beqz	a1,1062a <uf8_encode+0x3ca>
   103d8:	26d57163          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   103dc:	ff678593          	addi	a1,a5,-10
   103e0:	00165693          	srli	a3,a2,0x1
   103e4:	0ff5f593          	zext.b	a1,a1
   103e8:	16d1                	addi	a3,a3,-12
   103ea:	24058063          	beqz	a1,1062a <uf8_encode+0x3ca>
   103ee:	24d57663          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   103f2:	ff578593          	addi	a1,a5,-11
   103f6:	8209                	srli	a2,a2,0x2
   103f8:	0ff5f593          	zext.b	a1,a1
   103fc:	ffa60713          	addi	a4,a2,-6
   10400:	ff260693          	addi	a3,a2,-14
   10404:	22058363          	beqz	a1,1062a <uf8_encode+0x3ca>
   10408:	22d57963          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   1040c:	ff478593          	addi	a1,a5,-12
   10410:	00175693          	srli	a3,a4,0x1
   10414:	0ff5f593          	zext.b	a1,a1
   10418:	16d1                	addi	a3,a3,-12
   1041a:	20058863          	beqz	a1,1062a <uf8_encode+0x3ca>
   1041e:	20d57e63          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   10422:	ff378593          	addi	a1,a5,-13
   10426:	8309                	srli	a4,a4,0x2
   10428:	0ff5f593          	zext.b	a1,a1
   1042c:	ffa70613          	addi	a2,a4,-6
   10430:	ff270693          	addi	a3,a4,-14
   10434:	1e058b63          	beqz	a1,1062a <uf8_encode+0x3ca>
   10438:	20d57163          	bgeu	a0,a3,1063a <uf8_encode+0x3da>
   1043c:	8205                	srli	a2,a2,0x1
   1043e:	4739                	li	a4,14
   10440:	1651                	addi	a2,a2,-12
   10442:	2ae78e63          	beq	a5,a4,106fe <uf8_encode+0x49e>
   10446:	00161713          	slli	a4,a2,0x1
   1044a:	0741                	addi	a4,a4,16
   1044c:	2ce56f63          	bltu	a0,a4,1072a <uf8_encode+0x4ca>
   10450:	4789                	li	a5,2
   10452:	00479693          	slli	a3,a5,0x4
   10456:	40e50733          	sub	a4,a0,a4
   1045a:	06e2                	slli	a3,a3,0x18
   1045c:	86e1                	srai	a3,a3,0x18
   1045e:	00f75733          	srl	a4,a4,a5
   10462:	00e6e533          	or	a0,a3,a4
   10466:	0ff57513          	zext.b	a0,a0
   1046a:	8082                	ret
   1046c:	00855793          	srli	a5,a0,0x8
   10470:	16078a63          	beqz	a5,105e4 <uf8_encode+0x384>
   10474:	02000693          	li	a3,32
   10478:	b501                	j	10278 <uf8_encode+0x18>
   1047a:	8385                	srli	a5,a5,0x1
   1047c:	12079f63          	bnez	a5,105ba <uf8_encode+0x35a>
   10480:	02000793          	li	a5,32
   10484:	40d786b3          	sub	a3,a5,a3
   10488:	4791                	li	a5,4
   1048a:	e0f697e3          	bne	a3,a5,10298 <uf8_encode+0x38>
   1048e:	4741                	li	a4,16
   10490:	00171793          	slli	a5,a4,0x1
   10494:	07c1                	addi	a5,a5,16
   10496:	20f56c63          	bltu	a0,a5,106ae <uf8_encode+0x44e>
   1049a:	00179713          	slli	a4,a5,0x1
   1049e:	0741                	addi	a4,a4,16
   104a0:	20e56963          	bltu	a0,a4,106b2 <uf8_encode+0x452>
   104a4:	4581                	li	a1,0
   104a6:	478d                	li	a5,3
   104a8:	00171693          	slli	a3,a4,0x1
   104ac:	06c1                	addi	a3,a3,16
   104ae:	fad562e3          	bltu	a0,a3,10452 <uf8_encode+0x1f2>
   104b2:	00458793          	addi	a5,a1,4
   104b6:	0ff7f793          	zext.b	a5,a5
   104ba:	463d                	li	a2,15
   104bc:	1cc78163          	beq	a5,a2,1067e <uf8_encode+0x41e>
   104c0:	00169713          	slli	a4,a3,0x1
   104c4:	0741                	addi	a4,a4,16
   104c6:	1ae56f63          	bltu	a0,a4,10684 <uf8_encode+0x424>
   104ca:	00558793          	addi	a5,a1,5
   104ce:	0ff7f793          	zext.b	a5,a5
   104d2:	0cc78863          	beq	a5,a2,105a2 <uf8_encode+0x342>
   104d6:	00171693          	slli	a3,a4,0x1
   104da:	06c1                	addi	a3,a3,16
   104dc:	f6d56be3          	bltu	a0,a3,10452 <uf8_encode+0x1f2>
   104e0:	00658793          	addi	a5,a1,6
   104e4:	0ff7f793          	zext.b	a5,a5
   104e8:	18c78b63          	beq	a5,a2,1067e <uf8_encode+0x41e>
   104ec:	00169713          	slli	a4,a3,0x1
   104f0:	0741                	addi	a4,a4,16
   104f2:	18e56963          	bltu	a0,a4,10684 <uf8_encode+0x424>
   104f6:	00758793          	addi	a5,a1,7
   104fa:	0ff7f793          	zext.b	a5,a5
   104fe:	0ac78263          	beq	a5,a2,105a2 <uf8_encode+0x342>
   10502:	00171693          	slli	a3,a4,0x1
   10506:	06c1                	addi	a3,a3,16
   10508:	f4d565e3          	bltu	a0,a3,10452 <uf8_encode+0x1f2>
   1050c:	00858793          	addi	a5,a1,8
   10510:	0ff7f793          	zext.b	a5,a5
   10514:	16c78563          	beq	a5,a2,1067e <uf8_encode+0x41e>
   10518:	00169713          	slli	a4,a3,0x1
   1051c:	0741                	addi	a4,a4,16
   1051e:	16e56363          	bltu	a0,a4,10684 <uf8_encode+0x424>
   10522:	00958793          	addi	a5,a1,9
   10526:	0ff7f793          	zext.b	a5,a5
   1052a:	86b2                	mv	a3,a2
   1052c:	06c78b63          	beq	a5,a2,105a2 <uf8_encode+0x342>
   10530:	00171613          	slli	a2,a4,0x1
   10534:	0641                	addi	a2,a2,16
   10536:	f0c56ee3          	bltu	a0,a2,10452 <uf8_encode+0x1f2>
   1053a:	00a58793          	addi	a5,a1,10
   1053e:	0ff7f793          	zext.b	a5,a5
   10542:	16d78d63          	beq	a5,a3,106bc <uf8_encode+0x45c>
   10546:	00161713          	slli	a4,a2,0x1
   1054a:	0741                	addi	a4,a4,16
   1054c:	16e56663          	bltu	a0,a4,106b8 <uf8_encode+0x458>
   10550:	00b58793          	addi	a5,a1,11
   10554:	0ff7f793          	zext.b	a5,a5
   10558:	04d78563          	beq	a5,a3,105a2 <uf8_encode+0x342>
   1055c:	00171613          	slli	a2,a4,0x1
   10560:	0641                	addi	a2,a2,16
   10562:	eec568e3          	bltu	a0,a2,10452 <uf8_encode+0x1f2>
   10566:	00c58793          	addi	a5,a1,12
   1056a:	0ff7f793          	zext.b	a5,a5
   1056e:	14d78763          	beq	a5,a3,106bc <uf8_encode+0x45c>
   10572:	00161713          	slli	a4,a2,0x1
   10576:	0741                	addi	a4,a4,16
   10578:	14e56063          	bltu	a0,a4,106b8 <uf8_encode+0x458>
   1057c:	00d58793          	addi	a5,a1,13
   10580:	0ff7f793          	zext.b	a5,a5
   10584:	00d78f63          	beq	a5,a3,105a2 <uf8_encode+0x342>
   10588:	00171693          	slli	a3,a4,0x1
   1058c:	06c1                	addi	a3,a3,16
   1058e:	ecd562e3          	bltu	a0,a3,10452 <uf8_encode+0x1f2>
   10592:	4785                	li	a5,1
   10594:	0ef58563          	beq	a1,a5,1067e <uf8_encode+0x41e>
   10598:	00169713          	slli	a4,a3,0x1
   1059c:	0741                	addi	a4,a4,16
   1059e:	14e56d63          	bltu	a0,a4,106f8 <uf8_encode+0x498>
   105a2:	56c1                	li	a3,-16
   105a4:	47bd                	li	a5,15
   105a6:	40e50733          	sub	a4,a0,a4
   105aa:	00f75733          	srl	a4,a4,a5
   105ae:	00e6e533          	or	a0,a3,a4
   105b2:	0ff57513          	zext.b	a0,a0
   105b6:	8082                	ret
   105b8:	16f9                	addi	a3,a3,-2
   105ba:	4775                	li	a4,29
   105bc:	8f15                	sub	a4,a4,a3
   105be:	0ff77713          	zext.b	a4,a4
   105c2:	46bd                	li	a3,15
   105c4:	0ff77793          	zext.b	a5,a4
   105c8:	cee6f0e3          	bgeu	a3,a4,102a8 <uf8_encode+0x48>
   105cc:	0ff6f793          	zext.b	a5,a3
   105d0:	b9e1                	j	102a8 <uf8_encode+0x48>
   105d2:	87ba                	mv	a5,a4
   105d4:	0047d713          	srli	a4,a5,0x4
   105d8:	46c1                	li	a3,16
   105da:	ca0704e3          	beqz	a4,10282 <uf8_encode+0x22>
   105de:	87ba                	mv	a5,a4
   105e0:	16f1                	addi	a3,a3,-4
   105e2:	b145                	j	10282 <uf8_encode+0x22>
   105e4:	02000693          	li	a3,32
   105e8:	00455793          	srli	a5,a0,0x4
   105ec:	16f1                	addi	a3,a3,-4
   105ee:	b951                	j	10282 <uf8_encode+0x22>
   105f0:	07000613          	li	a2,112
   105f4:	08c57b63          	bgeu	a0,a2,1068a <uf8_encode+0x42a>
   105f8:	00165713          	srli	a4,a2,0x1
   105fc:	1761                	addi	a4,a4,-8
   105fe:	d0e56fe3          	bltu	a0,a4,1031c <uf8_encode+0xbc>
   10602:	17fd                	addi	a5,a5,-1
   10604:	0ff7f793          	zext.b	a5,a5
   10608:	863a                	mv	a2,a4
   1060a:	00161713          	slli	a4,a2,0x1
   1060e:	0741                	addi	a4,a4,16
   10610:	0ae56463          	bltu	a0,a4,106b8 <uf8_encode+0x458>
   10614:	00178693          	addi	a3,a5,1
   10618:	0ff6f693          	zext.b	a3,a3
   1061c:	463d                	li	a2,15
   1061e:	f8c682e3          	beq	a3,a2,105a2 <uf8_encode+0x342>
   10622:	85be                	mv	a1,a5
   10624:	863a                	mv	a2,a4
   10626:	87b6                	mv	a5,a3
   10628:	a015                	j	1064c <uf8_encode+0x3ec>
   1062a:	00169713          	slli	a4,a3,0x1
   1062e:	0741                	addi	a4,a4,16
   10630:	e6e570e3          	bgeu	a0,a4,10490 <uf8_encode+0x230>
   10634:	8736                	mv	a4,a3
   10636:	4781                	li	a5,0
   10638:	bd29                	j	10452 <uf8_encode+0x1f2>
   1063a:	00169613          	slli	a2,a3,0x1
   1063e:	00158793          	addi	a5,a1,1
   10642:	0641                	addi	a2,a2,16
   10644:	0ff7f793          	zext.b	a5,a5
   10648:	02c56d63          	bltu	a0,a2,10682 <uf8_encode+0x422>
   1064c:	00161713          	slli	a4,a2,0x1
   10650:	0741                	addi	a4,a4,16
   10652:	06e56363          	bltu	a0,a4,106b8 <uf8_encode+0x458>
   10656:	00258793          	addi	a5,a1,2
   1065a:	0ff7f793          	zext.b	a5,a5
   1065e:	463d                	li	a2,15
   10660:	f4c781e3          	beq	a5,a2,105a2 <uf8_encode+0x342>
   10664:	00171693          	slli	a3,a4,0x1
   10668:	06c1                	addi	a3,a3,16
   1066a:	ded564e3          	bltu	a0,a3,10452 <uf8_encode+0x1f2>
   1066e:	00358793          	addi	a5,a1,3
   10672:	0ff7f793          	zext.b	a5,a5
   10676:	8736                	mv	a4,a3
   10678:	f2c785e3          	beq	a5,a2,105a2 <uf8_encode+0x342>
   1067c:	b535                	j	104a8 <uf8_encode+0x248>
   1067e:	8736                	mv	a4,a3
   10680:	b70d                	j	105a2 <uf8_encode+0x342>
   10682:	87ae                	mv	a5,a1
   10684:	8736                	mv	a4,a3
   10686:	b3f1                	j	10452 <uf8_encode+0x1f2>
   10688:	4641                	li	a2,16
   1068a:	473d                	li	a4,15
   1068c:	f6e79fe3          	bne	a5,a4,1060a <uf8_encode+0x3aa>
   10690:	8732                	mv	a4,a2
   10692:	56c1                	li	a3,-16
   10694:	bf09                	j	105a6 <uf8_encode+0x346>
   10696:	0f000613          	li	a2,240
   1069a:	bfa9                	j	105f4 <uf8_encode+0x394>
   1069c:	02f00713          	li	a4,47
   106a0:	06a76b63          	bltu	a4,a0,10716 <uf8_encode+0x4b6>
   106a4:	17fd                	addi	a5,a5,-1
   106a6:	0ff7f793          	zext.b	a5,a5
   106aa:	4641                	li	a2,16
   106ac:	bfb9                	j	1060a <uf8_encode+0x3aa>
   106ae:	4785                	li	a5,1
   106b0:	b34d                	j	10452 <uf8_encode+0x1f2>
   106b2:	873e                	mv	a4,a5
   106b4:	4789                	li	a5,2
   106b6:	bb71                	j	10452 <uf8_encode+0x1f2>
   106b8:	8732                	mv	a4,a2
   106ba:	bb61                	j	10452 <uf8_encode+0x1f2>
   106bc:	8732                	mv	a4,a2
   106be:	b5d5                	j	105a2 <uf8_encode+0x342>
   106c0:	1f000613          	li	a2,496
   106c4:	bf05                	j	105f4 <uf8_encode+0x394>
   106c6:	3f000613          	li	a2,1008
   106ca:	b72d                	j	105f4 <uf8_encode+0x394>
   106cc:	7f000613          	li	a2,2032
   106d0:	b715                	j	105f4 <uf8_encode+0x394>
   106d2:	6605                	lui	a2,0x1
   106d4:	1641                	addi	a2,a2,-16 # ff0 <exit-0xf0c4>
   106d6:	bf39                	j	105f4 <uf8_encode+0x394>
   106d8:	6609                	lui	a2,0x2
   106da:	1641                	addi	a2,a2,-16 # 1ff0 <exit-0xe0c4>
   106dc:	bf21                	j	105f4 <uf8_encode+0x394>
   106de:	6611                	lui	a2,0x4
   106e0:	1641                	addi	a2,a2,-16 # 3ff0 <exit-0xc0c4>
   106e2:	bf09                	j	105f4 <uf8_encode+0x394>
   106e4:	6621                	lui	a2,0x8
   106e6:	1641                	addi	a2,a2,-16 # 7ff0 <exit-0x80c4>
   106e8:	b731                	j	105f4 <uf8_encode+0x394>
   106ea:	6641                	lui	a2,0x10
   106ec:	1641                	addi	a2,a2,-16 # fff0 <exit-0xc4>
   106ee:	b719                	j	105f4 <uf8_encode+0x394>
   106f0:	00020637          	lui	a2,0x20
   106f4:	1641                	addi	a2,a2,-16 # 1fff0 <__BSS_END__+0xd74c>
   106f6:	bdfd                	j	105f4 <uf8_encode+0x394>
   106f8:	8736                	mv	a4,a3
   106fa:	47b9                	li	a5,14
   106fc:	bb99                	j	10452 <uf8_encode+0x1f2>
   106fe:	00161713          	slli	a4,a2,0x1
   10702:	0741                	addi	a4,a4,16
   10704:	fae575e3          	bgeu	a0,a4,106ae <uf8_encode+0x44e>
   10708:	8732                	mv	a4,a2
   1070a:	4781                	li	a5,0
   1070c:	b399                	j	10452 <uf8_encode+0x1f2>
   1070e:	00080737          	lui	a4,0x80
   10712:	1741                	addi	a4,a4,-16 # 7fff0 <__BSS_END__+0x6d74c>
   10714:	b579                	j	105a2 <uf8_encode+0x342>
   10716:	03000613          	li	a2,48
   1071a:	bf85                	j	1068a <uf8_encode+0x42a>
   1071c:	17fd                	addi	a5,a5,-1
   1071e:	00040737          	lui	a4,0x40
   10722:	0ff7f793          	zext.b	a5,a5
   10726:	1741                	addi	a4,a4,-16 # 3fff0 <__BSS_END__+0x2d74c>
   10728:	b32d                	j	10452 <uf8_encode+0x1f2>
   1072a:	8732                	mv	a4,a2
   1072c:	4785                	li	a5,1
   1072e:	b315                	j	10452 <uf8_encode+0x1f2>

00010730 <atexit>:
   10730:	85aa                	mv	a1,a0
   10732:	4681                	li	a3,0
   10734:	4601                	li	a2,0
   10736:	4501                	li	a0,0
   10738:	76e0006f          	j	10ea6 <__register_exitproc>

0001073c <stdio_exit_handler>:
   1073c:	00002617          	auipc	a2,0x2
   10740:	8d460613          	addi	a2,a2,-1836 # 12010 <__sglue>
   10744:	00001597          	auipc	a1,0x1
   10748:	1a458593          	addi	a1,a1,420 # 118e8 <_fclose_r>
   1074c:	00002517          	auipc	a0,0x2
   10750:	8d450513          	addi	a0,a0,-1836 # 12020 <_impure_data>
   10754:	a615                	j	10a78 <_fwalk_sglue>

00010756 <cleanup_stdio>:
   10756:	414c                	lw	a1,4(a0)
   10758:	1141                	addi	sp,sp,-16
   1075a:	c422                	sw	s0,8(sp)
   1075c:	c606                	sw	ra,12(sp)
   1075e:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   10762:	842a                	mv	s0,a0
   10764:	00f58463          	beq	a1,a5,1076c <cleanup_stdio+0x16>
   10768:	180010ef          	jal	118e8 <_fclose_r>
   1076c:	440c                	lw	a1,8(s0)
   1076e:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   10772:	00f58563          	beq	a1,a5,1077c <cleanup_stdio+0x26>
   10776:	8522                	mv	a0,s0
   10778:	170010ef          	jal	118e8 <_fclose_r>
   1077c:	444c                	lw	a1,12(s0)
   1077e:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   10782:	00f58863          	beq	a1,a5,10792 <cleanup_stdio+0x3c>
   10786:	8522                	mv	a0,s0
   10788:	4422                	lw	s0,8(sp)
   1078a:	40b2                	lw	ra,12(sp)
   1078c:	0141                	addi	sp,sp,16
   1078e:	15a0106f          	j	118e8 <_fclose_r>
   10792:	40b2                	lw	ra,12(sp)
   10794:	4422                	lw	s0,8(sp)
   10796:	0141                	addi	sp,sp,16
   10798:	8082                	ret

0001079a <__fp_lock>:
   1079a:	51fc                	lw	a5,100(a1)
   1079c:	8b85                	andi	a5,a5,1
   1079e:	e791                	bnez	a5,107aa <__fp_lock+0x10>
   107a0:	00c5d783          	lhu	a5,12(a1)
   107a4:	2007f793          	andi	a5,a5,512
   107a8:	c399                	beqz	a5,107ae <__fp_lock+0x14>
   107aa:	4501                	li	a0,0
   107ac:	8082                	ret
   107ae:	4da8                	lw	a0,88(a1)
   107b0:	1141                	addi	sp,sp,-16
   107b2:	c606                	sw	ra,12(sp)
   107b4:	2d35                	jal	10df0 <__retarget_lock_acquire_recursive>
   107b6:	40b2                	lw	ra,12(sp)
   107b8:	4501                	li	a0,0
   107ba:	0141                	addi	sp,sp,16
   107bc:	8082                	ret

000107be <__fp_unlock>:
   107be:	51fc                	lw	a5,100(a1)
   107c0:	8b85                	andi	a5,a5,1
   107c2:	e791                	bnez	a5,107ce <__fp_unlock+0x10>
   107c4:	00c5d783          	lhu	a5,12(a1)
   107c8:	2007f793          	andi	a5,a5,512
   107cc:	c399                	beqz	a5,107d2 <__fp_unlock+0x14>
   107ce:	4501                	li	a0,0
   107d0:	8082                	ret
   107d2:	4da8                	lw	a0,88(a1)
   107d4:	1141                	addi	sp,sp,-16
   107d6:	c606                	sw	ra,12(sp)
   107d8:	2515                	jal	10dfc <__retarget_lock_release_recursive>
   107da:	40b2                	lw	ra,12(sp)
   107dc:	4501                	li	a0,0
   107de:	0141                	addi	sp,sp,16
   107e0:	8082                	ret

000107e2 <global_stdio_init.part.0>:
   107e2:	1101                	addi	sp,sp,-32
   107e4:	ce06                	sw	ra,28(sp)
   107e6:	cc22                	sw	s0,24(sp)
   107e8:	ca26                	sw	s1,20(sp)
   107ea:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   107ee:	c84a                	sw	s2,16(sp)
   107f0:	c64e                	sw	s3,12(sp)
   107f2:	c452                	sw	s4,8(sp)
   107f4:	00000717          	auipc	a4,0x0
   107f8:	f4870713          	addi	a4,a4,-184 # 1073c <stdio_exit_handler>
   107fc:	4791                	li	a5,4
   107fe:	4621                	li	a2,8
   10800:	4581                	li	a1,0
   10802:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   10806:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   1080a:	c45c                	sw	a5,12(s0)
   1080c:	00042023          	sw	zero,0(s0)
   10810:	00042223          	sw	zero,4(s0)
   10814:	00042423          	sw	zero,8(s0)
   10818:	06042223          	sw	zero,100(s0)
   1081c:	00042823          	sw	zero,16(s0)
   10820:	00042a23          	sw	zero,20(s0)
   10824:	00042c23          	sw	zero,24(s0)
   10828:	2bd9                	jal	10dfe <memset>
   1082a:	00000a17          	auipc	s4,0x0
   1082e:	2c0a0a13          	addi	s4,s4,704 # 10aea <__sread>
   10832:	00000997          	auipc	s3,0x0
   10836:	2f298993          	addi	s3,s3,754 # 10b24 <__swrite>
   1083a:	00000917          	auipc	s2,0x0
   1083e:	33a90913          	addi	s2,s2,826 # 10b74 <__sseek>
   10842:	00000497          	auipc	s1,0x0
   10846:	36e48493          	addi	s1,s1,878 # 10bb0 <__sclose>
   1084a:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   1084e:	03442023          	sw	s4,32(s0)
   10852:	03342223          	sw	s3,36(s0)
   10856:	03242423          	sw	s2,40(s0)
   1085a:	d444                	sw	s1,44(s0)
   1085c:	cc40                	sw	s0,28(s0)
   1085e:	2369                	jal	10de8 <__retarget_lock_init_recursive>
   10860:	67c1                	lui	a5,0x10
   10862:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   10864:	4621                	li	a2,8
   10866:	4581                	li	a1,0
   10868:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   1086c:	d87c                	sw	a5,116(s0)
   1086e:	06042423          	sw	zero,104(s0)
   10872:	06042623          	sw	zero,108(s0)
   10876:	06042823          	sw	zero,112(s0)
   1087a:	0c042623          	sw	zero,204(s0)
   1087e:	06042c23          	sw	zero,120(s0)
   10882:	06042e23          	sw	zero,124(s0)
   10886:	08042023          	sw	zero,128(s0)
   1088a:	2b95                	jal	10dfe <memset>
   1088c:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   10890:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   10894:	09442423          	sw	s4,136(s0)
   10898:	09342623          	sw	s3,140(s0)
   1089c:	09242823          	sw	s2,144(s0)
   108a0:	08942a23          	sw	s1,148(s0)
   108a4:	08f42223          	sw	a5,132(s0)
   108a8:	2381                	jal	10de8 <__retarget_lock_init_recursive>
   108aa:	000207b7          	lui	a5,0x20
   108ae:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   108b0:	4621                	li	a2,8
   108b2:	4581                	li	a1,0
   108b4:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   108b8:	0cf42e23          	sw	a5,220(s0)
   108bc:	0c042823          	sw	zero,208(s0)
   108c0:	0c042a23          	sw	zero,212(s0)
   108c4:	0c042c23          	sw	zero,216(s0)
   108c8:	12042a23          	sw	zero,308(s0)
   108cc:	0e042023          	sw	zero,224(s0)
   108d0:	0e042223          	sw	zero,228(s0)
   108d4:	0e042423          	sw	zero,232(s0)
   108d8:	231d                	jal	10dfe <memset>
   108da:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   108de:	0f442823          	sw	s4,240(s0)
   108e2:	0f342a23          	sw	s3,244(s0)
   108e6:	0f242c23          	sw	s2,248(s0)
   108ea:	0e942e23          	sw	s1,252(s0)
   108ee:	0ef42623          	sw	a5,236(s0)
   108f2:	4462                	lw	s0,24(sp)
   108f4:	40f2                	lw	ra,28(sp)
   108f6:	44d2                	lw	s1,20(sp)
   108f8:	4942                	lw	s2,16(sp)
   108fa:	49b2                	lw	s3,12(sp)
   108fc:	4a22                	lw	s4,8(sp)
   108fe:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   10902:	6105                	addi	sp,sp,32
   10904:	a1d5                	j	10de8 <__retarget_lock_init_recursive>

00010906 <__sfp>:
   10906:	1101                	addi	sp,sp,-32
   10908:	c64e                	sw	s3,12(sp)
   1090a:	89aa                	mv	s3,a0
   1090c:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10910:	ce06                	sw	ra,28(sp)
   10912:	cc22                	sw	s0,24(sp)
   10914:	ca26                	sw	s1,20(sp)
   10916:	c84a                	sw	s2,16(sp)
   10918:	29e1                	jal	10df0 <__retarget_lock_acquire_recursive>
   1091a:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   1091e:	cfc5                	beqz	a5,109d6 <__sfp+0xd0>
   10920:	00001917          	auipc	s2,0x1
   10924:	6f090913          	addi	s2,s2,1776 # 12010 <__sglue>
   10928:	54fd                	li	s1,-1
   1092a:	00492783          	lw	a5,4(s2)
   1092e:	00892403          	lw	s0,8(s2)
   10932:	17fd                	addi	a5,a5,-1
   10934:	0007d763          	bgez	a5,10942 <__sfp+0x3c>
   10938:	a0ad                	j	109a2 <__sfp+0x9c>
   1093a:	06840413          	addi	s0,s0,104
   1093e:	06978263          	beq	a5,s1,109a2 <__sfp+0x9c>
   10942:	00c41703          	lh	a4,12(s0)
   10946:	17fd                	addi	a5,a5,-1
   10948:	fb6d                	bnez	a4,1093a <__sfp+0x34>
   1094a:	77c1                	lui	a5,0xffff0
   1094c:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   1094e:	c45c                	sw	a5,12(s0)
   10950:	05840513          	addi	a0,s0,88
   10954:	06042223          	sw	zero,100(s0)
   10958:	2941                	jal	10de8 <__retarget_lock_init_recursive>
   1095a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1095e:	2979                	jal	10dfc <__retarget_lock_release_recursive>
   10960:	05c40513          	addi	a0,s0,92
   10964:	00042023          	sw	zero,0(s0)
   10968:	00042423          	sw	zero,8(s0)
   1096c:	00042223          	sw	zero,4(s0)
   10970:	00042823          	sw	zero,16(s0)
   10974:	00042a23          	sw	zero,20(s0)
   10978:	00042c23          	sw	zero,24(s0)
   1097c:	4621                	li	a2,8
   1097e:	4581                	li	a1,0
   10980:	29bd                	jal	10dfe <memset>
   10982:	02042823          	sw	zero,48(s0)
   10986:	02042a23          	sw	zero,52(s0)
   1098a:	04042223          	sw	zero,68(s0)
   1098e:	04042423          	sw	zero,72(s0)
   10992:	40f2                	lw	ra,28(sp)
   10994:	8522                	mv	a0,s0
   10996:	4462                	lw	s0,24(sp)
   10998:	44d2                	lw	s1,20(sp)
   1099a:	4942                	lw	s2,16(sp)
   1099c:	49b2                	lw	s3,12(sp)
   1099e:	6105                	addi	sp,sp,32
   109a0:	8082                	ret
   109a2:	00092403          	lw	s0,0(s2)
   109a6:	c019                	beqz	s0,109ac <__sfp+0xa6>
   109a8:	8922                	mv	s2,s0
   109aa:	b741                	j	1092a <__sfp+0x24>
   109ac:	1ac00593          	li	a1,428
   109b0:	854e                	mv	a0,s3
   109b2:	155000ef          	jal	11306 <_malloc_r>
   109b6:	842a                	mv	s0,a0
   109b8:	c10d                	beqz	a0,109da <__sfp+0xd4>
   109ba:	4791                	li	a5,4
   109bc:	0531                	addi	a0,a0,12
   109be:	00042023          	sw	zero,0(s0)
   109c2:	c05c                	sw	a5,4(s0)
   109c4:	c408                	sw	a0,8(s0)
   109c6:	1a000613          	li	a2,416
   109ca:	4581                	li	a1,0
   109cc:	290d                	jal	10dfe <memset>
   109ce:	00892023          	sw	s0,0(s2)
   109d2:	8922                	mv	s2,s0
   109d4:	bf99                	j	1092a <__sfp+0x24>
   109d6:	3531                	jal	107e2 <global_stdio_init.part.0>
   109d8:	b7a1                	j	10920 <__sfp+0x1a>
   109da:	00092023          	sw	zero,0(s2)
   109de:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   109e2:	2929                	jal	10dfc <__retarget_lock_release_recursive>
   109e4:	47b1                	li	a5,12
   109e6:	00f9a023          	sw	a5,0(s3)
   109ea:	b765                	j	10992 <__sfp+0x8c>

000109ec <__sinit>:
   109ec:	1141                	addi	sp,sp,-16
   109ee:	c422                	sw	s0,8(sp)
   109f0:	842a                	mv	s0,a0
   109f2:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   109f6:	c606                	sw	ra,12(sp)
   109f8:	2ee5                	jal	10df0 <__retarget_lock_acquire_recursive>
   109fa:	585c                	lw	a5,52(s0)
   109fc:	eb89                	bnez	a5,10a0e <__sinit+0x22>
   109fe:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   10a02:	00000717          	auipc	a4,0x0
   10a06:	d5470713          	addi	a4,a4,-684 # 10756 <cleanup_stdio>
   10a0a:	d858                	sw	a4,52(s0)
   10a0c:	c799                	beqz	a5,10a1a <__sinit+0x2e>
   10a0e:	4422                	lw	s0,8(sp)
   10a10:	40b2                	lw	ra,12(sp)
   10a12:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a16:	0141                	addi	sp,sp,16
   10a18:	a6d5                	j	10dfc <__retarget_lock_release_recursive>
   10a1a:	33e1                	jal	107e2 <global_stdio_init.part.0>
   10a1c:	4422                	lw	s0,8(sp)
   10a1e:	40b2                	lw	ra,12(sp)
   10a20:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a24:	0141                	addi	sp,sp,16
   10a26:	aed9                	j	10dfc <__retarget_lock_release_recursive>

00010a28 <__sfp_lock_acquire>:
   10a28:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a2c:	a6d1                	j	10df0 <__retarget_lock_acquire_recursive>

00010a2e <__sfp_lock_release>:
   10a2e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a32:	a6e9                	j	10dfc <__retarget_lock_release_recursive>

00010a34 <__fp_lock_all>:
   10a34:	1141                	addi	sp,sp,-16
   10a36:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a3a:	c606                	sw	ra,12(sp)
   10a3c:	2e55                	jal	10df0 <__retarget_lock_acquire_recursive>
   10a3e:	40b2                	lw	ra,12(sp)
   10a40:	00001617          	auipc	a2,0x1
   10a44:	5d060613          	addi	a2,a2,1488 # 12010 <__sglue>
   10a48:	00000597          	auipc	a1,0x0
   10a4c:	d5258593          	addi	a1,a1,-686 # 1079a <__fp_lock>
   10a50:	4501                	li	a0,0
   10a52:	0141                	addi	sp,sp,16
   10a54:	a015                	j	10a78 <_fwalk_sglue>

00010a56 <__fp_unlock_all>:
   10a56:	1141                	addi	sp,sp,-16
   10a58:	00001617          	auipc	a2,0x1
   10a5c:	5b860613          	addi	a2,a2,1464 # 12010 <__sglue>
   10a60:	00000597          	auipc	a1,0x0
   10a64:	d5e58593          	addi	a1,a1,-674 # 107be <__fp_unlock>
   10a68:	4501                	li	a0,0
   10a6a:	c606                	sw	ra,12(sp)
   10a6c:	2031                	jal	10a78 <_fwalk_sglue>
   10a6e:	40b2                	lw	ra,12(sp)
   10a70:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10a74:	0141                	addi	sp,sp,16
   10a76:	a659                	j	10dfc <__retarget_lock_release_recursive>

00010a78 <_fwalk_sglue>:
   10a78:	7179                	addi	sp,sp,-48
   10a7a:	d04a                	sw	s2,32(sp)
   10a7c:	ce4e                	sw	s3,28(sp)
   10a7e:	cc52                	sw	s4,24(sp)
   10a80:	ca56                	sw	s5,20(sp)
   10a82:	c85a                	sw	s6,16(sp)
   10a84:	c65e                	sw	s7,12(sp)
   10a86:	d606                	sw	ra,44(sp)
   10a88:	d422                	sw	s0,40(sp)
   10a8a:	d226                	sw	s1,36(sp)
   10a8c:	8b2a                	mv	s6,a0
   10a8e:	8bae                	mv	s7,a1
   10a90:	8ab2                	mv	s5,a2
   10a92:	4a01                	li	s4,0
   10a94:	4985                	li	s3,1
   10a96:	597d                	li	s2,-1
   10a98:	004aa483          	lw	s1,4(s5)
   10a9c:	008aa403          	lw	s0,8(s5)
   10aa0:	14fd                	addi	s1,s1,-1
   10aa2:	0204c463          	bltz	s1,10aca <_fwalk_sglue+0x52>
   10aa6:	00c45783          	lhu	a5,12(s0)
   10aaa:	00f9fb63          	bgeu	s3,a5,10ac0 <_fwalk_sglue+0x48>
   10aae:	00e41783          	lh	a5,14(s0)
   10ab2:	85a2                	mv	a1,s0
   10ab4:	855a                	mv	a0,s6
   10ab6:	01278563          	beq	a5,s2,10ac0 <_fwalk_sglue+0x48>
   10aba:	9b82                	jalr	s7
   10abc:	00aa6a33          	or	s4,s4,a0
   10ac0:	14fd                	addi	s1,s1,-1
   10ac2:	06840413          	addi	s0,s0,104
   10ac6:	ff2490e3          	bne	s1,s2,10aa6 <_fwalk_sglue+0x2e>
   10aca:	000aaa83          	lw	s5,0(s5)
   10ace:	fc0a95e3          	bnez	s5,10a98 <_fwalk_sglue+0x20>
   10ad2:	50b2                	lw	ra,44(sp)
   10ad4:	5422                	lw	s0,40(sp)
   10ad6:	5492                	lw	s1,36(sp)
   10ad8:	5902                	lw	s2,32(sp)
   10ada:	49f2                	lw	s3,28(sp)
   10adc:	4ad2                	lw	s5,20(sp)
   10ade:	4b42                	lw	s6,16(sp)
   10ae0:	4bb2                	lw	s7,12(sp)
   10ae2:	8552                	mv	a0,s4
   10ae4:	4a62                	lw	s4,24(sp)
   10ae6:	6145                	addi	sp,sp,48
   10ae8:	8082                	ret

00010aea <__sread>:
   10aea:	1141                	addi	sp,sp,-16
   10aec:	c422                	sw	s0,8(sp)
   10aee:	842e                	mv	s0,a1
   10af0:	00e59583          	lh	a1,14(a1)
   10af4:	c606                	sw	ra,12(sp)
   10af6:	22c9                	jal	10cb8 <_read_r>
   10af8:	00054963          	bltz	a0,10b0a <__sread+0x20>
   10afc:	483c                	lw	a5,80(s0)
   10afe:	40b2                	lw	ra,12(sp)
   10b00:	97aa                	add	a5,a5,a0
   10b02:	c83c                	sw	a5,80(s0)
   10b04:	4422                	lw	s0,8(sp)
   10b06:	0141                	addi	sp,sp,16
   10b08:	8082                	ret
   10b0a:	00c45783          	lhu	a5,12(s0)
   10b0e:	777d                	lui	a4,0xfffff
   10b10:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10b12:	8ff9                	and	a5,a5,a4
   10b14:	40b2                	lw	ra,12(sp)
   10b16:	00f41623          	sh	a5,12(s0)
   10b1a:	4422                	lw	s0,8(sp)
   10b1c:	0141                	addi	sp,sp,16
   10b1e:	8082                	ret

00010b20 <__seofread>:
   10b20:	4501                	li	a0,0
   10b22:	8082                	ret

00010b24 <__swrite>:
   10b24:	00c59783          	lh	a5,12(a1)
   10b28:	1101                	addi	sp,sp,-32
   10b2a:	cc22                	sw	s0,24(sp)
   10b2c:	ca26                	sw	s1,20(sp)
   10b2e:	c84a                	sw	s2,16(sp)
   10b30:	c64e                	sw	s3,12(sp)
   10b32:	ce06                	sw	ra,28(sp)
   10b34:	1007f713          	andi	a4,a5,256
   10b38:	842e                	mv	s0,a1
   10b3a:	8932                	mv	s2,a2
   10b3c:	89b6                	mv	s3,a3
   10b3e:	84aa                	mv	s1,a0
   10b40:	e315                	bnez	a4,10b64 <__swrite+0x40>
   10b42:	777d                	lui	a4,0xfffff
   10b44:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10b46:	8ff9                	and	a5,a5,a4
   10b48:	00e41583          	lh	a1,14(s0)
   10b4c:	00f41623          	sh	a5,12(s0)
   10b50:	4462                	lw	s0,24(sp)
   10b52:	40f2                	lw	ra,28(sp)
   10b54:	86ce                	mv	a3,s3
   10b56:	864a                	mv	a2,s2
   10b58:	49b2                	lw	s3,12(sp)
   10b5a:	4942                	lw	s2,16(sp)
   10b5c:	8526                	mv	a0,s1
   10b5e:	44d2                	lw	s1,20(sp)
   10b60:	6105                	addi	sp,sp,32
   10b62:	aa71                	j	10cfe <_write_r>
   10b64:	00e59583          	lh	a1,14(a1)
   10b68:	4689                	li	a3,2
   10b6a:	4601                	li	a2,0
   10b6c:	2219                	jal	10c72 <_lseek_r>
   10b6e:	00c41783          	lh	a5,12(s0)
   10b72:	bfc1                	j	10b42 <__swrite+0x1e>

00010b74 <__sseek>:
   10b74:	1141                	addi	sp,sp,-16
   10b76:	c422                	sw	s0,8(sp)
   10b78:	842e                	mv	s0,a1
   10b7a:	00e59583          	lh	a1,14(a1)
   10b7e:	c606                	sw	ra,12(sp)
   10b80:	28cd                	jal	10c72 <_lseek_r>
   10b82:	577d                	li	a4,-1
   10b84:	00c41783          	lh	a5,12(s0)
   10b88:	00e50b63          	beq	a0,a4,10b9e <__sseek+0x2a>
   10b8c:	6705                	lui	a4,0x1
   10b8e:	8fd9                	or	a5,a5,a4
   10b90:	40b2                	lw	ra,12(sp)
   10b92:	c828                	sw	a0,80(s0)
   10b94:	00f41623          	sh	a5,12(s0)
   10b98:	4422                	lw	s0,8(sp)
   10b9a:	0141                	addi	sp,sp,16
   10b9c:	8082                	ret
   10b9e:	777d                	lui	a4,0xfffff
   10ba0:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10ba2:	8ff9                	and	a5,a5,a4
   10ba4:	40b2                	lw	ra,12(sp)
   10ba6:	00f41623          	sh	a5,12(s0)
   10baa:	4422                	lw	s0,8(sp)
   10bac:	0141                	addi	sp,sp,16
   10bae:	8082                	ret

00010bb0 <__sclose>:
   10bb0:	00e59583          	lh	a1,14(a1)
   10bb4:	a009                	j	10bb6 <_close_r>

00010bb6 <_close_r>:
   10bb6:	1141                	addi	sp,sp,-16
   10bb8:	c422                	sw	s0,8(sp)
   10bba:	842a                	mv	s0,a0
   10bbc:	852e                	mv	a0,a1
   10bbe:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10bc2:	c606                	sw	ra,12(sp)
   10bc4:	0ee010ef          	jal	11cb2 <_close>
   10bc8:	57fd                	li	a5,-1
   10bca:	00f50663          	beq	a0,a5,10bd6 <_close_r+0x20>
   10bce:	40b2                	lw	ra,12(sp)
   10bd0:	4422                	lw	s0,8(sp)
   10bd2:	0141                	addi	sp,sp,16
   10bd4:	8082                	ret
   10bd6:	c226                	sw	s1,4(sp)
   10bd8:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10bdc:	409c                	lw	a5,0(s1)
   10bde:	c799                	beqz	a5,10bec <_close_r+0x36>
   10be0:	40b2                	lw	ra,12(sp)
   10be2:	c01c                	sw	a5,0(s0)
   10be4:	4422                	lw	s0,8(sp)
   10be6:	4492                	lw	s1,4(sp)
   10be8:	0141                	addi	sp,sp,16
   10bea:	8082                	ret
   10bec:	40b2                	lw	ra,12(sp)
   10bee:	4422                	lw	s0,8(sp)
   10bf0:	4492                	lw	s1,4(sp)
   10bf2:	0141                	addi	sp,sp,16
   10bf4:	8082                	ret

00010bf6 <_reclaim_reent>:
   10bf6:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   10bfa:	06a78b63          	beq	a5,a0,10c70 <_reclaim_reent+0x7a>
   10bfe:	416c                	lw	a1,68(a0)
   10c00:	1101                	addi	sp,sp,-32
   10c02:	ca26                	sw	s1,20(sp)
   10c04:	ce06                	sw	ra,28(sp)
   10c06:	cc22                	sw	s0,24(sp)
   10c08:	84aa                	mv	s1,a0
   10c0a:	c59d                	beqz	a1,10c38 <_reclaim_reent+0x42>
   10c0c:	c84a                	sw	s2,16(sp)
   10c0e:	c64e                	sw	s3,12(sp)
   10c10:	4901                	li	s2,0
   10c12:	08000993          	li	s3,128
   10c16:	012587b3          	add	a5,a1,s2
   10c1a:	4380                	lw	s0,0(a5)
   10c1c:	c419                	beqz	s0,10c2a <_reclaim_reent+0x34>
   10c1e:	85a2                	mv	a1,s0
   10c20:	4000                	lw	s0,0(s0)
   10c22:	8526                	mv	a0,s1
   10c24:	21d1                	jal	110e8 <_free_r>
   10c26:	fc65                	bnez	s0,10c1e <_reclaim_reent+0x28>
   10c28:	40ec                	lw	a1,68(s1)
   10c2a:	0911                	addi	s2,s2,4
   10c2c:	ff3915e3          	bne	s2,s3,10c16 <_reclaim_reent+0x20>
   10c30:	8526                	mv	a0,s1
   10c32:	295d                	jal	110e8 <_free_r>
   10c34:	4942                	lw	s2,16(sp)
   10c36:	49b2                	lw	s3,12(sp)
   10c38:	5c8c                	lw	a1,56(s1)
   10c3a:	c199                	beqz	a1,10c40 <_reclaim_reent+0x4a>
   10c3c:	8526                	mv	a0,s1
   10c3e:	216d                	jal	110e8 <_free_r>
   10c40:	40a0                	lw	s0,64(s1)
   10c42:	c411                	beqz	s0,10c4e <_reclaim_reent+0x58>
   10c44:	85a2                	mv	a1,s0
   10c46:	4000                	lw	s0,0(s0)
   10c48:	8526                	mv	a0,s1
   10c4a:	2979                	jal	110e8 <_free_r>
   10c4c:	fc65                	bnez	s0,10c44 <_reclaim_reent+0x4e>
   10c4e:	44ec                	lw	a1,76(s1)
   10c50:	c199                	beqz	a1,10c56 <_reclaim_reent+0x60>
   10c52:	8526                	mv	a0,s1
   10c54:	2951                	jal	110e8 <_free_r>
   10c56:	58dc                	lw	a5,52(s1)
   10c58:	c799                	beqz	a5,10c66 <_reclaim_reent+0x70>
   10c5a:	4462                	lw	s0,24(sp)
   10c5c:	40f2                	lw	ra,28(sp)
   10c5e:	8526                	mv	a0,s1
   10c60:	44d2                	lw	s1,20(sp)
   10c62:	6105                	addi	sp,sp,32
   10c64:	8782                	jr	a5
   10c66:	40f2                	lw	ra,28(sp)
   10c68:	4462                	lw	s0,24(sp)
   10c6a:	44d2                	lw	s1,20(sp)
   10c6c:	6105                	addi	sp,sp,32
   10c6e:	8082                	ret
   10c70:	8082                	ret

00010c72 <_lseek_r>:
   10c72:	1141                	addi	sp,sp,-16
   10c74:	872e                	mv	a4,a1
   10c76:	c422                	sw	s0,8(sp)
   10c78:	85b2                	mv	a1,a2
   10c7a:	842a                	mv	s0,a0
   10c7c:	8636                	mv	a2,a3
   10c7e:	853a                	mv	a0,a4
   10c80:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10c84:	c606                	sw	ra,12(sp)
   10c86:	076010ef          	jal	11cfc <_lseek>
   10c8a:	57fd                	li	a5,-1
   10c8c:	00f50663          	beq	a0,a5,10c98 <_lseek_r+0x26>
   10c90:	40b2                	lw	ra,12(sp)
   10c92:	4422                	lw	s0,8(sp)
   10c94:	0141                	addi	sp,sp,16
   10c96:	8082                	ret
   10c98:	c226                	sw	s1,4(sp)
   10c9a:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10c9e:	409c                	lw	a5,0(s1)
   10ca0:	c799                	beqz	a5,10cae <_lseek_r+0x3c>
   10ca2:	40b2                	lw	ra,12(sp)
   10ca4:	c01c                	sw	a5,0(s0)
   10ca6:	4422                	lw	s0,8(sp)
   10ca8:	4492                	lw	s1,4(sp)
   10caa:	0141                	addi	sp,sp,16
   10cac:	8082                	ret
   10cae:	40b2                	lw	ra,12(sp)
   10cb0:	4422                	lw	s0,8(sp)
   10cb2:	4492                	lw	s1,4(sp)
   10cb4:	0141                	addi	sp,sp,16
   10cb6:	8082                	ret

00010cb8 <_read_r>:
   10cb8:	1141                	addi	sp,sp,-16
   10cba:	872e                	mv	a4,a1
   10cbc:	c422                	sw	s0,8(sp)
   10cbe:	85b2                	mv	a1,a2
   10cc0:	842a                	mv	s0,a0
   10cc2:	8636                	mv	a2,a3
   10cc4:	853a                	mv	a0,a4
   10cc6:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10cca:	c606                	sw	ra,12(sp)
   10ccc:	05a010ef          	jal	11d26 <_read>
   10cd0:	57fd                	li	a5,-1
   10cd2:	00f50663          	beq	a0,a5,10cde <_read_r+0x26>
   10cd6:	40b2                	lw	ra,12(sp)
   10cd8:	4422                	lw	s0,8(sp)
   10cda:	0141                	addi	sp,sp,16
   10cdc:	8082                	ret
   10cde:	c226                	sw	s1,4(sp)
   10ce0:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10ce4:	409c                	lw	a5,0(s1)
   10ce6:	c799                	beqz	a5,10cf4 <_read_r+0x3c>
   10ce8:	40b2                	lw	ra,12(sp)
   10cea:	c01c                	sw	a5,0(s0)
   10cec:	4422                	lw	s0,8(sp)
   10cee:	4492                	lw	s1,4(sp)
   10cf0:	0141                	addi	sp,sp,16
   10cf2:	8082                	ret
   10cf4:	40b2                	lw	ra,12(sp)
   10cf6:	4422                	lw	s0,8(sp)
   10cf8:	4492                	lw	s1,4(sp)
   10cfa:	0141                	addi	sp,sp,16
   10cfc:	8082                	ret

00010cfe <_write_r>:
   10cfe:	1141                	addi	sp,sp,-16
   10d00:	872e                	mv	a4,a1
   10d02:	c422                	sw	s0,8(sp)
   10d04:	85b2                	mv	a1,a2
   10d06:	842a                	mv	s0,a0
   10d08:	8636                	mv	a2,a3
   10d0a:	853a                	mv	a0,a4
   10d0c:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10d10:	c606                	sw	ra,12(sp)
   10d12:	08c010ef          	jal	11d9e <_write>
   10d16:	57fd                	li	a5,-1
   10d18:	00f50663          	beq	a0,a5,10d24 <_write_r+0x26>
   10d1c:	40b2                	lw	ra,12(sp)
   10d1e:	4422                	lw	s0,8(sp)
   10d20:	0141                	addi	sp,sp,16
   10d22:	8082                	ret
   10d24:	c226                	sw	s1,4(sp)
   10d26:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10d2a:	409c                	lw	a5,0(s1)
   10d2c:	c799                	beqz	a5,10d3a <_write_r+0x3c>
   10d2e:	40b2                	lw	ra,12(sp)
   10d30:	c01c                	sw	a5,0(s0)
   10d32:	4422                	lw	s0,8(sp)
   10d34:	4492                	lw	s1,4(sp)
   10d36:	0141                	addi	sp,sp,16
   10d38:	8082                	ret
   10d3a:	40b2                	lw	ra,12(sp)
   10d3c:	4422                	lw	s0,8(sp)
   10d3e:	4492                	lw	s1,4(sp)
   10d40:	0141                	addi	sp,sp,16
   10d42:	8082                	ret

00010d44 <__libc_init_array>:
   10d44:	1141                	addi	sp,sp,-16
   10d46:	c422                	sw	s0,8(sp)
   10d48:	c04a                	sw	s2,0(sp)
   10d4a:	00001797          	auipc	a5,0x1
   10d4e:	2b678793          	addi	a5,a5,694 # 12000 <__init_array_start>
   10d52:	00001417          	auipc	s0,0x1
   10d56:	2ae40413          	addi	s0,s0,686 # 12000 <__init_array_start>
   10d5a:	c606                	sw	ra,12(sp)
   10d5c:	c226                	sw	s1,4(sp)
   10d5e:	40878933          	sub	s2,a5,s0
   10d62:	00878b63          	beq	a5,s0,10d78 <__libc_init_array+0x34>
   10d66:	40295913          	srai	s2,s2,0x2
   10d6a:	4481                	li	s1,0
   10d6c:	401c                	lw	a5,0(s0)
   10d6e:	0485                	addi	s1,s1,1
   10d70:	0411                	addi	s0,s0,4
   10d72:	9782                	jalr	a5
   10d74:	ff24ece3          	bltu	s1,s2,10d6c <__libc_init_array+0x28>
   10d78:	00001797          	auipc	a5,0x1
   10d7c:	29078793          	addi	a5,a5,656 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10d80:	00001417          	auipc	s0,0x1
   10d84:	28040413          	addi	s0,s0,640 # 12000 <__init_array_start>
   10d88:	40878933          	sub	s2,a5,s0
   10d8c:	40295913          	srai	s2,s2,0x2
   10d90:	00878963          	beq	a5,s0,10da2 <__libc_init_array+0x5e>
   10d94:	4481                	li	s1,0
   10d96:	401c                	lw	a5,0(s0)
   10d98:	0485                	addi	s1,s1,1
   10d9a:	0411                	addi	s0,s0,4
   10d9c:	9782                	jalr	a5
   10d9e:	ff24ece3          	bltu	s1,s2,10d96 <__libc_init_array+0x52>
   10da2:	40b2                	lw	ra,12(sp)
   10da4:	4422                	lw	s0,8(sp)
   10da6:	4492                	lw	s1,4(sp)
   10da8:	4902                	lw	s2,0(sp)
   10daa:	0141                	addi	sp,sp,16
   10dac:	8082                	ret

00010dae <__libc_fini_array>:
   10dae:	1141                	addi	sp,sp,-16
   10db0:	c422                	sw	s0,8(sp)
   10db2:	00001797          	auipc	a5,0x1
   10db6:	25678793          	addi	a5,a5,598 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10dba:	00001417          	auipc	s0,0x1
   10dbe:	25240413          	addi	s0,s0,594 # 1200c <__fini_array_end>
   10dc2:	8c1d                	sub	s0,s0,a5
   10dc4:	c226                	sw	s1,4(sp)
   10dc6:	c606                	sw	ra,12(sp)
   10dc8:	40245493          	srai	s1,s0,0x2
   10dcc:	c881                	beqz	s1,10ddc <__libc_fini_array+0x2e>
   10dce:	1471                	addi	s0,s0,-4
   10dd0:	943e                	add	s0,s0,a5
   10dd2:	401c                	lw	a5,0(s0)
   10dd4:	14fd                	addi	s1,s1,-1
   10dd6:	1471                	addi	s0,s0,-4
   10dd8:	9782                	jalr	a5
   10dda:	fce5                	bnez	s1,10dd2 <__libc_fini_array+0x24>
   10ddc:	40b2                	lw	ra,12(sp)
   10dde:	4422                	lw	s0,8(sp)
   10de0:	4492                	lw	s1,4(sp)
   10de2:	0141                	addi	sp,sp,16
   10de4:	8082                	ret

00010de6 <__retarget_lock_init>:
   10de6:	8082                	ret

00010de8 <__retarget_lock_init_recursive>:
   10de8:	8082                	ret

00010dea <__retarget_lock_close>:
   10dea:	8082                	ret

00010dec <__retarget_lock_close_recursive>:
   10dec:	8082                	ret

00010dee <__retarget_lock_acquire>:
   10dee:	8082                	ret

00010df0 <__retarget_lock_acquire_recursive>:
   10df0:	8082                	ret

00010df2 <__retarget_lock_try_acquire>:
   10df2:	4505                	li	a0,1
   10df4:	8082                	ret

00010df6 <__retarget_lock_try_acquire_recursive>:
   10df6:	4505                	li	a0,1
   10df8:	8082                	ret

00010dfa <__retarget_lock_release>:
   10dfa:	8082                	ret

00010dfc <__retarget_lock_release_recursive>:
   10dfc:	8082                	ret

00010dfe <memset>:
   10dfe:	433d                	li	t1,15
   10e00:	872a                	mv	a4,a0
   10e02:	02c37363          	bgeu	t1,a2,10e28 <memset+0x2a>
   10e06:	00f77793          	andi	a5,a4,15
   10e0a:	efbd                	bnez	a5,10e88 <memset+0x8a>
   10e0c:	e5ad                	bnez	a1,10e76 <memset+0x78>
   10e0e:	ff067693          	andi	a3,a2,-16
   10e12:	8a3d                	andi	a2,a2,15
   10e14:	96ba                	add	a3,a3,a4
   10e16:	c30c                	sw	a1,0(a4)
   10e18:	c34c                	sw	a1,4(a4)
   10e1a:	c70c                	sw	a1,8(a4)
   10e1c:	c74c                	sw	a1,12(a4)
   10e1e:	0741                	addi	a4,a4,16
   10e20:	fed76be3          	bltu	a4,a3,10e16 <memset+0x18>
   10e24:	e211                	bnez	a2,10e28 <memset+0x2a>
   10e26:	8082                	ret
   10e28:	40c306b3          	sub	a3,t1,a2
   10e2c:	068a                	slli	a3,a3,0x2
   10e2e:	00000297          	auipc	t0,0x0
   10e32:	9696                	add	a3,a3,t0
   10e34:	00a68067          	jr	10(a3)
   10e38:	00b70723          	sb	a1,14(a4)
   10e3c:	00b706a3          	sb	a1,13(a4)
   10e40:	00b70623          	sb	a1,12(a4)
   10e44:	00b705a3          	sb	a1,11(a4)
   10e48:	00b70523          	sb	a1,10(a4)
   10e4c:	00b704a3          	sb	a1,9(a4)
   10e50:	00b70423          	sb	a1,8(a4)
   10e54:	00b703a3          	sb	a1,7(a4)
   10e58:	00b70323          	sb	a1,6(a4)
   10e5c:	00b702a3          	sb	a1,5(a4)
   10e60:	00b70223          	sb	a1,4(a4)
   10e64:	00b701a3          	sb	a1,3(a4)
   10e68:	00b70123          	sb	a1,2(a4)
   10e6c:	00b700a3          	sb	a1,1(a4)
   10e70:	00b70023          	sb	a1,0(a4)
   10e74:	8082                	ret
   10e76:	0ff5f593          	zext.b	a1,a1
   10e7a:	00859693          	slli	a3,a1,0x8
   10e7e:	8dd5                	or	a1,a1,a3
   10e80:	01059693          	slli	a3,a1,0x10
   10e84:	8dd5                	or	a1,a1,a3
   10e86:	b761                	j	10e0e <memset+0x10>
   10e88:	00279693          	slli	a3,a5,0x2
   10e8c:	00000297          	auipc	t0,0x0
   10e90:	9696                	add	a3,a3,t0
   10e92:	8286                	mv	t0,ra
   10e94:	fa8680e7          	jalr	-88(a3)
   10e98:	8096                	mv	ra,t0
   10e9a:	17c1                	addi	a5,a5,-16
   10e9c:	8f1d                	sub	a4,a4,a5
   10e9e:	963e                	add	a2,a2,a5
   10ea0:	f8c374e3          	bgeu	t1,a2,10e28 <memset+0x2a>
   10ea4:	b7a5                	j	10e0c <memset+0xe>

00010ea6 <__register_exitproc>:
   10ea6:	1101                	addi	sp,sp,-32
   10ea8:	c84a                	sw	s2,16(sp)
   10eaa:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   10eae:	cc22                	sw	s0,24(sp)
   10eb0:	842a                	mv	s0,a0
   10eb2:	00092503          	lw	a0,0(s2)
   10eb6:	ca26                	sw	s1,20(sp)
   10eb8:	c64e                	sw	s3,12(sp)
   10eba:	c452                	sw	s4,8(sp)
   10ebc:	ce06                	sw	ra,28(sp)
   10ebe:	84ae                	mv	s1,a1
   10ec0:	8a32                	mv	s4,a2
   10ec2:	89b6                	mv	s3,a3
   10ec4:	3735                	jal	10df0 <__retarget_lock_acquire_recursive>
   10ec6:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   10eca:	431c                	lw	a5,0(a4)
   10ecc:	cfb9                	beqz	a5,10f2a <__register_exitproc+0x84>
   10ece:	43d8                	lw	a4,4(a5)
   10ed0:	45fd                	li	a1,31
   10ed2:	00092503          	lw	a0,0(s2)
   10ed6:	04e5ce63          	blt	a1,a4,10f32 <__register_exitproc+0x8c>
   10eda:	00271593          	slli	a1,a4,0x2
   10ede:	ec19                	bnez	s0,10efc <__register_exitproc+0x56>
   10ee0:	0705                	addi	a4,a4,1
   10ee2:	c3d8                	sw	a4,4(a5)
   10ee4:	97ae                	add	a5,a5,a1
   10ee6:	c784                	sw	s1,8(a5)
   10ee8:	3f11                	jal	10dfc <__retarget_lock_release_recursive>
   10eea:	4501                	li	a0,0
   10eec:	40f2                	lw	ra,28(sp)
   10eee:	4462                	lw	s0,24(sp)
   10ef0:	44d2                	lw	s1,20(sp)
   10ef2:	4942                	lw	s2,16(sp)
   10ef4:	49b2                	lw	s3,12(sp)
   10ef6:	4a22                	lw	s4,8(sp)
   10ef8:	6105                	addi	sp,sp,32
   10efa:	8082                	ret
   10efc:	00b78833          	add	a6,a5,a1
   10f00:	09482423          	sw	s4,136(a6)
   10f04:	1887a683          	lw	a3,392(a5)
   10f08:	4605                	li	a2,1
   10f0a:	00e61633          	sll	a2,a2,a4
   10f0e:	8ed1                	or	a3,a3,a2
   10f10:	18d7a423          	sw	a3,392(a5)
   10f14:	11382423          	sw	s3,264(a6)
   10f18:	4689                	li	a3,2
   10f1a:	fcd413e3          	bne	s0,a3,10ee0 <__register_exitproc+0x3a>
   10f1e:	18c7a683          	lw	a3,396(a5)
   10f22:	8ed1                	or	a3,a3,a2
   10f24:	18d7a623          	sw	a3,396(a5)
   10f28:	bf65                	j	10ee0 <__register_exitproc+0x3a>
   10f2a:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   10f2e:	c31c                	sw	a5,0(a4)
   10f30:	bf79                	j	10ece <__register_exitproc+0x28>
   10f32:	35e9                	jal	10dfc <__retarget_lock_release_recursive>
   10f34:	557d                	li	a0,-1
   10f36:	bf5d                	j	10eec <__register_exitproc+0x46>

00010f38 <__call_exitprocs>:
   10f38:	7179                	addi	sp,sp,-48
   10f3a:	c65e                	sw	s7,12(sp)
   10f3c:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   10f40:	c85a                	sw	s6,16(sp)
   10f42:	8b2a                	mv	s6,a0
   10f44:	000ba503          	lw	a0,0(s7)
   10f48:	cc52                	sw	s4,24(sp)
   10f4a:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   10f4e:	d04a                	sw	s2,32(sp)
   10f50:	c462                	sw	s8,8(sp)
   10f52:	d606                	sw	ra,44(sp)
   10f54:	8c2e                	mv	s8,a1
   10f56:	3d69                	jal	10df0 <__retarget_lock_acquire_recursive>
   10f58:	000a2903          	lw	s2,0(s4)
   10f5c:	04090063          	beqz	s2,10f9c <__call_exitprocs+0x64>
   10f60:	ce4e                	sw	s3,28(sp)
   10f62:	ca56                	sw	s5,20(sp)
   10f64:	d422                	sw	s0,40(sp)
   10f66:	d226                	sw	s1,36(sp)
   10f68:	c266                	sw	s9,4(sp)
   10f6a:	59fd                	li	s3,-1
   10f6c:	4a85                	li	s5,1
   10f6e:	00492483          	lw	s1,4(s2)
   10f72:	fff48413          	addi	s0,s1,-1
   10f76:	00044e63          	bltz	s0,10f92 <__call_exitprocs+0x5a>
   10f7a:	048a                	slli	s1,s1,0x2
   10f7c:	94ca                	add	s1,s1,s2
   10f7e:	020c0963          	beqz	s8,10fb0 <__call_exitprocs+0x78>
   10f82:	1044a783          	lw	a5,260(s1)
   10f86:	03878563          	beq	a5,s8,10fb0 <__call_exitprocs+0x78>
   10f8a:	147d                	addi	s0,s0,-1
   10f8c:	14f1                	addi	s1,s1,-4
   10f8e:	ff341ae3          	bne	s0,s3,10f82 <__call_exitprocs+0x4a>
   10f92:	5422                	lw	s0,40(sp)
   10f94:	5492                	lw	s1,36(sp)
   10f96:	49f2                	lw	s3,28(sp)
   10f98:	4ad2                	lw	s5,20(sp)
   10f9a:	4c92                	lw	s9,4(sp)
   10f9c:	000ba503          	lw	a0,0(s7)
   10fa0:	50b2                	lw	ra,44(sp)
   10fa2:	5902                	lw	s2,32(sp)
   10fa4:	4a62                	lw	s4,24(sp)
   10fa6:	4b42                	lw	s6,16(sp)
   10fa8:	4bb2                	lw	s7,12(sp)
   10faa:	4c22                	lw	s8,8(sp)
   10fac:	6145                	addi	sp,sp,48
   10fae:	b5b9                	j	10dfc <__retarget_lock_release_recursive>
   10fb0:	00492783          	lw	a5,4(s2)
   10fb4:	40d4                	lw	a3,4(s1)
   10fb6:	17fd                	addi	a5,a5,-1
   10fb8:	04878c63          	beq	a5,s0,11010 <__call_exitprocs+0xd8>
   10fbc:	0004a223          	sw	zero,4(s1)
   10fc0:	c295                	beqz	a3,10fe4 <__call_exitprocs+0xac>
   10fc2:	18892783          	lw	a5,392(s2)
   10fc6:	008a9733          	sll	a4,s5,s0
   10fca:	00492c83          	lw	s9,4(s2)
   10fce:	8ff9                	and	a5,a5,a4
   10fd0:	ef99                	bnez	a5,10fee <__call_exitprocs+0xb6>
   10fd2:	9682                	jalr	a3
   10fd4:	00492703          	lw	a4,4(s2)
   10fd8:	000a2783          	lw	a5,0(s4)
   10fdc:	03971763          	bne	a4,s9,1100a <__call_exitprocs+0xd2>
   10fe0:	03279563          	bne	a5,s2,1100a <__call_exitprocs+0xd2>
   10fe4:	147d                	addi	s0,s0,-1
   10fe6:	14f1                	addi	s1,s1,-4
   10fe8:	f9341be3          	bne	s0,s3,10f7e <__call_exitprocs+0x46>
   10fec:	b75d                	j	10f92 <__call_exitprocs+0x5a>
   10fee:	18c92783          	lw	a5,396(s2)
   10ff2:	0844a583          	lw	a1,132(s1)
   10ff6:	8f7d                	and	a4,a4,a5
   10ff8:	ef19                	bnez	a4,11016 <__call_exitprocs+0xde>
   10ffa:	855a                	mv	a0,s6
   10ffc:	9682                	jalr	a3
   10ffe:	00492703          	lw	a4,4(s2)
   11002:	000a2783          	lw	a5,0(s4)
   11006:	fd970de3          	beq	a4,s9,10fe0 <__call_exitprocs+0xa8>
   1100a:	d7c1                	beqz	a5,10f92 <__call_exitprocs+0x5a>
   1100c:	893e                	mv	s2,a5
   1100e:	b785                	j	10f6e <__call_exitprocs+0x36>
   11010:	00892223          	sw	s0,4(s2)
   11014:	b775                	j	10fc0 <__call_exitprocs+0x88>
   11016:	852e                	mv	a0,a1
   11018:	9682                	jalr	a3
   1101a:	bf6d                	j	10fd4 <__call_exitprocs+0x9c>

0001101c <_malloc_trim_r>:
   1101c:	1101                	addi	sp,sp,-32
   1101e:	cc22                	sw	s0,24(sp)
   11020:	ca26                	sw	s1,20(sp)
   11022:	c84a                	sw	s2,16(sp)
   11024:	c64e                	sw	s3,12(sp)
   11026:	c452                	sw	s4,8(sp)
   11028:	89ae                	mv	s3,a1
   1102a:	ce06                	sw	ra,28(sp)
   1102c:	892a                	mv	s2,a0
   1102e:	00001a17          	auipc	s4,0x1
   11032:	112a0a13          	addi	s4,s4,274 # 12140 <__malloc_av_>
   11036:	0a3000ef          	jal	118d8 <__malloc_lock>
   1103a:	008a2783          	lw	a5,8(s4)
   1103e:	6405                	lui	s0,0x1
   11040:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   11042:	43c4                	lw	s1,4(a5)
   11044:	6785                	lui	a5,0x1
   11046:	98f1                	andi	s1,s1,-4
   11048:	9426                	add	s0,s0,s1
   1104a:	41340433          	sub	s0,s0,s3
   1104e:	8031                	srli	s0,s0,0xc
   11050:	147d                	addi	s0,s0,-1
   11052:	0432                	slli	s0,s0,0xc
   11054:	00f44b63          	blt	s0,a5,1106a <_malloc_trim_r+0x4e>
   11058:	4581                	li	a1,0
   1105a:	854a                	mv	a0,s2
   1105c:	419000ef          	jal	11c74 <_sbrk_r>
   11060:	008a2783          	lw	a5,8(s4)
   11064:	97a6                	add	a5,a5,s1
   11066:	00f50e63          	beq	a0,a5,11082 <_malloc_trim_r+0x66>
   1106a:	854a                	mv	a0,s2
   1106c:	075000ef          	jal	118e0 <__malloc_unlock>
   11070:	40f2                	lw	ra,28(sp)
   11072:	4462                	lw	s0,24(sp)
   11074:	44d2                	lw	s1,20(sp)
   11076:	4942                	lw	s2,16(sp)
   11078:	49b2                	lw	s3,12(sp)
   1107a:	4a22                	lw	s4,8(sp)
   1107c:	4501                	li	a0,0
   1107e:	6105                	addi	sp,sp,32
   11080:	8082                	ret
   11082:	408005b3          	neg	a1,s0
   11086:	854a                	mv	a0,s2
   11088:	3ed000ef          	jal	11c74 <_sbrk_r>
   1108c:	57fd                	li	a5,-1
   1108e:	02f50963          	beq	a0,a5,110c0 <_malloc_trim_r+0xa4>
   11092:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   11096:	008a2683          	lw	a3,8(s4)
   1109a:	431c                	lw	a5,0(a4)
   1109c:	8c81                	sub	s1,s1,s0
   1109e:	0014e493          	ori	s1,s1,1
   110a2:	854a                	mv	a0,s2
   110a4:	8f81                	sub	a5,a5,s0
   110a6:	c2c4                	sw	s1,4(a3)
   110a8:	c31c                	sw	a5,0(a4)
   110aa:	037000ef          	jal	118e0 <__malloc_unlock>
   110ae:	40f2                	lw	ra,28(sp)
   110b0:	4462                	lw	s0,24(sp)
   110b2:	44d2                	lw	s1,20(sp)
   110b4:	4942                	lw	s2,16(sp)
   110b6:	49b2                	lw	s3,12(sp)
   110b8:	4a22                	lw	s4,8(sp)
   110ba:	4505                	li	a0,1
   110bc:	6105                	addi	sp,sp,32
   110be:	8082                	ret
   110c0:	4581                	li	a1,0
   110c2:	854a                	mv	a0,s2
   110c4:	3b1000ef          	jal	11c74 <_sbrk_r>
   110c8:	008a2703          	lw	a4,8(s4)
   110cc:	46bd                	li	a3,15
   110ce:	40e507b3          	sub	a5,a0,a4
   110d2:	f8f6dce3          	bge	a3,a5,1106a <_malloc_trim_r+0x4e>
   110d6:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   110da:	0017e793          	ori	a5,a5,1
   110de:	c35c                	sw	a5,4(a4)
   110e0:	8d15                	sub	a0,a0,a3
   110e2:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   110e6:	b751                	j	1106a <_malloc_trim_r+0x4e>

000110e8 <_free_r>:
   110e8:	cdf1                	beqz	a1,111c4 <_free_r+0xdc>
   110ea:	1141                	addi	sp,sp,-16
   110ec:	c422                	sw	s0,8(sp)
   110ee:	c226                	sw	s1,4(sp)
   110f0:	842e                	mv	s0,a1
   110f2:	84aa                	mv	s1,a0
   110f4:	c606                	sw	ra,12(sp)
   110f6:	7e2000ef          	jal	118d8 <__malloc_lock>
   110fa:	ffc42583          	lw	a1,-4(s0)
   110fe:	ff840713          	addi	a4,s0,-8
   11102:	00001817          	auipc	a6,0x1
   11106:	03e80813          	addi	a6,a6,62 # 12140 <__malloc_av_>
   1110a:	ffe5f793          	andi	a5,a1,-2
   1110e:	00f70633          	add	a2,a4,a5
   11112:	4254                	lw	a3,4(a2)
   11114:	00882503          	lw	a0,8(a6)
   11118:	0015f893          	andi	a7,a1,1
   1111c:	9af1                	andi	a3,a3,-4
   1111e:	10c50d63          	beq	a0,a2,11238 <_free_r+0x150>
   11122:	c254                	sw	a3,4(a2)
   11124:	00d60533          	add	a0,a2,a3
   11128:	4148                	lw	a0,4(a0)
   1112a:	8905                	andi	a0,a0,1
   1112c:	06089963          	bnez	a7,1119e <_free_r+0xb6>
   11130:	ff842303          	lw	t1,-8(s0)
   11134:	00001897          	auipc	a7,0x1
   11138:	01488893          	addi	a7,a7,20 # 12148 <__malloc_av_+0x8>
   1113c:	40670733          	sub	a4,a4,t1
   11140:	470c                	lw	a1,8(a4)
   11142:	979a                	add	a5,a5,t1
   11144:	0d158e63          	beq	a1,a7,11220 <_free_r+0x138>
   11148:	00c72303          	lw	t1,12(a4)
   1114c:	0065a623          	sw	t1,12(a1)
   11150:	00b32423          	sw	a1,8(t1) # 10166 <frame_dummy+0x1a>
   11154:	10050b63          	beqz	a0,1126a <_free_r+0x182>
   11158:	0017e693          	ori	a3,a5,1
   1115c:	c354                	sw	a3,4(a4)
   1115e:	c21c                	sw	a5,0(a2)
   11160:	1ff00693          	li	a3,511
   11164:	06f6ea63          	bltu	a3,a5,111d8 <_free_r+0xf0>
   11168:	ff87f693          	andi	a3,a5,-8
   1116c:	06a1                	addi	a3,a3,8
   1116e:	00482583          	lw	a1,4(a6)
   11172:	96c2                	add	a3,a3,a6
   11174:	4290                	lw	a2,0(a3)
   11176:	0057d513          	srli	a0,a5,0x5
   1117a:	4785                	li	a5,1
   1117c:	00a797b3          	sll	a5,a5,a0
   11180:	8fcd                	or	a5,a5,a1
   11182:	ff868593          	addi	a1,a3,-8
   11186:	c710                	sw	a2,8(a4)
   11188:	c74c                	sw	a1,12(a4)
   1118a:	00f82223          	sw	a5,4(a6)
   1118e:	c298                	sw	a4,0(a3)
   11190:	c658                	sw	a4,12(a2)
   11192:	4422                	lw	s0,8(sp)
   11194:	40b2                	lw	ra,12(sp)
   11196:	8526                	mv	a0,s1
   11198:	4492                	lw	s1,4(sp)
   1119a:	0141                	addi	sp,sp,16
   1119c:	a791                	j	118e0 <__malloc_unlock>
   1119e:	e505                	bnez	a0,111c6 <_free_r+0xde>
   111a0:	97b6                	add	a5,a5,a3
   111a2:	00001897          	auipc	a7,0x1
   111a6:	fa688893          	addi	a7,a7,-90 # 12148 <__malloc_av_+0x8>
   111aa:	4614                	lw	a3,8(a2)
   111ac:	0017e513          	ori	a0,a5,1
   111b0:	00f705b3          	add	a1,a4,a5
   111b4:	0f168763          	beq	a3,a7,112a2 <_free_r+0x1ba>
   111b8:	4650                	lw	a2,12(a2)
   111ba:	c6d0                	sw	a2,12(a3)
   111bc:	c614                	sw	a3,8(a2)
   111be:	c348                	sw	a0,4(a4)
   111c0:	c19c                	sw	a5,0(a1)
   111c2:	bf79                	j	11160 <_free_r+0x78>
   111c4:	8082                	ret
   111c6:	0015e593          	ori	a1,a1,1
   111ca:	feb42e23          	sw	a1,-4(s0)
   111ce:	c21c                	sw	a5,0(a2)
   111d0:	1ff00693          	li	a3,511
   111d4:	f8f6fae3          	bgeu	a3,a5,11168 <_free_r+0x80>
   111d8:	0097d693          	srli	a3,a5,0x9
   111dc:	4611                	li	a2,4
   111de:	08d66863          	bltu	a2,a3,1126e <_free_r+0x186>
   111e2:	0067d693          	srli	a3,a5,0x6
   111e6:	03968593          	addi	a1,a3,57
   111ea:	058e                	slli	a1,a1,0x3
   111ec:	03868613          	addi	a2,a3,56
   111f0:	95c2                	add	a1,a1,a6
   111f2:	4194                	lw	a3,0(a1)
   111f4:	15e1                	addi	a1,a1,-8
   111f6:	00d59663          	bne	a1,a3,11202 <_free_r+0x11a>
   111fa:	a87d                	j	112b8 <_free_r+0x1d0>
   111fc:	4694                	lw	a3,8(a3)
   111fe:	00d58663          	beq	a1,a3,1120a <_free_r+0x122>
   11202:	42d0                	lw	a2,4(a3)
   11204:	9a71                	andi	a2,a2,-4
   11206:	fec7ebe3          	bltu	a5,a2,111fc <_free_r+0x114>
   1120a:	46cc                	lw	a1,12(a3)
   1120c:	c74c                	sw	a1,12(a4)
   1120e:	c714                	sw	a3,8(a4)
   11210:	4422                	lw	s0,8(sp)
   11212:	40b2                	lw	ra,12(sp)
   11214:	c598                	sw	a4,8(a1)
   11216:	8526                	mv	a0,s1
   11218:	4492                	lw	s1,4(sp)
   1121a:	c6d8                	sw	a4,12(a3)
   1121c:	0141                	addi	sp,sp,16
   1121e:	a5c9                	j	118e0 <__malloc_unlock>
   11220:	e535                	bnez	a0,1128c <_free_r+0x1a4>
   11222:	464c                	lw	a1,12(a2)
   11224:	4610                	lw	a2,8(a2)
   11226:	96be                	add	a3,a3,a5
   11228:	0016e793          	ori	a5,a3,1
   1122c:	c64c                	sw	a1,12(a2)
   1122e:	c590                	sw	a2,8(a1)
   11230:	c35c                	sw	a5,4(a4)
   11232:	9736                	add	a4,a4,a3
   11234:	c314                	sw	a3,0(a4)
   11236:	bfb1                	j	11192 <_free_r+0xaa>
   11238:	96be                	add	a3,a3,a5
   1123a:	00089a63          	bnez	a7,1124e <_free_r+0x166>
   1123e:	ff842583          	lw	a1,-8(s0)
   11242:	8f0d                	sub	a4,a4,a1
   11244:	475c                	lw	a5,12(a4)
   11246:	4710                	lw	a2,8(a4)
   11248:	96ae                	add	a3,a3,a1
   1124a:	c65c                	sw	a5,12(a2)
   1124c:	c790                	sw	a2,8(a5)
   1124e:	0016e613          	ori	a2,a3,1
   11252:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   11256:	c350                	sw	a2,4(a4)
   11258:	00e82423          	sw	a4,8(a6)
   1125c:	f2f6ebe3          	bltu	a3,a5,11192 <_free_r+0xaa>
   11260:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   11264:	8526                	mv	a0,s1
   11266:	3b5d                	jal	1101c <_malloc_trim_r>
   11268:	b72d                	j	11192 <_free_r+0xaa>
   1126a:	97b6                	add	a5,a5,a3
   1126c:	bf3d                	j	111aa <_free_r+0xc2>
   1126e:	4651                	li	a2,20
   11270:	02d67363          	bgeu	a2,a3,11296 <_free_r+0x1ae>
   11274:	05400613          	li	a2,84
   11278:	04d66a63          	bltu	a2,a3,112cc <_free_r+0x1e4>
   1127c:	00c7d693          	srli	a3,a5,0xc
   11280:	06f68593          	addi	a1,a3,111
   11284:	058e                	slli	a1,a1,0x3
   11286:	06e68613          	addi	a2,a3,110
   1128a:	b79d                	j	111f0 <_free_r+0x108>
   1128c:	0017e693          	ori	a3,a5,1
   11290:	c354                	sw	a3,4(a4)
   11292:	c21c                	sw	a5,0(a2)
   11294:	bdfd                	j	11192 <_free_r+0xaa>
   11296:	05c68593          	addi	a1,a3,92
   1129a:	058e                	slli	a1,a1,0x3
   1129c:	05b68613          	addi	a2,a3,91
   112a0:	bf81                	j	111f0 <_free_r+0x108>
   112a2:	00e82a23          	sw	a4,20(a6)
   112a6:	00e82823          	sw	a4,16(a6)
   112aa:	01172623          	sw	a7,12(a4)
   112ae:	01172423          	sw	a7,8(a4)
   112b2:	c348                	sw	a0,4(a4)
   112b4:	c19c                	sw	a5,0(a1)
   112b6:	bdf1                	j	11192 <_free_r+0xaa>
   112b8:	00482503          	lw	a0,4(a6)
   112bc:	8609                	srai	a2,a2,0x2
   112be:	4785                	li	a5,1
   112c0:	00c797b3          	sll	a5,a5,a2
   112c4:	8fc9                	or	a5,a5,a0
   112c6:	00f82223          	sw	a5,4(a6)
   112ca:	b789                	j	1120c <_free_r+0x124>
   112cc:	15400613          	li	a2,340
   112d0:	00d66a63          	bltu	a2,a3,112e4 <_free_r+0x1fc>
   112d4:	00f7d693          	srli	a3,a5,0xf
   112d8:	07868593          	addi	a1,a3,120
   112dc:	058e                	slli	a1,a1,0x3
   112de:	07768613          	addi	a2,a3,119
   112e2:	b739                	j	111f0 <_free_r+0x108>
   112e4:	55400613          	li	a2,1364
   112e8:	00d66a63          	bltu	a2,a3,112fc <_free_r+0x214>
   112ec:	0127d693          	srli	a3,a5,0x12
   112f0:	07d68593          	addi	a1,a3,125
   112f4:	058e                	slli	a1,a1,0x3
   112f6:	07c68613          	addi	a2,a3,124
   112fa:	bddd                	j	111f0 <_free_r+0x108>
   112fc:	3f800593          	li	a1,1016
   11300:	07e00613          	li	a2,126
   11304:	b5f5                	j	111f0 <_free_r+0x108>

00011306 <_malloc_r>:
   11306:	7179                	addi	sp,sp,-48
   11308:	d04a                	sw	s2,32(sp)
   1130a:	d606                	sw	ra,44(sp)
   1130c:	d422                	sw	s0,40(sp)
   1130e:	d226                	sw	s1,36(sp)
   11310:	ce4e                	sw	s3,28(sp)
   11312:	00b58793          	addi	a5,a1,11
   11316:	4759                	li	a4,22
   11318:	892a                	mv	s2,a0
   1131a:	04f76863          	bltu	a4,a5,1136a <_malloc_r+0x64>
   1131e:	44c1                	li	s1,16
   11320:	16b4ea63          	bltu	s1,a1,11494 <_malloc_r+0x18e>
   11324:	2b55                	jal	118d8 <__malloc_lock>
   11326:	47e1                	li	a5,24
   11328:	4589                	li	a1,2
   1132a:	00001997          	auipc	s3,0x1
   1132e:	e1698993          	addi	s3,s3,-490 # 12140 <__malloc_av_>
   11332:	97ce                	add	a5,a5,s3
   11334:	43c0                	lw	s0,4(a5)
   11336:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   1133a:	30e40963          	beq	s0,a4,1164c <_malloc_r+0x346>
   1133e:	405c                	lw	a5,4(s0)
   11340:	4454                	lw	a3,12(s0)
   11342:	4410                	lw	a2,8(s0)
   11344:	9bf1                	andi	a5,a5,-4
   11346:	97a2                	add	a5,a5,s0
   11348:	43d8                	lw	a4,4(a5)
   1134a:	c654                	sw	a3,12(a2)
   1134c:	c690                	sw	a2,8(a3)
   1134e:	00176713          	ori	a4,a4,1
   11352:	854a                	mv	a0,s2
   11354:	c3d8                	sw	a4,4(a5)
   11356:	2369                	jal	118e0 <__malloc_unlock>
   11358:	50b2                	lw	ra,44(sp)
   1135a:	00840513          	addi	a0,s0,8
   1135e:	5422                	lw	s0,40(sp)
   11360:	5492                	lw	s1,36(sp)
   11362:	5902                	lw	s2,32(sp)
   11364:	49f2                	lw	s3,28(sp)
   11366:	6145                	addi	sp,sp,48
   11368:	8082                	ret
   1136a:	ff87f493          	andi	s1,a5,-8
   1136e:	1207c363          	bltz	a5,11494 <_malloc_r+0x18e>
   11372:	12b4e163          	bltu	s1,a1,11494 <_malloc_r+0x18e>
   11376:	238d                	jal	118d8 <__malloc_lock>
   11378:	1f700793          	li	a5,503
   1137c:	3897f763          	bgeu	a5,s1,1170a <_malloc_r+0x404>
   11380:	0094d793          	srli	a5,s1,0x9
   11384:	12078363          	beqz	a5,114aa <_malloc_r+0x1a4>
   11388:	4711                	li	a4,4
   1138a:	30f76663          	bltu	a4,a5,11696 <_malloc_r+0x390>
   1138e:	0064d793          	srli	a5,s1,0x6
   11392:	03978593          	addi	a1,a5,57
   11396:	03878813          	addi	a6,a5,56
   1139a:	00359613          	slli	a2,a1,0x3
   1139e:	00001997          	auipc	s3,0x1
   113a2:	da298993          	addi	s3,s3,-606 # 12140 <__malloc_av_>
   113a6:	964e                	add	a2,a2,s3
   113a8:	4240                	lw	s0,4(a2)
   113aa:	1661                	addi	a2,a2,-8
   113ac:	02860163          	beq	a2,s0,113ce <_malloc_r+0xc8>
   113b0:	453d                	li	a0,15
   113b2:	a039                	j	113c0 <_malloc_r+0xba>
   113b4:	4454                	lw	a3,12(s0)
   113b6:	26075863          	bgez	a4,11626 <_malloc_r+0x320>
   113ba:	00d60a63          	beq	a2,a3,113ce <_malloc_r+0xc8>
   113be:	8436                	mv	s0,a3
   113c0:	405c                	lw	a5,4(s0)
   113c2:	9bf1                	andi	a5,a5,-4
   113c4:	40978733          	sub	a4,a5,s1
   113c8:	fee556e3          	bge	a0,a4,113b4 <_malloc_r+0xae>
   113cc:	85c2                	mv	a1,a6
   113ce:	0109a403          	lw	s0,16(s3)
   113d2:	00001897          	auipc	a7,0x1
   113d6:	d7688893          	addi	a7,a7,-650 # 12148 <__malloc_av_+0x8>
   113da:	1f140c63          	beq	s0,a7,115d2 <_malloc_r+0x2cc>
   113de:	405c                	lw	a5,4(s0)
   113e0:	46bd                	li	a3,15
   113e2:	9bf1                	andi	a5,a5,-4
   113e4:	40978733          	sub	a4,a5,s1
   113e8:	32e6c663          	blt	a3,a4,11714 <_malloc_r+0x40e>
   113ec:	0119aa23          	sw	a7,20(s3)
   113f0:	0119a823          	sw	a7,16(s3)
   113f4:	30075163          	bgez	a4,116f6 <_malloc_r+0x3f0>
   113f8:	1ff00713          	li	a4,511
   113fc:	0049a503          	lw	a0,4(s3)
   11400:	24f76b63          	bltu	a4,a5,11656 <_malloc_r+0x350>
   11404:	ff87f713          	andi	a4,a5,-8
   11408:	0721                	addi	a4,a4,8
   1140a:	974e                	add	a4,a4,s3
   1140c:	4314                	lw	a3,0(a4)
   1140e:	0057d613          	srli	a2,a5,0x5
   11412:	4785                	li	a5,1
   11414:	00c797b3          	sll	a5,a5,a2
   11418:	8d5d                	or	a0,a0,a5
   1141a:	ff870793          	addi	a5,a4,-8
   1141e:	c414                	sw	a3,8(s0)
   11420:	c45c                	sw	a5,12(s0)
   11422:	00a9a223          	sw	a0,4(s3)
   11426:	c300                	sw	s0,0(a4)
   11428:	c6c0                	sw	s0,12(a3)
   1142a:	4025d793          	srai	a5,a1,0x2
   1142e:	4605                	li	a2,1
   11430:	00f61633          	sll	a2,a2,a5
   11434:	08c56263          	bltu	a0,a2,114b8 <_malloc_r+0x1b2>
   11438:	00a677b3          	and	a5,a2,a0
   1143c:	ef81                	bnez	a5,11454 <_malloc_r+0x14e>
   1143e:	0606                	slli	a2,a2,0x1
   11440:	99f1                	andi	a1,a1,-4
   11442:	00a677b3          	and	a5,a2,a0
   11446:	0591                	addi	a1,a1,4
   11448:	e791                	bnez	a5,11454 <_malloc_r+0x14e>
   1144a:	0606                	slli	a2,a2,0x1
   1144c:	00a677b3          	and	a5,a2,a0
   11450:	0591                	addi	a1,a1,4
   11452:	dfe5                	beqz	a5,1144a <_malloc_r+0x144>
   11454:	483d                	li	a6,15
   11456:	00359313          	slli	t1,a1,0x3
   1145a:	934e                	add	t1,t1,s3
   1145c:	851a                	mv	a0,t1
   1145e:	455c                	lw	a5,12(a0)
   11460:	8e2e                	mv	t3,a1
   11462:	24f50a63          	beq	a0,a5,116b6 <_malloc_r+0x3b0>
   11466:	43d8                	lw	a4,4(a5)
   11468:	843e                	mv	s0,a5
   1146a:	47dc                	lw	a5,12(a5)
   1146c:	9b71                	andi	a4,a4,-4
   1146e:	409706b3          	sub	a3,a4,s1
   11472:	24d84963          	blt	a6,a3,116c4 <_malloc_r+0x3be>
   11476:	fe06c6e3          	bltz	a3,11462 <_malloc_r+0x15c>
   1147a:	9722                	add	a4,a4,s0
   1147c:	4354                	lw	a3,4(a4)
   1147e:	4410                	lw	a2,8(s0)
   11480:	854a                	mv	a0,s2
   11482:	0016e693          	ori	a3,a3,1
   11486:	c354                	sw	a3,4(a4)
   11488:	c65c                	sw	a5,12(a2)
   1148a:	c790                	sw	a2,8(a5)
   1148c:	2991                	jal	118e0 <__malloc_unlock>
   1148e:	00840513          	addi	a0,s0,8
   11492:	a029                	j	1149c <_malloc_r+0x196>
   11494:	47b1                	li	a5,12
   11496:	00f92023          	sw	a5,0(s2)
   1149a:	4501                	li	a0,0
   1149c:	50b2                	lw	ra,44(sp)
   1149e:	5422                	lw	s0,40(sp)
   114a0:	5492                	lw	s1,36(sp)
   114a2:	5902                	lw	s2,32(sp)
   114a4:	49f2                	lw	s3,28(sp)
   114a6:	6145                	addi	sp,sp,48
   114a8:	8082                	ret
   114aa:	20000613          	li	a2,512
   114ae:	04000593          	li	a1,64
   114b2:	03f00813          	li	a6,63
   114b6:	b5e5                	j	1139e <_malloc_r+0x98>
   114b8:	0089a403          	lw	s0,8(s3)
   114bc:	c85a                	sw	s6,16(sp)
   114be:	405c                	lw	a5,4(s0)
   114c0:	ffc7fb13          	andi	s6,a5,-4
   114c4:	009b6763          	bltu	s6,s1,114d2 <_malloc_r+0x1cc>
   114c8:	409b0733          	sub	a4,s6,s1
   114cc:	47bd                	li	a5,15
   114ce:	12e7c763          	blt	a5,a4,115fc <_malloc_r+0x2f6>
   114d2:	c266                	sw	s9,4(sp)
   114d4:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   114d8:	ca56                	sw	s5,20(sp)
   114da:	000ca703          	lw	a4,0(s9)
   114de:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   114e2:	cc52                	sw	s4,24(sp)
   114e4:	c65e                	sw	s7,12(sp)
   114e6:	57fd                	li	a5,-1
   114e8:	01640a33          	add	s4,s0,s6
   114ec:	9aa6                	add	s5,s5,s1
   114ee:	2cf70163          	beq	a4,a5,117b0 <_malloc_r+0x4aa>
   114f2:	6785                	lui	a5,0x1
   114f4:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   114f6:	9abe                	add	s5,s5,a5
   114f8:	77fd                	lui	a5,0xfffff
   114fa:	00fafab3          	and	s5,s5,a5
   114fe:	85d6                	mv	a1,s5
   11500:	854a                	mv	a0,s2
   11502:	772000ef          	jal	11c74 <_sbrk_r>
   11506:	57fd                	li	a5,-1
   11508:	8baa                	mv	s7,a0
   1150a:	32f50963          	beq	a0,a5,1183c <_malloc_r+0x536>
   1150e:	c462                	sw	s8,8(sp)
   11510:	0d456463          	bltu	a0,s4,115d8 <_malloc_r+0x2d2>
   11514:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   11518:	000c2583          	lw	a1,0(s8)
   1151c:	95d6                	add	a1,a1,s5
   1151e:	00bc2023          	sw	a1,0(s8)
   11522:	872e                	mv	a4,a1
   11524:	32aa0063          	beq	s4,a0,11844 <_malloc_r+0x53e>
   11528:	000ca683          	lw	a3,0(s9)
   1152c:	57fd                	li	a5,-1
   1152e:	32f68863          	beq	a3,a5,1185e <_malloc_r+0x558>
   11532:	414b87b3          	sub	a5,s7,s4
   11536:	97ba                	add	a5,a5,a4
   11538:	00fc2023          	sw	a5,0(s8)
   1153c:	007bfc93          	andi	s9,s7,7
   11540:	280c8263          	beqz	s9,117c4 <_malloc_r+0x4be>
   11544:	419b8bb3          	sub	s7,s7,s9
   11548:	6585                	lui	a1,0x1
   1154a:	0ba1                	addi	s7,s7,8
   1154c:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   1154e:	9ade                	add	s5,s5,s7
   11550:	419585b3          	sub	a1,a1,s9
   11554:	415585b3          	sub	a1,a1,s5
   11558:	05d2                	slli	a1,a1,0x14
   1155a:	0145da13          	srli	s4,a1,0x14
   1155e:	85d2                	mv	a1,s4
   11560:	854a                	mv	a0,s2
   11562:	2f09                	jal	11c74 <_sbrk_r>
   11564:	57fd                	li	a5,-1
   11566:	32f50863          	beq	a0,a5,11896 <_malloc_r+0x590>
   1156a:	41750533          	sub	a0,a0,s7
   1156e:	01450ab3          	add	s5,a0,s4
   11572:	000c2703          	lw	a4,0(s8)
   11576:	0179a423          	sw	s7,8(s3)
   1157a:	001ae793          	ori	a5,s5,1
   1157e:	00ea05b3          	add	a1,s4,a4
   11582:	00fba223          	sw	a5,4(s7)
   11586:	00bc2023          	sw	a1,0(s8)
   1158a:	03340563          	beq	s0,s3,115b4 <_malloc_r+0x2ae>
   1158e:	46bd                	li	a3,15
   11590:	2566f963          	bgeu	a3,s6,117e2 <_malloc_r+0x4dc>
   11594:	4058                	lw	a4,4(s0)
   11596:	ff4b0793          	addi	a5,s6,-12
   1159a:	9be1                	andi	a5,a5,-8
   1159c:	8b05                	andi	a4,a4,1
   1159e:	8f5d                	or	a4,a4,a5
   115a0:	c058                	sw	a4,4(s0)
   115a2:	4615                	li	a2,5
   115a4:	00f40733          	add	a4,s0,a5
   115a8:	c350                	sw	a2,4(a4)
   115aa:	c710                	sw	a2,8(a4)
   115ac:	1ef6e863          	bltu	a3,a5,1179c <_malloc_r+0x496>
   115b0:	004ba783          	lw	a5,4(s7)
   115b4:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   115b8:	4314                	lw	a3,0(a4)
   115ba:	00b6f363          	bgeu	a3,a1,115c0 <_malloc_r+0x2ba>
   115be:	c30c                	sw	a1,0(a4)
   115c0:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   115c4:	4314                	lw	a3,0(a4)
   115c6:	00b6f363          	bgeu	a3,a1,115cc <_malloc_r+0x2c6>
   115ca:	c30c                	sw	a1,0(a4)
   115cc:	4c22                	lw	s8,8(sp)
   115ce:	845e                	mv	s0,s7
   115d0:	a811                	j	115e4 <_malloc_r+0x2de>
   115d2:	0049a503          	lw	a0,4(s3)
   115d6:	bd91                	j	1142a <_malloc_r+0x124>
   115d8:	25340a63          	beq	s0,s3,1182c <_malloc_r+0x526>
   115dc:	0089a403          	lw	s0,8(s3)
   115e0:	4c22                	lw	s8,8(sp)
   115e2:	405c                	lw	a5,4(s0)
   115e4:	9bf1                	andi	a5,a5,-4
   115e6:	40978733          	sub	a4,a5,s1
   115ea:	2097e063          	bltu	a5,s1,117ea <_malloc_r+0x4e4>
   115ee:	47bd                	li	a5,15
   115f0:	1ee7dd63          	bge	a5,a4,117ea <_malloc_r+0x4e4>
   115f4:	4a62                	lw	s4,24(sp)
   115f6:	4ad2                	lw	s5,20(sp)
   115f8:	4bb2                	lw	s7,12(sp)
   115fa:	4c92                	lw	s9,4(sp)
   115fc:	0014e793          	ori	a5,s1,1
   11600:	c05c                	sw	a5,4(s0)
   11602:	94a2                	add	s1,s1,s0
   11604:	0099a423          	sw	s1,8(s3)
   11608:	00176713          	ori	a4,a4,1
   1160c:	854a                	mv	a0,s2
   1160e:	c0d8                	sw	a4,4(s1)
   11610:	2cc1                	jal	118e0 <__malloc_unlock>
   11612:	50b2                	lw	ra,44(sp)
   11614:	00840513          	addi	a0,s0,8
   11618:	5422                	lw	s0,40(sp)
   1161a:	4b42                	lw	s6,16(sp)
   1161c:	5492                	lw	s1,36(sp)
   1161e:	5902                	lw	s2,32(sp)
   11620:	49f2                	lw	s3,28(sp)
   11622:	6145                	addi	sp,sp,48
   11624:	8082                	ret
   11626:	4410                	lw	a2,8(s0)
   11628:	97a2                	add	a5,a5,s0
   1162a:	43d8                	lw	a4,4(a5)
   1162c:	c654                	sw	a3,12(a2)
   1162e:	c690                	sw	a2,8(a3)
   11630:	00176713          	ori	a4,a4,1
   11634:	854a                	mv	a0,s2
   11636:	c3d8                	sw	a4,4(a5)
   11638:	2465                	jal	118e0 <__malloc_unlock>
   1163a:	50b2                	lw	ra,44(sp)
   1163c:	00840513          	addi	a0,s0,8
   11640:	5422                	lw	s0,40(sp)
   11642:	5492                	lw	s1,36(sp)
   11644:	5902                	lw	s2,32(sp)
   11646:	49f2                	lw	s3,28(sp)
   11648:	6145                	addi	sp,sp,48
   1164a:	8082                	ret
   1164c:	47c0                	lw	s0,12(a5)
   1164e:	0589                	addi	a1,a1,2
   11650:	d6878fe3          	beq	a5,s0,113ce <_malloc_r+0xc8>
   11654:	b1ed                	j	1133e <_malloc_r+0x38>
   11656:	0097d713          	srli	a4,a5,0x9
   1165a:	4691                	li	a3,4
   1165c:	0ee6f263          	bgeu	a3,a4,11740 <_malloc_r+0x43a>
   11660:	46d1                	li	a3,20
   11662:	18e6ec63          	bltu	a3,a4,117fa <_malloc_r+0x4f4>
   11666:	05c70613          	addi	a2,a4,92
   1166a:	060e                	slli	a2,a2,0x3
   1166c:	05b70693          	addi	a3,a4,91
   11670:	964e                	add	a2,a2,s3
   11672:	4218                	lw	a4,0(a2)
   11674:	1661                	addi	a2,a2,-8
   11676:	00e61663          	bne	a2,a4,11682 <_malloc_r+0x37c>
   1167a:	aa2d                	j	117b4 <_malloc_r+0x4ae>
   1167c:	4718                	lw	a4,8(a4)
   1167e:	00e60663          	beq	a2,a4,1168a <_malloc_r+0x384>
   11682:	4354                	lw	a3,4(a4)
   11684:	9af1                	andi	a3,a3,-4
   11686:	fed7ebe3          	bltu	a5,a3,1167c <_malloc_r+0x376>
   1168a:	4750                	lw	a2,12(a4)
   1168c:	c450                	sw	a2,12(s0)
   1168e:	c418                	sw	a4,8(s0)
   11690:	c600                	sw	s0,8(a2)
   11692:	c740                	sw	s0,12(a4)
   11694:	bb59                	j	1142a <_malloc_r+0x124>
   11696:	4751                	li	a4,20
   11698:	0af77c63          	bgeu	a4,a5,11750 <_malloc_r+0x44a>
   1169c:	05400713          	li	a4,84
   116a0:	16f76963          	bltu	a4,a5,11812 <_malloc_r+0x50c>
   116a4:	00c4d793          	srli	a5,s1,0xc
   116a8:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   116ac:	06e78813          	addi	a6,a5,110
   116b0:	00359613          	slli	a2,a1,0x3
   116b4:	b1ed                	j	1139e <_malloc_r+0x98>
   116b6:	0e05                	addi	t3,t3,1
   116b8:	003e7793          	andi	a5,t3,3
   116bc:	0521                	addi	a0,a0,8
   116be:	c7cd                	beqz	a5,11768 <_malloc_r+0x462>
   116c0:	455c                	lw	a5,12(a0)
   116c2:	b345                	j	11462 <_malloc_r+0x15c>
   116c4:	4410                	lw	a2,8(s0)
   116c6:	0014e593          	ori	a1,s1,1
   116ca:	c04c                	sw	a1,4(s0)
   116cc:	c65c                	sw	a5,12(a2)
   116ce:	c790                	sw	a2,8(a5)
   116d0:	94a2                	add	s1,s1,s0
   116d2:	0099aa23          	sw	s1,20(s3)
   116d6:	0099a823          	sw	s1,16(s3)
   116da:	0016e793          	ori	a5,a3,1
   116de:	9722                	add	a4,a4,s0
   116e0:	0114a623          	sw	a7,12(s1)
   116e4:	0114a423          	sw	a7,8(s1)
   116e8:	c0dc                	sw	a5,4(s1)
   116ea:	854a                	mv	a0,s2
   116ec:	c314                	sw	a3,0(a4)
   116ee:	2acd                	jal	118e0 <__malloc_unlock>
   116f0:	00840513          	addi	a0,s0,8
   116f4:	b365                	j	1149c <_malloc_r+0x196>
   116f6:	97a2                	add	a5,a5,s0
   116f8:	43d8                	lw	a4,4(a5)
   116fa:	854a                	mv	a0,s2
   116fc:	00176713          	ori	a4,a4,1
   11700:	c3d8                	sw	a4,4(a5)
   11702:	2af9                	jal	118e0 <__malloc_unlock>
   11704:	00840513          	addi	a0,s0,8
   11708:	bb51                	j	1149c <_malloc_r+0x196>
   1170a:	0034d593          	srli	a1,s1,0x3
   1170e:	00848793          	addi	a5,s1,8
   11712:	b921                	j	1132a <_malloc_r+0x24>
   11714:	0014e693          	ori	a3,s1,1
   11718:	c054                	sw	a3,4(s0)
   1171a:	94a2                	add	s1,s1,s0
   1171c:	0099aa23          	sw	s1,20(s3)
   11720:	0099a823          	sw	s1,16(s3)
   11724:	00176693          	ori	a3,a4,1
   11728:	97a2                	add	a5,a5,s0
   1172a:	0114a623          	sw	a7,12(s1)
   1172e:	0114a423          	sw	a7,8(s1)
   11732:	c0d4                	sw	a3,4(s1)
   11734:	854a                	mv	a0,s2
   11736:	c398                	sw	a4,0(a5)
   11738:	2265                	jal	118e0 <__malloc_unlock>
   1173a:	00840513          	addi	a0,s0,8
   1173e:	bbb9                	j	1149c <_malloc_r+0x196>
   11740:	0067d713          	srli	a4,a5,0x6
   11744:	03970613          	addi	a2,a4,57
   11748:	060e                	slli	a2,a2,0x3
   1174a:	03870693          	addi	a3,a4,56
   1174e:	b70d                	j	11670 <_malloc_r+0x36a>
   11750:	05c78593          	addi	a1,a5,92
   11754:	05b78813          	addi	a6,a5,91
   11758:	00359613          	slli	a2,a1,0x3
   1175c:	b189                	j	1139e <_malloc_r+0x98>
   1175e:	00832783          	lw	a5,8(t1)
   11762:	15fd                	addi	a1,a1,-1
   11764:	16679763          	bne	a5,t1,118d2 <_malloc_r+0x5cc>
   11768:	0035f793          	andi	a5,a1,3
   1176c:	1361                	addi	t1,t1,-8
   1176e:	fbe5                	bnez	a5,1175e <_malloc_r+0x458>
   11770:	0049a703          	lw	a4,4(s3)
   11774:	fff64793          	not	a5,a2
   11778:	8ff9                	and	a5,a5,a4
   1177a:	00f9a223          	sw	a5,4(s3)
   1177e:	0606                	slli	a2,a2,0x1
   11780:	d2c7ece3          	bltu	a5,a2,114b8 <_malloc_r+0x1b2>
   11784:	d2060ae3          	beqz	a2,114b8 <_malloc_r+0x1b2>
   11788:	00f67733          	and	a4,a2,a5
   1178c:	e711                	bnez	a4,11798 <_malloc_r+0x492>
   1178e:	0606                	slli	a2,a2,0x1
   11790:	00f67733          	and	a4,a2,a5
   11794:	0e11                	addi	t3,t3,4
   11796:	df65                	beqz	a4,1178e <_malloc_r+0x488>
   11798:	85f2                	mv	a1,t3
   1179a:	b975                	j	11456 <_malloc_r+0x150>
   1179c:	00840593          	addi	a1,s0,8
   117a0:	854a                	mv	a0,s2
   117a2:	947ff0ef          	jal	110e8 <_free_r>
   117a6:	000c2583          	lw	a1,0(s8)
   117aa:	0089ab83          	lw	s7,8(s3)
   117ae:	b509                	j	115b0 <_malloc_r+0x2aa>
   117b0:	0ac1                	addi	s5,s5,16
   117b2:	b3b1                	j	114fe <_malloc_r+0x1f8>
   117b4:	8689                	srai	a3,a3,0x2
   117b6:	4785                	li	a5,1
   117b8:	00d797b3          	sll	a5,a5,a3
   117bc:	8d5d                	or	a0,a0,a5
   117be:	00a9a223          	sw	a0,4(s3)
   117c2:	b5e9                	j	1168c <_malloc_r+0x386>
   117c4:	015b85b3          	add	a1,s7,s5
   117c8:	40b005b3          	neg	a1,a1
   117cc:	05d2                	slli	a1,a1,0x14
   117ce:	0145da13          	srli	s4,a1,0x14
   117d2:	85d2                	mv	a1,s4
   117d4:	854a                	mv	a0,s2
   117d6:	2979                	jal	11c74 <_sbrk_r>
   117d8:	57fd                	li	a5,-1
   117da:	d8f518e3          	bne	a0,a5,1156a <_malloc_r+0x264>
   117de:	4a01                	li	s4,0
   117e0:	bb49                	j	11572 <_malloc_r+0x26c>
   117e2:	4c22                	lw	s8,8(sp)
   117e4:	4785                	li	a5,1
   117e6:	00fba223          	sw	a5,4(s7)
   117ea:	854a                	mv	a0,s2
   117ec:	28d5                	jal	118e0 <__malloc_unlock>
   117ee:	4a62                	lw	s4,24(sp)
   117f0:	4ad2                	lw	s5,20(sp)
   117f2:	4b42                	lw	s6,16(sp)
   117f4:	4bb2                	lw	s7,12(sp)
   117f6:	4c92                	lw	s9,4(sp)
   117f8:	b14d                	j	1149a <_malloc_r+0x194>
   117fa:	05400693          	li	a3,84
   117fe:	06e6e363          	bltu	a3,a4,11864 <_malloc_r+0x55e>
   11802:	00c7d713          	srli	a4,a5,0xc
   11806:	06f70613          	addi	a2,a4,111
   1180a:	060e                	slli	a2,a2,0x3
   1180c:	06e70693          	addi	a3,a4,110
   11810:	b585                	j	11670 <_malloc_r+0x36a>
   11812:	15400713          	li	a4,340
   11816:	06f76363          	bltu	a4,a5,1187c <_malloc_r+0x576>
   1181a:	00f4d793          	srli	a5,s1,0xf
   1181e:	07878593          	addi	a1,a5,120
   11822:	07778813          	addi	a6,a5,119
   11826:	00359613          	slli	a2,a1,0x3
   1182a:	be95                	j	1139e <_malloc_r+0x98>
   1182c:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   11830:	000c2703          	lw	a4,0(s8)
   11834:	9756                	add	a4,a4,s5
   11836:	00ec2023          	sw	a4,0(s8)
   1183a:	b1fd                	j	11528 <_malloc_r+0x222>
   1183c:	0089a403          	lw	s0,8(s3)
   11840:	405c                	lw	a5,4(s0)
   11842:	b34d                	j	115e4 <_malloc_r+0x2de>
   11844:	01451793          	slli	a5,a0,0x14
   11848:	ce0790e3          	bnez	a5,11528 <_malloc_r+0x222>
   1184c:	0089ab83          	lw	s7,8(s3)
   11850:	015b07b3          	add	a5,s6,s5
   11854:	0017e793          	ori	a5,a5,1
   11858:	00fba223          	sw	a5,4(s7)
   1185c:	bba1                	j	115b4 <_malloc_r+0x2ae>
   1185e:	017ca023          	sw	s7,0(s9)
   11862:	b9e9                	j	1153c <_malloc_r+0x236>
   11864:	15400693          	li	a3,340
   11868:	02e6ed63          	bltu	a3,a4,118a2 <_malloc_r+0x59c>
   1186c:	00f7d713          	srli	a4,a5,0xf
   11870:	07870613          	addi	a2,a4,120
   11874:	060e                	slli	a2,a2,0x3
   11876:	07770693          	addi	a3,a4,119
   1187a:	bbdd                	j	11670 <_malloc_r+0x36a>
   1187c:	55400713          	li	a4,1364
   11880:	02f76d63          	bltu	a4,a5,118ba <_malloc_r+0x5b4>
   11884:	0124d793          	srli	a5,s1,0x12
   11888:	07d78593          	addi	a1,a5,125
   1188c:	07c78813          	addi	a6,a5,124
   11890:	00359613          	slli	a2,a1,0x3
   11894:	b629                	j	1139e <_malloc_r+0x98>
   11896:	1ce1                	addi	s9,s9,-8
   11898:	9ae6                	add	s5,s5,s9
   1189a:	417a8ab3          	sub	s5,s5,s7
   1189e:	4a01                	li	s4,0
   118a0:	b9c9                	j	11572 <_malloc_r+0x26c>
   118a2:	55400693          	li	a3,1364
   118a6:	02e6e163          	bltu	a3,a4,118c8 <_malloc_r+0x5c2>
   118aa:	0127d713          	srli	a4,a5,0x12
   118ae:	07d70613          	addi	a2,a4,125
   118b2:	060e                	slli	a2,a2,0x3
   118b4:	07c70693          	addi	a3,a4,124
   118b8:	bb65                	j	11670 <_malloc_r+0x36a>
   118ba:	3f800613          	li	a2,1016
   118be:	07f00593          	li	a1,127
   118c2:	07e00813          	li	a6,126
   118c6:	bce1                	j	1139e <_malloc_r+0x98>
   118c8:	3f800613          	li	a2,1016
   118cc:	07e00693          	li	a3,126
   118d0:	b345                	j	11670 <_malloc_r+0x36a>
   118d2:	0049a783          	lw	a5,4(s3)
   118d6:	b565                	j	1177e <_malloc_r+0x478>

000118d8 <__malloc_lock>:
   118d8:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   118dc:	d14ff06f          	j	10df0 <__retarget_lock_acquire_recursive>

000118e0 <__malloc_unlock>:
   118e0:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   118e4:	d18ff06f          	j	10dfc <__retarget_lock_release_recursive>

000118e8 <_fclose_r>:
   118e8:	1141                	addi	sp,sp,-16
   118ea:	c606                	sw	ra,12(sp)
   118ec:	c04a                	sw	s2,0(sp)
   118ee:	c9c1                	beqz	a1,1197e <_fclose_r+0x96>
   118f0:	c422                	sw	s0,8(sp)
   118f2:	c226                	sw	s1,4(sp)
   118f4:	842e                	mv	s0,a1
   118f6:	84aa                	mv	s1,a0
   118f8:	c119                	beqz	a0,118fe <_fclose_r+0x16>
   118fa:	595c                	lw	a5,52(a0)
   118fc:	c3d5                	beqz	a5,119a0 <_fclose_r+0xb8>
   118fe:	507c                	lw	a5,100(s0)
   11900:	00c41703          	lh	a4,12(s0)
   11904:	8b85                	andi	a5,a5,1
   11906:	ebad                	bnez	a5,11978 <_fclose_r+0x90>
   11908:	20077713          	andi	a4,a4,512
   1190c:	cf49                	beqz	a4,119a6 <_fclose_r+0xbe>
   1190e:	85a2                	mv	a1,s0
   11910:	8526                	mv	a0,s1
   11912:	20c9                	jal	119d4 <__sflush_r>
   11914:	545c                	lw	a5,44(s0)
   11916:	892a                	mv	s2,a0
   11918:	c791                	beqz	a5,11924 <_fclose_r+0x3c>
   1191a:	4c4c                	lw	a1,28(s0)
   1191c:	8526                	mv	a0,s1
   1191e:	9782                	jalr	a5
   11920:	06054563          	bltz	a0,1198a <_fclose_r+0xa2>
   11924:	00c45783          	lhu	a5,12(s0)
   11928:	0807f793          	andi	a5,a5,128
   1192c:	e7ad                	bnez	a5,11996 <_fclose_r+0xae>
   1192e:	580c                	lw	a1,48(s0)
   11930:	c991                	beqz	a1,11944 <_fclose_r+0x5c>
   11932:	04040793          	addi	a5,s0,64
   11936:	00f58563          	beq	a1,a5,11940 <_fclose_r+0x58>
   1193a:	8526                	mv	a0,s1
   1193c:	facff0ef          	jal	110e8 <_free_r>
   11940:	02042823          	sw	zero,48(s0)
   11944:	406c                	lw	a1,68(s0)
   11946:	c591                	beqz	a1,11952 <_fclose_r+0x6a>
   11948:	8526                	mv	a0,s1
   1194a:	f9eff0ef          	jal	110e8 <_free_r>
   1194e:	04042223          	sw	zero,68(s0)
   11952:	8d6ff0ef          	jal	10a28 <__sfp_lock_acquire>
   11956:	507c                	lw	a5,100(s0)
   11958:	00041623          	sh	zero,12(s0)
   1195c:	8b85                	andi	a5,a5,1
   1195e:	c3bd                	beqz	a5,119c4 <_fclose_r+0xdc>
   11960:	4c28                	lw	a0,88(s0)
   11962:	c8aff0ef          	jal	10dec <__retarget_lock_close_recursive>
   11966:	8c8ff0ef          	jal	10a2e <__sfp_lock_release>
   1196a:	40b2                	lw	ra,12(sp)
   1196c:	4422                	lw	s0,8(sp)
   1196e:	4492                	lw	s1,4(sp)
   11970:	854a                	mv	a0,s2
   11972:	4902                	lw	s2,0(sp)
   11974:	0141                	addi	sp,sp,16
   11976:	8082                	ret
   11978:	fb59                	bnez	a4,1190e <_fclose_r+0x26>
   1197a:	4422                	lw	s0,8(sp)
   1197c:	4492                	lw	s1,4(sp)
   1197e:	40b2                	lw	ra,12(sp)
   11980:	4901                	li	s2,0
   11982:	854a                	mv	a0,s2
   11984:	4902                	lw	s2,0(sp)
   11986:	0141                	addi	sp,sp,16
   11988:	8082                	ret
   1198a:	00c45783          	lhu	a5,12(s0)
   1198e:	597d                	li	s2,-1
   11990:	0807f793          	andi	a5,a5,128
   11994:	dfc9                	beqz	a5,1192e <_fclose_r+0x46>
   11996:	480c                	lw	a1,16(s0)
   11998:	8526                	mv	a0,s1
   1199a:	f4eff0ef          	jal	110e8 <_free_r>
   1199e:	bf41                	j	1192e <_fclose_r+0x46>
   119a0:	84cff0ef          	jal	109ec <__sinit>
   119a4:	bfa9                	j	118fe <_fclose_r+0x16>
   119a6:	4c28                	lw	a0,88(s0)
   119a8:	c48ff0ef          	jal	10df0 <__retarget_lock_acquire_recursive>
   119ac:	00c41783          	lh	a5,12(s0)
   119b0:	ffb9                	bnez	a5,1190e <_fclose_r+0x26>
   119b2:	507c                	lw	a5,100(s0)
   119b4:	8b85                	andi	a5,a5,1
   119b6:	f3f1                	bnez	a5,1197a <_fclose_r+0x92>
   119b8:	4c28                	lw	a0,88(s0)
   119ba:	c42ff0ef          	jal	10dfc <__retarget_lock_release_recursive>
   119be:	4422                	lw	s0,8(sp)
   119c0:	4492                	lw	s1,4(sp)
   119c2:	bf75                	j	1197e <_fclose_r+0x96>
   119c4:	4c28                	lw	a0,88(s0)
   119c6:	c36ff0ef          	jal	10dfc <__retarget_lock_release_recursive>
   119ca:	bf59                	j	11960 <_fclose_r+0x78>

000119cc <fclose>:
   119cc:	85aa                	mv	a1,a0
   119ce:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   119d2:	bf19                	j	118e8 <_fclose_r>

000119d4 <__sflush_r>:
   119d4:	00c59703          	lh	a4,12(a1)
   119d8:	1101                	addi	sp,sp,-32
   119da:	cc22                	sw	s0,24(sp)
   119dc:	c64e                	sw	s3,12(sp)
   119de:	ce06                	sw	ra,28(sp)
   119e0:	00877793          	andi	a5,a4,8
   119e4:	842e                	mv	s0,a1
   119e6:	89aa                	mv	s3,a0
   119e8:	e7e1                	bnez	a5,11ab0 <__sflush_r+0xdc>
   119ea:	6785                	lui	a5,0x1
   119ec:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   119f0:	41d4                	lw	a3,4(a1)
   119f2:	8fd9                	or	a5,a5,a4
   119f4:	00f59623          	sh	a5,12(a1)
   119f8:	10d05963          	blez	a3,11b0a <__sflush_r+0x136>
   119fc:	02842803          	lw	a6,40(s0)
   11a00:	0a080263          	beqz	a6,11aa4 <__sflush_r+0xd0>
   11a04:	ca26                	sw	s1,20(sp)
   11a06:	01371693          	slli	a3,a4,0x13
   11a0a:	0009a483          	lw	s1,0(s3)
   11a0e:	0009a023          	sw	zero,0(s3)
   11a12:	1006c363          	bltz	a3,11b18 <__sflush_r+0x144>
   11a16:	4c4c                	lw	a1,28(s0)
   11a18:	4601                	li	a2,0
   11a1a:	4685                	li	a3,1
   11a1c:	854e                	mv	a0,s3
   11a1e:	9802                	jalr	a6
   11a20:	57fd                	li	a5,-1
   11a22:	862a                	mv	a2,a0
   11a24:	12f50163          	beq	a0,a5,11b46 <__sflush_r+0x172>
   11a28:	00c41783          	lh	a5,12(s0)
   11a2c:	02842803          	lw	a6,40(s0)
   11a30:	8b91                	andi	a5,a5,4
   11a32:	c799                	beqz	a5,11a40 <__sflush_r+0x6c>
   11a34:	4058                	lw	a4,4(s0)
   11a36:	581c                	lw	a5,48(s0)
   11a38:	8e19                	sub	a2,a2,a4
   11a3a:	c399                	beqz	a5,11a40 <__sflush_r+0x6c>
   11a3c:	5c5c                	lw	a5,60(s0)
   11a3e:	8e1d                	sub	a2,a2,a5
   11a40:	4c4c                	lw	a1,28(s0)
   11a42:	4681                	li	a3,0
   11a44:	854e                	mv	a0,s3
   11a46:	9802                	jalr	a6
   11a48:	577d                	li	a4,-1
   11a4a:	00c41783          	lh	a5,12(s0)
   11a4e:	0ce51763          	bne	a0,a4,11b1c <__sflush_r+0x148>
   11a52:	0009a683          	lw	a3,0(s3)
   11a56:	4775                	li	a4,29
   11a58:	10d76363          	bltu	a4,a3,11b5e <__sflush_r+0x18a>
   11a5c:	20400737          	lui	a4,0x20400
   11a60:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   11a62:	00d75733          	srl	a4,a4,a3
   11a66:	8b05                	andi	a4,a4,1
   11a68:	cb7d                	beqz	a4,11b5e <__sflush_r+0x18a>
   11a6a:	4810                	lw	a2,16(s0)
   11a6c:	777d                	lui	a4,0xfffff
   11a6e:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11a72:	8f7d                	and	a4,a4,a5
   11a74:	00e41623          	sh	a4,12(s0)
   11a78:	00042223          	sw	zero,4(s0)
   11a7c:	c010                	sw	a2,0(s0)
   11a7e:	01379713          	slli	a4,a5,0x13
   11a82:	00075363          	bgez	a4,11a88 <__sflush_r+0xb4>
   11a86:	cacd                	beqz	a3,11b38 <__sflush_r+0x164>
   11a88:	580c                	lw	a1,48(s0)
   11a8a:	0099a023          	sw	s1,0(s3)
   11a8e:	c9d5                	beqz	a1,11b42 <__sflush_r+0x16e>
   11a90:	04040793          	addi	a5,s0,64
   11a94:	00f58563          	beq	a1,a5,11a9e <__sflush_r+0xca>
   11a98:	854e                	mv	a0,s3
   11a9a:	e4eff0ef          	jal	110e8 <_free_r>
   11a9e:	44d2                	lw	s1,20(sp)
   11aa0:	02042823          	sw	zero,48(s0)
   11aa4:	40f2                	lw	ra,28(sp)
   11aa6:	4462                	lw	s0,24(sp)
   11aa8:	49b2                	lw	s3,12(sp)
   11aaa:	4501                	li	a0,0
   11aac:	6105                	addi	sp,sp,32
   11aae:	8082                	ret
   11ab0:	c84a                	sw	s2,16(sp)
   11ab2:	0105a903          	lw	s2,16(a1)
   11ab6:	04090f63          	beqz	s2,11b14 <__sflush_r+0x140>
   11aba:	ca26                	sw	s1,20(sp)
   11abc:	4184                	lw	s1,0(a1)
   11abe:	8b0d                	andi	a4,a4,3
   11ac0:	0125a023          	sw	s2,0(a1)
   11ac4:	412484b3          	sub	s1,s1,s2
   11ac8:	4781                	li	a5,0
   11aca:	e311                	bnez	a4,11ace <__sflush_r+0xfa>
   11acc:	49dc                	lw	a5,20(a1)
   11ace:	c41c                	sw	a5,8(s0)
   11ad0:	00904663          	bgtz	s1,11adc <__sflush_r+0x108>
   11ad4:	a83d                	j	11b12 <__sflush_r+0x13e>
   11ad6:	992a                	add	s2,s2,a0
   11ad8:	02905d63          	blez	s1,11b12 <__sflush_r+0x13e>
   11adc:	505c                	lw	a5,36(s0)
   11ade:	4c4c                	lw	a1,28(s0)
   11ae0:	86a6                	mv	a3,s1
   11ae2:	864a                	mv	a2,s2
   11ae4:	854e                	mv	a0,s3
   11ae6:	9782                	jalr	a5
   11ae8:	8c89                	sub	s1,s1,a0
   11aea:	fea046e3          	bgtz	a0,11ad6 <__sflush_r+0x102>
   11aee:	00c41783          	lh	a5,12(s0)
   11af2:	4942                	lw	s2,16(sp)
   11af4:	0407e793          	ori	a5,a5,64
   11af8:	40f2                	lw	ra,28(sp)
   11afa:	00f41623          	sh	a5,12(s0)
   11afe:	4462                	lw	s0,24(sp)
   11b00:	44d2                	lw	s1,20(sp)
   11b02:	49b2                	lw	s3,12(sp)
   11b04:	557d                	li	a0,-1
   11b06:	6105                	addi	sp,sp,32
   11b08:	8082                	ret
   11b0a:	5dd4                	lw	a3,60(a1)
   11b0c:	eed048e3          	bgtz	a3,119fc <__sflush_r+0x28>
   11b10:	bf51                	j	11aa4 <__sflush_r+0xd0>
   11b12:	44d2                	lw	s1,20(sp)
   11b14:	4942                	lw	s2,16(sp)
   11b16:	b779                	j	11aa4 <__sflush_r+0xd0>
   11b18:	4830                	lw	a2,80(s0)
   11b1a:	bf19                	j	11a30 <__sflush_r+0x5c>
   11b1c:	4814                	lw	a3,16(s0)
   11b1e:	777d                	lui	a4,0xfffff
   11b20:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11b24:	8f7d                	and	a4,a4,a5
   11b26:	00e41623          	sh	a4,12(s0)
   11b2a:	00042223          	sw	zero,4(s0)
   11b2e:	c014                	sw	a3,0(s0)
   11b30:	01379713          	slli	a4,a5,0x13
   11b34:	f4075ae3          	bgez	a4,11a88 <__sflush_r+0xb4>
   11b38:	580c                	lw	a1,48(s0)
   11b3a:	c828                	sw	a0,80(s0)
   11b3c:	0099a023          	sw	s1,0(s3)
   11b40:	f9a1                	bnez	a1,11a90 <__sflush_r+0xbc>
   11b42:	44d2                	lw	s1,20(sp)
   11b44:	b785                	j	11aa4 <__sflush_r+0xd0>
   11b46:	0009a783          	lw	a5,0(s3)
   11b4a:	ec078fe3          	beqz	a5,11a28 <__sflush_r+0x54>
   11b4e:	4775                	li	a4,29
   11b50:	00e78a63          	beq	a5,a4,11b64 <__sflush_r+0x190>
   11b54:	4759                	li	a4,22
   11b56:	00e78763          	beq	a5,a4,11b64 <__sflush_r+0x190>
   11b5a:	00c41783          	lh	a5,12(s0)
   11b5e:	0407e793          	ori	a5,a5,64
   11b62:	bf59                	j	11af8 <__sflush_r+0x124>
   11b64:	0099a023          	sw	s1,0(s3)
   11b68:	44d2                	lw	s1,20(sp)
   11b6a:	bf2d                	j	11aa4 <__sflush_r+0xd0>

00011b6c <_fflush_r>:
   11b6c:	1141                	addi	sp,sp,-16
   11b6e:	c422                	sw	s0,8(sp)
   11b70:	c226                	sw	s1,4(sp)
   11b72:	c606                	sw	ra,12(sp)
   11b74:	c04a                	sw	s2,0(sp)
   11b76:	84aa                	mv	s1,a0
   11b78:	842e                	mv	s0,a1
   11b7a:	c119                	beqz	a0,11b80 <_fflush_r+0x14>
   11b7c:	595c                	lw	a5,52(a0)
   11b7e:	c3bd                	beqz	a5,11be4 <_fflush_r+0x78>
   11b80:	00c41783          	lh	a5,12(s0)
   11b84:	4901                	li	s2,0
   11b86:	c39d                	beqz	a5,11bac <_fflush_r+0x40>
   11b88:	5078                	lw	a4,100(s0)
   11b8a:	8b05                	andi	a4,a4,1
   11b8c:	e701                	bnez	a4,11b94 <_fflush_r+0x28>
   11b8e:	2007f793          	andi	a5,a5,512
   11b92:	c785                	beqz	a5,11bba <_fflush_r+0x4e>
   11b94:	8526                	mv	a0,s1
   11b96:	85a2                	mv	a1,s0
   11b98:	3d35                	jal	119d4 <__sflush_r>
   11b9a:	507c                	lw	a5,100(s0)
   11b9c:	892a                	mv	s2,a0
   11b9e:	8b85                	andi	a5,a5,1
   11ba0:	e791                	bnez	a5,11bac <_fflush_r+0x40>
   11ba2:	00c45783          	lhu	a5,12(s0)
   11ba6:	2007f793          	andi	a5,a5,512
   11baa:	c39d                	beqz	a5,11bd0 <_fflush_r+0x64>
   11bac:	40b2                	lw	ra,12(sp)
   11bae:	4422                	lw	s0,8(sp)
   11bb0:	4492                	lw	s1,4(sp)
   11bb2:	854a                	mv	a0,s2
   11bb4:	4902                	lw	s2,0(sp)
   11bb6:	0141                	addi	sp,sp,16
   11bb8:	8082                	ret
   11bba:	4c28                	lw	a0,88(s0)
   11bbc:	a34ff0ef          	jal	10df0 <__retarget_lock_acquire_recursive>
   11bc0:	8526                	mv	a0,s1
   11bc2:	85a2                	mv	a1,s0
   11bc4:	3d01                	jal	119d4 <__sflush_r>
   11bc6:	507c                	lw	a5,100(s0)
   11bc8:	892a                	mv	s2,a0
   11bca:	8b85                	andi	a5,a5,1
   11bcc:	f3e5                	bnez	a5,11bac <_fflush_r+0x40>
   11bce:	bfd1                	j	11ba2 <_fflush_r+0x36>
   11bd0:	4c28                	lw	a0,88(s0)
   11bd2:	a2aff0ef          	jal	10dfc <__retarget_lock_release_recursive>
   11bd6:	40b2                	lw	ra,12(sp)
   11bd8:	4422                	lw	s0,8(sp)
   11bda:	4492                	lw	s1,4(sp)
   11bdc:	854a                	mv	a0,s2
   11bde:	4902                	lw	s2,0(sp)
   11be0:	0141                	addi	sp,sp,16
   11be2:	8082                	ret
   11be4:	e09fe0ef          	jal	109ec <__sinit>
   11be8:	bf61                	j	11b80 <_fflush_r+0x14>

00011bea <fflush>:
   11bea:	c53d                	beqz	a0,11c58 <fflush+0x6e>
   11bec:	1141                	addi	sp,sp,-16
   11bee:	c04a                	sw	s2,0(sp)
   11bf0:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   11bf4:	c422                	sw	s0,8(sp)
   11bf6:	c606                	sw	ra,12(sp)
   11bf8:	c226                	sw	s1,4(sp)
   11bfa:	842a                	mv	s0,a0
   11bfc:	00090563          	beqz	s2,11c06 <fflush+0x1c>
   11c00:	03492783          	lw	a5,52(s2)
   11c04:	cf95                	beqz	a5,11c40 <fflush+0x56>
   11c06:	00c41783          	lh	a5,12(s0)
   11c0a:	4481                	li	s1,0
   11c0c:	c39d                	beqz	a5,11c32 <fflush+0x48>
   11c0e:	5078                	lw	a4,100(s0)
   11c10:	8b05                	andi	a4,a4,1
   11c12:	e701                	bnez	a4,11c1a <fflush+0x30>
   11c14:	2007f793          	andi	a5,a5,512
   11c18:	cb85                	beqz	a5,11c48 <fflush+0x5e>
   11c1a:	854a                	mv	a0,s2
   11c1c:	85a2                	mv	a1,s0
   11c1e:	3b5d                	jal	119d4 <__sflush_r>
   11c20:	507c                	lw	a5,100(s0)
   11c22:	84aa                	mv	s1,a0
   11c24:	8b85                	andi	a5,a5,1
   11c26:	e791                	bnez	a5,11c32 <fflush+0x48>
   11c28:	00c45783          	lhu	a5,12(s0)
   11c2c:	2007f793          	andi	a5,a5,512
   11c30:	c385                	beqz	a5,11c50 <fflush+0x66>
   11c32:	40b2                	lw	ra,12(sp)
   11c34:	4422                	lw	s0,8(sp)
   11c36:	4902                	lw	s2,0(sp)
   11c38:	8526                	mv	a0,s1
   11c3a:	4492                	lw	s1,4(sp)
   11c3c:	0141                	addi	sp,sp,16
   11c3e:	8082                	ret
   11c40:	854a                	mv	a0,s2
   11c42:	dabfe0ef          	jal	109ec <__sinit>
   11c46:	b7c1                	j	11c06 <fflush+0x1c>
   11c48:	4c28                	lw	a0,88(s0)
   11c4a:	9a6ff0ef          	jal	10df0 <__retarget_lock_acquire_recursive>
   11c4e:	b7f1                	j	11c1a <fflush+0x30>
   11c50:	4c28                	lw	a0,88(s0)
   11c52:	9aaff0ef          	jal	10dfc <__retarget_lock_release_recursive>
   11c56:	bff1                	j	11c32 <fflush+0x48>
   11c58:	00000617          	auipc	a2,0x0
   11c5c:	3b860613          	addi	a2,a2,952 # 12010 <__sglue>
   11c60:	00000597          	auipc	a1,0x0
   11c64:	f0c58593          	addi	a1,a1,-244 # 11b6c <_fflush_r>
   11c68:	00000517          	auipc	a0,0x0
   11c6c:	3b850513          	addi	a0,a0,952 # 12020 <_impure_data>
   11c70:	e09fe06f          	j	10a78 <_fwalk_sglue>

00011c74 <_sbrk_r>:
   11c74:	1141                	addi	sp,sp,-16
   11c76:	c422                	sw	s0,8(sp)
   11c78:	842a                	mv	s0,a0
   11c7a:	852e                	mv	a0,a1
   11c7c:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   11c80:	c606                	sw	ra,12(sp)
   11c82:	20f9                	jal	11d50 <_sbrk>
   11c84:	57fd                	li	a5,-1
   11c86:	00f50663          	beq	a0,a5,11c92 <_sbrk_r+0x1e>
   11c8a:	40b2                	lw	ra,12(sp)
   11c8c:	4422                	lw	s0,8(sp)
   11c8e:	0141                	addi	sp,sp,16
   11c90:	8082                	ret
   11c92:	c226                	sw	s1,4(sp)
   11c94:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   11c98:	409c                	lw	a5,0(s1)
   11c9a:	c799                	beqz	a5,11ca8 <_sbrk_r+0x34>
   11c9c:	40b2                	lw	ra,12(sp)
   11c9e:	c01c                	sw	a5,0(s0)
   11ca0:	4422                	lw	s0,8(sp)
   11ca2:	4492                	lw	s1,4(sp)
   11ca4:	0141                	addi	sp,sp,16
   11ca6:	8082                	ret
   11ca8:	40b2                	lw	ra,12(sp)
   11caa:	4422                	lw	s0,8(sp)
   11cac:	4492                	lw	s1,4(sp)
   11cae:	0141                	addi	sp,sp,16
   11cb0:	8082                	ret

00011cb2 <_close>:
   11cb2:	1141                	addi	sp,sp,-16
   11cb4:	c606                	sw	ra,12(sp)
   11cb6:	c422                	sw	s0,8(sp)
   11cb8:	03900893          	li	a7,57
   11cbc:	00000073          	ecall
   11cc0:	842a                	mv	s0,a0
   11cc2:	00054763          	bltz	a0,11cd0 <_close+0x1e>
   11cc6:	40b2                	lw	ra,12(sp)
   11cc8:	8522                	mv	a0,s0
   11cca:	4422                	lw	s0,8(sp)
   11ccc:	0141                	addi	sp,sp,16
   11cce:	8082                	ret
   11cd0:	40800433          	neg	s0,s0
   11cd4:	28d5                	jal	11dc8 <__errno>
   11cd6:	c100                	sw	s0,0(a0)
   11cd8:	547d                	li	s0,-1
   11cda:	b7f5                	j	11cc6 <_close+0x14>

00011cdc <_exit>:
   11cdc:	05d00893          	li	a7,93
   11ce0:	00000073          	ecall
   11ce4:	00054363          	bltz	a0,11cea <_exit+0xe>
   11ce8:	a001                	j	11ce8 <_exit+0xc>
   11cea:	1141                	addi	sp,sp,-16
   11cec:	c422                	sw	s0,8(sp)
   11cee:	842a                	mv	s0,a0
   11cf0:	c606                	sw	ra,12(sp)
   11cf2:	40800433          	neg	s0,s0
   11cf6:	28c9                	jal	11dc8 <__errno>
   11cf8:	c100                	sw	s0,0(a0)
   11cfa:	a001                	j	11cfa <_exit+0x1e>

00011cfc <_lseek>:
   11cfc:	1141                	addi	sp,sp,-16
   11cfe:	c606                	sw	ra,12(sp)
   11d00:	c422                	sw	s0,8(sp)
   11d02:	03e00893          	li	a7,62
   11d06:	00000073          	ecall
   11d0a:	842a                	mv	s0,a0
   11d0c:	00054763          	bltz	a0,11d1a <_lseek+0x1e>
   11d10:	40b2                	lw	ra,12(sp)
   11d12:	8522                	mv	a0,s0
   11d14:	4422                	lw	s0,8(sp)
   11d16:	0141                	addi	sp,sp,16
   11d18:	8082                	ret
   11d1a:	40800433          	neg	s0,s0
   11d1e:	206d                	jal	11dc8 <__errno>
   11d20:	c100                	sw	s0,0(a0)
   11d22:	547d                	li	s0,-1
   11d24:	b7f5                	j	11d10 <_lseek+0x14>

00011d26 <_read>:
   11d26:	1141                	addi	sp,sp,-16
   11d28:	c606                	sw	ra,12(sp)
   11d2a:	c422                	sw	s0,8(sp)
   11d2c:	03f00893          	li	a7,63
   11d30:	00000073          	ecall
   11d34:	842a                	mv	s0,a0
   11d36:	00054763          	bltz	a0,11d44 <_read+0x1e>
   11d3a:	40b2                	lw	ra,12(sp)
   11d3c:	8522                	mv	a0,s0
   11d3e:	4422                	lw	s0,8(sp)
   11d40:	0141                	addi	sp,sp,16
   11d42:	8082                	ret
   11d44:	40800433          	neg	s0,s0
   11d48:	2041                	jal	11dc8 <__errno>
   11d4a:	c100                	sw	s0,0(a0)
   11d4c:	547d                	li	s0,-1
   11d4e:	b7f5                	j	11d3a <_read+0x14>

00011d50 <_sbrk>:
   11d50:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11d54:	4298                	lw	a4,0(a3)
   11d56:	1141                	addi	sp,sp,-16
   11d58:	c606                	sw	ra,12(sp)
   11d5a:	87aa                	mv	a5,a0
   11d5c:	eb19                	bnez	a4,11d72 <_sbrk+0x22>
   11d5e:	0d600893          	li	a7,214
   11d62:	4501                	li	a0,0
   11d64:	00000073          	ecall
   11d68:	567d                	li	a2,-1
   11d6a:	872a                	mv	a4,a0
   11d6c:	02c50263          	beq	a0,a2,11d90 <_sbrk+0x40>
   11d70:	c288                	sw	a0,0(a3)
   11d72:	00e78533          	add	a0,a5,a4
   11d76:	0d600893          	li	a7,214
   11d7a:	00000073          	ecall
   11d7e:	4298                	lw	a4,0(a3)
   11d80:	97ba                	add	a5,a5,a4
   11d82:	00f51763          	bne	a0,a5,11d90 <_sbrk+0x40>
   11d86:	40b2                	lw	ra,12(sp)
   11d88:	c288                	sw	a0,0(a3)
   11d8a:	853a                	mv	a0,a4
   11d8c:	0141                	addi	sp,sp,16
   11d8e:	8082                	ret
   11d90:	2825                	jal	11dc8 <__errno>
   11d92:	40b2                	lw	ra,12(sp)
   11d94:	47b1                	li	a5,12
   11d96:	c11c                	sw	a5,0(a0)
   11d98:	557d                	li	a0,-1
   11d9a:	0141                	addi	sp,sp,16
   11d9c:	8082                	ret

00011d9e <_write>:
   11d9e:	1141                	addi	sp,sp,-16
   11da0:	c606                	sw	ra,12(sp)
   11da2:	c422                	sw	s0,8(sp)
   11da4:	04000893          	li	a7,64
   11da8:	00000073          	ecall
   11dac:	842a                	mv	s0,a0
   11dae:	00054763          	bltz	a0,11dbc <_write+0x1e>
   11db2:	40b2                	lw	ra,12(sp)
   11db4:	8522                	mv	a0,s0
   11db6:	4422                	lw	s0,8(sp)
   11db8:	0141                	addi	sp,sp,16
   11dba:	8082                	ret
   11dbc:	40800433          	neg	s0,s0
   11dc0:	2021                	jal	11dc8 <__errno>
   11dc2:	c100                	sw	s0,0(a0)
   11dc4:	547d                	li	s0,-1
   11dc6:	b7f5                	j	11db2 <_write+0x14>

00011dc8 <__errno>:
   11dc8:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11dcc:	8082                	ret
