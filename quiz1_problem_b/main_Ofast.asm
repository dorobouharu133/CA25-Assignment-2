
test_Ofast.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010000 <_start>:
   10000:	00002117          	auipc	sp,0x2
   10004:	d9010113          	addi	sp,sp,-624 # 11d90 <__stack_top>
   10008:	00001297          	auipc	t0,0x1
   1000c:	d8028293          	addi	t0,t0,-640 # 10d88 <__bss_end>
   10010:	00001317          	auipc	t1,0x1
   10014:	d7830313          	addi	t1,t1,-648 # 10d88 <__bss_end>
   10018:	0062d863          	bge	t0,t1,10028 <_start+0x28>
   1001c:	0002a023          	sw	zero,0(t0)
   10020:	00428293          	addi	t0,t0,4
   10024:	ff5ff06f          	j	10018 <_start+0x18>
   10028:	21c000ef          	jal	10244 <main>
   1002c:	05d00893          	li	a7,93
   10030:	00000513          	li	a0,0
   10034:	00000073          	ecall
   10038:	0000006f          	j	10038 <_start+0x38>

0001003c <memcpy>:
   1003c:	fff60813          	addi	a6,a2,-1
   10040:	08060e63          	beqz	a2,100dc <memcpy+0xa0>
   10044:	00600793          	li	a5,6
   10048:	00158713          	addi	a4,a1,1
   1004c:	0707fa63          	bgeu	a5,a6,100c0 <memcpy+0x84>
   10050:	00b567b3          	or	a5,a0,a1
   10054:	0037f793          	andi	a5,a5,3
   10058:	00158713          	addi	a4,a1,1
   1005c:	06079263          	bnez	a5,100c0 <memcpy+0x84>
   10060:	40e507b3          	sub	a5,a0,a4
   10064:	0037b793          	sltiu	a5,a5,3
   10068:	04079c63          	bnez	a5,100c0 <memcpy+0x84>
   1006c:	ffc67893          	andi	a7,a2,-4
   10070:	011586b3          	add	a3,a1,a7
   10074:	00050793          	mv	a5,a0
   10078:	0005a703          	lw	a4,0(a1)
   1007c:	00458593          	addi	a1,a1,4
   10080:	00478793          	addi	a5,a5,4
   10084:	fee7ae23          	sw	a4,-4(a5)
   10088:	feb698e3          	bne	a3,a1,10078 <memcpy+0x3c>
   1008c:	41180833          	sub	a6,a6,a7
   10090:	011507b3          	add	a5,a0,a7
   10094:	05160463          	beq	a2,a7,100dc <memcpy+0xa0>
   10098:	0006c703          	lbu	a4,0(a3)
   1009c:	00e78023          	sb	a4,0(a5)
   100a0:	02080e63          	beqz	a6,100dc <memcpy+0xa0>
   100a4:	0016c603          	lbu	a2,1(a3)
   100a8:	00100713          	li	a4,1
   100ac:	00c780a3          	sb	a2,1(a5)
   100b0:	02e80663          	beq	a6,a4,100dc <memcpy+0xa0>
   100b4:	0026c703          	lbu	a4,2(a3)
   100b8:	00e78123          	sb	a4,2(a5)
   100bc:	00008067          	ret
   100c0:	00c50633          	add	a2,a0,a2
   100c4:	00050793          	mv	a5,a0
   100c8:	fff74683          	lbu	a3,-1(a4)
   100cc:	00178793          	addi	a5,a5,1
   100d0:	00170713          	addi	a4,a4,1
   100d4:	fed78fa3          	sb	a3,-1(a5)
   100d8:	fec798e3          	bne	a5,a2,100c8 <memcpy+0x8c>
   100dc:	00008067          	ret

000100e0 <__mulsi3>:
   100e0:	00050713          	mv	a4,a0
   100e4:	00000513          	li	a0,0
   100e8:	02058263          	beqz	a1,1010c <__mulsi3+0x2c>
   100ec:	0015f793          	andi	a5,a1,1
   100f0:	40f007b3          	neg	a5,a5
   100f4:	00e7f7b3          	and	a5,a5,a4
   100f8:	0015d593          	srli	a1,a1,0x1
   100fc:	00f50533          	add	a0,a0,a5
   10100:	00171713          	slli	a4,a4,0x1
   10104:	fe0594e3          	bnez	a1,100ec <__mulsi3+0xc>
   10108:	00008067          	ret
   1010c:	00008067          	ret

00010110 <uf8_decode>:
   10110:	00f57293          	andi	t0,a0,15
   10114:	00455313          	srli	t1,a0,0x4
   10118:	00f00393          	li	t2,15
   1011c:	406383b3          	sub	t2,t2,t1
   10120:	07f00e13          	li	t3,127
   10124:	008e1e13          	slli	t3,t3,0x8
   10128:	0ffe6e13          	ori	t3,t3,255
   1012c:	007e5e33          	srl	t3,t3,t2
   10130:	004e1e13          	slli	t3,t3,0x4
   10134:	00629533          	sll	a0,t0,t1
   10138:	01c50533          	add	a0,a0,t3
   1013c:	00008067          	ret

00010140 <uf8_encode>:
   10140:	01000e93          	li	t4,16
   10144:	0bd54863          	blt	a0,t4,101f4 <encode_return_lt16>

00010148 <encode_ge16>:
   10148:	ff810113          	addi	sp,sp,-8
   1014c:	00112023          	sw	ra,0(sp)
   10150:	00812223          	sw	s0,4(sp)
   10154:	00050413          	mv	s0,a0
   10158:	0a0000ef          	jal	101f8 <clz>
   1015c:	00050293          	mv	t0,a0
   10160:	01f00313          	li	t1,31
   10164:	40530333          	sub	t1,t1,t0
   10168:	00000393          	li	t2,0
   1016c:	00000e13          	li	t3,0
   10170:	00500e93          	li	t4,5

