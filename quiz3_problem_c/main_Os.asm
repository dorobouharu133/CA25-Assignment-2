
test_Os.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	46f000ef          	jal	10d2c <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	205010ef          	jal	11ad0 <_exit>

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
   1012a:	2a51                	jal	102be <fast_rsqrt.part.0>
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
   10156:	22a5                	jal	102be <fast_rsqrt.part.0>
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
   10182:	2a35                	jal	102be <fast_rsqrt.part.0>
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
   101ae:	2a01                	jal	102be <fast_rsqrt.part.0>
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
   101de:	9c850513          	addi	a0,a0,-1592 # 10ba2 <__libc_fini_array>
   101e2:	a689                	j	10524 <atexit>
   101e4:	8082                	ret

000101e6 <_start>:
   101e6:	00002197          	auipc	gp,0x2
   101ea:	62a18193          	addi	gp,gp,1578 # 12810 <__global_pointer$>
   101ee:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   101f2:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   101f6:	8e09                	sub	a2,a2,a0
   101f8:	4581                	li	a1,0
   101fa:	1f9000ef          	jal	10bf2 <memset>
   101fe:	00001517          	auipc	a0,0x1
   10202:	9a450513          	addi	a0,a0,-1628 # 10ba2 <__libc_fini_array>
   10206:	2e39                	jal	10524 <atexit>
   10208:	131000ef          	jal	10b38 <__libc_init_array>
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
   10228:	9e050513          	addi	a0,a0,-1568 # 11c04 <__EH_FRAME_BEGIN__>
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
   1025a:	9ae50513          	addi	a0,a0,-1618 # 11c04 <__EH_FRAME_BEGIN__>
   1025e:	00000317          	auipc	t1,0x0
   10262:	00000067          	jr	zero # 0 <exit-0x100b4>
   10266:	8082                	ret

00010268 <print_dec>:
   10268:	1101                	addi	sp,sp,-32
   1026a:	01d10793          	addi	a5,sp,29
   1026e:	c90d                	beqz	a0,102a0 <print_dec+0x38>
   10270:	01e10793          	addi	a5,sp,30
   10274:	4825                	li	a6,9
   10276:	4305                	li	t1,1
   10278:	58fd                	li	a7,-1
   1027a:	17fd                	addi	a5,a5,-1
   1027c:	4601                	li	a2,0
   1027e:	46fd                	li	a3,31
   10280:	4701                	li	a4,0
   10282:	00d555b3          	srl	a1,a0,a3
   10286:	0706                	slli	a4,a4,0x1
   10288:	8985                	andi	a1,a1,1
   1028a:	8f4d                	or	a4,a4,a1
   1028c:	00e87663          	bgeu	a6,a4,10298 <print_dec+0x30>
   10290:	00d315b3          	sll	a1,t1,a3
   10294:	1759                	addi	a4,a4,-10
   10296:	8e4d                	or	a2,a2,a1
   10298:	16fd                	addi	a3,a3,-1
   1029a:	ff1694e3          	bne	a3,a7,10282 <print_dec+0x1a>
   1029e:	ee11                	bnez	a2,102ba <print_dec+0x52>
   102a0:	0785                	addi	a5,a5,1
   102a2:	1018                	addi	a4,sp,32
   102a4:	8f1d                	sub	a4,a4,a5
   102a6:	04000893          	li	a7,64
   102aa:	00100513          	li	a0,1
   102ae:	85be                	mv	a1,a5
   102b0:	863a                	mv	a2,a4
   102b2:	00000073          	ecall
   102b6:	6105                	addi	sp,sp,32
   102b8:	8082                	ret
   102ba:	8532                	mv	a0,a2
   102bc:	bf7d                	j	1027a <print_dec+0x12>

000102be <fast_rsqrt.part.0>:
   102be:	7179                	addi	sp,sp,-48
   102c0:	d422                	sw	s0,40(sp)
   102c2:	d606                	sw	ra,44(sp)
   102c4:	d226                	sw	s1,36(sp)
   102c6:	d04a                	sw	s2,32(sp)
   102c8:	ce4e                	sw	s3,28(sp)
   102ca:	cc52                	sw	s4,24(sp)
   102cc:	ca56                	sw	s5,20(sp)
   102ce:	c85a                	sw	s6,16(sp)
   102d0:	c65e                	sw	s7,12(sp)
   102d2:	c462                	sw	s8,8(sp)
   102d4:	c266                	sw	s9,4(sp)
   102d6:	842a                	mv	s0,a0
   102d8:	02000713          	li	a4,32
   102dc:	cd0d                	beqz	a0,10316 <fast_rsqrt.part.0+0x58>
   102de:	67c1                	lui	a5,0x10
   102e0:	12f57663          	bgeu	a0,a5,1040c <fast_rsqrt.part.0+0x14e>
   102e4:	01051793          	slli	a5,a0,0x10
   102e8:	4741                	li	a4,16
   102ea:	010006b7          	lui	a3,0x1000
   102ee:	00d7f463          	bgeu	a5,a3,102f6 <fast_rsqrt.part.0+0x38>
   102f2:	0721                	addi	a4,a4,8
   102f4:	07a2                	slli	a5,a5,0x8
   102f6:	100006b7          	lui	a3,0x10000
   102fa:	00d7f463          	bgeu	a5,a3,10302 <fast_rsqrt.part.0+0x44>
   102fe:	0711                	addi	a4,a4,4
   10300:	0792                	slli	a5,a5,0x4
   10302:	400006b7          	lui	a3,0x40000
   10306:	00d7f463          	bgeu	a5,a3,1030e <fast_rsqrt.part.0+0x50>
   1030a:	0709                	addi	a4,a4,2
   1030c:	078a                	slli	a5,a5,0x2
   1030e:	fff7c793          	not	a5,a5
   10312:	83fd                	srli	a5,a5,0x1f
   10314:	973e                	add	a4,a4,a5
   10316:	45fd                	li	a1,31
   10318:	40e58633          	sub	a2,a1,a4
   1031c:	67c9                	lui	a5,0x12
   1031e:	bc478793          	addi	a5,a5,-1084 # 11bc4 <rsqrt_table>
   10322:	00161693          	slli	a3,a2,0x1
   10326:	4505                	li	a0,1
   10328:	96be                	add	a3,a3,a5
   1032a:	00c51533          	sll	a0,a0,a2
   1032e:	0006d903          	lhu	s2,0(a3) # 40000000 <__BSS_END__+0x3ffed75c>
   10332:	04857063          	bgeu	a0,s0,10372 <fast_rsqrt.part.0+0xb4>
   10336:	4481                	li	s1,0
   10338:	00b60a63          	beq	a2,a1,1034c <fast_rsqrt.part.0+0x8e>
   1033c:	02000693          	li	a3,32
   10340:	40e68733          	sub	a4,a3,a4
   10344:	0706                	slli	a4,a4,0x1
   10346:	97ba                	add	a5,a5,a4
   10348:	0007d483          	lhu	s1,0(a5)
   1034c:	40a40533          	sub	a0,s0,a0
   10350:	00a437b3          	sltu	a5,s0,a0
   10354:	40f007b3          	neg	a5,a5
   10358:	01055593          	srli	a1,a0,0x10
   1035c:	07c2                	slli	a5,a5,0x10
   1035e:	0542                	slli	a0,a0,0x10
   10360:	8ddd                	or	a1,a1,a5
   10362:	409904b3          	sub	s1,s2,s1
   10366:	2a8d                	jal	104d8 <__lshrdi3>
   10368:	02a484b3          	mul	s1,s1,a0
   1036c:	80c1                	srli	s1,s1,0x10
   1036e:	40990933          	sub	s2,s2,s1
   10372:	4b09                	li	s6,2
   10374:	4a05                	li	s4,1
   10376:	02000a93          	li	s5,32
   1037a:	00030bb7          	lui	s7,0x30
   1037e:	4c81                	li	s9,0
   10380:	4481                	li	s1,0
   10382:	009a17b3          	sll	a5,s4,s1
   10386:	0127f7b3          	and	a5,a5,s2
   1038a:	c791                	beqz	a5,10396 <fast_rsqrt.part.0+0xd8>
   1038c:	8626                	mv	a2,s1
   1038e:	854a                	mv	a0,s2
   10390:	4581                	li	a1,0
   10392:	22b5                	jal	104fe <__ashldi3>
   10394:	9caa                	add	s9,s9,a0
   10396:	0485                	addi	s1,s1,1
   10398:	ff5495e3          	bne	s1,s5,10382 <fast_rsqrt.part.0+0xc4>
   1039c:	4481                	li	s1,0
   1039e:	4981                	li	s3,0
   103a0:	4c01                	li	s8,0
   103a2:	018a17b3          	sll	a5,s4,s8
   103a6:	0197f7b3          	and	a5,a5,s9
   103aa:	cb99                	beqz	a5,103c0 <fast_rsqrt.part.0+0x102>
   103ac:	8662                	mv	a2,s8
   103ae:	8522                	mv	a0,s0
   103b0:	4581                	li	a1,0
   103b2:	22b1                	jal	104fe <__ashldi3>
   103b4:	9526                	add	a0,a0,s1
   103b6:	009537b3          	sltu	a5,a0,s1
   103ba:	99ae                	add	s3,s3,a1
   103bc:	84aa                	mv	s1,a0
   103be:	99be                	add	s3,s3,a5
   103c0:	0c05                	addi	s8,s8,1
   103c2:	ff5c10e3          	bne	s8,s5,103a2 <fast_rsqrt.part.0+0xe4>
   103c6:	09c2                	slli	s3,s3,0x10
   103c8:	80c1                	srli	s1,s1,0x10
   103ca:	0099e4b3          	or	s1,s3,s1
   103ce:	409b84b3          	sub	s1,s7,s1
   103d2:	4c01                	li	s8,0
   103d4:	4981                	li	s3,0
   103d6:	4c81                	li	s9,0
   103d8:	019a17b3          	sll	a5,s4,s9
   103dc:	8fe5                	and	a5,a5,s1
   103de:	cb99                	beqz	a5,103f4 <fast_rsqrt.part.0+0x136>
   103e0:	8666                	mv	a2,s9
   103e2:	854a                	mv	a0,s2
   103e4:	4581                	li	a1,0
   103e6:	2a21                	jal	104fe <__ashldi3>
   103e8:	9562                	add	a0,a0,s8
   103ea:	018537b3          	sltu	a5,a0,s8
   103ee:	99ae                	add	s3,s3,a1
   103f0:	8c2a                	mv	s8,a0
   103f2:	99be                	add	s3,s3,a5
   103f4:	0c85                	addi	s9,s9,1
   103f6:	ff5c91e3          	bne	s9,s5,103d8 <fast_rsqrt.part.0+0x11a>
   103fa:	09be                	slli	s3,s3,0xf
   103fc:	011c5c13          	srli	s8,s8,0x11
   10400:	0189e933          	or	s2,s3,s8
   10404:	014b0763          	beq	s6,s4,10412 <fast_rsqrt.part.0+0x154>
   10408:	4b05                	li	s6,1
   1040a:	bf95                	j	1037e <fast_rsqrt.part.0+0xc0>
   1040c:	87aa                	mv	a5,a0
   1040e:	4701                	li	a4,0
   10410:	bde9                	j	102ea <fast_rsqrt.part.0+0x2c>
   10412:	50b2                	lw	ra,44(sp)
   10414:	5422                	lw	s0,40(sp)
   10416:	5492                	lw	s1,36(sp)
   10418:	49f2                	lw	s3,28(sp)
   1041a:	4a62                	lw	s4,24(sp)
   1041c:	4ad2                	lw	s5,20(sp)
   1041e:	4b42                	lw	s6,16(sp)
   10420:	4bb2                	lw	s7,12(sp)
   10422:	4c22                	lw	s8,8(sp)
   10424:	4c92                	lw	s9,4(sp)
   10426:	854a                	mv	a0,s2
   10428:	5902                	lw	s2,32(sp)
   1042a:	6145                	addi	sp,sp,48
   1042c:	8082                	ret

0001042e <memcpy>:
   1042e:	4781                	li	a5,0
   10430:	00f61363          	bne	a2,a5,10436 <memcpy+0x8>
   10434:	8082                	ret
   10436:	00f58733          	add	a4,a1,a5
   1043a:	00074683          	lbu	a3,0(a4)
   1043e:	00f50733          	add	a4,a0,a5
   10442:	0785                	addi	a5,a5,1
   10444:	00d70023          	sb	a3,0(a4)
   10448:	b7e5                	j	10430 <memcpy+0x2>

0001044a <__mulsi3>:
   1044a:	87aa                	mv	a5,a0
   1044c:	4501                	li	a0,0
   1044e:	e191                	bnez	a1,10452 <__mulsi3+0x8>
   10450:	8082                	ret
   10452:	0015f713          	andi	a4,a1,1
   10456:	02f70733          	mul	a4,a4,a5
   1045a:	8185                	srli	a1,a1,0x1
   1045c:	0786                	slli	a5,a5,0x1
   1045e:	953a                	add	a0,a0,a4
   10460:	b7fd                	j	1044e <__mulsi3+0x4>

00010462 <fast_rsqrt>:
   10462:	c509                	beqz	a0,1046c <fast_rsqrt+0xa>
   10464:	4705                	li	a4,1
   10466:	00e50563          	beq	a0,a4,10470 <fast_rsqrt+0xe>
   1046a:	bd91                	j	102be <fast_rsqrt.part.0>
   1046c:	557d                	li	a0,-1
   1046e:	8082                	ret
   10470:	6541                	lui	a0,0x10
   10472:	8082                	ret

00010474 <fast_distance_3d>:
   10474:	1141                	addi	sp,sp,-16
   10476:	02c607b3          	mul	a5,a2,a2
   1047a:	c422                	sw	s0,8(sp)
   1047c:	c226                	sw	s1,4(sp)
   1047e:	c606                	sw	ra,12(sp)
   10480:	02b58433          	mul	s0,a1,a1
   10484:	02c61633          	mulh	a2,a2,a2
   10488:	943e                	add	s0,s0,a5
   1048a:	00f437b3          	sltu	a5,s0,a5
   1048e:	02b595b3          	mulh	a1,a1,a1
   10492:	02a504b3          	mul	s1,a0,a0
   10496:	962e                	add	a2,a2,a1
   10498:	97b2                	add	a5,a5,a2
   1049a:	02a51533          	mulh	a0,a0,a0
   1049e:	94a2                	add	s1,s1,s0
   104a0:	0084b433          	sltu	s0,s1,s0
   104a4:	97aa                	add	a5,a5,a0
   104a6:	943e                	add	s0,s0,a5
   104a8:	c411                	beqz	s0,104b4 <fast_distance_3d+0x40>
   104aa:	01041793          	slli	a5,s0,0x10
   104ae:	80c1                	srli	s1,s1,0x10
   104b0:	8cdd                	or	s1,s1,a5
   104b2:	8041                	srli	s0,s0,0x10
   104b4:	8526                	mv	a0,s1
   104b6:	3775                	jal	10462 <fast_rsqrt>
   104b8:	029507b3          	mul	a5,a0,s1
   104bc:	40b2                	lw	ra,12(sp)
   104be:	02a40433          	mul	s0,s0,a0
   104c2:	02953533          	mulhu	a0,a0,s1
   104c6:	4492                	lw	s1,4(sp)
   104c8:	942a                	add	s0,s0,a0
   104ca:	0442                	slli	s0,s0,0x10
   104cc:	0107d513          	srli	a0,a5,0x10
   104d0:	8d41                	or	a0,a0,s0
   104d2:	4422                	lw	s0,8(sp)
   104d4:	0141                	addi	sp,sp,16
   104d6:	8082                	ret

000104d8 <__lshrdi3>:
   104d8:	ce09                	beqz	a2,104f2 <__lshrdi3+0x1a>
   104da:	02000793          	li	a5,32
   104de:	8f91                	sub	a5,a5,a2
   104e0:	00f05a63          	blez	a5,104f4 <__lshrdi3+0x1c>
   104e4:	00f597b3          	sll	a5,a1,a5
   104e8:	00c55533          	srl	a0,a0,a2
   104ec:	8d5d                	or	a0,a0,a5
   104ee:	00c5d5b3          	srl	a1,a1,a2
   104f2:	8082                	ret
   104f4:	1601                	addi	a2,a2,-32
   104f6:	00c5d533          	srl	a0,a1,a2
   104fa:	4581                	li	a1,0
   104fc:	8082                	ret

000104fe <__ashldi3>:
   104fe:	ce09                	beqz	a2,10518 <__ashldi3+0x1a>
   10500:	02000793          	li	a5,32
   10504:	8f91                	sub	a5,a5,a2
   10506:	00f05a63          	blez	a5,1051a <__ashldi3+0x1c>
   1050a:	00f557b3          	srl	a5,a0,a5
   1050e:	00c595b3          	sll	a1,a1,a2
   10512:	8ddd                	or	a1,a1,a5
   10514:	00c51533          	sll	a0,a0,a2
   10518:	8082                	ret
   1051a:	1601                	addi	a2,a2,-32
   1051c:	00c515b3          	sll	a1,a0,a2
   10520:	4501                	li	a0,0
   10522:	8082                	ret

00010524 <atexit>:
   10524:	85aa                	mv	a1,a0
   10526:	4681                	li	a3,0
   10528:	4601                	li	a2,0
   1052a:	4501                	li	a0,0
   1052c:	76e0006f          	j	10c9a <__register_exitproc>

00010530 <stdio_exit_handler>:
   10530:	00002617          	auipc	a2,0x2
   10534:	ae060613          	addi	a2,a2,-1312 # 12010 <__sglue>
   10538:	00001597          	auipc	a1,0x1
   1053c:	1a458593          	addi	a1,a1,420 # 116dc <_fclose_r>
   10540:	00002517          	auipc	a0,0x2
   10544:	ae050513          	addi	a0,a0,-1312 # 12020 <_impure_data>
   10548:	a615                	j	1086c <_fwalk_sglue>

