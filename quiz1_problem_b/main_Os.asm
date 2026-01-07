
test_Os.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010000 <_start>:
   10000:	00001117          	auipc	sp,0x1
   10004:	69010113          	addi	sp,sp,1680 # 11690 <__stack_top>
   10008:	00000297          	auipc	t0,0x0
   1000c:	67c28293          	addi	t0,t0,1660 # 10684 <__bss_end>
   10010:	00000317          	auipc	t1,0x0
   10014:	67430313          	addi	t1,t1,1652 # 10684 <__bss_end>
   10018:	0062d863          	bge	t0,t1,10028 <_start+0x28>
   1001c:	0002a023          	sw	zero,0(t0)
   10020:	00428293          	addi	t0,t0,4
   10024:	ff5ff06f          	j	10018 <_start+0x18>
   10028:	25c000ef          	jal	10284 <main>
   1002c:	05d00893          	li	a7,93
   10030:	00000513          	li	a0,0
   10034:	00000073          	ecall
   10038:	0000006f          	j	10038 <_start+0x38>

0001003c <print_hex>:
   1003c:	fe010113          	addi	sp,sp,-32
   10040:	01f10793          	addi	a5,sp,31
   10044:	00050a63          	beqz	a0,10058 <print_hex+0x1c>
   10048:	02010793          	addi	a5,sp,32
   1004c:	00455513          	srli	a0,a0,0x4
   10050:	fff78793          	addi	a5,a5,-1
   10054:	fe051ce3          	bnez	a0,1004c <print_hex+0x10>
   10058:	02010713          	addi	a4,sp,32
   1005c:	40f70733          	sub	a4,a4,a5
   10060:	04000893          	li	a7,64
   10064:	00100513          	li	a0,1
   10068:	00f005b3          	add	a1,zero,a5
   1006c:	00070613          	mv	a2,a4
   10070:	00000073          	ecall
   10074:	02010113          	addi	sp,sp,32
   10078:	00008067          	ret

0001007c <print_dec>:
   1007c:	fe010113          	addi	sp,sp,-32
   10080:	01f10713          	addi	a4,sp,31
   10084:	04050863          	beqz	a0,100d4 <print_dec+0x58>
   10088:	02010713          	addi	a4,sp,32
   1008c:	00900813          	li	a6,9
   10090:	00100313          	li	t1,1
   10094:	fff00893          	li	a7,-1
   10098:	fff70713          	addi	a4,a4,-1
   1009c:	00000613          	li	a2,0
   100a0:	01f00693          	li	a3,31
   100a4:	00000793          	li	a5,0
   100a8:	00d555b3          	srl	a1,a0,a3
   100ac:	00179793          	slli	a5,a5,0x1
   100b0:	0015f593          	andi	a1,a1,1
   100b4:	00f5e7b3          	or	a5,a1,a5
   100b8:	00f87863          	bgeu	a6,a5,100c8 <print_dec+0x4c>
   100bc:	00d315b3          	sll	a1,t1,a3
   100c0:	ff678793          	addi	a5,a5,-10
   100c4:	00b66633          	or	a2,a2,a1
   100c8:	fff68693          	addi	a3,a3,-1
   100cc:	fd169ee3          	bne	a3,a7,100a8 <print_dec+0x2c>
   100d0:	02061463          	bnez	a2,100f8 <print_dec+0x7c>
   100d4:	02010793          	addi	a5,sp,32
   100d8:	40e787b3          	sub	a5,a5,a4
   100dc:	04000893          	li	a7,64
   100e0:	00100513          	li	a0,1
   100e4:	00e005b3          	add	a1,zero,a4
   100e8:	00078613          	mv	a2,a5
   100ec:	00000073          	ecall
   100f0:	02010113          	addi	sp,sp,32
   100f4:	00008067          	ret
   100f8:	00060513          	mv	a0,a2
   100fc:	f9dff06f          	j	10098 <print_dec+0x1c>

00010100 <memcpy>:
   10100:	00000793          	li	a5,0
   10104:	00f61463          	bne	a2,a5,1010c <memcpy+0xc>
   10108:	00008067          	ret
   1010c:	00f58733          	add	a4,a1,a5
   10110:	00074683          	lbu	a3,0(a4)
   10114:	00f50733          	add	a4,a0,a5
   10118:	00178793          	addi	a5,a5,1
   1011c:	00d70023          	sb	a3,0(a4)
   10120:	fe5ff06f          	j	10104 <memcpy+0x4>