00010174 <encode_if_1>:
   10174:	05d34063          	blt	t1,t4,101b4 <encode_while_2>
   10178:	ffc30393          	addi	t2,t1,-4

0001017c <encode_if_2>:
   1017c:	00f00e93          	li	t4,15
   10180:	007ed463          	bge	t4,t2,10188 <encode_for_1>
   10184:	00f00393          	li	t2,15

00010188 <encode_for_1>:
   10188:	00100e93          	li	t4,1
   1018c:	007e9eb3          	sll	t4,t4,t2
   10190:	fffe8e93          	addi	t4,t4,-1
   10194:	004e9e93          	slli	t4,t4,0x4
   10198:	000e8e13          	mv	t3,t4

0001019c <encode_while_1>:
   1019c:	00038c63          	beqz	t2,101b4 <encode_while_2>
   101a0:	01c45a63          	bge	s0,t3,101b4 <encode_while_2>
   101a4:	ff0e0e13          	addi	t3,t3,-16
   101a8:	001e5e13          	srli	t3,t3,0x1
   101ac:	fff38393          	addi	t2,t2,-1
   101b0:	fedff06f          	j	1019c <encode_while_1>

000101b4 <encode_while_2>:
   101b4:	00f00e93          	li	t4,15
   101b8:	01d3de63          	bge	t2,t4,101d4 <encode_return>
   101bc:	001e1f93          	slli	t6,t3,0x1
   101c0:	010f8f93          	addi	t6,t6,16

000101c4 <encode_if_3>:
   101c4:	01f44863          	blt	s0,t6,101d4 <encode_return>
   101c8:	000f8e13          	mv	t3,t6
   101cc:	00138393          	addi	t2,t2,1
   101d0:	fe5ff06f          	j	101b4 <encode_while_2>

000101d4 <encode_return>:
   101d4:	41c40f33          	sub	t5,s0,t3
   101d8:	007f5f33          	srl	t5,t5,t2
   101dc:	00439513          	slli	a0,t2,0x4
   101e0:	01e56533          	or	a0,a0,t5
   101e4:	00412403          	lw	s0,4(sp)
   101e8:	00012083          	lw	ra,0(sp)
   101ec:	00810113          	addi	sp,sp,8
   101f0:	00008067          	ret

000101f4 <encode_return_lt16>:
   101f4:	00008067          	ret

000101f8 <clz>:
   101f8:	02050663          	beqz	a0,10224 <clz_equal_zero>
   101fc:	02000293          	li	t0,32
   10200:	01000313          	li	t1,16

00010204 <clz_while>:
   10204:	006553b3          	srl	t2,a0,t1
   10208:	00038663          	beqz	t2,10214 <clz_skip>
   1020c:	406282b3          	sub	t0,t0,t1
   10210:	00038513          	mv	a0,t2

00010214 <clz_skip>:
   10214:	00135313          	srli	t1,t1,0x1
   10218:	fe0316e3          	bnez	t1,10204 <clz_while>

0001021c <clz_ret>:
   1021c:	40a28533          	sub	a0,t0,a0
   10220:	00008067          	ret

00010224 <clz_equal_zero>:
   10224:	00100513          	li	a0,1
   10228:	00001597          	auipc	a1,0x1
   1022c:	b4c58593          	addi	a1,a1,-1204 # 10d74 <undefined>
   10230:	01400613          	li	a2,20
   10234:	04000893          	li	a7,64
   10238:	00000073          	ecall
   1023c:	fff00513          	li	a0,-1
   10240:	00008067          	ret

Disassembly of section .text.startup:

00010244 <main>:
   10244:	f9010113          	addi	sp,sp,-112
   10248:	000117b7          	lui	a5,0x11
   1024c:	06112623          	sw	ra,108(sp)
   10250:	06812423          	sw	s0,104(sp)
   10254:	06912223          	sw	s1,100(sp)
   10258:	07212023          	sw	s2,96(sp)
   1025c:	05312e23          	sw	s3,92(sp)
   10260:	05412c23          	sw	s4,88(sp)
   10264:	05512a23          	sw	s5,84(sp)
   10268:	05612823          	sw	s6,80(sp)
   1026c:	05712623          	sw	s7,76(sp)
   10270:	05812423          	sw	s8,72(sp)
   10274:	05912223          	sw	s9,68(sp)
   10278:	05a12023          	sw	s10,64(sp)
   1027c:	03b12e23          	sw	s11,60(sp)
   10280:	ca478793          	addi	a5,a5,-860 # 10ca4 <main+0xa60>
   10284:	02100713          	li	a4,33
   10288:	04000893          	li	a7,64
   1028c:	00100513          	li	a0,1
   10290:	00f005b3          	add	a1,zero,a5
   10294:	00070613          	mv	a2,a4
   10298:	00000073          	ecall
   1029c:	00000513          	li	a0,0
   102a0:	e71ff0ef          	jal	10110 <uf8_decode>
   102a4:	00050413          	mv	s0,a0
   102a8:	00050493          	mv	s1,a0
   102ac:	00011937          	lui	s2,0x11
   102b0:	e91ff0ef          	jal	10140 <uf8_encode>
   102b4:	cc890793          	addi	a5,s2,-824 # 10cc8 <main+0xa84>
   102b8:	00078713          	mv	a4,a5
   102bc:	00f12223          	sw	a5,4(sp)
   102c0:	00050313          	mv	t1,a0
   102c4:	00500793          	li	a5,5
   102c8:	04000893          	li	a7,64
   102cc:	00100513          	li	a0,1
   102d0:	00e005b3          	add	a1,zero,a4
   102d4:	00078613          	mv	a2,a5
   102d8:	00000073          	ecall
   102dc:	00100693          	li	a3,1
   102e0:	02f10b13          	addi	s6,sp,47
   102e4:	04000893          	li	a7,64
   102e8:	00100513          	li	a0,1
   102ec:	016005b3          	add	a1,zero,s6
   102f0:	00068613          	mv	a2,a3
   102f4:	00000073          	ecall
   102f8:	000119b7          	lui	s3,0x11
   102fc:	cd098793          	addi	a5,s3,-816 # 10cd0 <main+0xa8c>
   10300:	00078713          	mv	a4,a5
   10304:	00f12423          	sw	a5,8(sp)
   10308:	00900793          	li	a5,9
   1030c:	04000893          	li	a7,64
   10310:	00100513          	li	a0,1
   10314:	00e005b3          	add	a1,zero,a4
   10318:	00078613          	mv	a2,a5
   1031c:	00000073          	ecall
   10320:	04000893          	li	a7,64
   10324:	00100513          	li	a0,1
   10328:	016005b3          	add	a1,zero,s6
   1032c:	00068613          	mv	a2,a3
   10330:	00000073          	ecall
   10334:	00011a37          	lui	s4,0x11
   10338:	cdca0713          	addi	a4,s4,-804 # 10cdc <main+0xa98>
   1033c:	00070813          	mv	a6,a4
   10340:	00e12623          	sw	a4,12(sp)
   10344:	00c00713          	li	a4,12
   10348:	04000893          	li	a7,64
   1034c:	00100513          	li	a0,1
   10350:	010005b3          	add	a1,zero,a6
   10354:	00070613          	mv	a2,a4
   10358:	00000073          	ecall
   1035c:	000b0813          	mv	a6,s6
   10360:	06040063          	beqz	s0,103c0 <main+0x17c>
   10364:	00078593          	mv	a1,a5
   10368:	00040893          	mv	a7,s0
   1036c:	03010813          	addi	a6,sp,48
   10370:	fff00e13          	li	t3,-1
   10374:	fff80813          	addi	a6,a6,-1
   10378:	00000713          	li	a4,0
   1037c:	01f00613          	li	a2,31
   10380:	00000793          	li	a5,0
   10384:	00c8d533          	srl	a0,a7,a2
   10388:	00157513          	andi	a0,a0,1
   1038c:	00179793          	slli	a5,a5,0x1
   10390:	00f567b3          	or	a5,a0,a5
   10394:	00c69533          	sll	a0,a3,a2
   10398:	fff60613          	addi	a2,a2,-1
   1039c:	00f5f663          	bgeu	a1,a5,103a8 <main+0x164>
   103a0:	ff678793          	addi	a5,a5,-10
   103a4:	00a76733          	or	a4,a4,a0
   103a8:	fdc61ee3          	bne	a2,t3,10384 <main+0x140>
   103ac:	00070663          	beqz	a4,103b8 <main+0x174>
   103b0:	00070893          	mv	a7,a4
   103b4:	fc1ff06f          	j	10374 <main+0x130>
   103b8:	03010793          	addi	a5,sp,48
   103bc:	410786b3          	sub	a3,a5,a6
   103c0:	04000893          	li	a7,64
   103c4:	00100513          	li	a0,1
   103c8:	010005b3          	add	a1,zero,a6
   103cc:	00068613          	mv	a2,a3
   103d0:	00000073          	ecall
   103d4:	00011ab7          	lui	s5,0x11
   103d8:	ceca8a93          	addi	s5,s5,-788 # 10cec <main+0xaa8>
   103dc:	00b00793          	li	a5,11
   103e0:	04000893          	li	a7,64
   103e4:	00100513          	li	a0,1
   103e8:	015005b3          	add	a1,zero,s5
   103ec:	00078613          	mv	a2,a5
   103f0:	00000073          	ecall
   103f4:	000302e3          	beqz	t1,10bf8 <main+0x9b4>
   103f8:	00435793          	srli	a5,t1,0x4
   103fc:	08078ce3          	beqz	a5,10c94 <main+0xa50>
   10400:	02e10793          	addi	a5,sp,46
   10404:	03010713          	addi	a4,sp,48
   10408:	40f70733          	sub	a4,a4,a5
   1040c:	04000893          	li	a7,64
   10410:	00100513          	li	a0,1
   10414:	00f005b3          	add	a1,zero,a5
   10418:	00070613          	mv	a2,a4
   1041c:	00000073          	ecall
   10420:	00011bb7          	lui	s7,0x11
   10424:	cfcb8b93          	addi	s7,s7,-772 # 10cfc <main+0xab8>
   10428:	00100813          	li	a6,1
   1042c:	04000893          	li	a7,64
   10430:	00100513          	li	a0,1
   10434:	017005b3          	add	a1,zero,s7
   10438:	00080613          	mv	a2,a6
   1043c:	00000073          	ecall
   10440:	00080c13          	mv	s8,a6
   10444:	12030a63          	beqz	t1,10578 <main+0x334>
   10448:	000117b7          	lui	a5,0x11
   1044c:	d0078793          	addi	a5,a5,-768 # 10d00 <main+0xabc>
   10450:	00200713          	li	a4,2
   10454:	04000893          	li	a7,64
   10458:	00100513          	li	a0,1
   1045c:	00f005b3          	add	a1,zero,a5
   10460:	00070613          	mv	a2,a4
   10464:	00000073          	ecall
   10468:	04000893          	li	a7,64
   1046c:	00100513          	li	a0,1
   10470:	016005b3          	add	a1,zero,s6
   10474:	00080613          	mv	a2,a6
   10478:	00000073          	ecall
   1047c:	000117b7          	lui	a5,0x11
   10480:	d0478793          	addi	a5,a5,-764 # 10d04 <main+0xac0>
   10484:	00a00713          	li	a4,10
   10488:	04000893          	li	a7,64
   1048c:	00100513          	li	a0,1
   10490:	00f005b3          	add	a1,zero,a5
   10494:	00070613          	mv	a2,a4
   10498:	00000073          	ecall
   1049c:	000b0e13          	mv	t3,s6
   104a0:	06040063          	beqz	s0,10500 <main+0x2bc>
   104a4:	00040593          	mv	a1,s0
   104a8:	03010e13          	addi	t3,sp,48
   104ac:	00900893          	li	a7,9
   104b0:	fff00513          	li	a0,-1
   104b4:	fffe0e13          	addi	t3,t3,-1
   104b8:	00000613          	li	a2,0
   104bc:	01f00713          	li	a4,31
   104c0:	00000793          	li	a5,0
   104c4:	00e5d6b3          	srl	a3,a1,a4
   104c8:	0016f693          	andi	a3,a3,1
   104cc:	00179793          	slli	a5,a5,0x1
   104d0:	00f6e7b3          	or	a5,a3,a5
   104d4:	00e816b3          	sll	a3,a6,a4
   104d8:	fff70713          	addi	a4,a4,-1
   104dc:	00f8f663          	bgeu	a7,a5,104e8 <main+0x2a4>
   104e0:	ff678793          	addi	a5,a5,-10
   104e4:	00d66633          	or	a2,a2,a3
   104e8:	fca71ee3          	bne	a4,a0,104c4 <main+0x280>
   104ec:	00060663          	beqz	a2,104f8 <main+0x2b4>
   104f0:	00060593          	mv	a1,a2
   104f4:	fc1ff06f          	j	104b4 <main+0x270>
   104f8:	03010793          	addi	a5,sp,48
   104fc:	41c78833          	sub	a6,a5,t3
   10500:	04000893          	li	a7,64
   10504:	00100513          	li	a0,1
   10508:	01c005b3          	add	a1,zero,t3
   1050c:	00080613          	mv	a2,a6
   10510:	00000073          	ecall
   10514:	000117b7          	lui	a5,0x11
   10518:	d1078793          	addi	a5,a5,-752 # 10d10 <main+0xacc>
   1051c:	01700713          	li	a4,23
   10520:	04000893          	li	a7,64
   10524:	00100513          	li	a0,1
   10528:	00f005b3          	add	a1,zero,a5
   1052c:	00070613          	mv	a2,a4
   10530:	00000073          	ecall
   10534:	00435313          	srli	t1,t1,0x4
   10538:	76030263          	beqz	t1,10c9c <main+0xa58>
   1053c:	02e10793          	addi	a5,sp,46
   10540:	03010713          	addi	a4,sp,48
   10544:	40f70733          	sub	a4,a4,a5
   10548:	04000893          	li	a7,64
   1054c:	00100513          	li	a0,1
   10550:	00f005b3          	add	a1,zero,a5
   10554:	00070613          	mv	a2,a4
   10558:	00000073          	ecall
   1055c:	00100793          	li	a5,1
   10560:	04000893          	li	a7,64
   10564:	00100513          	li	a0,1
   10568:	017005b3          	add	a1,zero,s7
   1056c:	00078613          	mv	a2,a5
   10570:	00000073          	ecall
   10574:	00000c13          	li	s8,0
   10578:	0e045263          	bgez	s0,1065c <main+0x418>
   1057c:	000117b7          	lui	a5,0x11
   10580:	d0078793          	addi	a5,a5,-768 # 10d00 <main+0xabc>
   10584:	00200713          	li	a4,2
   10588:	04000893          	li	a7,64
   1058c:	00100513          	li	a0,1
   10590:	00f005b3          	add	a1,zero,a5
   10594:	00070613          	mv	a2,a4
   10598:	00000073          	ecall
   1059c:	00100813          	li	a6,1
   105a0:	04000893          	li	a7,64
   105a4:	00100513          	li	a0,1
   105a8:	016005b3          	add	a1,zero,s6
   105ac:	00080613          	mv	a2,a6
   105b0:	00000073          	ecall
   105b4:	000117b7          	lui	a5,0x11
   105b8:	d0478793          	addi	a5,a5,-764 # 10d04 <main+0xac0>
   105bc:	00a00713          	li	a4,10
   105c0:	04000893          	li	a7,64
   105c4:	00100513          	li	a0,1
   105c8:	00f005b3          	add	a1,zero,a5
   105cc:	00070613          	mv	a2,a4
   105d0:	00000073          	ecall
   105d4:	00900513          	li	a0,9
   105d8:	03010313          	addi	t1,sp,48
   105dc:	fff00593          	li	a1,-1
   105e0:	fff30313          	addi	t1,t1,-1
   105e4:	00000613          	li	a2,0
   105e8:	01f00793          	li	a5,31
   105ec:	00000713          	li	a4,0
   105f0:	00f456b3          	srl	a3,s0,a5
   105f4:	0016f693          	andi	a3,a3,1
   105f8:	00171713          	slli	a4,a4,0x1
   105fc:	00e6e733          	or	a4,a3,a4
   10600:	00f816b3          	sll	a3,a6,a5
   10604:	fff78793          	addi	a5,a5,-1
   10608:	00e57663          	bgeu	a0,a4,10614 <main+0x3d0>
   1060c:	ff670713          	addi	a4,a4,-10
   10610:	00d66633          	or	a2,a2,a3
   10614:	fcb79ee3          	bne	a5,a1,105f0 <main+0x3ac>
   10618:	5e060663          	beqz	a2,10c04 <main+0x9c0>
   1061c:	00060413          	mv	s0,a2
   10620:	fc1ff06f          	j	105e0 <main+0x39c>
   10624:	03010793          	addi	a5,sp,48
   10628:	410787b3          	sub	a5,a5,a6
   1062c:	04000893          	li	a7,64
   10630:	00100513          	li	a0,1
   10634:	010005b3          	add	a1,zero,a6
   10638:	00078613          	mv	a2,a5
   1063c:	00000073          	ecall
   10640:	00100793          	li	a5,1
   10644:	04000893          	li	a7,64
   10648:	00100513          	li	a0,1
   1064c:	017005b3          	add	a1,zero,s7
   10650:	00078613          	mv	a2,a5
   10654:	00000073          	ecall
   10658:	00000c13          	li	s8,0
   1065c:	00100c93          	li	s9,1
   10660:	000c8d13          	mv	s10,s9
   10664:	00900d93          	li	s11,9
   10668:	fff00913          	li	s2,-1
   1066c:	0ffcfa13          	zext.b	s4,s9
   10670:	000a0513          	mv	a0,s4
   10674:	a9dff0ef          	jal	10110 <uf8_decode>
   10678:	00050413          	mv	s0,a0
   1067c:	00048993          	mv	s3,s1
   10680:	00050493          	mv	s1,a0
   10684:	abdff0ef          	jal	10140 <uf8_encode>
   10688:	00050793          	mv	a5,a0
   1068c:	00412703          	lw	a4,4(sp)
   10690:	00500693          	li	a3,5
   10694:	04000893          	li	a7,64
   10698:	00100513          	li	a0,1
   1069c:	00e005b3          	add	a1,zero,a4
   106a0:	00068613          	mv	a2,a3
   106a4:	00000073          	ecall
   106a8:	03010713          	addi	a4,sp,48
   106ac:	00e12023          	sw	a4,0(sp)
   106b0:	000c8713          	mv	a4,s9
   106b4:	00012683          	lw	a3,0(sp)
   106b8:	01f00593          	li	a1,31
   106bc:	00000613          	li	a2,0
   106c0:	fff68693          	addi	a3,a3,-1
   106c4:	00d12023          	sw	a3,0(sp)
   106c8:	00000693          	li	a3,0
   106cc:	00b75533          	srl	a0,a4,a1
   106d0:	00157513          	andi	a0,a0,1
   106d4:	00161613          	slli	a2,a2,0x1
   106d8:	00c56633          	or	a2,a0,a2
   106dc:	00bd1533          	sll	a0,s10,a1
   106e0:	fff58593          	addi	a1,a1,-1
   106e4:	00cdf663          	bgeu	s11,a2,106f0 <main+0x4ac>
   106e8:	ff660613          	addi	a2,a2,-10
   106ec:	00a6e6b3          	or	a3,a3,a0
   106f0:	fd259ee3          	bne	a1,s2,106cc <main+0x488>
   106f4:	00068663          	beqz	a3,10700 <main+0x4bc>
   106f8:	00068713          	mv	a4,a3
   106fc:	fb9ff06f          	j	106b4 <main+0x470>
   10700:	00012683          	lw	a3,0(sp)
   10704:	03010713          	addi	a4,sp,48
   10708:	40d70733          	sub	a4,a4,a3
   1070c:	04000893          	li	a7,64
   10710:	00100513          	li	a0,1
   10714:	00d005b3          	add	a1,zero,a3
   10718:	00070613          	mv	a2,a4
   1071c:	00000073          	ecall
   10720:	00812703          	lw	a4,8(sp)
   10724:	04000893          	li	a7,64
   10728:	00100513          	li	a0,1
   1072c:	00e005b3          	add	a1,zero,a4
   10730:	000d8613          	mv	a2,s11
   10734:	00000073          	ecall
   10738:	004cde13          	srli	t3,s9,0x4
   1073c:	02e10713          	addi	a4,sp,46
   10740:	460e0463          	beqz	t3,10ba8 <main+0x964>
   10744:	03010693          	addi	a3,sp,48
   10748:	40e686b3          	sub	a3,a3,a4
   1074c:	04000893          	li	a7,64
   10750:	00100513          	li	a0,1
   10754:	00e005b3          	add	a1,zero,a4
   10758:	00068613          	mv	a2,a3
   1075c:	00000073          	ecall
   10760:	00c00713          	li	a4,12
   10764:	00c12683          	lw	a3,12(sp)
   10768:	04000893          	li	a7,64
   1076c:	00100513          	li	a0,1
   10770:	00d005b3          	add	a1,zero,a3
   10774:	00070613          	mv	a2,a4
   10778:	00000073          	ecall
   1077c:	04040863          	beqz	s0,107cc <main+0x588>
   10780:	00040513          	mv	a0,s0
   10784:	03010713          	addi	a4,sp,48
   10788:	fff70713          	addi	a4,a4,-1
   1078c:	00000693          	li	a3,0
   10790:	00000613          	li	a2,0
   10794:	01f00593          	li	a1,31
   10798:	00b558b3          	srl	a7,a0,a1
   1079c:	0018f893          	andi	a7,a7,1
   107a0:	00161613          	slli	a2,a2,0x1
   107a4:	00c8e633          	or	a2,a7,a2
   107a8:	00bd18b3          	sll	a7,s10,a1
   107ac:	fff58593          	addi	a1,a1,-1
   107b0:	00cdf663          	bgeu	s11,a2,107bc <main+0x578>
   107b4:	ff660613          	addi	a2,a2,-10
   107b8:	0116e6b3          	or	a3,a3,a7
   107bc:	fd259ee3          	bne	a1,s2,10798 <main+0x554>
   107c0:	34068c63          	beqz	a3,10b18 <main+0x8d4>
   107c4:	00068513          	mv	a0,a3
   107c8:	fc1ff06f          	j	10788 <main+0x544>
   107cc:	00100693          	li	a3,1
   107d0:	000b0713          	mv	a4,s6
   107d4:	04000893          	li	a7,64
   107d8:	00100513          	li	a0,1
   107dc:	00e005b3          	add	a1,zero,a4
   107e0:	00068613          	mv	a2,a3
   107e4:	00000073          	ecall
   107e8:	00b00713          	li	a4,11
   107ec:	04000893          	li	a7,64
   107f0:	00100513          	li	a0,1
   107f4:	015005b3          	add	a1,zero,s5
   107f8:	00070613          	mv	a2,a4
   107fc:	00000073          	ecall
   10800:	30078663          	beqz	a5,10b0c <main+0x8c8>
   10804:	0047d713          	srli	a4,a5,0x4
   10808:	3a070c63          	beqz	a4,10bc0 <main+0x97c>
   1080c:	02e10713          	addi	a4,sp,46
   10810:	03010693          	addi	a3,sp,48
   10814:	40e686b3          	sub	a3,a3,a4
   10818:	04000893          	li	a7,64
   1081c:	00100513          	li	a0,1
   10820:	00e005b3          	add	a1,zero,a4
   10824:	00068613          	mv	a2,a3
   10828:	00000073          	ecall
   1082c:	04000893          	li	a7,64
   10830:	00100513          	li	a0,1
   10834:	017005b3          	add	a1,zero,s7
   10838:	000d0613          	mv	a2,s10
   1083c:	00000073          	ecall
   10840:	13478663          	beq	a5,s4,1096c <main+0x728>
   10844:	00011737          	lui	a4,0x11
   10848:	d0070713          	addi	a4,a4,-768 # 10d00 <main+0xabc>
   1084c:	00200693          	li	a3,2
   10850:	04000893          	li	a7,64
   10854:	00100513          	li	a0,1
   10858:	00e005b3          	add	a1,zero,a4
   1085c:	00068613          	mv	a2,a3
   10860:	00000073          	ecall
   10864:	02e10713          	addi	a4,sp,46
   10868:	340e0863          	beqz	t3,10bb8 <main+0x974>
   1086c:	03010693          	addi	a3,sp,48
   10870:	40e686b3          	sub	a3,a3,a4
   10874:	04000893          	li	a7,64
   10878:	00100513          	li	a0,1
   1087c:	00e005b3          	add	a1,zero,a4
   10880:	00068613          	mv	a2,a3
   10884:	00000073          	ecall
   10888:	00011737          	lui	a4,0x11
   1088c:	d0470713          	addi	a4,a4,-764 # 10d04 <main+0xac0>
   10890:	00a00693          	li	a3,10
   10894:	04000893          	li	a7,64
   10898:	00100513          	li	a0,1
   1089c:	00e005b3          	add	a1,zero,a4
   108a0:	00068613          	mv	a2,a3
   108a4:	00000073          	ecall
   108a8:	04040863          	beqz	s0,108f8 <main+0x6b4>
   108ac:	00040613          	mv	a2,s0
   108b0:	03010e93          	addi	t4,sp,48
   108b4:	fffe8e93          	addi	t4,t4,-1
   108b8:	00000713          	li	a4,0
   108bc:	00000693          	li	a3,0
   108c0:	01f00593          	li	a1,31
   108c4:	00b65533          	srl	a0,a2,a1
   108c8:	00157513          	andi	a0,a0,1
   108cc:	00169693          	slli	a3,a3,0x1
   108d0:	00d566b3          	or	a3,a0,a3
   108d4:	00bd1533          	sll	a0,s10,a1
   108d8:	fff58593          	addi	a1,a1,-1
   108dc:	00ddf663          	bgeu	s11,a3,108e8 <main+0x6a4>
   108e0:	ff668693          	addi	a3,a3,-10
   108e4:	00a76733          	or	a4,a4,a0
   108e8:	fd259ee3          	bne	a1,s2,108c4 <main+0x680>
   108ec:	2a070863          	beqz	a4,10b9c <main+0x958>
   108f0:	00070613          	mv	a2,a4
   108f4:	fc1ff06f          	j	108b4 <main+0x670>
   108f8:	00100713          	li	a4,1
   108fc:	000b0e93          	mv	t4,s6
   10900:	04000893          	li	a7,64
   10904:	00100513          	li	a0,1
   10908:	01d005b3          	add	a1,zero,t4
   1090c:	00070613          	mv	a2,a4
   10910:	00000073          	ecall
   10914:	00011737          	lui	a4,0x11
   10918:	d1070713          	addi	a4,a4,-752 # 10d10 <main+0xacc>
   1091c:	01700693          	li	a3,23
   10920:	04000893          	li	a7,64
   10924:	00100513          	li	a0,1
   10928:	00e005b3          	add	a1,zero,a4
   1092c:	00068613          	mv	a2,a3
   10930:	00000073          	ecall
   10934:	1e079863          	bnez	a5,10b24 <main+0x8e0>
   10938:	00100713          	li	a4,1
   1093c:	000b0793          	mv	a5,s6
   10940:	04000893          	li	a7,64
   10944:	00100513          	li	a0,1
   10948:	00f005b3          	add	a1,zero,a5
   1094c:	00070613          	mv	a2,a4
   10950:	00000073          	ecall
   10954:	04000893          	li	a7,64
   10958:	00100513          	li	a0,1
   1095c:	017005b3          	add	a1,zero,s7
   10960:	000d0613          	mv	a2,s10
   10964:	00000073          	ecall
   10968:	00000c13          	li	s8,0
   1096c:	0e89c463          	blt	s3,s0,10a54 <main+0x810>
   10970:	000117b7          	lui	a5,0x11
   10974:	d0078793          	addi	a5,a5,-768 # 10d00 <main+0xabc>
   10978:	00200713          	li	a4,2
   1097c:	04000893          	li	a7,64
   10980:	00100513          	li	a0,1
   10984:	00f005b3          	add	a1,zero,a5
   10988:	00070613          	mv	a2,a4
   1098c:	00000073          	ecall
   10990:	02e10793          	addi	a5,sp,46
   10994:	200e0e63          	beqz	t3,10bb0 <main+0x96c>
   10998:	03010713          	addi	a4,sp,48
   1099c:	40f70733          	sub	a4,a4,a5
   109a0:	04000893          	li	a7,64
   109a4:	00100513          	li	a0,1
   109a8:	00f005b3          	add	a1,zero,a5
   109ac:	00070613          	mv	a2,a4
   109b0:	00000073          	ecall
   109b4:	000117b7          	lui	a5,0x11
   109b8:	d0478793          	addi	a5,a5,-764 # 10d04 <main+0xac0>
   109bc:	00a00713          	li	a4,10
   109c0:	04000893          	li	a7,64
   109c4:	00100513          	li	a0,1
   109c8:	00f005b3          	add	a1,zero,a5
   109cc:	00070613          	mv	a2,a4
   109d0:	00000073          	ecall
   109d4:	03010693          	addi	a3,sp,48
   109d8:	0e041c63          	bnez	s0,10ad0 <main+0x88c>
   109dc:	00100793          	li	a5,1
   109e0:	000b0693          	mv	a3,s6
   109e4:	04000893          	li	a7,64
   109e8:	00100513          	li	a0,1
   109ec:	00d005b3          	add	a1,zero,a3
   109f0:	00078613          	mv	a2,a5
   109f4:	00000073          	ecall
   109f8:	000117b7          	lui	a5,0x11
   109fc:	d2878793          	addi	a5,a5,-728 # 10d28 <main+0xae4>
   10a00:	00d00713          	li	a4,13
   10a04:	04000893          	li	a7,64
   10a08:	00100513          	li	a0,1
   10a0c:	00f005b3          	add	a1,zero,a5
   10a10:	00070613          	mv	a2,a4
   10a14:	00000073          	ecall
   10a18:	00098313          	mv	t1,s3
   10a1c:	12099063          	bnez	s3,10b3c <main+0x8f8>
   10a20:	00100793          	li	a5,1
   10a24:	000b0693          	mv	a3,s6
   10a28:	04000893          	li	a7,64
   10a2c:	00100513          	li	a0,1
   10a30:	00d005b3          	add	a1,zero,a3
   10a34:	00078613          	mv	a2,a5
   10a38:	00000073          	ecall
   10a3c:	04000893          	li	a7,64
   10a40:	00100513          	li	a0,1
   10a44:	017005b3          	add	a1,zero,s7
   10a48:	000d0613          	mv	a2,s10
   10a4c:	00000073          	ecall
   10a50:	00000c13          	li	s8,0
   10a54:	001c8c93          	addi	s9,s9,1
   10a58:	10000793          	li	a5,256
   10a5c:	c0fc98e3          	bne	s9,a5,1066c <main+0x428>
   10a60:	160c0863          	beqz	s8,10bd0 <main+0x98c>
   10a64:	000117b7          	lui	a5,0x11
   10a68:	d3878793          	addi	a5,a5,-712 # 10d38 <main+0xaf4>
   10a6c:	01b00713          	li	a4,27
   10a70:	04000893          	li	a7,64
   10a74:	00100513          	li	a0,1
   10a78:	00f005b3          	add	a1,zero,a5
   10a7c:	00070613          	mv	a2,a4
   10a80:	00000073          	ecall
   10a84:	00000513          	li	a0,0
   10a88:	06c12083          	lw	ra,108(sp)
   10a8c:	06812403          	lw	s0,104(sp)
   10a90:	06412483          	lw	s1,100(sp)
   10a94:	06012903          	lw	s2,96(sp)
   10a98:	05c12983          	lw	s3,92(sp)
   10a9c:	05812a03          	lw	s4,88(sp)
   10aa0:	05412a83          	lw	s5,84(sp)
   10aa4:	05012b03          	lw	s6,80(sp)
   10aa8:	04c12b83          	lw	s7,76(sp)
   10aac:	04812c03          	lw	s8,72(sp)
   10ab0:	04412c83          	lw	s9,68(sp)
   10ab4:	04012d03          	lw	s10,64(sp)
   10ab8:	03c12d83          	lw	s11,60(sp)
   10abc:	07010113          	addi	sp,sp,112
   10ac0:	00008067          	ret
   10ac4:	01261e63          	bne	a2,s2,10ae0 <main+0x89c>
   10ac8:	0a078e63          	beqz	a5,10b84 <main+0x940>
   10acc:	00078413          	mv	s0,a5
   10ad0:	fff68693          	addi	a3,a3,-1
   10ad4:	00000793          	li	a5,0
   10ad8:	00000713          	li	a4,0
   10adc:	01f00613          	li	a2,31
   10ae0:	00c455b3          	srl	a1,s0,a2
   10ae4:	0015f593          	andi	a1,a1,1
   10ae8:	00171713          	slli	a4,a4,0x1
   10aec:	00e5e733          	or	a4,a1,a4
   10af0:	00cd15b3          	sll	a1,s10,a2
   10af4:	fff60613          	addi	a2,a2,-1
   10af8:	fcedf6e3          	bgeu	s11,a4,10ac4 <main+0x880>
   10afc:	ff670713          	addi	a4,a4,-10
   10b00:	00b7e7b3          	or	a5,a5,a1
   10b04:	fd261ee3          	bne	a2,s2,10ae0 <main+0x89c>
   10b08:	fc1ff06f          	j	10ac8 <main+0x884>
   10b0c:	00100693          	li	a3,1
   10b10:	000b0713          	mv	a4,s6
   10b14:	d05ff06f          	j	10818 <main+0x5d4>
   10b18:	03010693          	addi	a3,sp,48
   10b1c:	40e686b3          	sub	a3,a3,a4
   10b20:	cb5ff06f          	j	107d4 <main+0x590>
   10b24:	0047d793          	srli	a5,a5,0x4
   10b28:	0a078063          	beqz	a5,10bc8 <main+0x984>
   10b2c:	02e10793          	addi	a5,sp,46
   10b30:	03010713          	addi	a4,sp,48
   10b34:	40f70733          	sub	a4,a4,a5
   10b38:	e09ff06f          	j	10940 <main+0x6fc>
   10b3c:	03010693          	addi	a3,sp,48
   10b40:	fff68693          	addi	a3,a3,-1
   10b44:	00000793          	li	a5,0
   10b48:	00000713          	li	a4,0
   10b4c:	01f00613          	li	a2,31
   10b50:	00c355b3          	srl	a1,t1,a2
   10b54:	0015f593          	andi	a1,a1,1
   10b58:	00171713          	slli	a4,a4,0x1
   10b5c:	00e5e733          	or	a4,a1,a4
   10b60:	00cd15b3          	sll	a1,s10,a2
   10b64:	fff60613          	addi	a2,a2,-1
   10b68:	00edf663          	bgeu	s11,a4,10b74 <main+0x930>
   10b6c:	ff670713          	addi	a4,a4,-10
   10b70:	00b7e7b3          	or	a5,a5,a1
   10b74:	fd261ee3          	bne	a2,s2,10b50 <main+0x90c>
   10b78:	00078c63          	beqz	a5,10b90 <main+0x94c>
   10b7c:	00078313          	mv	t1,a5
   10b80:	fc1ff06f          	j	10b40 <main+0x8fc>
   10b84:	03010793          	addi	a5,sp,48
   10b88:	40d787b3          	sub	a5,a5,a3
   10b8c:	e59ff06f          	j	109e4 <main+0x7a0>
   10b90:	03010793          	addi	a5,sp,48
   10b94:	40d787b3          	sub	a5,a5,a3
   10b98:	e91ff06f          	j	10a28 <main+0x7e4>
   10b9c:	03010713          	addi	a4,sp,48
   10ba0:	41d70733          	sub	a4,a4,t4
   10ba4:	d5dff06f          	j	10900 <main+0x6bc>
   10ba8:	000b0713          	mv	a4,s6
   10bac:	b99ff06f          	j	10744 <main+0x500>
   10bb0:	000b0793          	mv	a5,s6
   10bb4:	de5ff06f          	j	10998 <main+0x754>
   10bb8:	000b0713          	mv	a4,s6
   10bbc:	cb1ff06f          	j	1086c <main+0x628>
   10bc0:	000b0713          	mv	a4,s6
   10bc4:	c4dff06f          	j	10810 <main+0x5cc>
   10bc8:	000b0793          	mv	a5,s6
   10bcc:	f65ff06f          	j	10b30 <main+0x8ec>
   10bd0:	000117b7          	lui	a5,0x11
   10bd4:	d5478793          	addi	a5,a5,-684 # 10d54 <main+0xb10>
   10bd8:	01b00713          	li	a4,27
   10bdc:	04000893          	li	a7,64
   10be0:	00100513          	li	a0,1
   10be4:	00f005b3          	add	a1,zero,a5
   10be8:	00070613          	mv	a2,a4
   10bec:	00000073          	ecall
   10bf0:	00100513          	li	a0,1
   10bf4:	e95ff06f          	j	10a88 <main+0x844>
   10bf8:	00100713          	li	a4,1
   10bfc:	000b0793          	mv	a5,s6
   10c00:	80dff06f          	j	1040c <main+0x1c8>
   10c04:	03010713          	addi	a4,sp,48
   10c08:	40670733          	sub	a4,a4,t1
   10c0c:	04000893          	li	a7,64
   10c10:	00100513          	li	a0,1
   10c14:	006005b3          	add	a1,zero,t1
   10c18:	00070613          	mv	a2,a4
   10c1c:	00000073          	ecall
   10c20:	00011737          	lui	a4,0x11
   10c24:	d2870713          	addi	a4,a4,-728 # 10d28 <main+0xae4>
   10c28:	00d00693          	li	a3,13
   10c2c:	04000893          	li	a7,64
   10c30:	00100513          	li	a0,1
   10c34:	00e005b3          	add	a1,zero,a4
   10c38:	00068613          	mv	a2,a3
   10c3c:	00000073          	ecall
   10c40:	00900893          	li	a7,9
   10c44:	00078313          	mv	t1,a5
   10c48:	03010813          	addi	a6,sp,48
   10c4c:	00100513          	li	a0,1
   10c50:	fff80813          	addi	a6,a6,-1
   10c54:	00000593          	li	a1,0
   10c58:	00000713          	li	a4,0
   10c5c:	01f00693          	li	a3,31
   10c60:	00d7d633          	srl	a2,a5,a3
   10c64:	00167613          	andi	a2,a2,1
   10c68:	00171713          	slli	a4,a4,0x1
   10c6c:	00e66733          	or	a4,a2,a4
   10c70:	00d51633          	sll	a2,a0,a3
   10c74:	fff68693          	addi	a3,a3,-1
   10c78:	00e8f663          	bgeu	a7,a4,10c84 <main+0xa40>
   10c7c:	ff670713          	addi	a4,a4,-10
   10c80:	00c5e5b3          	or	a1,a1,a2
   10c84:	fc669ee3          	bne	a3,t1,10c60 <main+0xa1c>
   10c88:	98058ee3          	beqz	a1,10624 <main+0x3e0>
   10c8c:	00058793          	mv	a5,a1
   10c90:	fc1ff06f          	j	10c50 <main+0xa0c>
   10c94:	000b0793          	mv	a5,s6
   10c98:	f6cff06f          	j	10404 <main+0x1c0>
   10c9c:	000b0793          	mv	a5,s6
   10ca0:	8a1ff06f          	j	10540 <main+0x2fc>