0001054a <cleanup_stdio>:
   1054a:	414c                	lw	a1,4(a0)
   1054c:	1141                	addi	sp,sp,-16
   1054e:	c422                	sw	s0,8(sp)
   10550:	c606                	sw	ra,12(sp)
   10552:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   10556:	842a                	mv	s0,a0
   10558:	00f58463          	beq	a1,a5,10560 <cleanup_stdio+0x16>
   1055c:	180010ef          	jal	116dc <_fclose_r>
   10560:	440c                	lw	a1,8(s0)
   10562:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   10566:	00f58563          	beq	a1,a5,10570 <cleanup_stdio+0x26>
   1056a:	8522                	mv	a0,s0
   1056c:	170010ef          	jal	116dc <_fclose_r>
   10570:	444c                	lw	a1,12(s0)
   10572:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   10576:	00f58863          	beq	a1,a5,10586 <cleanup_stdio+0x3c>
   1057a:	8522                	mv	a0,s0
   1057c:	4422                	lw	s0,8(sp)
   1057e:	40b2                	lw	ra,12(sp)
   10580:	0141                	addi	sp,sp,16
   10582:	15a0106f          	j	116dc <_fclose_r>
   10586:	40b2                	lw	ra,12(sp)
   10588:	4422                	lw	s0,8(sp)
   1058a:	0141                	addi	sp,sp,16
   1058c:	8082                	ret

0001058e <__fp_lock>:
   1058e:	51fc                	lw	a5,100(a1)
   10590:	8b85                	andi	a5,a5,1
   10592:	e791                	bnez	a5,1059e <__fp_lock+0x10>
   10594:	00c5d783          	lhu	a5,12(a1)
   10598:	2007f793          	andi	a5,a5,512
   1059c:	c399                	beqz	a5,105a2 <__fp_lock+0x14>
   1059e:	4501                	li	a0,0
   105a0:	8082                	ret
   105a2:	4da8                	lw	a0,88(a1)
   105a4:	1141                	addi	sp,sp,-16
   105a6:	c606                	sw	ra,12(sp)
   105a8:	2d35                	jal	10be4 <__retarget_lock_acquire_recursive>
   105aa:	40b2                	lw	ra,12(sp)
   105ac:	4501                	li	a0,0
   105ae:	0141                	addi	sp,sp,16
   105b0:	8082                	ret

000105b2 <__fp_unlock>:
   105b2:	51fc                	lw	a5,100(a1)
   105b4:	8b85                	andi	a5,a5,1
   105b6:	e791                	bnez	a5,105c2 <__fp_unlock+0x10>
   105b8:	00c5d783          	lhu	a5,12(a1)
   105bc:	2007f793          	andi	a5,a5,512
   105c0:	c399                	beqz	a5,105c6 <__fp_unlock+0x14>
   105c2:	4501                	li	a0,0
   105c4:	8082                	ret
   105c6:	4da8                	lw	a0,88(a1)
   105c8:	1141                	addi	sp,sp,-16
   105ca:	c606                	sw	ra,12(sp)
   105cc:	2515                	jal	10bf0 <__retarget_lock_release_recursive>
   105ce:	40b2                	lw	ra,12(sp)
   105d0:	4501                	li	a0,0
   105d2:	0141                	addi	sp,sp,16
   105d4:	8082                	ret

000105d6 <global_stdio_init.part.0>:
   105d6:	1101                	addi	sp,sp,-32
   105d8:	ce06                	sw	ra,28(sp)
   105da:	cc22                	sw	s0,24(sp)
   105dc:	ca26                	sw	s1,20(sp)
   105de:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   105e2:	c84a                	sw	s2,16(sp)
   105e4:	c64e                	sw	s3,12(sp)
   105e6:	c452                	sw	s4,8(sp)
   105e8:	00000717          	auipc	a4,0x0
   105ec:	f4870713          	addi	a4,a4,-184 # 10530 <stdio_exit_handler>
   105f0:	4791                	li	a5,4
   105f2:	4621                	li	a2,8
   105f4:	4581                	li	a1,0
   105f6:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   105fa:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   105fe:	c45c                	sw	a5,12(s0)
   10600:	00042023          	sw	zero,0(s0)
   10604:	00042223          	sw	zero,4(s0)
   10608:	00042423          	sw	zero,8(s0)
   1060c:	06042223          	sw	zero,100(s0)
   10610:	00042823          	sw	zero,16(s0)
   10614:	00042a23          	sw	zero,20(s0)
   10618:	00042c23          	sw	zero,24(s0)
   1061c:	2bd9                	jal	10bf2 <memset>
   1061e:	00000a17          	auipc	s4,0x0
   10622:	2c0a0a13          	addi	s4,s4,704 # 108de <__sread>
   10626:	00000997          	auipc	s3,0x0
   1062a:	2f298993          	addi	s3,s3,754 # 10918 <__swrite>
   1062e:	00000917          	auipc	s2,0x0
   10632:	33a90913          	addi	s2,s2,826 # 10968 <__sseek>
   10636:	00000497          	auipc	s1,0x0
   1063a:	36e48493          	addi	s1,s1,878 # 109a4 <__sclose>
   1063e:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   10642:	03442023          	sw	s4,32(s0)
   10646:	03342223          	sw	s3,36(s0)
   1064a:	03242423          	sw	s2,40(s0)
   1064e:	d444                	sw	s1,44(s0)
   10650:	cc40                	sw	s0,28(s0)
   10652:	2369                	jal	10bdc <__retarget_lock_init_recursive>
   10654:	67c1                	lui	a5,0x10
   10656:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   10658:	4621                	li	a2,8
   1065a:	4581                	li	a1,0
   1065c:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   10660:	d87c                	sw	a5,116(s0)
   10662:	06042423          	sw	zero,104(s0)
   10666:	06042623          	sw	zero,108(s0)
   1066a:	06042823          	sw	zero,112(s0)
   1066e:	0c042623          	sw	zero,204(s0)
   10672:	06042c23          	sw	zero,120(s0)
   10676:	06042e23          	sw	zero,124(s0)
   1067a:	08042023          	sw	zero,128(s0)
   1067e:	2b95                	jal	10bf2 <memset>
   10680:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   10684:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   10688:	09442423          	sw	s4,136(s0)
   1068c:	09342623          	sw	s3,140(s0)
   10690:	09242823          	sw	s2,144(s0)
   10694:	08942a23          	sw	s1,148(s0)
   10698:	08f42223          	sw	a5,132(s0)
   1069c:	2381                	jal	10bdc <__retarget_lock_init_recursive>
   1069e:	000207b7          	lui	a5,0x20
   106a2:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   106a4:	4621                	li	a2,8
   106a6:	4581                	li	a1,0
   106a8:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   106ac:	0cf42e23          	sw	a5,220(s0)
   106b0:	0c042823          	sw	zero,208(s0)
   106b4:	0c042a23          	sw	zero,212(s0)
   106b8:	0c042c23          	sw	zero,216(s0)
   106bc:	12042a23          	sw	zero,308(s0)
   106c0:	0e042023          	sw	zero,224(s0)
   106c4:	0e042223          	sw	zero,228(s0)
   106c8:	0e042423          	sw	zero,232(s0)
   106cc:	231d                	jal	10bf2 <memset>
   106ce:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   106d2:	0f442823          	sw	s4,240(s0)
   106d6:	0f342a23          	sw	s3,244(s0)
   106da:	0f242c23          	sw	s2,248(s0)
   106de:	0e942e23          	sw	s1,252(s0)
   106e2:	0ef42623          	sw	a5,236(s0)
   106e6:	4462                	lw	s0,24(sp)
   106e8:	40f2                	lw	ra,28(sp)
   106ea:	44d2                	lw	s1,20(sp)
   106ec:	4942                	lw	s2,16(sp)
   106ee:	49b2                	lw	s3,12(sp)
   106f0:	4a22                	lw	s4,8(sp)
   106f2:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   106f6:	6105                	addi	sp,sp,32
   106f8:	a1d5                	j	10bdc <__retarget_lock_init_recursive>

000106fa <__sfp>:
   106fa:	1101                	addi	sp,sp,-32
   106fc:	c64e                	sw	s3,12(sp)
   106fe:	89aa                	mv	s3,a0
   10700:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10704:	ce06                	sw	ra,28(sp)
   10706:	cc22                	sw	s0,24(sp)
   10708:	ca26                	sw	s1,20(sp)
   1070a:	c84a                	sw	s2,16(sp)
   1070c:	29e1                	jal	10be4 <__retarget_lock_acquire_recursive>
   1070e:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   10712:	cfc5                	beqz	a5,107ca <__sfp+0xd0>
   10714:	00002917          	auipc	s2,0x2
   10718:	8fc90913          	addi	s2,s2,-1796 # 12010 <__sglue>
   1071c:	54fd                	li	s1,-1
   1071e:	00492783          	lw	a5,4(s2)
   10722:	00892403          	lw	s0,8(s2)
   10726:	17fd                	addi	a5,a5,-1
   10728:	0007d763          	bgez	a5,10736 <__sfp+0x3c>
   1072c:	a0ad                	j	10796 <__sfp+0x9c>
   1072e:	06840413          	addi	s0,s0,104
   10732:	06978263          	beq	a5,s1,10796 <__sfp+0x9c>
   10736:	00c41703          	lh	a4,12(s0)
   1073a:	17fd                	addi	a5,a5,-1
   1073c:	fb6d                	bnez	a4,1072e <__sfp+0x34>
   1073e:	77c1                	lui	a5,0xffff0
   10740:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   10742:	c45c                	sw	a5,12(s0)
   10744:	05840513          	addi	a0,s0,88
   10748:	06042223          	sw	zero,100(s0)
   1074c:	2941                	jal	10bdc <__retarget_lock_init_recursive>
   1074e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10752:	2979                	jal	10bf0 <__retarget_lock_release_recursive>
   10754:	05c40513          	addi	a0,s0,92
   10758:	00042023          	sw	zero,0(s0)
   1075c:	00042423          	sw	zero,8(s0)
   10760:	00042223          	sw	zero,4(s0)
   10764:	00042823          	sw	zero,16(s0)
   10768:	00042a23          	sw	zero,20(s0)
   1076c:	00042c23          	sw	zero,24(s0)
   10770:	4621                	li	a2,8
   10772:	4581                	li	a1,0
   10774:	29bd                	jal	10bf2 <memset>
   10776:	02042823          	sw	zero,48(s0)
   1077a:	02042a23          	sw	zero,52(s0)
   1077e:	04042223          	sw	zero,68(s0)
   10782:	04042423          	sw	zero,72(s0)
   10786:	40f2                	lw	ra,28(sp)
   10788:	8522                	mv	a0,s0
   1078a:	4462                	lw	s0,24(sp)
   1078c:	44d2                	lw	s1,20(sp)
   1078e:	4942                	lw	s2,16(sp)
   10790:	49b2                	lw	s3,12(sp)
   10792:	6105                	addi	sp,sp,32
   10794:	8082                	ret
   10796:	00092403          	lw	s0,0(s2)
   1079a:	c019                	beqz	s0,107a0 <__sfp+0xa6>
   1079c:	8922                	mv	s2,s0
   1079e:	b741                	j	1071e <__sfp+0x24>
   107a0:	1ac00593          	li	a1,428
   107a4:	854e                	mv	a0,s3
   107a6:	155000ef          	jal	110fa <_malloc_r>
   107aa:	842a                	mv	s0,a0
   107ac:	c10d                	beqz	a0,107ce <__sfp+0xd4>
   107ae:	4791                	li	a5,4
   107b0:	0531                	addi	a0,a0,12
   107b2:	00042023          	sw	zero,0(s0)
   107b6:	c05c                	sw	a5,4(s0)
   107b8:	c408                	sw	a0,8(s0)
   107ba:	1a000613          	li	a2,416
   107be:	4581                	li	a1,0
   107c0:	290d                	jal	10bf2 <memset>
   107c2:	00892023          	sw	s0,0(s2)
   107c6:	8922                	mv	s2,s0
   107c8:	bf99                	j	1071e <__sfp+0x24>
   107ca:	3531                	jal	105d6 <global_stdio_init.part.0>
   107cc:	b7a1                	j	10714 <__sfp+0x1a>
   107ce:	00092023          	sw	zero,0(s2)
   107d2:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   107d6:	2929                	jal	10bf0 <__retarget_lock_release_recursive>
   107d8:	47b1                	li	a5,12
   107da:	00f9a023          	sw	a5,0(s3)
   107de:	b765                	j	10786 <__sfp+0x8c>

000107e0 <__sinit>:
   107e0:	1141                	addi	sp,sp,-16
   107e2:	c422                	sw	s0,8(sp)
   107e4:	842a                	mv	s0,a0
   107e6:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   107ea:	c606                	sw	ra,12(sp)
   107ec:	2ee5                	jal	10be4 <__retarget_lock_acquire_recursive>
   107ee:	585c                	lw	a5,52(s0)
   107f0:	eb89                	bnez	a5,10802 <__sinit+0x22>
   107f2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   107f6:	00000717          	auipc	a4,0x0
   107fa:	d5470713          	addi	a4,a4,-684 # 1054a <cleanup_stdio>
   107fe:	d858                	sw	a4,52(s0)
   10800:	c799                	beqz	a5,1080e <__sinit+0x2e>
   10802:	4422                	lw	s0,8(sp)
   10804:	40b2                	lw	ra,12(sp)
   10806:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1080a:	0141                	addi	sp,sp,16
   1080c:	a6d5                	j	10bf0 <__retarget_lock_release_recursive>
   1080e:	33e1                	jal	105d6 <global_stdio_init.part.0>
   10810:	4422                	lw	s0,8(sp)
   10812:	40b2                	lw	ra,12(sp)
   10814:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10818:	0141                	addi	sp,sp,16
   1081a:	aed9                	j	10bf0 <__retarget_lock_release_recursive>

0001081c <__sfp_lock_acquire>:
   1081c:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10820:	a6d1                	j	10be4 <__retarget_lock_acquire_recursive>

00010822 <__sfp_lock_release>:
   10822:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10826:	a6e9                	j	10bf0 <__retarget_lock_release_recursive>

00010828 <__fp_lock_all>:
   10828:	1141                	addi	sp,sp,-16
   1082a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1082e:	c606                	sw	ra,12(sp)
   10830:	2e55                	jal	10be4 <__retarget_lock_acquire_recursive>
   10832:	40b2                	lw	ra,12(sp)
   10834:	00001617          	auipc	a2,0x1
   10838:	7dc60613          	addi	a2,a2,2012 # 12010 <__sglue>
   1083c:	00000597          	auipc	a1,0x0
   10840:	d5258593          	addi	a1,a1,-686 # 1058e <__fp_lock>
   10844:	4501                	li	a0,0
   10846:	0141                	addi	sp,sp,16
   10848:	a015                	j	1086c <_fwalk_sglue>

0001084a <__fp_unlock_all>:
   1084a:	1141                	addi	sp,sp,-16
   1084c:	00001617          	auipc	a2,0x1
   10850:	7c460613          	addi	a2,a2,1988 # 12010 <__sglue>
   10854:	00000597          	auipc	a1,0x0
   10858:	d5e58593          	addi	a1,a1,-674 # 105b2 <__fp_unlock>
   1085c:	4501                	li	a0,0
   1085e:	c606                	sw	ra,12(sp)
   10860:	2031                	jal	1086c <_fwalk_sglue>
   10862:	40b2                	lw	ra,12(sp)
   10864:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10868:	0141                	addi	sp,sp,16
   1086a:	a659                	j	10bf0 <__retarget_lock_release_recursive>

0001086c <_fwalk_sglue>:
   1086c:	7179                	addi	sp,sp,-48
   1086e:	d04a                	sw	s2,32(sp)
   10870:	ce4e                	sw	s3,28(sp)
   10872:	cc52                	sw	s4,24(sp)
   10874:	ca56                	sw	s5,20(sp)
   10876:	c85a                	sw	s6,16(sp)
   10878:	c65e                	sw	s7,12(sp)
   1087a:	d606                	sw	ra,44(sp)
   1087c:	d422                	sw	s0,40(sp)
   1087e:	d226                	sw	s1,36(sp)
   10880:	8b2a                	mv	s6,a0
   10882:	8bae                	mv	s7,a1
   10884:	8ab2                	mv	s5,a2
   10886:	4a01                	li	s4,0
   10888:	4985                	li	s3,1
   1088a:	597d                	li	s2,-1
   1088c:	004aa483          	lw	s1,4(s5)
   10890:	008aa403          	lw	s0,8(s5)
   10894:	14fd                	addi	s1,s1,-1
   10896:	0204c463          	bltz	s1,108be <_fwalk_sglue+0x52>
   1089a:	00c45783          	lhu	a5,12(s0)
   1089e:	00f9fb63          	bgeu	s3,a5,108b4 <_fwalk_sglue+0x48>
   108a2:	00e41783          	lh	a5,14(s0)
   108a6:	85a2                	mv	a1,s0
   108a8:	855a                	mv	a0,s6
   108aa:	01278563          	beq	a5,s2,108b4 <_fwalk_sglue+0x48>
   108ae:	9b82                	jalr	s7
   108b0:	00aa6a33          	or	s4,s4,a0
   108b4:	14fd                	addi	s1,s1,-1
   108b6:	06840413          	addi	s0,s0,104
   108ba:	ff2490e3          	bne	s1,s2,1089a <_fwalk_sglue+0x2e>
   108be:	000aaa83          	lw	s5,0(s5)
   108c2:	fc0a95e3          	bnez	s5,1088c <_fwalk_sglue+0x20>
   108c6:	50b2                	lw	ra,44(sp)
   108c8:	5422                	lw	s0,40(sp)
   108ca:	5492                	lw	s1,36(sp)
   108cc:	5902                	lw	s2,32(sp)
   108ce:	49f2                	lw	s3,28(sp)
   108d0:	4ad2                	lw	s5,20(sp)
   108d2:	4b42                	lw	s6,16(sp)
   108d4:	4bb2                	lw	s7,12(sp)
   108d6:	8552                	mv	a0,s4
   108d8:	4a62                	lw	s4,24(sp)
   108da:	6145                	addi	sp,sp,48
   108dc:	8082                	ret