00010124 <__mulsi3>:
   10124:	00050793          	mv	a5,a0
   10128:	00000513          	li	a0,0
   1012c:	00059463          	bnez	a1,10134 <__mulsi3+0x10>
   10130:	00008067          	ret
   10134:	0015f713          	andi	a4,a1,1
   10138:	40e00733          	neg	a4,a4
   1013c:	00f77733          	and	a4,a4,a5
   10140:	00e50533          	add	a0,a0,a4
   10144:	00179793          	slli	a5,a5,0x1
   10148:	0015d593          	srli	a1,a1,0x1
   1014c:	fe1ff06f          	j	1012c <__mulsi3+0x8>

00010150 <uf8_decode>:
   10150:	00f57293          	andi	t0,a0,15
   10154:	00455313          	srli	t1,a0,0x4
   10158:	00f00393          	li	t2,15
   1015c:	406383b3          	sub	t2,t2,t1
   10160:	07f00e13          	li	t3,127
   10164:	008e1e13          	slli	t3,t3,0x8
   10168:	0ffe6e13          	ori	t3,t3,255
   1016c:	007e5e33          	srl	t3,t3,t2
   10170:	004e1e13          	slli	t3,t3,0x4
   10174:	00629533          	sll	a0,t0,t1
   10178:	01c50533          	add	a0,a0,t3
   1017c:	00008067          	ret

00010180 <uf8_encode>:
   10180:	01000e93          	li	t4,16
   10184:	0bd54863          	blt	a0,t4,10234 <encode_return_lt16>

00010188 <encode_ge16>:
   10188:	ff810113          	addi	sp,sp,-8
   1018c:	00112023          	sw	ra,0(sp)
   10190:	00812223          	sw	s0,4(sp)
   10194:	00050413          	mv	s0,a0
   10198:	0a0000ef          	jal	10238 <clz>
   1019c:	00050293          	mv	t0,a0
   101a0:	01f00313          	li	t1,31
   101a4:	40530333          	sub	t1,t1,t0
   101a8:	00000393          	li	t2,0
   101ac:	00000e13          	li	t3,0
   101b0:	00500e93          	li	t4,5

000101b4 <encode_if_1>:
   101b4:	05d34063          	blt	t1,t4,101f4 <encode_while_2>
   101b8:	ffc30393          	addi	t2,t1,-4

000101bc <encode_if_2>:
   101bc:	00f00e93          	li	t4,15
   101c0:	007ed463          	bge	t4,t2,101c8 <encode_for_1>
   101c4:	00f00393          	li	t2,15

000101c8 <encode_for_1>:
   101c8:	00100e93          	li	t4,1
   101cc:	007e9eb3          	sll	t4,t4,t2
   101d0:	fffe8e93          	addi	t4,t4,-1
   101d4:	004e9e93          	slli	t4,t4,0x4
   101d8:	000e8e13          	mv	t3,t4

000101dc <encode_while_1>:
   101dc:	00038c63          	beqz	t2,101f4 <encode_while_2>
   101e0:	01c45a63          	bge	s0,t3,101f4 <encode_while_2>
   101e4:	ff0e0e13          	addi	t3,t3,-16
   101e8:	001e5e13          	srli	t3,t3,0x1
   101ec:	fff38393          	addi	t2,t2,-1
   101f0:	fedff06f          	j	101dc <encode_while_1>

000101f4 <encode_while_2>:
   101f4:	00f00e93          	li	t4,15
   101f8:	01d3de63          	bge	t2,t4,10214 <encode_return>
   101fc:	001e1f93          	slli	t6,t3,0x1
   10200:	010f8f93          	addi	t6,t6,16

00010204 <encode_if_3>:
   10204:	01f44863          	blt	s0,t6,10214 <encode_return>
   10208:	000f8e13          	mv	t3,t6
   1020c:	00138393          	addi	t2,t2,1
   10210:	fe5ff06f          	j	101f4 <encode_while_2>