000108de <__sread>:
   108de:	1141                	addi	sp,sp,-16
   108e0:	c422                	sw	s0,8(sp)
   108e2:	842e                	mv	s0,a1
   108e4:	00e59583          	lh	a1,14(a1)
   108e8:	c606                	sw	ra,12(sp)
   108ea:	22c9                	jal	10aac <_read_r>
   108ec:	00054963          	bltz	a0,108fe <__sread+0x20>
   108f0:	483c                	lw	a5,80(s0)
   108f2:	40b2                	lw	ra,12(sp)
   108f4:	97aa                	add	a5,a5,a0
   108f6:	c83c                	sw	a5,80(s0)
   108f8:	4422                	lw	s0,8(sp)
   108fa:	0141                	addi	sp,sp,16
   108fc:	8082                	ret
   108fe:	00c45783          	lhu	a5,12(s0)
   10902:	777d                	lui	a4,0xfffff
   10904:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10906:	8ff9                	and	a5,a5,a4
   10908:	40b2                	lw	ra,12(sp)
   1090a:	00f41623          	sh	a5,12(s0)
   1090e:	4422                	lw	s0,8(sp)
   10910:	0141                	addi	sp,sp,16
   10912:	8082                	ret

00010914 <__seofread>:
   10914:	4501                	li	a0,0
   10916:	8082                	ret

00010918 <__swrite>:
   10918:	00c59783          	lh	a5,12(a1)
   1091c:	1101                	addi	sp,sp,-32
   1091e:	cc22                	sw	s0,24(sp)
   10920:	ca26                	sw	s1,20(sp)
   10922:	c84a                	sw	s2,16(sp)
   10924:	c64e                	sw	s3,12(sp)
   10926:	ce06                	sw	ra,28(sp)
   10928:	1007f713          	andi	a4,a5,256
   1092c:	842e                	mv	s0,a1
   1092e:	8932                	mv	s2,a2
   10930:	89b6                	mv	s3,a3
   10932:	84aa                	mv	s1,a0
   10934:	e315                	bnez	a4,10958 <__swrite+0x40>
   10936:	777d                	lui	a4,0xfffff
   10938:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   1093a:	8ff9                	and	a5,a5,a4
   1093c:	00e41583          	lh	a1,14(s0)
   10940:	00f41623          	sh	a5,12(s0)
   10944:	4462                	lw	s0,24(sp)
   10946:	40f2                	lw	ra,28(sp)
   10948:	86ce                	mv	a3,s3
   1094a:	864a                	mv	a2,s2
   1094c:	49b2                	lw	s3,12(sp)
   1094e:	4942                	lw	s2,16(sp)
   10950:	8526                	mv	a0,s1
   10952:	44d2                	lw	s1,20(sp)
   10954:	6105                	addi	sp,sp,32
   10956:	aa71                	j	10af2 <_write_r>
   10958:	00e59583          	lh	a1,14(a1)
   1095c:	4689                	li	a3,2
   1095e:	4601                	li	a2,0
   10960:	2219                	jal	10a66 <_lseek_r>
   10962:	00c41783          	lh	a5,12(s0)
   10966:	bfc1                	j	10936 <__swrite+0x1e>

00010968 <__sseek>:
   10968:	1141                	addi	sp,sp,-16
   1096a:	c422                	sw	s0,8(sp)
   1096c:	842e                	mv	s0,a1
   1096e:	00e59583          	lh	a1,14(a1)
   10972:	c606                	sw	ra,12(sp)
   10974:	28cd                	jal	10a66 <_lseek_r>
   10976:	577d                	li	a4,-1
   10978:	00c41783          	lh	a5,12(s0)
   1097c:	00e50b63          	beq	a0,a4,10992 <__sseek+0x2a>
   10980:	6705                	lui	a4,0x1
   10982:	8fd9                	or	a5,a5,a4
   10984:	40b2                	lw	ra,12(sp)
   10986:	c828                	sw	a0,80(s0)
   10988:	00f41623          	sh	a5,12(s0)
   1098c:	4422                	lw	s0,8(sp)
   1098e:	0141                	addi	sp,sp,16
   10990:	8082                	ret
   10992:	777d                	lui	a4,0xfffff
   10994:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10996:	8ff9                	and	a5,a5,a4
   10998:	40b2                	lw	ra,12(sp)
   1099a:	00f41623          	sh	a5,12(s0)
   1099e:	4422                	lw	s0,8(sp)
   109a0:	0141                	addi	sp,sp,16
   109a2:	8082                	ret

000109a4 <__sclose>:
   109a4:	00e59583          	lh	a1,14(a1)
   109a8:	a009                	j	109aa <_close_r>

000109aa <_close_r>:
   109aa:	1141                	addi	sp,sp,-16
   109ac:	c422                	sw	s0,8(sp)
   109ae:	842a                	mv	s0,a0
   109b0:	852e                	mv	a0,a1
   109b2:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   109b6:	c606                	sw	ra,12(sp)
   109b8:	0ee010ef          	jal	11aa6 <_close>
   109bc:	57fd                	li	a5,-1
   109be:	00f50663          	beq	a0,a5,109ca <_close_r+0x20>
   109c2:	40b2                	lw	ra,12(sp)
   109c4:	4422                	lw	s0,8(sp)
   109c6:	0141                	addi	sp,sp,16
   109c8:	8082                	ret
   109ca:	c226                	sw	s1,4(sp)
   109cc:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   109d0:	409c                	lw	a5,0(s1)
   109d2:	c799                	beqz	a5,109e0 <_close_r+0x36>
   109d4:	40b2                	lw	ra,12(sp)
   109d6:	c01c                	sw	a5,0(s0)
   109d8:	4422                	lw	s0,8(sp)
   109da:	4492                	lw	s1,4(sp)
   109dc:	0141                	addi	sp,sp,16
   109de:	8082                	ret
   109e0:	40b2                	lw	ra,12(sp)
   109e2:	4422                	lw	s0,8(sp)
   109e4:	4492                	lw	s1,4(sp)
   109e6:	0141                	addi	sp,sp,16
   109e8:	8082                	ret

000109ea <_reclaim_reent>:
   109ea:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   109ee:	06a78b63          	beq	a5,a0,10a64 <_reclaim_reent+0x7a>
   109f2:	416c                	lw	a1,68(a0)
   109f4:	1101                	addi	sp,sp,-32
   109f6:	ca26                	sw	s1,20(sp)
   109f8:	ce06                	sw	ra,28(sp)
   109fa:	cc22                	sw	s0,24(sp)
   109fc:	84aa                	mv	s1,a0
   109fe:	c59d                	beqz	a1,10a2c <_reclaim_reent+0x42>
   10a00:	c84a                	sw	s2,16(sp)
   10a02:	c64e                	sw	s3,12(sp)
   10a04:	4901                	li	s2,0
   10a06:	08000993          	li	s3,128
   10a0a:	012587b3          	add	a5,a1,s2
   10a0e:	4380                	lw	s0,0(a5)
   10a10:	c419                	beqz	s0,10a1e <_reclaim_reent+0x34>
   10a12:	85a2                	mv	a1,s0
   10a14:	4000                	lw	s0,0(s0)
   10a16:	8526                	mv	a0,s1
   10a18:	21d1                	jal	10edc <_free_r>
   10a1a:	fc65                	bnez	s0,10a12 <_reclaim_reent+0x28>
   10a1c:	40ec                	lw	a1,68(s1)
   10a1e:	0911                	addi	s2,s2,4
   10a20:	ff3915e3          	bne	s2,s3,10a0a <_reclaim_reent+0x20>
   10a24:	8526                	mv	a0,s1
   10a26:	295d                	jal	10edc <_free_r>
   10a28:	4942                	lw	s2,16(sp)
   10a2a:	49b2                	lw	s3,12(sp)
   10a2c:	5c8c                	lw	a1,56(s1)
   10a2e:	c199                	beqz	a1,10a34 <_reclaim_reent+0x4a>
   10a30:	8526                	mv	a0,s1
   10a32:	216d                	jal	10edc <_free_r>
   10a34:	40a0                	lw	s0,64(s1)
   10a36:	c411                	beqz	s0,10a42 <_reclaim_reent+0x58>
   10a38:	85a2                	mv	a1,s0
   10a3a:	4000                	lw	s0,0(s0)
   10a3c:	8526                	mv	a0,s1
   10a3e:	2979                	jal	10edc <_free_r>
   10a40:	fc65                	bnez	s0,10a38 <_reclaim_reent+0x4e>
   10a42:	44ec                	lw	a1,76(s1)
   10a44:	c199                	beqz	a1,10a4a <_reclaim_reent+0x60>
   10a46:	8526                	mv	a0,s1
   10a48:	2951                	jal	10edc <_free_r>
   10a4a:	58dc                	lw	a5,52(s1)
   10a4c:	c799                	beqz	a5,10a5a <_reclaim_reent+0x70>
   10a4e:	4462                	lw	s0,24(sp)
   10a50:	40f2                	lw	ra,28(sp)
   10a52:	8526                	mv	a0,s1
   10a54:	44d2                	lw	s1,20(sp)
   10a56:	6105                	addi	sp,sp,32
   10a58:	8782                	jr	a5
   10a5a:	40f2                	lw	ra,28(sp)
   10a5c:	4462                	lw	s0,24(sp)
   10a5e:	44d2                	lw	s1,20(sp)
   10a60:	6105                	addi	sp,sp,32
   10a62:	8082                	ret
   10a64:	8082                	ret

00010a66 <_lseek_r>:
   10a66:	1141                	addi	sp,sp,-16
   10a68:	872e                	mv	a4,a1
   10a6a:	c422                	sw	s0,8(sp)
   10a6c:	85b2                	mv	a1,a2
   10a6e:	842a                	mv	s0,a0
   10a70:	8636                	mv	a2,a3
   10a72:	853a                	mv	a0,a4
   10a74:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10a78:	c606                	sw	ra,12(sp)
   10a7a:	076010ef          	jal	11af0 <_lseek>
   10a7e:	57fd                	li	a5,-1
   10a80:	00f50663          	beq	a0,a5,10a8c <_lseek_r+0x26>
   10a84:	40b2                	lw	ra,12(sp)
   10a86:	4422                	lw	s0,8(sp)
   10a88:	0141                	addi	sp,sp,16
   10a8a:	8082                	ret
   10a8c:	c226                	sw	s1,4(sp)
   10a8e:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10a92:	409c                	lw	a5,0(s1)
   10a94:	c799                	beqz	a5,10aa2 <_lseek_r+0x3c>
   10a96:	40b2                	lw	ra,12(sp)
   10a98:	c01c                	sw	a5,0(s0)
   10a9a:	4422                	lw	s0,8(sp)
   10a9c:	4492                	lw	s1,4(sp)
   10a9e:	0141                	addi	sp,sp,16
   10aa0:	8082                	ret
   10aa2:	40b2                	lw	ra,12(sp)
   10aa4:	4422                	lw	s0,8(sp)
   10aa6:	4492                	lw	s1,4(sp)
   10aa8:	0141                	addi	sp,sp,16
   10aaa:	8082                	ret

00010aac <_read_r>:
   10aac:	1141                	addi	sp,sp,-16
   10aae:	872e                	mv	a4,a1
   10ab0:	c422                	sw	s0,8(sp)
   10ab2:	85b2                	mv	a1,a2
   10ab4:	842a                	mv	s0,a0
   10ab6:	8636                	mv	a2,a3
   10ab8:	853a                	mv	a0,a4
   10aba:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10abe:	c606                	sw	ra,12(sp)
   10ac0:	05a010ef          	jal	11b1a <_read>
   10ac4:	57fd                	li	a5,-1
   10ac6:	00f50663          	beq	a0,a5,10ad2 <_read_r+0x26>
   10aca:	40b2                	lw	ra,12(sp)
   10acc:	4422                	lw	s0,8(sp)
   10ace:	0141                	addi	sp,sp,16
   10ad0:	8082                	ret
   10ad2:	c226                	sw	s1,4(sp)
   10ad4:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10ad8:	409c                	lw	a5,0(s1)
   10ada:	c799                	beqz	a5,10ae8 <_read_r+0x3c>
   10adc:	40b2                	lw	ra,12(sp)
   10ade:	c01c                	sw	a5,0(s0)
   10ae0:	4422                	lw	s0,8(sp)
   10ae2:	4492                	lw	s1,4(sp)
   10ae4:	0141                	addi	sp,sp,16
   10ae6:	8082                	ret
   10ae8:	40b2                	lw	ra,12(sp)
   10aea:	4422                	lw	s0,8(sp)
   10aec:	4492                	lw	s1,4(sp)
   10aee:	0141                	addi	sp,sp,16
   10af0:	8082                	ret

00010af2 <_write_r>:
   10af2:	1141                	addi	sp,sp,-16
   10af4:	872e                	mv	a4,a1
   10af6:	c422                	sw	s0,8(sp)
   10af8:	85b2                	mv	a1,a2
   10afa:	842a                	mv	s0,a0
   10afc:	8636                	mv	a2,a3
   10afe:	853a                	mv	a0,a4
   10b00:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10b04:	c606                	sw	ra,12(sp)
   10b06:	08c010ef          	jal	11b92 <_write>
   10b0a:	57fd                	li	a5,-1
   10b0c:	00f50663          	beq	a0,a5,10b18 <_write_r+0x26>
   10b10:	40b2                	lw	ra,12(sp)
   10b12:	4422                	lw	s0,8(sp)
   10b14:	0141                	addi	sp,sp,16
   10b16:	8082                	ret
   10b18:	c226                	sw	s1,4(sp)
   10b1a:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10b1e:	409c                	lw	a5,0(s1)
   10b20:	c799                	beqz	a5,10b2e <_write_r+0x3c>
   10b22:	40b2                	lw	ra,12(sp)
   10b24:	c01c                	sw	a5,0(s0)
   10b26:	4422                	lw	s0,8(sp)
   10b28:	4492                	lw	s1,4(sp)
   10b2a:	0141                	addi	sp,sp,16
   10b2c:	8082                	ret
   10b2e:	40b2                	lw	ra,12(sp)
   10b30:	4422                	lw	s0,8(sp)
   10b32:	4492                	lw	s1,4(sp)
   10b34:	0141                	addi	sp,sp,16
   10b36:	8082                	ret

00010b38 <__libc_init_array>:
   10b38:	1141                	addi	sp,sp,-16
   10b3a:	c422                	sw	s0,8(sp)
   10b3c:	c04a                	sw	s2,0(sp)
   10b3e:	00001797          	auipc	a5,0x1
   10b42:	4c278793          	addi	a5,a5,1218 # 12000 <__init_array_start>
   10b46:	00001417          	auipc	s0,0x1
   10b4a:	4ba40413          	addi	s0,s0,1210 # 12000 <__init_array_start>
   10b4e:	c606                	sw	ra,12(sp)
   10b50:	c226                	sw	s1,4(sp)
   10b52:	40878933          	sub	s2,a5,s0
   10b56:	00878b63          	beq	a5,s0,10b6c <__libc_init_array+0x34>
   10b5a:	40295913          	srai	s2,s2,0x2
   10b5e:	4481                	li	s1,0
   10b60:	401c                	lw	a5,0(s0)
   10b62:	0485                	addi	s1,s1,1
   10b64:	0411                	addi	s0,s0,4
   10b66:	9782                	jalr	a5
   10b68:	ff24ece3          	bltu	s1,s2,10b60 <__libc_init_array+0x28>
   10b6c:	00001797          	auipc	a5,0x1
   10b70:	49c78793          	addi	a5,a5,1180 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10b74:	00001417          	auipc	s0,0x1
   10b78:	48c40413          	addi	s0,s0,1164 # 12000 <__init_array_start>
   10b7c:	40878933          	sub	s2,a5,s0
   10b80:	40295913          	srai	s2,s2,0x2
   10b84:	00878963          	beq	a5,s0,10b96 <__libc_init_array+0x5e>
   10b88:	4481                	li	s1,0
   10b8a:	401c                	lw	a5,0(s0)
   10b8c:	0485                	addi	s1,s1,1
   10b8e:	0411                	addi	s0,s0,4
   10b90:	9782                	jalr	a5
   10b92:	ff24ece3          	bltu	s1,s2,10b8a <__libc_init_array+0x52>
   10b96:	40b2                	lw	ra,12(sp)
   10b98:	4422                	lw	s0,8(sp)
   10b9a:	4492                	lw	s1,4(sp)
   10b9c:	4902                	lw	s2,0(sp)
   10b9e:	0141                	addi	sp,sp,16
   10ba0:	8082                	ret

00010ba2 <__libc_fini_array>:
   10ba2:	1141                	addi	sp,sp,-16
   10ba4:	c422                	sw	s0,8(sp)
   10ba6:	00001797          	auipc	a5,0x1
   10baa:	46278793          	addi	a5,a5,1122 # 12008 <__do_global_dtors_aux_fini_array_entry>
   10bae:	00001417          	auipc	s0,0x1
   10bb2:	45e40413          	addi	s0,s0,1118 # 1200c <__fini_array_end>
   10bb6:	8c1d                	sub	s0,s0,a5
   10bb8:	c226                	sw	s1,4(sp)
   10bba:	c606                	sw	ra,12(sp)
   10bbc:	40245493          	srai	s1,s0,0x2
   10bc0:	c881                	beqz	s1,10bd0 <__libc_fini_array+0x2e>
   10bc2:	1471                	addi	s0,s0,-4
   10bc4:	943e                	add	s0,s0,a5
   10bc6:	401c                	lw	a5,0(s0)
   10bc8:	14fd                	addi	s1,s1,-1
   10bca:	1471                	addi	s0,s0,-4
   10bcc:	9782                	jalr	a5
   10bce:	fce5                	bnez	s1,10bc6 <__libc_fini_array+0x24>
   10bd0:	40b2                	lw	ra,12(sp)
   10bd2:	4422                	lw	s0,8(sp)
   10bd4:	4492                	lw	s1,4(sp)
   10bd6:	0141                	addi	sp,sp,16
   10bd8:	8082                	ret

00010bda <__retarget_lock_init>:
   10bda:	8082                	ret

00010bdc <__retarget_lock_init_recursive>:
   10bdc:	8082                	ret

00010bde <__retarget_lock_close>:
   10bde:	8082                	ret

00010be0 <__retarget_lock_close_recursive>:
   10be0:	8082                	ret

00010be2 <__retarget_lock_acquire>:
   10be2:	8082                	ret

00010be4 <__retarget_lock_acquire_recursive>:
   10be4:	8082                	ret

00010be6 <__retarget_lock_try_acquire>:
   10be6:	4505                	li	a0,1
   10be8:	8082                	ret

00010bea <__retarget_lock_try_acquire_recursive>:
   10bea:	4505                	li	a0,1
   10bec:	8082                	ret

00010bee <__retarget_lock_release>:
   10bee:	8082                	ret

00010bf0 <__retarget_lock_release_recursive>:
   10bf0:	8082                	ret

00010bf2 <memset>:
   10bf2:	433d                	li	t1,15
   10bf4:	872a                	mv	a4,a0
   10bf6:	02c37363          	bgeu	t1,a2,10c1c <memset+0x2a>
   10bfa:	00f77793          	andi	a5,a4,15
   10bfe:	efbd                	bnez	a5,10c7c <memset+0x8a>
   10c00:	e5ad                	bnez	a1,10c6a <memset+0x78>
   10c02:	ff067693          	andi	a3,a2,-16
   10c06:	8a3d                	andi	a2,a2,15
   10c08:	96ba                	add	a3,a3,a4
   10c0a:	c30c                	sw	a1,0(a4)
   10c0c:	c34c                	sw	a1,4(a4)
   10c0e:	c70c                	sw	a1,8(a4)
   10c10:	c74c                	sw	a1,12(a4)
   10c12:	0741                	addi	a4,a4,16
   10c14:	fed76be3          	bltu	a4,a3,10c0a <memset+0x18>
   10c18:	e211                	bnez	a2,10c1c <memset+0x2a>
   10c1a:	8082                	ret
   10c1c:	40c306b3          	sub	a3,t1,a2
   10c20:	068a                	slli	a3,a3,0x2
   10c22:	00000297          	auipc	t0,0x0
   10c26:	9696                	add	a3,a3,t0
   10c28:	00a68067          	jr	10(a3)
   10c2c:	00b70723          	sb	a1,14(a4)
   10c30:	00b706a3          	sb	a1,13(a4)
   10c34:	00b70623          	sb	a1,12(a4)
   10c38:	00b705a3          	sb	a1,11(a4)
   10c3c:	00b70523          	sb	a1,10(a4)
   10c40:	00b704a3          	sb	a1,9(a4)
   10c44:	00b70423          	sb	a1,8(a4)
   10c48:	00b703a3          	sb	a1,7(a4)
   10c4c:	00b70323          	sb	a1,6(a4)
   10c50:	00b702a3          	sb	a1,5(a4)
   10c54:	00b70223          	sb	a1,4(a4)
   10c58:	00b701a3          	sb	a1,3(a4)
   10c5c:	00b70123          	sb	a1,2(a4)
   10c60:	00b700a3          	sb	a1,1(a4)
   10c64:	00b70023          	sb	a1,0(a4)
   10c68:	8082                	ret
   10c6a:	0ff5f593          	zext.b	a1,a1
   10c6e:	00859693          	slli	a3,a1,0x8
   10c72:	8dd5                	or	a1,a1,a3
   10c74:	01059693          	slli	a3,a1,0x10
   10c78:	8dd5                	or	a1,a1,a3
   10c7a:	b761                	j	10c02 <memset+0x10>
   10c7c:	00279693          	slli	a3,a5,0x2
   10c80:	00000297          	auipc	t0,0x0
   10c84:	9696                	add	a3,a3,t0
   10c86:	8286                	mv	t0,ra
   10c88:	fa8680e7          	jalr	-88(a3)
   10c8c:	8096                	mv	ra,t0
   10c8e:	17c1                	addi	a5,a5,-16
   10c90:	8f1d                	sub	a4,a4,a5
   10c92:	963e                	add	a2,a2,a5
   10c94:	f8c374e3          	bgeu	t1,a2,10c1c <memset+0x2a>
   10c98:	b7a5                	j	10c00 <memset+0xe>

00010c9a <__register_exitproc>:
   10c9a:	1101                	addi	sp,sp,-32
   10c9c:	c84a                	sw	s2,16(sp)
   10c9e:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   10ca2:	cc22                	sw	s0,24(sp)
   10ca4:	842a                	mv	s0,a0
   10ca6:	00092503          	lw	a0,0(s2)
   10caa:	ca26                	sw	s1,20(sp)
   10cac:	c64e                	sw	s3,12(sp)
   10cae:	c452                	sw	s4,8(sp)
   10cb0:	ce06                	sw	ra,28(sp)
   10cb2:	84ae                	mv	s1,a1
   10cb4:	8a32                	mv	s4,a2
   10cb6:	89b6                	mv	s3,a3
   10cb8:	3735                	jal	10be4 <__retarget_lock_acquire_recursive>
   10cba:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   10cbe:	431c                	lw	a5,0(a4)
   10cc0:	cfb9                	beqz	a5,10d1e <__register_exitproc+0x84>
   10cc2:	43d8                	lw	a4,4(a5)
   10cc4:	45fd                	li	a1,31
   10cc6:	00092503          	lw	a0,0(s2)
   10cca:	04e5ce63          	blt	a1,a4,10d26 <__register_exitproc+0x8c>
   10cce:	00271593          	slli	a1,a4,0x2
   10cd2:	ec19                	bnez	s0,10cf0 <__register_exitproc+0x56>
   10cd4:	0705                	addi	a4,a4,1
   10cd6:	c3d8                	sw	a4,4(a5)
   10cd8:	97ae                	add	a5,a5,a1
   10cda:	c784                	sw	s1,8(a5)
   10cdc:	3f11                	jal	10bf0 <__retarget_lock_release_recursive>
   10cde:	4501                	li	a0,0
   10ce0:	40f2                	lw	ra,28(sp)
   10ce2:	4462                	lw	s0,24(sp)
   10ce4:	44d2                	lw	s1,20(sp)
   10ce6:	4942                	lw	s2,16(sp)
   10ce8:	49b2                	lw	s3,12(sp)
   10cea:	4a22                	lw	s4,8(sp)
   10cec:	6105                	addi	sp,sp,32
   10cee:	8082                	ret
   10cf0:	00b78833          	add	a6,a5,a1
   10cf4:	09482423          	sw	s4,136(a6)
   10cf8:	1887a683          	lw	a3,392(a5)
   10cfc:	4605                	li	a2,1
   10cfe:	00e61633          	sll	a2,a2,a4
   10d02:	8ed1                	or	a3,a3,a2
   10d04:	18d7a423          	sw	a3,392(a5)
   10d08:	11382423          	sw	s3,264(a6)
   10d0c:	4689                	li	a3,2
   10d0e:	fcd413e3          	bne	s0,a3,10cd4 <__register_exitproc+0x3a>
   10d12:	18c7a683          	lw	a3,396(a5)
   10d16:	8ed1                	or	a3,a3,a2
   10d18:	18d7a623          	sw	a3,396(a5)
   10d1c:	bf65                	j	10cd4 <__register_exitproc+0x3a>
   10d1e:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   10d22:	c31c                	sw	a5,0(a4)
   10d24:	bf79                	j	10cc2 <__register_exitproc+0x28>
   10d26:	35e9                	jal	10bf0 <__retarget_lock_release_recursive>
   10d28:	557d                	li	a0,-1
   10d2a:	bf5d                	j	10ce0 <__register_exitproc+0x46>

00010d2c <__call_exitprocs>:
   10d2c:	7179                	addi	sp,sp,-48
   10d2e:	c65e                	sw	s7,12(sp)
   10d30:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   10d34:	c85a                	sw	s6,16(sp)
   10d36:	8b2a                	mv	s6,a0
   10d38:	000ba503          	lw	a0,0(s7) # 30000 <__BSS_END__+0x1d75c>
   10d3c:	cc52                	sw	s4,24(sp)
   10d3e:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   10d42:	d04a                	sw	s2,32(sp)
   10d44:	c462                	sw	s8,8(sp)
   10d46:	d606                	sw	ra,44(sp)
   10d48:	8c2e                	mv	s8,a1
   10d4a:	3d69                	jal	10be4 <__retarget_lock_acquire_recursive>
   10d4c:	000a2903          	lw	s2,0(s4)
   10d50:	04090063          	beqz	s2,10d90 <__call_exitprocs+0x64>
   10d54:	ce4e                	sw	s3,28(sp)
   10d56:	ca56                	sw	s5,20(sp)
   10d58:	d422                	sw	s0,40(sp)
   10d5a:	d226                	sw	s1,36(sp)
   10d5c:	c266                	sw	s9,4(sp)
   10d5e:	59fd                	li	s3,-1
   10d60:	4a85                	li	s5,1
   10d62:	00492483          	lw	s1,4(s2)
   10d66:	fff48413          	addi	s0,s1,-1
   10d6a:	00044e63          	bltz	s0,10d86 <__call_exitprocs+0x5a>
   10d6e:	048a                	slli	s1,s1,0x2
   10d70:	94ca                	add	s1,s1,s2
   10d72:	020c0963          	beqz	s8,10da4 <__call_exitprocs+0x78>
   10d76:	1044a783          	lw	a5,260(s1)
   10d7a:	03878563          	beq	a5,s8,10da4 <__call_exitprocs+0x78>
   10d7e:	147d                	addi	s0,s0,-1
   10d80:	14f1                	addi	s1,s1,-4
   10d82:	ff341ae3          	bne	s0,s3,10d76 <__call_exitprocs+0x4a>
   10d86:	5422                	lw	s0,40(sp)
   10d88:	5492                	lw	s1,36(sp)
   10d8a:	49f2                	lw	s3,28(sp)
   10d8c:	4ad2                	lw	s5,20(sp)
   10d8e:	4c92                	lw	s9,4(sp)
   10d90:	000ba503          	lw	a0,0(s7)
   10d94:	50b2                	lw	ra,44(sp)
   10d96:	5902                	lw	s2,32(sp)
   10d98:	4a62                	lw	s4,24(sp)
   10d9a:	4b42                	lw	s6,16(sp)
   10d9c:	4bb2                	lw	s7,12(sp)
   10d9e:	4c22                	lw	s8,8(sp)
   10da0:	6145                	addi	sp,sp,48
   10da2:	b5b9                	j	10bf0 <__retarget_lock_release_recursive>
   10da4:	00492783          	lw	a5,4(s2)
   10da8:	40d4                	lw	a3,4(s1)
   10daa:	17fd                	addi	a5,a5,-1
   10dac:	04878c63          	beq	a5,s0,10e04 <__call_exitprocs+0xd8>
   10db0:	0004a223          	sw	zero,4(s1)
   10db4:	c295                	beqz	a3,10dd8 <__call_exitprocs+0xac>
   10db6:	18892783          	lw	a5,392(s2)
   10dba:	008a9733          	sll	a4,s5,s0
   10dbe:	00492c83          	lw	s9,4(s2)
   10dc2:	8ff9                	and	a5,a5,a4
   10dc4:	ef99                	bnez	a5,10de2 <__call_exitprocs+0xb6>
   10dc6:	9682                	jalr	a3
   10dc8:	00492703          	lw	a4,4(s2)
   10dcc:	000a2783          	lw	a5,0(s4)
   10dd0:	03971763          	bne	a4,s9,10dfe <__call_exitprocs+0xd2>
   10dd4:	03279563          	bne	a5,s2,10dfe <__call_exitprocs+0xd2>
   10dd8:	147d                	addi	s0,s0,-1
   10dda:	14f1                	addi	s1,s1,-4
   10ddc:	f9341be3          	bne	s0,s3,10d72 <__call_exitprocs+0x46>
   10de0:	b75d                	j	10d86 <__call_exitprocs+0x5a>
   10de2:	18c92783          	lw	a5,396(s2)
   10de6:	0844a583          	lw	a1,132(s1)
   10dea:	8f7d                	and	a4,a4,a5
   10dec:	ef19                	bnez	a4,10e0a <__call_exitprocs+0xde>
   10dee:	855a                	mv	a0,s6
   10df0:	9682                	jalr	a3
   10df2:	00492703          	lw	a4,4(s2)
   10df6:	000a2783          	lw	a5,0(s4)
   10dfa:	fd970de3          	beq	a4,s9,10dd4 <__call_exitprocs+0xa8>
   10dfe:	d7c1                	beqz	a5,10d86 <__call_exitprocs+0x5a>
   10e00:	893e                	mv	s2,a5
   10e02:	b785                	j	10d62 <__call_exitprocs+0x36>
   10e04:	00892223          	sw	s0,4(s2)
   10e08:	b775                	j	10db4 <__call_exitprocs+0x88>
   10e0a:	852e                	mv	a0,a1
   10e0c:	9682                	jalr	a3
   10e0e:	bf6d                	j	10dc8 <__call_exitprocs+0x9c>

00010e10 <_malloc_trim_r>:
   10e10:	1101                	addi	sp,sp,-32
   10e12:	cc22                	sw	s0,24(sp)
   10e14:	ca26                	sw	s1,20(sp)
   10e16:	c84a                	sw	s2,16(sp)
   10e18:	c64e                	sw	s3,12(sp)
   10e1a:	c452                	sw	s4,8(sp)
   10e1c:	89ae                	mv	s3,a1
   10e1e:	ce06                	sw	ra,28(sp)
   10e20:	892a                	mv	s2,a0
   10e22:	00001a17          	auipc	s4,0x1
   10e26:	31ea0a13          	addi	s4,s4,798 # 12140 <__malloc_av_>
   10e2a:	0a3000ef          	jal	116cc <__malloc_lock>
   10e2e:	008a2783          	lw	a5,8(s4)
   10e32:	6405                	lui	s0,0x1
   10e34:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   10e36:	43c4                	lw	s1,4(a5)
   10e38:	6785                	lui	a5,0x1
   10e3a:	98f1                	andi	s1,s1,-4
   10e3c:	9426                	add	s0,s0,s1
   10e3e:	41340433          	sub	s0,s0,s3
   10e42:	8031                	srli	s0,s0,0xc
   10e44:	147d                	addi	s0,s0,-1
   10e46:	0432                	slli	s0,s0,0xc
   10e48:	00f44b63          	blt	s0,a5,10e5e <_malloc_trim_r+0x4e>
   10e4c:	4581                	li	a1,0
   10e4e:	854a                	mv	a0,s2
   10e50:	419000ef          	jal	11a68 <_sbrk_r>
   10e54:	008a2783          	lw	a5,8(s4)
   10e58:	97a6                	add	a5,a5,s1
   10e5a:	00f50e63          	beq	a0,a5,10e76 <_malloc_trim_r+0x66>
   10e5e:	854a                	mv	a0,s2
   10e60:	075000ef          	jal	116d4 <__malloc_unlock>
   10e64:	40f2                	lw	ra,28(sp)
   10e66:	4462                	lw	s0,24(sp)
   10e68:	44d2                	lw	s1,20(sp)
   10e6a:	4942                	lw	s2,16(sp)
   10e6c:	49b2                	lw	s3,12(sp)
   10e6e:	4a22                	lw	s4,8(sp)
   10e70:	4501                	li	a0,0
   10e72:	6105                	addi	sp,sp,32
   10e74:	8082                	ret
   10e76:	408005b3          	neg	a1,s0
   10e7a:	854a                	mv	a0,s2
   10e7c:	3ed000ef          	jal	11a68 <_sbrk_r>
   10e80:	57fd                	li	a5,-1
   10e82:	02f50963          	beq	a0,a5,10eb4 <_malloc_trim_r+0xa4>
   10e86:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   10e8a:	008a2683          	lw	a3,8(s4)
   10e8e:	431c                	lw	a5,0(a4)
   10e90:	8c81                	sub	s1,s1,s0
   10e92:	0014e493          	ori	s1,s1,1
   10e96:	854a                	mv	a0,s2
   10e98:	8f81                	sub	a5,a5,s0
   10e9a:	c2c4                	sw	s1,4(a3)
   10e9c:	c31c                	sw	a5,0(a4)
   10e9e:	037000ef          	jal	116d4 <__malloc_unlock>
   10ea2:	40f2                	lw	ra,28(sp)
   10ea4:	4462                	lw	s0,24(sp)
   10ea6:	44d2                	lw	s1,20(sp)
   10ea8:	4942                	lw	s2,16(sp)
   10eaa:	49b2                	lw	s3,12(sp)
   10eac:	4a22                	lw	s4,8(sp)
   10eae:	4505                	li	a0,1
   10eb0:	6105                	addi	sp,sp,32
   10eb2:	8082                	ret
   10eb4:	4581                	li	a1,0
   10eb6:	854a                	mv	a0,s2
   10eb8:	3b1000ef          	jal	11a68 <_sbrk_r>
   10ebc:	008a2703          	lw	a4,8(s4)
   10ec0:	46bd                	li	a3,15
   10ec2:	40e507b3          	sub	a5,a0,a4
   10ec6:	f8f6dce3          	bge	a3,a5,10e5e <_malloc_trim_r+0x4e>
   10eca:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   10ece:	0017e793          	ori	a5,a5,1
   10ed2:	c35c                	sw	a5,4(a4)
   10ed4:	8d15                	sub	a0,a0,a3
   10ed6:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   10eda:	b751                	j	10e5e <_malloc_trim_r+0x4e>