00010214 <encode_return>:
   10214:	41c40f33          	sub	t5,s0,t3
   10218:	007f5f33          	srl	t5,t5,t2
   1021c:	00439513          	slli	a0,t2,0x4
   10220:	01e56533          	or	a0,a0,t5
   10224:	00412403          	lw	s0,4(sp)
   10228:	00012083          	lw	ra,0(sp)
   1022c:	00810113          	addi	sp,sp,8
   10230:	00008067          	ret

00010234 <encode_return_lt16>:
   10234:	00008067          	ret

00010238 <clz>:
   10238:	02050663          	beqz	a0,10264 <clz_equal_zero>
   1023c:	02000293          	li	t0,32
   10240:	01000313          	li	t1,16

00010244 <clz_while>:
   10244:	006553b3          	srl	t2,a0,t1
   10248:	00038663          	beqz	t2,10254 <clz_skip>
   1024c:	406282b3          	sub	t0,t0,t1
   10250:	00038513          	mv	a0,t2

00010254 <clz_skip>:
   10254:	00135313          	srli	t1,t1,0x1
   10258:	fe0316e3          	bnez	t1,10244 <clz_while>

0001025c <clz_ret>:
   1025c:	40a28533          	sub	a0,t0,a0
   10260:	00008067          	ret

00010264 <clz_equal_zero>:
   10264:	00100513          	li	a0,1
   10268:	00000597          	auipc	a1,0x0
   1026c:	40858593          	addi	a1,a1,1032 # 10670 <undefined>
   10270:	01400613          	li	a2,20
   10274:	04000893          	li	a7,64
   10278:	00000073          	ecall
   1027c:	fff00513          	li	a0,-1
   10280:	00008067          	ret

Disassembly of section .text.startup:

00010284 <main>:
   10284:	fb010113          	addi	sp,sp,-80
   10288:	000107b7          	lui	a5,0x10
   1028c:	04112623          	sw	ra,76(sp)
   10290:	04812423          	sw	s0,72(sp)
   10294:	04912223          	sw	s1,68(sp)
   10298:	05212023          	sw	s2,64(sp)
   1029c:	03312e23          	sw	s3,60(sp)
   102a0:	03412c23          	sw	s4,56(sp)
   102a4:	03512a23          	sw	s5,52(sp)
   102a8:	03612823          	sw	s6,48(sp)
   102ac:	03712623          	sw	s7,44(sp)
   102b0:	03812423          	sw	s8,40(sp)
   102b4:	03912223          	sw	s9,36(sp)
   102b8:	03a12023          	sw	s10,32(sp)
   102bc:	01b12e23          	sw	s11,28(sp)
   102c0:	5a078793          	addi	a5,a5,1440 # 105a0 <main+0x31c>
   102c4:	02100713          	li	a4,33
   102c8:	04000893          	li	a7,64
   102cc:	00100513          	li	a0,1
   102d0:	00f005b3          	add	a1,zero,a5
   102d4:	00070613          	mv	a2,a4
   102d8:	00000073          	ecall
   102dc:	00100793          	li	a5,1
   102e0:	fff00a13          	li	s4,-1
   102e4:	00000413          	li	s0,0
   102e8:	00500b13          	li	s6,5
   102ec:	00010bb7          	lui	s7,0x10
   102f0:	00900c13          	li	s8,9
   102f4:	00010cb7          	lui	s9,0x10
   102f8:	00c00d13          	li	s10,12
   102fc:	00010db7          	lui	s11,0x10
   10300:	0ff47693          	zext.b	a3,s0
   10304:	00068513          	mv	a0,a3
   10308:	00f12623          	sw	a5,12(sp)
   1030c:	00d12423          	sw	a3,8(sp)
   10310:	e41ff0ef          	jal	10150 <uf8_decode>
   10314:	00050913          	mv	s2,a0
   10318:	000a0a93          	mv	s5,s4
   1031c:	00050a13          	mv	s4,a0
   10320:	e61ff0ef          	jal	10180 <uf8_encode>
   10324:	000107b7          	lui	a5,0x10
   10328:	00050993          	mv	s3,a0
   1032c:	5c478713          	addi	a4,a5,1476 # 105c4 <main+0x340>
   10330:	04000893          	li	a7,64
   10334:	00100513          	li	a0,1
   10338:	00e005b3          	add	a1,zero,a4
   1033c:	000b0613          	mv	a2,s6
   10340:	00000073          	ecall
   10344:	00040513          	mv	a0,s0
   10348:	d35ff0ef          	jal	1007c <print_dec>
   1034c:	5ccb8713          	addi	a4,s7,1484 # 105cc <main+0x348>
   10350:	04000893          	li	a7,64
   10354:	00100513          	li	a0,1
   10358:	00e005b3          	add	a1,zero,a4
   1035c:	000c0613          	mv	a2,s8
   10360:	00000073          	ecall
   10364:	00040513          	mv	a0,s0
   10368:	cd5ff0ef          	jal	1003c <print_hex>
   1036c:	5d8c8713          	addi	a4,s9,1496 # 105d8 <main+0x354>
   10370:	04000893          	li	a7,64
   10374:	00100513          	li	a0,1
   10378:	00e005b3          	add	a1,zero,a4
   1037c:	000d0613          	mv	a2,s10
   10380:	00000073          	ecall
   10384:	00090513          	mv	a0,s2
   10388:	cf5ff0ef          	jal	1007c <print_dec>
   1038c:	5e8d8713          	addi	a4,s11,1512 # 105e8 <main+0x364>
   10390:	00b00813          	li	a6,11
   10394:	04000893          	li	a7,64
   10398:	00100513          	li	a0,1
   1039c:	00e005b3          	add	a1,zero,a4
   103a0:	00080613          	mv	a2,a6
   103a4:	00000073          	ecall
   103a8:	00098513          	mv	a0,s3
   103ac:	c91ff0ef          	jal	1003c <print_hex>
   103b0:	000104b7          	lui	s1,0x10
   103b4:	5f848813          	addi	a6,s1,1528 # 105f8 <main+0x374>
   103b8:	00100713          	li	a4,1
   103bc:	04000893          	li	a7,64
   103c0:	00100513          	li	a0,1
   103c4:	010005b3          	add	a1,zero,a6
   103c8:	00070613          	mv	a2,a4
   103cc:	00000073          	ecall
   103d0:	00812683          	lw	a3,8(sp)
   103d4:	00c12783          	lw	a5,12(sp)
   103d8:	5f848493          	addi	s1,s1,1528
   103dc:	08d98c63          	beq	s3,a3,10474 <main+0x1f0>
   103e0:	000107b7          	lui	a5,0x10
   103e4:	5fc78793          	addi	a5,a5,1532 # 105fc <main+0x378>
   103e8:	00200693          	li	a3,2
   103ec:	04000893          	li	a7,64
   103f0:	00100513          	li	a0,1
   103f4:	00f005b3          	add	a1,zero,a5
   103f8:	00068613          	mv	a2,a3
   103fc:	00000073          	ecall
   10400:	00040513          	mv	a0,s0
   10404:	c39ff0ef          	jal	1003c <print_hex>
   10408:	000107b7          	lui	a5,0x10
   1040c:	60078793          	addi	a5,a5,1536 # 10600 <main+0x37c>
   10410:	00a00693          	li	a3,10
   10414:	04000893          	li	a7,64
   10418:	00100513          	li	a0,1
   1041c:	00f005b3          	add	a1,zero,a5
   10420:	00068613          	mv	a2,a3
   10424:	00000073          	ecall
   10428:	00090513          	mv	a0,s2
   1042c:	c51ff0ef          	jal	1007c <print_dec>
   10430:	000107b7          	lui	a5,0x10
   10434:	60c78793          	addi	a5,a5,1548 # 1060c <main+0x388>
   10438:	01700693          	li	a3,23
   1043c:	04000893          	li	a7,64
   10440:	00100513          	li	a0,1
   10444:	00f005b3          	add	a1,zero,a5
   10448:	00068613          	mv	a2,a3
   1044c:	00000073          	ecall
   10450:	00098513          	mv	a0,s3
   10454:	be9ff0ef          	jal	1003c <print_hex>
   10458:	00100713          	li	a4,1
   1045c:	04000893          	li	a7,64
   10460:	00100513          	li	a0,1
   10464:	009005b3          	add	a1,zero,s1
   10468:	00070613          	mv	a2,a4
   1046c:	00000073          	ecall
   10470:	00000793          	li	a5,0
   10474:	092acc63          	blt	s5,s2,1050c <main+0x288>
   10478:	000107b7          	lui	a5,0x10
   1047c:	5fc78793          	addi	a5,a5,1532 # 105fc <main+0x378>
   10480:	00200713          	li	a4,2
   10484:	04000893          	li	a7,64
   10488:	00100513          	li	a0,1
   1048c:	00f005b3          	add	a1,zero,a5
   10490:	00070613          	mv	a2,a4
   10494:	00000073          	ecall
   10498:	00040513          	mv	a0,s0
   1049c:	ba1ff0ef          	jal	1003c <print_hex>
   104a0:	000107b7          	lui	a5,0x10
   104a4:	60078793          	addi	a5,a5,1536 # 10600 <main+0x37c>
   104a8:	00a00713          	li	a4,10
   104ac:	04000893          	li	a7,64
   104b0:	00100513          	li	a0,1
   104b4:	00f005b3          	add	a1,zero,a5
   104b8:	00070613          	mv	a2,a4
   104bc:	00000073          	ecall
   104c0:	00090513          	mv	a0,s2
   104c4:	bb9ff0ef          	jal	1007c <print_dec>
   104c8:	000107b7          	lui	a5,0x10
   104cc:	62478793          	addi	a5,a5,1572 # 10624 <main+0x3a0>
   104d0:	00d00713          	li	a4,13
   104d4:	04000893          	li	a7,64
   104d8:	00100513          	li	a0,1
   104dc:	00f005b3          	add	a1,zero,a5
   104e0:	00070613          	mv	a2,a4
   104e4:	00000073          	ecall
   104e8:	000a8513          	mv	a0,s5
   104ec:	b91ff0ef          	jal	1007c <print_dec>
   104f0:	00100793          	li	a5,1
   104f4:	04000893          	li	a7,64
   104f8:	00100513          	li	a0,1
   104fc:	009005b3          	add	a1,zero,s1
   10500:	00078613          	mv	a2,a5
   10504:	00000073          	ecall
   10508:	00000793          	li	a5,0
   1050c:	00140413          	addi	s0,s0,1
   10510:	10000713          	li	a4,256
   10514:	dee416e3          	bne	s0,a4,10300 <main+0x7c>
   10518:	01b00713          	li	a4,27
   1051c:	06078063          	beqz	a5,1057c <main+0x2f8>
   10520:	000107b7          	lui	a5,0x10
   10524:	63478793          	addi	a5,a5,1588 # 10634 <main+0x3b0>
   10528:	04000893          	li	a7,64
   1052c:	00100513          	li	a0,1
   10530:	00f005b3          	add	a1,zero,a5
   10534:	00070613          	mv	a2,a4
   10538:	00000073          	ecall
   1053c:	00000513          	li	a0,0
   10540:	04c12083          	lw	ra,76(sp)
   10544:	04812403          	lw	s0,72(sp)
   10548:	04412483          	lw	s1,68(sp)
   1054c:	04012903          	lw	s2,64(sp)
   10550:	03c12983          	lw	s3,60(sp)
   10554:	03812a03          	lw	s4,56(sp)
   10558:	03412a83          	lw	s5,52(sp)
   1055c:	03012b03          	lw	s6,48(sp)
   10560:	02c12b83          	lw	s7,44(sp)
   10564:	02812c03          	lw	s8,40(sp)
   10568:	02412c83          	lw	s9,36(sp)
   1056c:	02012d03          	lw	s10,32(sp)
   10570:	01c12d83          	lw	s11,28(sp)
   10574:	05010113          	addi	sp,sp,80
   10578:	00008067          	ret
   1057c:	000107b7          	lui	a5,0x10
   10580:	65078793          	addi	a5,a5,1616 # 10650 <main+0x3cc>
   10584:	04000893          	li	a7,64
   10588:	00100513          	li	a0,1
   1058c:	00f005b3          	add	a1,zero,a5
   10590:	00070613          	mv	a2,a4
   10594:	00000073          	ecall
   10598:	00100513          	li	a0,1
   1059c:	fa5ff06f          	j	10540 <main+0x2bc>