00010edc <_free_r>:
   10edc:	cdf1                	beqz	a1,10fb8 <_free_r+0xdc>
   10ede:	1141                	addi	sp,sp,-16
   10ee0:	c422                	sw	s0,8(sp)
   10ee2:	c226                	sw	s1,4(sp)
   10ee4:	842e                	mv	s0,a1
   10ee6:	84aa                	mv	s1,a0
   10ee8:	c606                	sw	ra,12(sp)
   10eea:	7e2000ef          	jal	116cc <__malloc_lock>
   10eee:	ffc42583          	lw	a1,-4(s0)
   10ef2:	ff840713          	addi	a4,s0,-8
   10ef6:	00001817          	auipc	a6,0x1
   10efa:	24a80813          	addi	a6,a6,586 # 12140 <__malloc_av_>
   10efe:	ffe5f793          	andi	a5,a1,-2
   10f02:	00f70633          	add	a2,a4,a5
   10f06:	4254                	lw	a3,4(a2)
   10f08:	00882503          	lw	a0,8(a6)
   10f0c:	0015f893          	andi	a7,a1,1
   10f10:	9af1                	andi	a3,a3,-4
   10f12:	10c50d63          	beq	a0,a2,1102c <_free_r+0x150>
   10f16:	c254                	sw	a3,4(a2)
   10f18:	00d60533          	add	a0,a2,a3
   10f1c:	4148                	lw	a0,4(a0)
   10f1e:	8905                	andi	a0,a0,1
   10f20:	06089963          	bnez	a7,10f92 <_free_r+0xb6>
   10f24:	ff842303          	lw	t1,-8(s0)
   10f28:	00001897          	auipc	a7,0x1
   10f2c:	22088893          	addi	a7,a7,544 # 12148 <__malloc_av_+0x8>
   10f30:	40670733          	sub	a4,a4,t1
   10f34:	470c                	lw	a1,8(a4)
   10f36:	979a                	add	a5,a5,t1
   10f38:	0d158e63          	beq	a1,a7,11014 <_free_r+0x138>
   10f3c:	00c72303          	lw	t1,12(a4)
   10f40:	0065a623          	sw	t1,12(a1)
   10f44:	00b32423          	sw	a1,8(t1) # 10266 <frame_dummy+0x1a>
   10f48:	10050b63          	beqz	a0,1105e <_free_r+0x182>
   10f4c:	0017e693          	ori	a3,a5,1
   10f50:	c354                	sw	a3,4(a4)
   10f52:	c21c                	sw	a5,0(a2)
   10f54:	1ff00693          	li	a3,511
   10f58:	06f6ea63          	bltu	a3,a5,10fcc <_free_r+0xf0>
   10f5c:	ff87f693          	andi	a3,a5,-8
   10f60:	06a1                	addi	a3,a3,8
   10f62:	00482583          	lw	a1,4(a6)
   10f66:	96c2                	add	a3,a3,a6
   10f68:	4290                	lw	a2,0(a3)
   10f6a:	0057d513          	srli	a0,a5,0x5
   10f6e:	4785                	li	a5,1
   10f70:	00a797b3          	sll	a5,a5,a0
   10f74:	8fcd                	or	a5,a5,a1
   10f76:	ff868593          	addi	a1,a3,-8
   10f7a:	c710                	sw	a2,8(a4)
   10f7c:	c74c                	sw	a1,12(a4)
   10f7e:	00f82223          	sw	a5,4(a6)
   10f82:	c298                	sw	a4,0(a3)
   10f84:	c658                	sw	a4,12(a2)
   10f86:	4422                	lw	s0,8(sp)
   10f88:	40b2                	lw	ra,12(sp)
   10f8a:	8526                	mv	a0,s1
   10f8c:	4492                	lw	s1,4(sp)
   10f8e:	0141                	addi	sp,sp,16
   10f90:	a791                	j	116d4 <__malloc_unlock>
   10f92:	e505                	bnez	a0,10fba <_free_r+0xde>
   10f94:	97b6                	add	a5,a5,a3
   10f96:	00001897          	auipc	a7,0x1
   10f9a:	1b288893          	addi	a7,a7,434 # 12148 <__malloc_av_+0x8>
   10f9e:	4614                	lw	a3,8(a2)
   10fa0:	0017e513          	ori	a0,a5,1
   10fa4:	00f705b3          	add	a1,a4,a5
   10fa8:	0f168763          	beq	a3,a7,11096 <_free_r+0x1ba>
   10fac:	4650                	lw	a2,12(a2)
   10fae:	c6d0                	sw	a2,12(a3)
   10fb0:	c614                	sw	a3,8(a2)
   10fb2:	c348                	sw	a0,4(a4)
   10fb4:	c19c                	sw	a5,0(a1)
   10fb6:	bf79                	j	10f54 <_free_r+0x78>
   10fb8:	8082                	ret
   10fba:	0015e593          	ori	a1,a1,1
   10fbe:	feb42e23          	sw	a1,-4(s0)
   10fc2:	c21c                	sw	a5,0(a2)
   10fc4:	1ff00693          	li	a3,511
   10fc8:	f8f6fae3          	bgeu	a3,a5,10f5c <_free_r+0x80>
   10fcc:	0097d693          	srli	a3,a5,0x9
   10fd0:	4611                	li	a2,4
   10fd2:	08d66863          	bltu	a2,a3,11062 <_free_r+0x186>
   10fd6:	0067d693          	srli	a3,a5,0x6
   10fda:	03968593          	addi	a1,a3,57
   10fde:	058e                	slli	a1,a1,0x3
   10fe0:	03868613          	addi	a2,a3,56
   10fe4:	95c2                	add	a1,a1,a6
   10fe6:	4194                	lw	a3,0(a1)
   10fe8:	15e1                	addi	a1,a1,-8
   10fea:	00d59663          	bne	a1,a3,10ff6 <_free_r+0x11a>
   10fee:	a87d                	j	110ac <_free_r+0x1d0>
   10ff0:	4694                	lw	a3,8(a3)
   10ff2:	00d58663          	beq	a1,a3,10ffe <_free_r+0x122>
   10ff6:	42d0                	lw	a2,4(a3)
   10ff8:	9a71                	andi	a2,a2,-4
   10ffa:	fec7ebe3          	bltu	a5,a2,10ff0 <_free_r+0x114>
   10ffe:	46cc                	lw	a1,12(a3)
   11000:	c74c                	sw	a1,12(a4)
   11002:	c714                	sw	a3,8(a4)
   11004:	4422                	lw	s0,8(sp)
   11006:	40b2                	lw	ra,12(sp)
   11008:	c598                	sw	a4,8(a1)
   1100a:	8526                	mv	a0,s1
   1100c:	4492                	lw	s1,4(sp)
   1100e:	c6d8                	sw	a4,12(a3)
   11010:	0141                	addi	sp,sp,16
   11012:	a5c9                	j	116d4 <__malloc_unlock>
   11014:	e535                	bnez	a0,11080 <_free_r+0x1a4>
   11016:	464c                	lw	a1,12(a2)
   11018:	4610                	lw	a2,8(a2)
   1101a:	96be                	add	a3,a3,a5
   1101c:	0016e793          	ori	a5,a3,1
   11020:	c64c                	sw	a1,12(a2)
   11022:	c590                	sw	a2,8(a1)
   11024:	c35c                	sw	a5,4(a4)
   11026:	9736                	add	a4,a4,a3
   11028:	c314                	sw	a3,0(a4)
   1102a:	bfb1                	j	10f86 <_free_r+0xaa>
   1102c:	96be                	add	a3,a3,a5
   1102e:	00089a63          	bnez	a7,11042 <_free_r+0x166>
   11032:	ff842583          	lw	a1,-8(s0)
   11036:	8f0d                	sub	a4,a4,a1
   11038:	475c                	lw	a5,12(a4)
   1103a:	4710                	lw	a2,8(a4)
   1103c:	96ae                	add	a3,a3,a1
   1103e:	c65c                	sw	a5,12(a2)
   11040:	c790                	sw	a2,8(a5)
   11042:	0016e613          	ori	a2,a3,1
   11046:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   1104a:	c350                	sw	a2,4(a4)
   1104c:	00e82423          	sw	a4,8(a6)
   11050:	f2f6ebe3          	bltu	a3,a5,10f86 <_free_r+0xaa>
   11054:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   11058:	8526                	mv	a0,s1
   1105a:	3b5d                	jal	10e10 <_malloc_trim_r>
   1105c:	b72d                	j	10f86 <_free_r+0xaa>
   1105e:	97b6                	add	a5,a5,a3
   11060:	bf3d                	j	10f9e <_free_r+0xc2>
   11062:	4651                	li	a2,20
   11064:	02d67363          	bgeu	a2,a3,1108a <_free_r+0x1ae>
   11068:	05400613          	li	a2,84
   1106c:	04d66a63          	bltu	a2,a3,110c0 <_free_r+0x1e4>
   11070:	00c7d693          	srli	a3,a5,0xc
   11074:	06f68593          	addi	a1,a3,111
   11078:	058e                	slli	a1,a1,0x3
   1107a:	06e68613          	addi	a2,a3,110
   1107e:	b79d                	j	10fe4 <_free_r+0x108>
   11080:	0017e693          	ori	a3,a5,1
   11084:	c354                	sw	a3,4(a4)
   11086:	c21c                	sw	a5,0(a2)
   11088:	bdfd                	j	10f86 <_free_r+0xaa>
   1108a:	05c68593          	addi	a1,a3,92
   1108e:	058e                	slli	a1,a1,0x3
   11090:	05b68613          	addi	a2,a3,91
   11094:	bf81                	j	10fe4 <_free_r+0x108>
   11096:	00e82a23          	sw	a4,20(a6)
   1109a:	00e82823          	sw	a4,16(a6)
   1109e:	01172623          	sw	a7,12(a4)
   110a2:	01172423          	sw	a7,8(a4)
   110a6:	c348                	sw	a0,4(a4)
   110a8:	c19c                	sw	a5,0(a1)
   110aa:	bdf1                	j	10f86 <_free_r+0xaa>
   110ac:	00482503          	lw	a0,4(a6)
   110b0:	8609                	srai	a2,a2,0x2
   110b2:	4785                	li	a5,1
   110b4:	00c797b3          	sll	a5,a5,a2
   110b8:	8fc9                	or	a5,a5,a0
   110ba:	00f82223          	sw	a5,4(a6)
   110be:	b789                	j	11000 <_free_r+0x124>
   110c0:	15400613          	li	a2,340
   110c4:	00d66a63          	bltu	a2,a3,110d8 <_free_r+0x1fc>
   110c8:	00f7d693          	srli	a3,a5,0xf
   110cc:	07868593          	addi	a1,a3,120
   110d0:	058e                	slli	a1,a1,0x3
   110d2:	07768613          	addi	a2,a3,119
   110d6:	b739                	j	10fe4 <_free_r+0x108>
   110d8:	55400613          	li	a2,1364
   110dc:	00d66a63          	bltu	a2,a3,110f0 <_free_r+0x214>
   110e0:	0127d693          	srli	a3,a5,0x12
   110e4:	07d68593          	addi	a1,a3,125
   110e8:	058e                	slli	a1,a1,0x3
   110ea:	07c68613          	addi	a2,a3,124
   110ee:	bddd                	j	10fe4 <_free_r+0x108>
   110f0:	3f800593          	li	a1,1016
   110f4:	07e00613          	li	a2,126
   110f8:	b5f5                	j	10fe4 <_free_r+0x108>

000110fa <_malloc_r>:
   110fa:	7179                	addi	sp,sp,-48
   110fc:	d04a                	sw	s2,32(sp)
   110fe:	d606                	sw	ra,44(sp)
   11100:	d422                	sw	s0,40(sp)
   11102:	d226                	sw	s1,36(sp)
   11104:	ce4e                	sw	s3,28(sp)
   11106:	00b58793          	addi	a5,a1,11
   1110a:	4759                	li	a4,22
   1110c:	892a                	mv	s2,a0
   1110e:	04f76863          	bltu	a4,a5,1115e <_malloc_r+0x64>
   11112:	44c1                	li	s1,16
   11114:	16b4ea63          	bltu	s1,a1,11288 <_malloc_r+0x18e>
   11118:	2b55                	jal	116cc <__malloc_lock>
   1111a:	47e1                	li	a5,24
   1111c:	4589                	li	a1,2
   1111e:	00001997          	auipc	s3,0x1
   11122:	02298993          	addi	s3,s3,34 # 12140 <__malloc_av_>
   11126:	97ce                	add	a5,a5,s3
   11128:	43c0                	lw	s0,4(a5)
   1112a:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   1112e:	30e40963          	beq	s0,a4,11440 <_malloc_r+0x346>
   11132:	405c                	lw	a5,4(s0)
   11134:	4454                	lw	a3,12(s0)
   11136:	4410                	lw	a2,8(s0)
   11138:	9bf1                	andi	a5,a5,-4
   1113a:	97a2                	add	a5,a5,s0
   1113c:	43d8                	lw	a4,4(a5)
   1113e:	c654                	sw	a3,12(a2)
   11140:	c690                	sw	a2,8(a3)
   11142:	00176713          	ori	a4,a4,1
   11146:	854a                	mv	a0,s2
   11148:	c3d8                	sw	a4,4(a5)
   1114a:	2369                	jal	116d4 <__malloc_unlock>
   1114c:	50b2                	lw	ra,44(sp)
   1114e:	00840513          	addi	a0,s0,8
   11152:	5422                	lw	s0,40(sp)
   11154:	5492                	lw	s1,36(sp)
   11156:	5902                	lw	s2,32(sp)
   11158:	49f2                	lw	s3,28(sp)
   1115a:	6145                	addi	sp,sp,48
   1115c:	8082                	ret
   1115e:	ff87f493          	andi	s1,a5,-8
   11162:	1207c363          	bltz	a5,11288 <_malloc_r+0x18e>
   11166:	12b4e163          	bltu	s1,a1,11288 <_malloc_r+0x18e>
   1116a:	238d                	jal	116cc <__malloc_lock>
   1116c:	1f700793          	li	a5,503
   11170:	3897f763          	bgeu	a5,s1,114fe <_malloc_r+0x404>
   11174:	0094d793          	srli	a5,s1,0x9
   11178:	12078363          	beqz	a5,1129e <_malloc_r+0x1a4>
   1117c:	4711                	li	a4,4
   1117e:	30f76663          	bltu	a4,a5,1148a <_malloc_r+0x390>
   11182:	0064d793          	srli	a5,s1,0x6
   11186:	03978593          	addi	a1,a5,57
   1118a:	03878813          	addi	a6,a5,56
   1118e:	00359613          	slli	a2,a1,0x3
   11192:	00001997          	auipc	s3,0x1
   11196:	fae98993          	addi	s3,s3,-82 # 12140 <__malloc_av_>
   1119a:	964e                	add	a2,a2,s3
   1119c:	4240                	lw	s0,4(a2)
   1119e:	1661                	addi	a2,a2,-8
   111a0:	02860163          	beq	a2,s0,111c2 <_malloc_r+0xc8>
   111a4:	453d                	li	a0,15
   111a6:	a039                	j	111b4 <_malloc_r+0xba>
   111a8:	4454                	lw	a3,12(s0)
   111aa:	26075863          	bgez	a4,1141a <_malloc_r+0x320>
   111ae:	00d60a63          	beq	a2,a3,111c2 <_malloc_r+0xc8>
   111b2:	8436                	mv	s0,a3
   111b4:	405c                	lw	a5,4(s0)
   111b6:	9bf1                	andi	a5,a5,-4
   111b8:	40978733          	sub	a4,a5,s1
   111bc:	fee556e3          	bge	a0,a4,111a8 <_malloc_r+0xae>
   111c0:	85c2                	mv	a1,a6
   111c2:	0109a403          	lw	s0,16(s3)
   111c6:	00001897          	auipc	a7,0x1
   111ca:	f8288893          	addi	a7,a7,-126 # 12148 <__malloc_av_+0x8>
   111ce:	1f140c63          	beq	s0,a7,113c6 <_malloc_r+0x2cc>
   111d2:	405c                	lw	a5,4(s0)
   111d4:	46bd                	li	a3,15
   111d6:	9bf1                	andi	a5,a5,-4
   111d8:	40978733          	sub	a4,a5,s1
   111dc:	32e6c663          	blt	a3,a4,11508 <_malloc_r+0x40e>
   111e0:	0119aa23          	sw	a7,20(s3)
   111e4:	0119a823          	sw	a7,16(s3)
   111e8:	30075163          	bgez	a4,114ea <_malloc_r+0x3f0>
   111ec:	1ff00713          	li	a4,511
   111f0:	0049a503          	lw	a0,4(s3)
   111f4:	24f76b63          	bltu	a4,a5,1144a <_malloc_r+0x350>
   111f8:	ff87f713          	andi	a4,a5,-8
   111fc:	0721                	addi	a4,a4,8
   111fe:	974e                	add	a4,a4,s3
   11200:	4314                	lw	a3,0(a4)
   11202:	0057d613          	srli	a2,a5,0x5
   11206:	4785                	li	a5,1
   11208:	00c797b3          	sll	a5,a5,a2
   1120c:	8d5d                	or	a0,a0,a5
   1120e:	ff870793          	addi	a5,a4,-8
   11212:	c414                	sw	a3,8(s0)
   11214:	c45c                	sw	a5,12(s0)
   11216:	00a9a223          	sw	a0,4(s3)
   1121a:	c300                	sw	s0,0(a4)
   1121c:	c6c0                	sw	s0,12(a3)
   1121e:	4025d793          	srai	a5,a1,0x2
   11222:	4605                	li	a2,1
   11224:	00f61633          	sll	a2,a2,a5
   11228:	08c56263          	bltu	a0,a2,112ac <_malloc_r+0x1b2>
   1122c:	00a677b3          	and	a5,a2,a0
   11230:	ef81                	bnez	a5,11248 <_malloc_r+0x14e>
   11232:	0606                	slli	a2,a2,0x1
   11234:	99f1                	andi	a1,a1,-4
   11236:	00a677b3          	and	a5,a2,a0
   1123a:	0591                	addi	a1,a1,4
   1123c:	e791                	bnez	a5,11248 <_malloc_r+0x14e>
   1123e:	0606                	slli	a2,a2,0x1
   11240:	00a677b3          	and	a5,a2,a0
   11244:	0591                	addi	a1,a1,4
   11246:	dfe5                	beqz	a5,1123e <_malloc_r+0x144>
   11248:	483d                	li	a6,15
   1124a:	00359313          	slli	t1,a1,0x3
   1124e:	934e                	add	t1,t1,s3
   11250:	851a                	mv	a0,t1
   11252:	455c                	lw	a5,12(a0)
   11254:	8e2e                	mv	t3,a1
   11256:	24f50a63          	beq	a0,a5,114aa <_malloc_r+0x3b0>
   1125a:	43d8                	lw	a4,4(a5)
   1125c:	843e                	mv	s0,a5
   1125e:	47dc                	lw	a5,12(a5)
   11260:	9b71                	andi	a4,a4,-4
   11262:	409706b3          	sub	a3,a4,s1
   11266:	24d84963          	blt	a6,a3,114b8 <_malloc_r+0x3be>
   1126a:	fe06c6e3          	bltz	a3,11256 <_malloc_r+0x15c>
   1126e:	9722                	add	a4,a4,s0
   11270:	4354                	lw	a3,4(a4)
   11272:	4410                	lw	a2,8(s0)
   11274:	854a                	mv	a0,s2
   11276:	0016e693          	ori	a3,a3,1
   1127a:	c354                	sw	a3,4(a4)
   1127c:	c65c                	sw	a5,12(a2)
   1127e:	c790                	sw	a2,8(a5)
   11280:	2991                	jal	116d4 <__malloc_unlock>
   11282:	00840513          	addi	a0,s0,8
   11286:	a029                	j	11290 <_malloc_r+0x196>
   11288:	47b1                	li	a5,12
   1128a:	00f92023          	sw	a5,0(s2)
   1128e:	4501                	li	a0,0
   11290:	50b2                	lw	ra,44(sp)
   11292:	5422                	lw	s0,40(sp)
   11294:	5492                	lw	s1,36(sp)
   11296:	5902                	lw	s2,32(sp)
   11298:	49f2                	lw	s3,28(sp)
   1129a:	6145                	addi	sp,sp,48
   1129c:	8082                	ret
   1129e:	20000613          	li	a2,512
   112a2:	04000593          	li	a1,64
   112a6:	03f00813          	li	a6,63
   112aa:	b5e5                	j	11192 <_malloc_r+0x98>
   112ac:	0089a403          	lw	s0,8(s3)
   112b0:	c85a                	sw	s6,16(sp)
   112b2:	405c                	lw	a5,4(s0)
   112b4:	ffc7fb13          	andi	s6,a5,-4
   112b8:	009b6763          	bltu	s6,s1,112c6 <_malloc_r+0x1cc>
   112bc:	409b0733          	sub	a4,s6,s1
   112c0:	47bd                	li	a5,15
   112c2:	12e7c763          	blt	a5,a4,113f0 <_malloc_r+0x2f6>
   112c6:	c266                	sw	s9,4(sp)
   112c8:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   112cc:	ca56                	sw	s5,20(sp)
   112ce:	000ca703          	lw	a4,0(s9)
   112d2:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   112d6:	cc52                	sw	s4,24(sp)
   112d8:	c65e                	sw	s7,12(sp)
   112da:	57fd                	li	a5,-1
   112dc:	01640a33          	add	s4,s0,s6
   112e0:	9aa6                	add	s5,s5,s1
   112e2:	2cf70163          	beq	a4,a5,115a4 <_malloc_r+0x4aa>
   112e6:	6785                	lui	a5,0x1
   112e8:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   112ea:	9abe                	add	s5,s5,a5
   112ec:	77fd                	lui	a5,0xfffff
   112ee:	00fafab3          	and	s5,s5,a5
   112f2:	85d6                	mv	a1,s5
   112f4:	854a                	mv	a0,s2
   112f6:	772000ef          	jal	11a68 <_sbrk_r>
   112fa:	57fd                	li	a5,-1
   112fc:	8baa                	mv	s7,a0
   112fe:	32f50963          	beq	a0,a5,11630 <_malloc_r+0x536>
   11302:	c462                	sw	s8,8(sp)
   11304:	0d456463          	bltu	a0,s4,113cc <_malloc_r+0x2d2>
   11308:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   1130c:	000c2583          	lw	a1,0(s8)
   11310:	95d6                	add	a1,a1,s5
   11312:	00bc2023          	sw	a1,0(s8)
   11316:	872e                	mv	a4,a1
   11318:	32aa0063          	beq	s4,a0,11638 <_malloc_r+0x53e>
   1131c:	000ca683          	lw	a3,0(s9)
   11320:	57fd                	li	a5,-1
   11322:	32f68863          	beq	a3,a5,11652 <_malloc_r+0x558>
   11326:	414b87b3          	sub	a5,s7,s4
   1132a:	97ba                	add	a5,a5,a4
   1132c:	00fc2023          	sw	a5,0(s8)
   11330:	007bfc93          	andi	s9,s7,7
   11334:	280c8263          	beqz	s9,115b8 <_malloc_r+0x4be>
   11338:	419b8bb3          	sub	s7,s7,s9
   1133c:	6585                	lui	a1,0x1
   1133e:	0ba1                	addi	s7,s7,8
   11340:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   11342:	9ade                	add	s5,s5,s7
   11344:	419585b3          	sub	a1,a1,s9
   11348:	415585b3          	sub	a1,a1,s5
   1134c:	05d2                	slli	a1,a1,0x14
   1134e:	0145da13          	srli	s4,a1,0x14
   11352:	85d2                	mv	a1,s4
   11354:	854a                	mv	a0,s2
   11356:	2f09                	jal	11a68 <_sbrk_r>
   11358:	57fd                	li	a5,-1
   1135a:	32f50863          	beq	a0,a5,1168a <_malloc_r+0x590>
   1135e:	41750533          	sub	a0,a0,s7
   11362:	01450ab3          	add	s5,a0,s4
   11366:	000c2703          	lw	a4,0(s8)
   1136a:	0179a423          	sw	s7,8(s3)
   1136e:	001ae793          	ori	a5,s5,1
   11372:	00ea05b3          	add	a1,s4,a4
   11376:	00fba223          	sw	a5,4(s7)
   1137a:	00bc2023          	sw	a1,0(s8)
   1137e:	03340563          	beq	s0,s3,113a8 <_malloc_r+0x2ae>
   11382:	46bd                	li	a3,15
   11384:	2566f963          	bgeu	a3,s6,115d6 <_malloc_r+0x4dc>
   11388:	4058                	lw	a4,4(s0)
   1138a:	ff4b0793          	addi	a5,s6,-12
   1138e:	9be1                	andi	a5,a5,-8
   11390:	8b05                	andi	a4,a4,1
   11392:	8f5d                	or	a4,a4,a5
   11394:	c058                	sw	a4,4(s0)
   11396:	4615                	li	a2,5
   11398:	00f40733          	add	a4,s0,a5
   1139c:	c350                	sw	a2,4(a4)
   1139e:	c710                	sw	a2,8(a4)
   113a0:	1ef6e863          	bltu	a3,a5,11590 <_malloc_r+0x496>
   113a4:	004ba783          	lw	a5,4(s7)
   113a8:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   113ac:	4314                	lw	a3,0(a4)
   113ae:	00b6f363          	bgeu	a3,a1,113b4 <_malloc_r+0x2ba>
   113b2:	c30c                	sw	a1,0(a4)
   113b4:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   113b8:	4314                	lw	a3,0(a4)
   113ba:	00b6f363          	bgeu	a3,a1,113c0 <_malloc_r+0x2c6>
   113be:	c30c                	sw	a1,0(a4)
   113c0:	4c22                	lw	s8,8(sp)
   113c2:	845e                	mv	s0,s7
   113c4:	a811                	j	113d8 <_malloc_r+0x2de>
   113c6:	0049a503          	lw	a0,4(s3)
   113ca:	bd91                	j	1121e <_malloc_r+0x124>
   113cc:	25340a63          	beq	s0,s3,11620 <_malloc_r+0x526>
   113d0:	0089a403          	lw	s0,8(s3)
   113d4:	4c22                	lw	s8,8(sp)
   113d6:	405c                	lw	a5,4(s0)
   113d8:	9bf1                	andi	a5,a5,-4
   113da:	40978733          	sub	a4,a5,s1
   113de:	2097e063          	bltu	a5,s1,115de <_malloc_r+0x4e4>
   113e2:	47bd                	li	a5,15
   113e4:	1ee7dd63          	bge	a5,a4,115de <_malloc_r+0x4e4>
   113e8:	4a62                	lw	s4,24(sp)
   113ea:	4ad2                	lw	s5,20(sp)
   113ec:	4bb2                	lw	s7,12(sp)
   113ee:	4c92                	lw	s9,4(sp)
   113f0:	0014e793          	ori	a5,s1,1
   113f4:	c05c                	sw	a5,4(s0)
   113f6:	94a2                	add	s1,s1,s0
   113f8:	0099a423          	sw	s1,8(s3)
   113fc:	00176713          	ori	a4,a4,1
   11400:	854a                	mv	a0,s2
   11402:	c0d8                	sw	a4,4(s1)
   11404:	2cc1                	jal	116d4 <__malloc_unlock>
   11406:	50b2                	lw	ra,44(sp)
   11408:	00840513          	addi	a0,s0,8
   1140c:	5422                	lw	s0,40(sp)
   1140e:	4b42                	lw	s6,16(sp)
   11410:	5492                	lw	s1,36(sp)
   11412:	5902                	lw	s2,32(sp)
   11414:	49f2                	lw	s3,28(sp)
   11416:	6145                	addi	sp,sp,48
   11418:	8082                	ret
   1141a:	4410                	lw	a2,8(s0)
   1141c:	97a2                	add	a5,a5,s0
   1141e:	43d8                	lw	a4,4(a5)
   11420:	c654                	sw	a3,12(a2)
   11422:	c690                	sw	a2,8(a3)
   11424:	00176713          	ori	a4,a4,1
   11428:	854a                	mv	a0,s2
   1142a:	c3d8                	sw	a4,4(a5)
   1142c:	2465                	jal	116d4 <__malloc_unlock>
   1142e:	50b2                	lw	ra,44(sp)
   11430:	00840513          	addi	a0,s0,8
   11434:	5422                	lw	s0,40(sp)
   11436:	5492                	lw	s1,36(sp)
   11438:	5902                	lw	s2,32(sp)
   1143a:	49f2                	lw	s3,28(sp)
   1143c:	6145                	addi	sp,sp,48
   1143e:	8082                	ret
   11440:	47c0                	lw	s0,12(a5)
   11442:	0589                	addi	a1,a1,2
   11444:	d6878fe3          	beq	a5,s0,111c2 <_malloc_r+0xc8>
   11448:	b1ed                	j	11132 <_malloc_r+0x38>
   1144a:	0097d713          	srli	a4,a5,0x9
   1144e:	4691                	li	a3,4
   11450:	0ee6f263          	bgeu	a3,a4,11534 <_malloc_r+0x43a>
   11454:	46d1                	li	a3,20
   11456:	18e6ec63          	bltu	a3,a4,115ee <_malloc_r+0x4f4>
   1145a:	05c70613          	addi	a2,a4,92
   1145e:	060e                	slli	a2,a2,0x3
   11460:	05b70693          	addi	a3,a4,91
   11464:	964e                	add	a2,a2,s3
   11466:	4218                	lw	a4,0(a2)
   11468:	1661                	addi	a2,a2,-8
   1146a:	00e61663          	bne	a2,a4,11476 <_malloc_r+0x37c>
   1146e:	aa2d                	j	115a8 <_malloc_r+0x4ae>
   11470:	4718                	lw	a4,8(a4)
   11472:	00e60663          	beq	a2,a4,1147e <_malloc_r+0x384>
   11476:	4354                	lw	a3,4(a4)
   11478:	9af1                	andi	a3,a3,-4
   1147a:	fed7ebe3          	bltu	a5,a3,11470 <_malloc_r+0x376>
   1147e:	4750                	lw	a2,12(a4)
   11480:	c450                	sw	a2,12(s0)
   11482:	c418                	sw	a4,8(s0)
   11484:	c600                	sw	s0,8(a2)
   11486:	c740                	sw	s0,12(a4)
   11488:	bb59                	j	1121e <_malloc_r+0x124>
   1148a:	4751                	li	a4,20
   1148c:	0af77c63          	bgeu	a4,a5,11544 <_malloc_r+0x44a>
   11490:	05400713          	li	a4,84
   11494:	16f76963          	bltu	a4,a5,11606 <_malloc_r+0x50c>
   11498:	00c4d793          	srli	a5,s1,0xc
   1149c:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   114a0:	06e78813          	addi	a6,a5,110
   114a4:	00359613          	slli	a2,a1,0x3
   114a8:	b1ed                	j	11192 <_malloc_r+0x98>
   114aa:	0e05                	addi	t3,t3,1
   114ac:	003e7793          	andi	a5,t3,3
   114b0:	0521                	addi	a0,a0,8
   114b2:	c7cd                	beqz	a5,1155c <_malloc_r+0x462>
   114b4:	455c                	lw	a5,12(a0)
   114b6:	b345                	j	11256 <_malloc_r+0x15c>
   114b8:	4410                	lw	a2,8(s0)
   114ba:	0014e593          	ori	a1,s1,1
   114be:	c04c                	sw	a1,4(s0)
   114c0:	c65c                	sw	a5,12(a2)
   114c2:	c790                	sw	a2,8(a5)
   114c4:	94a2                	add	s1,s1,s0
   114c6:	0099aa23          	sw	s1,20(s3)
   114ca:	0099a823          	sw	s1,16(s3)
   114ce:	0016e793          	ori	a5,a3,1
   114d2:	9722                	add	a4,a4,s0
   114d4:	0114a623          	sw	a7,12(s1)
   114d8:	0114a423          	sw	a7,8(s1)
   114dc:	c0dc                	sw	a5,4(s1)
   114de:	854a                	mv	a0,s2
   114e0:	c314                	sw	a3,0(a4)
   114e2:	2acd                	jal	116d4 <__malloc_unlock>
   114e4:	00840513          	addi	a0,s0,8
   114e8:	b365                	j	11290 <_malloc_r+0x196>
   114ea:	97a2                	add	a5,a5,s0
   114ec:	43d8                	lw	a4,4(a5)
   114ee:	854a                	mv	a0,s2
   114f0:	00176713          	ori	a4,a4,1
   114f4:	c3d8                	sw	a4,4(a5)
   114f6:	2af9                	jal	116d4 <__malloc_unlock>
   114f8:	00840513          	addi	a0,s0,8
   114fc:	bb51                	j	11290 <_malloc_r+0x196>
   114fe:	0034d593          	srli	a1,s1,0x3
   11502:	00848793          	addi	a5,s1,8
   11506:	b921                	j	1111e <_malloc_r+0x24>
   11508:	0014e693          	ori	a3,s1,1
   1150c:	c054                	sw	a3,4(s0)
   1150e:	94a2                	add	s1,s1,s0
   11510:	0099aa23          	sw	s1,20(s3)
   11514:	0099a823          	sw	s1,16(s3)
   11518:	00176693          	ori	a3,a4,1
   1151c:	97a2                	add	a5,a5,s0
   1151e:	0114a623          	sw	a7,12(s1)
   11522:	0114a423          	sw	a7,8(s1)
   11526:	c0d4                	sw	a3,4(s1)
   11528:	854a                	mv	a0,s2
   1152a:	c398                	sw	a4,0(a5)
   1152c:	2265                	jal	116d4 <__malloc_unlock>
   1152e:	00840513          	addi	a0,s0,8
   11532:	bbb9                	j	11290 <_malloc_r+0x196>
   11534:	0067d713          	srli	a4,a5,0x6
   11538:	03970613          	addi	a2,a4,57
   1153c:	060e                	slli	a2,a2,0x3
   1153e:	03870693          	addi	a3,a4,56
   11542:	b70d                	j	11464 <_malloc_r+0x36a>
   11544:	05c78593          	addi	a1,a5,92
   11548:	05b78813          	addi	a6,a5,91
   1154c:	00359613          	slli	a2,a1,0x3
   11550:	b189                	j	11192 <_malloc_r+0x98>
   11552:	00832783          	lw	a5,8(t1)
   11556:	15fd                	addi	a1,a1,-1
   11558:	16679763          	bne	a5,t1,116c6 <_malloc_r+0x5cc>
   1155c:	0035f793          	andi	a5,a1,3
   11560:	1361                	addi	t1,t1,-8
   11562:	fbe5                	bnez	a5,11552 <_malloc_r+0x458>
   11564:	0049a703          	lw	a4,4(s3)
   11568:	fff64793          	not	a5,a2
   1156c:	8ff9                	and	a5,a5,a4
   1156e:	00f9a223          	sw	a5,4(s3)
   11572:	0606                	slli	a2,a2,0x1
   11574:	d2c7ece3          	bltu	a5,a2,112ac <_malloc_r+0x1b2>
   11578:	d2060ae3          	beqz	a2,112ac <_malloc_r+0x1b2>
   1157c:	00f67733          	and	a4,a2,a5
   11580:	e711                	bnez	a4,1158c <_malloc_r+0x492>
   11582:	0606                	slli	a2,a2,0x1
   11584:	00f67733          	and	a4,a2,a5
   11588:	0e11                	addi	t3,t3,4
   1158a:	df65                	beqz	a4,11582 <_malloc_r+0x488>
   1158c:	85f2                	mv	a1,t3
   1158e:	b975                	j	1124a <_malloc_r+0x150>
   11590:	00840593          	addi	a1,s0,8
   11594:	854a                	mv	a0,s2
   11596:	947ff0ef          	jal	10edc <_free_r>
   1159a:	000c2583          	lw	a1,0(s8)
   1159e:	0089ab83          	lw	s7,8(s3)
   115a2:	b509                	j	113a4 <_malloc_r+0x2aa>
   115a4:	0ac1                	addi	s5,s5,16
   115a6:	b3b1                	j	112f2 <_malloc_r+0x1f8>
   115a8:	8689                	srai	a3,a3,0x2
   115aa:	4785                	li	a5,1
   115ac:	00d797b3          	sll	a5,a5,a3
   115b0:	8d5d                	or	a0,a0,a5
   115b2:	00a9a223          	sw	a0,4(s3)
   115b6:	b5e9                	j	11480 <_malloc_r+0x386>
   115b8:	015b85b3          	add	a1,s7,s5
   115bc:	40b005b3          	neg	a1,a1
   115c0:	05d2                	slli	a1,a1,0x14
   115c2:	0145da13          	srli	s4,a1,0x14
   115c6:	85d2                	mv	a1,s4
   115c8:	854a                	mv	a0,s2
   115ca:	2979                	jal	11a68 <_sbrk_r>
   115cc:	57fd                	li	a5,-1
   115ce:	d8f518e3          	bne	a0,a5,1135e <_malloc_r+0x264>
   115d2:	4a01                	li	s4,0
   115d4:	bb49                	j	11366 <_malloc_r+0x26c>
   115d6:	4c22                	lw	s8,8(sp)
   115d8:	4785                	li	a5,1
   115da:	00fba223          	sw	a5,4(s7)
   115de:	854a                	mv	a0,s2
   115e0:	28d5                	jal	116d4 <__malloc_unlock>
   115e2:	4a62                	lw	s4,24(sp)
   115e4:	4ad2                	lw	s5,20(sp)
   115e6:	4b42                	lw	s6,16(sp)
   115e8:	4bb2                	lw	s7,12(sp)
   115ea:	4c92                	lw	s9,4(sp)
   115ec:	b14d                	j	1128e <_malloc_r+0x194>
   115ee:	05400693          	li	a3,84
   115f2:	06e6e363          	bltu	a3,a4,11658 <_malloc_r+0x55e>
   115f6:	00c7d713          	srli	a4,a5,0xc
   115fa:	06f70613          	addi	a2,a4,111
   115fe:	060e                	slli	a2,a2,0x3
   11600:	06e70693          	addi	a3,a4,110
   11604:	b585                	j	11464 <_malloc_r+0x36a>
   11606:	15400713          	li	a4,340
   1160a:	06f76363          	bltu	a4,a5,11670 <_malloc_r+0x576>
   1160e:	00f4d793          	srli	a5,s1,0xf
   11612:	07878593          	addi	a1,a5,120
   11616:	07778813          	addi	a6,a5,119
   1161a:	00359613          	slli	a2,a1,0x3
   1161e:	be95                	j	11192 <_malloc_r+0x98>
   11620:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   11624:	000c2703          	lw	a4,0(s8)
   11628:	9756                	add	a4,a4,s5
   1162a:	00ec2023          	sw	a4,0(s8)
   1162e:	b1fd                	j	1131c <_malloc_r+0x222>
   11630:	0089a403          	lw	s0,8(s3)
   11634:	405c                	lw	a5,4(s0)
   11636:	b34d                	j	113d8 <_malloc_r+0x2de>
   11638:	01451793          	slli	a5,a0,0x14
   1163c:	ce0790e3          	bnez	a5,1131c <_malloc_r+0x222>
   11640:	0089ab83          	lw	s7,8(s3)
   11644:	015b07b3          	add	a5,s6,s5
   11648:	0017e793          	ori	a5,a5,1
   1164c:	00fba223          	sw	a5,4(s7)
   11650:	bba1                	j	113a8 <_malloc_r+0x2ae>
   11652:	017ca023          	sw	s7,0(s9)
   11656:	b9e9                	j	11330 <_malloc_r+0x236>
   11658:	15400693          	li	a3,340
   1165c:	02e6ed63          	bltu	a3,a4,11696 <_malloc_r+0x59c>
   11660:	00f7d713          	srli	a4,a5,0xf
   11664:	07870613          	addi	a2,a4,120
   11668:	060e                	slli	a2,a2,0x3
   1166a:	07770693          	addi	a3,a4,119
   1166e:	bbdd                	j	11464 <_malloc_r+0x36a>
   11670:	55400713          	li	a4,1364
   11674:	02f76d63          	bltu	a4,a5,116ae <_malloc_r+0x5b4>
   11678:	0124d793          	srli	a5,s1,0x12
   1167c:	07d78593          	addi	a1,a5,125
   11680:	07c78813          	addi	a6,a5,124
   11684:	00359613          	slli	a2,a1,0x3
   11688:	b629                	j	11192 <_malloc_r+0x98>
   1168a:	1ce1                	addi	s9,s9,-8
   1168c:	9ae6                	add	s5,s5,s9
   1168e:	417a8ab3          	sub	s5,s5,s7
   11692:	4a01                	li	s4,0
   11694:	b9c9                	j	11366 <_malloc_r+0x26c>
   11696:	55400693          	li	a3,1364
   1169a:	02e6e163          	bltu	a3,a4,116bc <_malloc_r+0x5c2>
   1169e:	0127d713          	srli	a4,a5,0x12
   116a2:	07d70613          	addi	a2,a4,125
   116a6:	060e                	slli	a2,a2,0x3
   116a8:	07c70693          	addi	a3,a4,124
   116ac:	bb65                	j	11464 <_malloc_r+0x36a>
   116ae:	3f800613          	li	a2,1016
   116b2:	07f00593          	li	a1,127
   116b6:	07e00813          	li	a6,126
   116ba:	bce1                	j	11192 <_malloc_r+0x98>
   116bc:	3f800613          	li	a2,1016
   116c0:	07e00693          	li	a3,126
   116c4:	b345                	j	11464 <_malloc_r+0x36a>
   116c6:	0049a783          	lw	a5,4(s3)
   116ca:	b565                	j	11572 <_malloc_r+0x478>

000116cc <__malloc_lock>:
   116cc:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   116d0:	d14ff06f          	j	10be4 <__retarget_lock_acquire_recursive>

000116d4 <__malloc_unlock>:
   116d4:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   116d8:	d18ff06f          	j	10bf0 <__retarget_lock_release_recursive>

000116dc <_fclose_r>:
   116dc:	1141                	addi	sp,sp,-16
   116de:	c606                	sw	ra,12(sp)
   116e0:	c04a                	sw	s2,0(sp)
   116e2:	c9c1                	beqz	a1,11772 <_fclose_r+0x96>
   116e4:	c422                	sw	s0,8(sp)
   116e6:	c226                	sw	s1,4(sp)
   116e8:	842e                	mv	s0,a1
   116ea:	84aa                	mv	s1,a0
   116ec:	c119                	beqz	a0,116f2 <_fclose_r+0x16>
   116ee:	595c                	lw	a5,52(a0)
   116f0:	c3d5                	beqz	a5,11794 <_fclose_r+0xb8>
   116f2:	507c                	lw	a5,100(s0)
   116f4:	00c41703          	lh	a4,12(s0)
   116f8:	8b85                	andi	a5,a5,1
   116fa:	ebad                	bnez	a5,1176c <_fclose_r+0x90>
   116fc:	20077713          	andi	a4,a4,512
   11700:	cf49                	beqz	a4,1179a <_fclose_r+0xbe>
   11702:	85a2                	mv	a1,s0
   11704:	8526                	mv	a0,s1
   11706:	20c9                	jal	117c8 <__sflush_r>
   11708:	545c                	lw	a5,44(s0)
   1170a:	892a                	mv	s2,a0
   1170c:	c791                	beqz	a5,11718 <_fclose_r+0x3c>
   1170e:	4c4c                	lw	a1,28(s0)
   11710:	8526                	mv	a0,s1
   11712:	9782                	jalr	a5
   11714:	06054563          	bltz	a0,1177e <_fclose_r+0xa2>
   11718:	00c45783          	lhu	a5,12(s0)
   1171c:	0807f793          	andi	a5,a5,128
   11720:	e7ad                	bnez	a5,1178a <_fclose_r+0xae>
   11722:	580c                	lw	a1,48(s0)
   11724:	c991                	beqz	a1,11738 <_fclose_r+0x5c>
   11726:	04040793          	addi	a5,s0,64
   1172a:	00f58563          	beq	a1,a5,11734 <_fclose_r+0x58>
   1172e:	8526                	mv	a0,s1
   11730:	facff0ef          	jal	10edc <_free_r>
   11734:	02042823          	sw	zero,48(s0)
   11738:	406c                	lw	a1,68(s0)
   1173a:	c591                	beqz	a1,11746 <_fclose_r+0x6a>
   1173c:	8526                	mv	a0,s1
   1173e:	f9eff0ef          	jal	10edc <_free_r>
   11742:	04042223          	sw	zero,68(s0)
   11746:	8d6ff0ef          	jal	1081c <__sfp_lock_acquire>
   1174a:	507c                	lw	a5,100(s0)
   1174c:	00041623          	sh	zero,12(s0)
   11750:	8b85                	andi	a5,a5,1
   11752:	c3bd                	beqz	a5,117b8 <_fclose_r+0xdc>
   11754:	4c28                	lw	a0,88(s0)
   11756:	c8aff0ef          	jal	10be0 <__retarget_lock_close_recursive>
   1175a:	8c8ff0ef          	jal	10822 <__sfp_lock_release>
   1175e:	40b2                	lw	ra,12(sp)
   11760:	4422                	lw	s0,8(sp)
   11762:	4492                	lw	s1,4(sp)
   11764:	854a                	mv	a0,s2
   11766:	4902                	lw	s2,0(sp)
   11768:	0141                	addi	sp,sp,16
   1176a:	8082                	ret
   1176c:	fb59                	bnez	a4,11702 <_fclose_r+0x26>
   1176e:	4422                	lw	s0,8(sp)
   11770:	4492                	lw	s1,4(sp)
   11772:	40b2                	lw	ra,12(sp)
   11774:	4901                	li	s2,0
   11776:	854a                	mv	a0,s2
   11778:	4902                	lw	s2,0(sp)
   1177a:	0141                	addi	sp,sp,16
   1177c:	8082                	ret
   1177e:	00c45783          	lhu	a5,12(s0)
   11782:	597d                	li	s2,-1
   11784:	0807f793          	andi	a5,a5,128
   11788:	dfc9                	beqz	a5,11722 <_fclose_r+0x46>
   1178a:	480c                	lw	a1,16(s0)
   1178c:	8526                	mv	a0,s1
   1178e:	f4eff0ef          	jal	10edc <_free_r>
   11792:	bf41                	j	11722 <_fclose_r+0x46>
   11794:	84cff0ef          	jal	107e0 <__sinit>
   11798:	bfa9                	j	116f2 <_fclose_r+0x16>
   1179a:	4c28                	lw	a0,88(s0)
   1179c:	c48ff0ef          	jal	10be4 <__retarget_lock_acquire_recursive>
   117a0:	00c41783          	lh	a5,12(s0)
   117a4:	ffb9                	bnez	a5,11702 <_fclose_r+0x26>
   117a6:	507c                	lw	a5,100(s0)
   117a8:	8b85                	andi	a5,a5,1
   117aa:	f3f1                	bnez	a5,1176e <_fclose_r+0x92>
   117ac:	4c28                	lw	a0,88(s0)
   117ae:	c42ff0ef          	jal	10bf0 <__retarget_lock_release_recursive>
   117b2:	4422                	lw	s0,8(sp)
   117b4:	4492                	lw	s1,4(sp)
   117b6:	bf75                	j	11772 <_fclose_r+0x96>
   117b8:	4c28                	lw	a0,88(s0)
   117ba:	c36ff0ef          	jal	10bf0 <__retarget_lock_release_recursive>
   117be:	bf59                	j	11754 <_fclose_r+0x78>

000117c0 <fclose>:
   117c0:	85aa                	mv	a1,a0
   117c2:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   117c6:	bf19                	j	116dc <_fclose_r>

000117c8 <__sflush_r>:
   117c8:	00c59703          	lh	a4,12(a1)
   117cc:	1101                	addi	sp,sp,-32
   117ce:	cc22                	sw	s0,24(sp)
   117d0:	c64e                	sw	s3,12(sp)
   117d2:	ce06                	sw	ra,28(sp)
   117d4:	00877793          	andi	a5,a4,8
   117d8:	842e                	mv	s0,a1
   117da:	89aa                	mv	s3,a0
   117dc:	e7e1                	bnez	a5,118a4 <__sflush_r+0xdc>
   117de:	6785                	lui	a5,0x1
   117e0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   117e4:	41d4                	lw	a3,4(a1)
   117e6:	8fd9                	or	a5,a5,a4
   117e8:	00f59623          	sh	a5,12(a1)
   117ec:	10d05963          	blez	a3,118fe <__sflush_r+0x136>
   117f0:	02842803          	lw	a6,40(s0)
   117f4:	0a080263          	beqz	a6,11898 <__sflush_r+0xd0>
   117f8:	ca26                	sw	s1,20(sp)
   117fa:	01371693          	slli	a3,a4,0x13
   117fe:	0009a483          	lw	s1,0(s3)
   11802:	0009a023          	sw	zero,0(s3)
   11806:	1006c363          	bltz	a3,1190c <__sflush_r+0x144>
   1180a:	4c4c                	lw	a1,28(s0)
   1180c:	4601                	li	a2,0
   1180e:	4685                	li	a3,1
   11810:	854e                	mv	a0,s3
   11812:	9802                	jalr	a6
   11814:	57fd                	li	a5,-1
   11816:	862a                	mv	a2,a0
   11818:	12f50163          	beq	a0,a5,1193a <__sflush_r+0x172>
   1181c:	00c41783          	lh	a5,12(s0)
   11820:	02842803          	lw	a6,40(s0)
   11824:	8b91                	andi	a5,a5,4
   11826:	c799                	beqz	a5,11834 <__sflush_r+0x6c>
   11828:	4058                	lw	a4,4(s0)
   1182a:	581c                	lw	a5,48(s0)
   1182c:	8e19                	sub	a2,a2,a4
   1182e:	c399                	beqz	a5,11834 <__sflush_r+0x6c>
   11830:	5c5c                	lw	a5,60(s0)
   11832:	8e1d                	sub	a2,a2,a5
   11834:	4c4c                	lw	a1,28(s0)
   11836:	4681                	li	a3,0
   11838:	854e                	mv	a0,s3
   1183a:	9802                	jalr	a6
   1183c:	577d                	li	a4,-1
   1183e:	00c41783          	lh	a5,12(s0)
   11842:	0ce51763          	bne	a0,a4,11910 <__sflush_r+0x148>
   11846:	0009a683          	lw	a3,0(s3)
   1184a:	4775                	li	a4,29
   1184c:	10d76363          	bltu	a4,a3,11952 <__sflush_r+0x18a>
   11850:	20400737          	lui	a4,0x20400
   11854:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   11856:	00d75733          	srl	a4,a4,a3
   1185a:	8b05                	andi	a4,a4,1
   1185c:	cb7d                	beqz	a4,11952 <__sflush_r+0x18a>
   1185e:	4810                	lw	a2,16(s0)
   11860:	777d                	lui	a4,0xfffff
   11862:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11866:	8f7d                	and	a4,a4,a5
   11868:	00e41623          	sh	a4,12(s0)
   1186c:	00042223          	sw	zero,4(s0)
   11870:	c010                	sw	a2,0(s0)
   11872:	01379713          	slli	a4,a5,0x13
   11876:	00075363          	bgez	a4,1187c <__sflush_r+0xb4>
   1187a:	cacd                	beqz	a3,1192c <__sflush_r+0x164>
   1187c:	580c                	lw	a1,48(s0)
   1187e:	0099a023          	sw	s1,0(s3)
   11882:	c9d5                	beqz	a1,11936 <__sflush_r+0x16e>
   11884:	04040793          	addi	a5,s0,64
   11888:	00f58563          	beq	a1,a5,11892 <__sflush_r+0xca>
   1188c:	854e                	mv	a0,s3
   1188e:	e4eff0ef          	jal	10edc <_free_r>
   11892:	44d2                	lw	s1,20(sp)
   11894:	02042823          	sw	zero,48(s0)
   11898:	40f2                	lw	ra,28(sp)
   1189a:	4462                	lw	s0,24(sp)
   1189c:	49b2                	lw	s3,12(sp)
   1189e:	4501                	li	a0,0
   118a0:	6105                	addi	sp,sp,32
   118a2:	8082                	ret
   118a4:	c84a                	sw	s2,16(sp)
   118a6:	0105a903          	lw	s2,16(a1)
   118aa:	04090f63          	beqz	s2,11908 <__sflush_r+0x140>
   118ae:	ca26                	sw	s1,20(sp)
   118b0:	4184                	lw	s1,0(a1)
   118b2:	8b0d                	andi	a4,a4,3
   118b4:	0125a023          	sw	s2,0(a1)
   118b8:	412484b3          	sub	s1,s1,s2
   118bc:	4781                	li	a5,0
   118be:	e311                	bnez	a4,118c2 <__sflush_r+0xfa>
   118c0:	49dc                	lw	a5,20(a1)
   118c2:	c41c                	sw	a5,8(s0)
   118c4:	00904663          	bgtz	s1,118d0 <__sflush_r+0x108>
   118c8:	a83d                	j	11906 <__sflush_r+0x13e>
   118ca:	992a                	add	s2,s2,a0
   118cc:	02905d63          	blez	s1,11906 <__sflush_r+0x13e>
   118d0:	505c                	lw	a5,36(s0)
   118d2:	4c4c                	lw	a1,28(s0)
   118d4:	86a6                	mv	a3,s1
   118d6:	864a                	mv	a2,s2
   118d8:	854e                	mv	a0,s3
   118da:	9782                	jalr	a5
   118dc:	8c89                	sub	s1,s1,a0
   118de:	fea046e3          	bgtz	a0,118ca <__sflush_r+0x102>
   118e2:	00c41783          	lh	a5,12(s0)
   118e6:	4942                	lw	s2,16(sp)
   118e8:	0407e793          	ori	a5,a5,64
   118ec:	40f2                	lw	ra,28(sp)
   118ee:	00f41623          	sh	a5,12(s0)
   118f2:	4462                	lw	s0,24(sp)
   118f4:	44d2                	lw	s1,20(sp)
   118f6:	49b2                	lw	s3,12(sp)
   118f8:	557d                	li	a0,-1
   118fa:	6105                	addi	sp,sp,32
   118fc:	8082                	ret
   118fe:	5dd4                	lw	a3,60(a1)
   11900:	eed048e3          	bgtz	a3,117f0 <__sflush_r+0x28>
   11904:	bf51                	j	11898 <__sflush_r+0xd0>
   11906:	44d2                	lw	s1,20(sp)
   11908:	4942                	lw	s2,16(sp)
   1190a:	b779                	j	11898 <__sflush_r+0xd0>
   1190c:	4830                	lw	a2,80(s0)
   1190e:	bf19                	j	11824 <__sflush_r+0x5c>
   11910:	4814                	lw	a3,16(s0)
   11912:	777d                	lui	a4,0xfffff
   11914:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11918:	8f7d                	and	a4,a4,a5
   1191a:	00e41623          	sh	a4,12(s0)
   1191e:	00042223          	sw	zero,4(s0)
   11922:	c014                	sw	a3,0(s0)
   11924:	01379713          	slli	a4,a5,0x13
   11928:	f4075ae3          	bgez	a4,1187c <__sflush_r+0xb4>
   1192c:	580c                	lw	a1,48(s0)
   1192e:	c828                	sw	a0,80(s0)
   11930:	0099a023          	sw	s1,0(s3)
   11934:	f9a1                	bnez	a1,11884 <__sflush_r+0xbc>
   11936:	44d2                	lw	s1,20(sp)
   11938:	b785                	j	11898 <__sflush_r+0xd0>
   1193a:	0009a783          	lw	a5,0(s3)
   1193e:	ec078fe3          	beqz	a5,1181c <__sflush_r+0x54>
   11942:	4775                	li	a4,29
   11944:	00e78a63          	beq	a5,a4,11958 <__sflush_r+0x190>
   11948:	4759                	li	a4,22
   1194a:	00e78763          	beq	a5,a4,11958 <__sflush_r+0x190>
   1194e:	00c41783          	lh	a5,12(s0)
   11952:	0407e793          	ori	a5,a5,64
   11956:	bf59                	j	118ec <__sflush_r+0x124>
   11958:	0099a023          	sw	s1,0(s3)
   1195c:	44d2                	lw	s1,20(sp)
   1195e:	bf2d                	j	11898 <__sflush_r+0xd0>

00011960 <_fflush_r>:
   11960:	1141                	addi	sp,sp,-16
   11962:	c422                	sw	s0,8(sp)
   11964:	c226                	sw	s1,4(sp)
   11966:	c606                	sw	ra,12(sp)
   11968:	c04a                	sw	s2,0(sp)
   1196a:	84aa                	mv	s1,a0
   1196c:	842e                	mv	s0,a1
   1196e:	c119                	beqz	a0,11974 <_fflush_r+0x14>
   11970:	595c                	lw	a5,52(a0)
   11972:	c3bd                	beqz	a5,119d8 <_fflush_r+0x78>
   11974:	00c41783          	lh	a5,12(s0)
   11978:	4901                	li	s2,0
   1197a:	c39d                	beqz	a5,119a0 <_fflush_r+0x40>
   1197c:	5078                	lw	a4,100(s0)
   1197e:	8b05                	andi	a4,a4,1
   11980:	e701                	bnez	a4,11988 <_fflush_r+0x28>
   11982:	2007f793          	andi	a5,a5,512
   11986:	c785                	beqz	a5,119ae <_fflush_r+0x4e>
   11988:	8526                	mv	a0,s1
   1198a:	85a2                	mv	a1,s0
   1198c:	3d35                	jal	117c8 <__sflush_r>
   1198e:	507c                	lw	a5,100(s0)
   11990:	892a                	mv	s2,a0
   11992:	8b85                	andi	a5,a5,1
   11994:	e791                	bnez	a5,119a0 <_fflush_r+0x40>
   11996:	00c45783          	lhu	a5,12(s0)
   1199a:	2007f793          	andi	a5,a5,512
   1199e:	c39d                	beqz	a5,119c4 <_fflush_r+0x64>
   119a0:	40b2                	lw	ra,12(sp)
   119a2:	4422                	lw	s0,8(sp)
   119a4:	4492                	lw	s1,4(sp)
   119a6:	854a                	mv	a0,s2
   119a8:	4902                	lw	s2,0(sp)
   119aa:	0141                	addi	sp,sp,16
   119ac:	8082                	ret
   119ae:	4c28                	lw	a0,88(s0)
   119b0:	a34ff0ef          	jal	10be4 <__retarget_lock_acquire_recursive>
   119b4:	8526                	mv	a0,s1
   119b6:	85a2                	mv	a1,s0
   119b8:	3d01                	jal	117c8 <__sflush_r>
   119ba:	507c                	lw	a5,100(s0)
   119bc:	892a                	mv	s2,a0
   119be:	8b85                	andi	a5,a5,1
   119c0:	f3e5                	bnez	a5,119a0 <_fflush_r+0x40>
   119c2:	bfd1                	j	11996 <_fflush_r+0x36>
   119c4:	4c28                	lw	a0,88(s0)
   119c6:	a2aff0ef          	jal	10bf0 <__retarget_lock_release_recursive>
   119ca:	40b2                	lw	ra,12(sp)
   119cc:	4422                	lw	s0,8(sp)
   119ce:	4492                	lw	s1,4(sp)
   119d0:	854a                	mv	a0,s2
   119d2:	4902                	lw	s2,0(sp)
   119d4:	0141                	addi	sp,sp,16
   119d6:	8082                	ret
   119d8:	e09fe0ef          	jal	107e0 <__sinit>
   119dc:	bf61                	j	11974 <_fflush_r+0x14>

000119de <fflush>:
   119de:	c53d                	beqz	a0,11a4c <fflush+0x6e>
   119e0:	1141                	addi	sp,sp,-16
   119e2:	c04a                	sw	s2,0(sp)
   119e4:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   119e8:	c422                	sw	s0,8(sp)
   119ea:	c606                	sw	ra,12(sp)
   119ec:	c226                	sw	s1,4(sp)
   119ee:	842a                	mv	s0,a0
   119f0:	00090563          	beqz	s2,119fa <fflush+0x1c>
   119f4:	03492783          	lw	a5,52(s2)
   119f8:	cf95                	beqz	a5,11a34 <fflush+0x56>
   119fa:	00c41783          	lh	a5,12(s0)
   119fe:	4481                	li	s1,0
   11a00:	c39d                	beqz	a5,11a26 <fflush+0x48>
   11a02:	5078                	lw	a4,100(s0)
   11a04:	8b05                	andi	a4,a4,1
   11a06:	e701                	bnez	a4,11a0e <fflush+0x30>
   11a08:	2007f793          	andi	a5,a5,512
   11a0c:	cb85                	beqz	a5,11a3c <fflush+0x5e>
   11a0e:	854a                	mv	a0,s2
   11a10:	85a2                	mv	a1,s0
   11a12:	3b5d                	jal	117c8 <__sflush_r>
   11a14:	507c                	lw	a5,100(s0)
   11a16:	84aa                	mv	s1,a0
   11a18:	8b85                	andi	a5,a5,1
   11a1a:	e791                	bnez	a5,11a26 <fflush+0x48>
   11a1c:	00c45783          	lhu	a5,12(s0)
   11a20:	2007f793          	andi	a5,a5,512
   11a24:	c385                	beqz	a5,11a44 <fflush+0x66>
   11a26:	40b2                	lw	ra,12(sp)
   11a28:	4422                	lw	s0,8(sp)
   11a2a:	4902                	lw	s2,0(sp)
   11a2c:	8526                	mv	a0,s1
   11a2e:	4492                	lw	s1,4(sp)
   11a30:	0141                	addi	sp,sp,16
   11a32:	8082                	ret
   11a34:	854a                	mv	a0,s2
   11a36:	dabfe0ef          	jal	107e0 <__sinit>
   11a3a:	b7c1                	j	119fa <fflush+0x1c>
   11a3c:	4c28                	lw	a0,88(s0)
   11a3e:	9a6ff0ef          	jal	10be4 <__retarget_lock_acquire_recursive>
   11a42:	b7f1                	j	11a0e <fflush+0x30>
   11a44:	4c28                	lw	a0,88(s0)
   11a46:	9aaff0ef          	jal	10bf0 <__retarget_lock_release_recursive>
   11a4a:	bff1                	j	11a26 <fflush+0x48>
   11a4c:	00000617          	auipc	a2,0x0
   11a50:	5c460613          	addi	a2,a2,1476 # 12010 <__sglue>
   11a54:	00000597          	auipc	a1,0x0
   11a58:	f0c58593          	addi	a1,a1,-244 # 11960 <_fflush_r>
   11a5c:	00000517          	auipc	a0,0x0
   11a60:	5c450513          	addi	a0,a0,1476 # 12020 <_impure_data>
   11a64:	e09fe06f          	j	1086c <_fwalk_sglue>

00011a68 <_sbrk_r>:
   11a68:	1141                	addi	sp,sp,-16
   11a6a:	c422                	sw	s0,8(sp)
   11a6c:	842a                	mv	s0,a0
   11a6e:	852e                	mv	a0,a1
   11a70:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   11a74:	c606                	sw	ra,12(sp)
   11a76:	20f9                	jal	11b44 <_sbrk>
   11a78:	57fd                	li	a5,-1
   11a7a:	00f50663          	beq	a0,a5,11a86 <_sbrk_r+0x1e>
   11a7e:	40b2                	lw	ra,12(sp)
   11a80:	4422                	lw	s0,8(sp)
   11a82:	0141                	addi	sp,sp,16
   11a84:	8082                	ret
   11a86:	c226                	sw	s1,4(sp)
   11a88:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   11a8c:	409c                	lw	a5,0(s1)
   11a8e:	c799                	beqz	a5,11a9c <_sbrk_r+0x34>
   11a90:	40b2                	lw	ra,12(sp)
   11a92:	c01c                	sw	a5,0(s0)
   11a94:	4422                	lw	s0,8(sp)
   11a96:	4492                	lw	s1,4(sp)
   11a98:	0141                	addi	sp,sp,16
   11a9a:	8082                	ret
   11a9c:	40b2                	lw	ra,12(sp)
   11a9e:	4422                	lw	s0,8(sp)
   11aa0:	4492                	lw	s1,4(sp)
   11aa2:	0141                	addi	sp,sp,16
   11aa4:	8082                	ret

00011aa6 <_close>:
   11aa6:	1141                	addi	sp,sp,-16
   11aa8:	c606                	sw	ra,12(sp)
   11aaa:	c422                	sw	s0,8(sp)
   11aac:	03900893          	li	a7,57
   11ab0:	00000073          	ecall
   11ab4:	842a                	mv	s0,a0
   11ab6:	00054763          	bltz	a0,11ac4 <_close+0x1e>
   11aba:	40b2                	lw	ra,12(sp)
   11abc:	8522                	mv	a0,s0
   11abe:	4422                	lw	s0,8(sp)
   11ac0:	0141                	addi	sp,sp,16
   11ac2:	8082                	ret
   11ac4:	40800433          	neg	s0,s0
   11ac8:	28d5                	jal	11bbc <__errno>
   11aca:	c100                	sw	s0,0(a0)
   11acc:	547d                	li	s0,-1
   11ace:	b7f5                	j	11aba <_close+0x14>

00011ad0 <_exit>:
   11ad0:	05d00893          	li	a7,93
   11ad4:	00000073          	ecall
   11ad8:	00054363          	bltz	a0,11ade <_exit+0xe>
   11adc:	a001                	j	11adc <_exit+0xc>
   11ade:	1141                	addi	sp,sp,-16
   11ae0:	c422                	sw	s0,8(sp)
   11ae2:	842a                	mv	s0,a0
   11ae4:	c606                	sw	ra,12(sp)
   11ae6:	40800433          	neg	s0,s0
   11aea:	28c9                	jal	11bbc <__errno>
   11aec:	c100                	sw	s0,0(a0)
   11aee:	a001                	j	11aee <_exit+0x1e>

00011af0 <_lseek>:
   11af0:	1141                	addi	sp,sp,-16
   11af2:	c606                	sw	ra,12(sp)
   11af4:	c422                	sw	s0,8(sp)
   11af6:	03e00893          	li	a7,62
   11afa:	00000073          	ecall
   11afe:	842a                	mv	s0,a0
   11b00:	00054763          	bltz	a0,11b0e <_lseek+0x1e>
   11b04:	40b2                	lw	ra,12(sp)
   11b06:	8522                	mv	a0,s0
   11b08:	4422                	lw	s0,8(sp)
   11b0a:	0141                	addi	sp,sp,16
   11b0c:	8082                	ret
   11b0e:	40800433          	neg	s0,s0
   11b12:	206d                	jal	11bbc <__errno>
   11b14:	c100                	sw	s0,0(a0)
   11b16:	547d                	li	s0,-1
   11b18:	b7f5                	j	11b04 <_lseek+0x14>

00011b1a <_read>:
   11b1a:	1141                	addi	sp,sp,-16
   11b1c:	c606                	sw	ra,12(sp)
   11b1e:	c422                	sw	s0,8(sp)
   11b20:	03f00893          	li	a7,63
   11b24:	00000073          	ecall
   11b28:	842a                	mv	s0,a0
   11b2a:	00054763          	bltz	a0,11b38 <_read+0x1e>
   11b2e:	40b2                	lw	ra,12(sp)
   11b30:	8522                	mv	a0,s0
   11b32:	4422                	lw	s0,8(sp)
   11b34:	0141                	addi	sp,sp,16
   11b36:	8082                	ret
   11b38:	40800433          	neg	s0,s0
   11b3c:	2041                	jal	11bbc <__errno>
   11b3e:	c100                	sw	s0,0(a0)
   11b40:	547d                	li	s0,-1
   11b42:	b7f5                	j	11b2e <_read+0x14>

00011b44 <_sbrk>:
   11b44:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11b48:	4298                	lw	a4,0(a3)
   11b4a:	1141                	addi	sp,sp,-16
   11b4c:	c606                	sw	ra,12(sp)
   11b4e:	87aa                	mv	a5,a0
   11b50:	eb19                	bnez	a4,11b66 <_sbrk+0x22>
   11b52:	0d600893          	li	a7,214
   11b56:	4501                	li	a0,0
   11b58:	00000073          	ecall
   11b5c:	567d                	li	a2,-1
   11b5e:	872a                	mv	a4,a0
   11b60:	02c50263          	beq	a0,a2,11b84 <_sbrk+0x40>
   11b64:	c288                	sw	a0,0(a3)
   11b66:	00e78533          	add	a0,a5,a4
   11b6a:	0d600893          	li	a7,214
   11b6e:	00000073          	ecall
   11b72:	4298                	lw	a4,0(a3)
   11b74:	97ba                	add	a5,a5,a4
   11b76:	00f51763          	bne	a0,a5,11b84 <_sbrk+0x40>
   11b7a:	40b2                	lw	ra,12(sp)
   11b7c:	c288                	sw	a0,0(a3)
   11b7e:	853a                	mv	a0,a4
   11b80:	0141                	addi	sp,sp,16
   11b82:	8082                	ret
   11b84:	2825                	jal	11bbc <__errno>
   11b86:	40b2                	lw	ra,12(sp)
   11b88:	47b1                	li	a5,12
   11b8a:	c11c                	sw	a5,0(a0)
   11b8c:	557d                	li	a0,-1
   11b8e:	0141                	addi	sp,sp,16
   11b90:	8082                	ret

00011b92 <_write>:
   11b92:	1141                	addi	sp,sp,-16
   11b94:	c606                	sw	ra,12(sp)
   11b96:	c422                	sw	s0,8(sp)
   11b98:	04000893          	li	a7,64
   11b9c:	00000073          	ecall
   11ba0:	842a                	mv	s0,a0
   11ba2:	00054763          	bltz	a0,11bb0 <_write+0x1e>
   11ba6:	40b2                	lw	ra,12(sp)
   11ba8:	8522                	mv	a0,s0
   11baa:	4422                	lw	s0,8(sp)
   11bac:	0141                	addi	sp,sp,16
   11bae:	8082                	ret
   11bb0:	40800433          	neg	s0,s0
   11bb4:	2021                	jal	11bbc <__errno>
   11bb6:	c100                	sw	s0,0(a0)
   11bb8:	547d                	li	s0,-1
   11bba:	b7f5                	j	11ba6 <_write+0x14>

00011bbc <__errno>:
   11bbc:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11bc0:	8082                	ret
