
test_original_Os.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	1b7000ef          	jal	10a74 <__call_exitprocs>
   100c2:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	74c010ef          	jal	11818 <_exit>

000100d0 <main>:
   100d0:	4505                	li	a0,1
   100d2:	8082                	ret

000100d4 <register_fini>:
   100d4:	00000793          	li	a5,0
   100d8:	c791                	beqz	a5,100e4 <register_fini+0x10>
   100da:	00001517          	auipc	a0,0x1
   100de:	81050513          	addi	a0,a0,-2032 # 108ea <__libc_fini_array>
   100e2:	a269                	j	1026c <atexit>
   100e4:	8082                	ret

000100e6 <_start>:
   100e6:	00002197          	auipc	gp,0x2
   100ea:	72a18193          	addi	gp,gp,1834 # 12810 <__global_pointer$>
   100ee:	d4c18513          	addi	a0,gp,-692 # 1255c <completed.1>
   100f2:	09418613          	addi	a2,gp,148 # 128a4 <__BSS_END__>
   100f6:	8e09                	sub	a2,a2,a0
   100f8:	4581                	li	a1,0
   100fa:	041000ef          	jal	1093a <memset>
   100fe:	00000517          	auipc	a0,0x0
   10102:	7ec50513          	addi	a0,a0,2028 # 108ea <__libc_fini_array>
   10106:	229d                	jal	1026c <atexit>
   10108:	778000ef          	jal	10880 <__libc_init_array>
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
   10124:	00001517          	auipc	a0,0x1
   10128:	7e850513          	addi	a0,a0,2024 # 1190c <__EH_FRAME_BEGIN__>
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
   10156:	00001517          	auipc	a0,0x1
   1015a:	7b650513          	addi	a0,a0,1974 # 1190c <__EH_FRAME_BEGIN__>
   1015e:	00000317          	auipc	t1,0x0
   10162:	00000067          	jr	zero # 0 <exit-0x100b4>
   10166:	8082                	ret

00010168 <memcpy>:
   10168:	4781                	li	a5,0
   1016a:	00f61363          	bne	a2,a5,10170 <memcpy+0x8>
   1016e:	8082                	ret
   10170:	00f58733          	add	a4,a1,a5
   10174:	00074683          	lbu	a3,0(a4)
   10178:	00f50733          	add	a4,a0,a5
   1017c:	0785                	addi	a5,a5,1
   1017e:	00d70023          	sb	a3,0(a4)
   10182:	b7e5                	j	1016a <memcpy+0x2>

00010184 <__mulsi3>:
   10184:	87aa                	mv	a5,a0
   10186:	4501                	li	a0,0
   10188:	e191                	bnez	a1,1018c <__mulsi3+0x8>
   1018a:	8082                	ret
   1018c:	0015f713          	andi	a4,a1,1
   10190:	02f70733          	mul	a4,a4,a5
   10194:	8185                	srli	a1,a1,0x1
   10196:	0786                	slli	a5,a5,0x1
   10198:	953a                	add	a0,a0,a4
   1019a:	b7fd                	j	10188 <__mulsi3+0x4>

0001019c <clz>:
   1019c:	4695                	li	a3,5
   1019e:	47c1                	li	a5,16
   101a0:	02000713          	li	a4,32
   101a4:	00f55633          	srl	a2,a0,a5
   101a8:	c219                	beqz	a2,101ae <clz+0x12>
   101aa:	8f1d                	sub	a4,a4,a5
   101ac:	8532                	mv	a0,a2
   101ae:	16fd                	addi	a3,a3,-1
   101b0:	8785                	srai	a5,a5,0x1
   101b2:	faed                	bnez	a3,101a4 <clz+0x8>
   101b4:	40a70533          	sub	a0,a4,a0
   101b8:	8082                	ret

000101ba <uf8_decode>:
   101ba:	00455693          	srli	a3,a0,0x4
   101be:	473d                	li	a4,15
   101c0:	67a1                	lui	a5,0x8
   101c2:	8f15                	sub	a4,a4,a3
   101c4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80b5>
   101c6:	40e7d7b3          	sra	a5,a5,a4
   101ca:	893d                	andi	a0,a0,15
   101cc:	0792                	slli	a5,a5,0x4
   101ce:	00d51533          	sll	a0,a0,a3
   101d2:	953e                	add	a0,a0,a5
   101d4:	8082                	ret

000101d6 <uf8_encode>:
   101d6:	1141                	addi	sp,sp,-16
   101d8:	c422                	sw	s0,8(sp)
   101da:	c226                	sw	s1,4(sp)
   101dc:	c606                	sw	ra,12(sp)
   101de:	44bd                	li	s1,15
   101e0:	842a                	mv	s0,a0
   101e2:	00a4e963          	bltu	s1,a0,101f4 <uf8_encode+0x1e>
   101e6:	0ff57513          	zext.b	a0,a0
   101ea:	40b2                	lw	ra,12(sp)
   101ec:	4422                	lw	s0,8(sp)
   101ee:	4492                	lw	s1,4(sp)
   101f0:	0141                	addi	sp,sp,16
   101f2:	8082                	ret
   101f4:	3765                	jal	1019c <clz>
   101f6:	47fd                	li	a5,31
   101f8:	40a78533          	sub	a0,a5,a0
   101fc:	4791                	li	a5,4
   101fe:	04a7d263          	bge	a5,a0,10242 <uf8_encode+0x6c>
   10202:	1571                	addi	a0,a0,-4
   10204:	0ff57793          	zext.b	a5,a0
   10208:	0ff57513          	zext.b	a0,a0
   1020c:	00a4f463          	bgeu	s1,a0,10214 <uf8_encode+0x3e>
   10210:	0ff4f793          	zext.b	a5,s1
   10214:	4681                	li	a3,0
   10216:	4701                	li	a4,0
   10218:	00f69f63          	bne	a3,a5,10236 <uf8_encode+0x60>
   1021c:	e795                	bnez	a5,10248 <uf8_encode+0x72>
   1021e:	463d                	li	a2,15
   10220:	02c79c63          	bne	a5,a2,10258 <uf8_encode+0x82>
   10224:	40e40533          	sub	a0,s0,a4
   10228:	00f55533          	srl	a0,a0,a5
   1022c:	0792                	slli	a5,a5,0x4
   1022e:	8d5d                	or	a0,a0,a5
   10230:	0ff57513          	zext.b	a0,a0
   10234:	bf5d                	j	101ea <uf8_encode+0x14>
   10236:	0706                	slli	a4,a4,0x1
   10238:	0685                	addi	a3,a3,1
   1023a:	0741                	addi	a4,a4,16
   1023c:	0ff6f693          	zext.b	a3,a3
   10240:	bfe1                	j	10218 <uf8_encode+0x42>
   10242:	4701                	li	a4,0
   10244:	4781                	li	a5,0
   10246:	bfe1                	j	1021e <uf8_encode+0x48>
   10248:	fce47be3          	bgeu	s0,a4,1021e <uf8_encode+0x48>
   1024c:	8305                	srli	a4,a4,0x1
   1024e:	17fd                	addi	a5,a5,-1
   10250:	1761                	addi	a4,a4,-8
   10252:	0ff7f793          	zext.b	a5,a5
   10256:	b7d9                	j	1021c <uf8_encode+0x46>
   10258:	00171693          	slli	a3,a4,0x1
   1025c:	06c1                	addi	a3,a3,16
   1025e:	fcd463e3          	bltu	s0,a3,10224 <uf8_encode+0x4e>
   10262:	0785                	addi	a5,a5,1
   10264:	0ff7f793          	zext.b	a5,a5
   10268:	8736                	mv	a4,a3
   1026a:	bf5d                	j	10220 <uf8_encode+0x4a>

0001026c <atexit>:
   1026c:	85aa                	mv	a1,a0
   1026e:	4681                	li	a3,0
   10270:	4601                	li	a2,0
   10272:	4501                	li	a0,0
   10274:	76e0006f          	j	109e2 <__register_exitproc>

00010278 <stdio_exit_handler>:
   10278:	00002617          	auipc	a2,0x2
   1027c:	d9860613          	addi	a2,a2,-616 # 12010 <__sglue>
   10280:	00001597          	auipc	a1,0x1
   10284:	1a458593          	addi	a1,a1,420 # 11424 <_fclose_r>
   10288:	00002517          	auipc	a0,0x2
   1028c:	d9850513          	addi	a0,a0,-616 # 12020 <_impure_data>
   10290:	a615                	j	105b4 <_fwalk_sglue>

00010292 <cleanup_stdio>:
   10292:	414c                	lw	a1,4(a0)
   10294:	1141                	addi	sp,sp,-16
   10296:	c422                	sw	s0,8(sp)
   10298:	c606                	sw	ra,12(sp)
   1029a:	da418793          	addi	a5,gp,-604 # 125b4 <__sf>
   1029e:	842a                	mv	s0,a0
   102a0:	00f58463          	beq	a1,a5,102a8 <cleanup_stdio+0x16>
   102a4:	180010ef          	jal	11424 <_fclose_r>
   102a8:	440c                	lw	a1,8(s0)
   102aa:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   102ae:	00f58563          	beq	a1,a5,102b8 <cleanup_stdio+0x26>
   102b2:	8522                	mv	a0,s0
   102b4:	170010ef          	jal	11424 <_fclose_r>
   102b8:	444c                	lw	a1,12(s0)
   102ba:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   102be:	00f58863          	beq	a1,a5,102ce <cleanup_stdio+0x3c>
   102c2:	8522                	mv	a0,s0
   102c4:	4422                	lw	s0,8(sp)
   102c6:	40b2                	lw	ra,12(sp)
   102c8:	0141                	addi	sp,sp,16
   102ca:	15a0106f          	j	11424 <_fclose_r>
   102ce:	40b2                	lw	ra,12(sp)
   102d0:	4422                	lw	s0,8(sp)
   102d2:	0141                	addi	sp,sp,16
   102d4:	8082                	ret

000102d6 <__fp_lock>:
   102d6:	51fc                	lw	a5,100(a1)
   102d8:	8b85                	andi	a5,a5,1
   102da:	e791                	bnez	a5,102e6 <__fp_lock+0x10>
   102dc:	00c5d783          	lhu	a5,12(a1)
   102e0:	2007f793          	andi	a5,a5,512
   102e4:	c399                	beqz	a5,102ea <__fp_lock+0x14>
   102e6:	4501                	li	a0,0
   102e8:	8082                	ret
   102ea:	4da8                	lw	a0,88(a1)
   102ec:	1141                	addi	sp,sp,-16
   102ee:	c606                	sw	ra,12(sp)
   102f0:	2d35                	jal	1092c <__retarget_lock_acquire_recursive>
   102f2:	40b2                	lw	ra,12(sp)
   102f4:	4501                	li	a0,0
   102f6:	0141                	addi	sp,sp,16
   102f8:	8082                	ret

000102fa <__fp_unlock>:
   102fa:	51fc                	lw	a5,100(a1)
   102fc:	8b85                	andi	a5,a5,1
   102fe:	e791                	bnez	a5,1030a <__fp_unlock+0x10>
   10300:	00c5d783          	lhu	a5,12(a1)
   10304:	2007f793          	andi	a5,a5,512
   10308:	c399                	beqz	a5,1030e <__fp_unlock+0x14>
   1030a:	4501                	li	a0,0
   1030c:	8082                	ret
   1030e:	4da8                	lw	a0,88(a1)
   10310:	1141                	addi	sp,sp,-16
   10312:	c606                	sw	ra,12(sp)
   10314:	2515                	jal	10938 <__retarget_lock_release_recursive>
   10316:	40b2                	lw	ra,12(sp)
   10318:	4501                	li	a0,0
   1031a:	0141                	addi	sp,sp,16
   1031c:	8082                	ret

0001031e <global_stdio_init.part.0>:
   1031e:	1101                	addi	sp,sp,-32
   10320:	ce06                	sw	ra,28(sp)
   10322:	cc22                	sw	s0,24(sp)
   10324:	ca26                	sw	s1,20(sp)
   10326:	da418413          	addi	s0,gp,-604 # 125b4 <__sf>
   1032a:	c84a                	sw	s2,16(sp)
   1032c:	c64e                	sw	s3,12(sp)
   1032e:	c452                	sw	s4,8(sp)
   10330:	00000717          	auipc	a4,0x0
   10334:	f4870713          	addi	a4,a4,-184 # 10278 <stdio_exit_handler>
   10338:	4791                	li	a5,4
   1033a:	4621                	li	a2,8
   1033c:	4581                	li	a1,0
   1033e:	e0018513          	addi	a0,gp,-512 # 12610 <__sf+0x5c>
   10342:	d4e1a823          	sw	a4,-688(gp) # 12560 <__stdio_exit_handler>
   10346:	c45c                	sw	a5,12(s0)
   10348:	00042023          	sw	zero,0(s0)
   1034c:	00042223          	sw	zero,4(s0)
   10350:	00042423          	sw	zero,8(s0)
   10354:	06042223          	sw	zero,100(s0)
   10358:	00042823          	sw	zero,16(s0)
   1035c:	00042a23          	sw	zero,20(s0)
   10360:	00042c23          	sw	zero,24(s0)
   10364:	2bd9                	jal	1093a <memset>
   10366:	00000a17          	auipc	s4,0x0
   1036a:	2c0a0a13          	addi	s4,s4,704 # 10626 <__sread>
   1036e:	00000997          	auipc	s3,0x0
   10372:	2f298993          	addi	s3,s3,754 # 10660 <__swrite>
   10376:	00000917          	auipc	s2,0x0
   1037a:	33a90913          	addi	s2,s2,826 # 106b0 <__sseek>
   1037e:	00000497          	auipc	s1,0x0
   10382:	36e48493          	addi	s1,s1,878 # 106ec <__sclose>
   10386:	dfc18513          	addi	a0,gp,-516 # 1260c <__sf+0x58>
   1038a:	03442023          	sw	s4,32(s0)
   1038e:	03342223          	sw	s3,36(s0)
   10392:	03242423          	sw	s2,40(s0)
   10396:	d444                	sw	s1,44(s0)
   10398:	cc40                	sw	s0,28(s0)
   1039a:	2369                	jal	10924 <__retarget_lock_init_recursive>
   1039c:	67c1                	lui	a5,0x10
   1039e:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   103a0:	4621                	li	a2,8
   103a2:	4581                	li	a1,0
   103a4:	e6818513          	addi	a0,gp,-408 # 12678 <__sf+0xc4>
   103a8:	d87c                	sw	a5,116(s0)
   103aa:	06042423          	sw	zero,104(s0)
   103ae:	06042623          	sw	zero,108(s0)
   103b2:	06042823          	sw	zero,112(s0)
   103b6:	0c042623          	sw	zero,204(s0)
   103ba:	06042c23          	sw	zero,120(s0)
   103be:	06042e23          	sw	zero,124(s0)
   103c2:	08042023          	sw	zero,128(s0)
   103c6:	2b95                	jal	1093a <memset>
   103c8:	e0c18793          	addi	a5,gp,-500 # 1261c <__sf+0x68>
   103cc:	e6418513          	addi	a0,gp,-412 # 12674 <__sf+0xc0>
   103d0:	09442423          	sw	s4,136(s0)
   103d4:	09342623          	sw	s3,140(s0)
   103d8:	09242823          	sw	s2,144(s0)
   103dc:	08942a23          	sw	s1,148(s0)
   103e0:	08f42223          	sw	a5,132(s0)
   103e4:	2381                	jal	10924 <__retarget_lock_init_recursive>
   103e6:	000207b7          	lui	a5,0x20
   103ea:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xd76e>
   103ec:	4621                	li	a2,8
   103ee:	4581                	li	a1,0
   103f0:	ed018513          	addi	a0,gp,-304 # 126e0 <__sf+0x12c>
   103f4:	0cf42e23          	sw	a5,220(s0)
   103f8:	0c042823          	sw	zero,208(s0)
   103fc:	0c042a23          	sw	zero,212(s0)
   10400:	0c042c23          	sw	zero,216(s0)
   10404:	12042a23          	sw	zero,308(s0)
   10408:	0e042023          	sw	zero,224(s0)
   1040c:	0e042223          	sw	zero,228(s0)
   10410:	0e042423          	sw	zero,232(s0)
   10414:	231d                	jal	1093a <memset>
   10416:	e7418793          	addi	a5,gp,-396 # 12684 <__sf+0xd0>
   1041a:	0f442823          	sw	s4,240(s0)
   1041e:	0f342a23          	sw	s3,244(s0)
   10422:	0f242c23          	sw	s2,248(s0)
   10426:	0e942e23          	sw	s1,252(s0)
   1042a:	0ef42623          	sw	a5,236(s0)
   1042e:	4462                	lw	s0,24(sp)
   10430:	40f2                	lw	ra,28(sp)
   10432:	44d2                	lw	s1,20(sp)
   10434:	4942                	lw	s2,16(sp)
   10436:	49b2                	lw	s3,12(sp)
   10438:	4a22                	lw	s4,8(sp)
   1043a:	ecc18513          	addi	a0,gp,-308 # 126dc <__sf+0x128>
   1043e:	6105                	addi	sp,sp,32
   10440:	a1d5                	j	10924 <__retarget_lock_init_recursive>

00010442 <__sfp>:
   10442:	1101                	addi	sp,sp,-32
   10444:	c64e                	sw	s3,12(sp)
   10446:	89aa                	mv	s3,a0
   10448:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1044c:	ce06                	sw	ra,28(sp)
   1044e:	cc22                	sw	s0,24(sp)
   10450:	ca26                	sw	s1,20(sp)
   10452:	c84a                	sw	s2,16(sp)
   10454:	29e1                	jal	1092c <__retarget_lock_acquire_recursive>
   10456:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   1045a:	cfc5                	beqz	a5,10512 <__sfp+0xd0>
   1045c:	00002917          	auipc	s2,0x2
   10460:	bb490913          	addi	s2,s2,-1100 # 12010 <__sglue>
   10464:	54fd                	li	s1,-1
   10466:	00492783          	lw	a5,4(s2)
   1046a:	00892403          	lw	s0,8(s2)
   1046e:	17fd                	addi	a5,a5,-1
   10470:	0007d763          	bgez	a5,1047e <__sfp+0x3c>
   10474:	a0ad                	j	104de <__sfp+0x9c>
   10476:	06840413          	addi	s0,s0,104
   1047a:	06978263          	beq	a5,s1,104de <__sfp+0x9c>
   1047e:	00c41703          	lh	a4,12(s0)
   10482:	17fd                	addi	a5,a5,-1
   10484:	fb6d                	bnez	a4,10476 <__sfp+0x34>
   10486:	77c1                	lui	a5,0xffff0
   10488:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdd75d>
   1048a:	c45c                	sw	a5,12(s0)
   1048c:	05840513          	addi	a0,s0,88
   10490:	06042223          	sw	zero,100(s0)
   10494:	2941                	jal	10924 <__retarget_lock_init_recursive>
   10496:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1049a:	2979                	jal	10938 <__retarget_lock_release_recursive>
   1049c:	05c40513          	addi	a0,s0,92
   104a0:	00042023          	sw	zero,0(s0)
   104a4:	00042423          	sw	zero,8(s0)
   104a8:	00042223          	sw	zero,4(s0)
   104ac:	00042823          	sw	zero,16(s0)
   104b0:	00042a23          	sw	zero,20(s0)
   104b4:	00042c23          	sw	zero,24(s0)
   104b8:	4621                	li	a2,8
   104ba:	4581                	li	a1,0
   104bc:	29bd                	jal	1093a <memset>
   104be:	02042823          	sw	zero,48(s0)
   104c2:	02042a23          	sw	zero,52(s0)
   104c6:	04042223          	sw	zero,68(s0)
   104ca:	04042423          	sw	zero,72(s0)
   104ce:	40f2                	lw	ra,28(sp)
   104d0:	8522                	mv	a0,s0
   104d2:	4462                	lw	s0,24(sp)
   104d4:	44d2                	lw	s1,20(sp)
   104d6:	4942                	lw	s2,16(sp)
   104d8:	49b2                	lw	s3,12(sp)
   104da:	6105                	addi	sp,sp,32
   104dc:	8082                	ret
   104de:	00092403          	lw	s0,0(s2)
   104e2:	c019                	beqz	s0,104e8 <__sfp+0xa6>
   104e4:	8922                	mv	s2,s0
   104e6:	b741                	j	10466 <__sfp+0x24>
   104e8:	1ac00593          	li	a1,428
   104ec:	854e                	mv	a0,s3
   104ee:	155000ef          	jal	10e42 <_malloc_r>
   104f2:	842a                	mv	s0,a0
   104f4:	c10d                	beqz	a0,10516 <__sfp+0xd4>
   104f6:	4791                	li	a5,4
   104f8:	0531                	addi	a0,a0,12
   104fa:	00042023          	sw	zero,0(s0)
   104fe:	c05c                	sw	a5,4(s0)
   10500:	c408                	sw	a0,8(s0)
   10502:	1a000613          	li	a2,416
   10506:	4581                	li	a1,0
   10508:	290d                	jal	1093a <memset>
   1050a:	00892023          	sw	s0,0(s2)
   1050e:	8922                	mv	s2,s0
   10510:	bf99                	j	10466 <__sfp+0x24>
   10512:	3531                	jal	1031e <global_stdio_init.part.0>
   10514:	b7a1                	j	1045c <__sfp+0x1a>
   10516:	00092023          	sw	zero,0(s2)
   1051a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1051e:	2929                	jal	10938 <__retarget_lock_release_recursive>
   10520:	47b1                	li	a5,12
   10522:	00f9a023          	sw	a5,0(s3)
   10526:	b765                	j	104ce <__sfp+0x8c>

00010528 <__sinit>:
   10528:	1141                	addi	sp,sp,-16
   1052a:	c422                	sw	s0,8(sp)
   1052c:	842a                	mv	s0,a0
   1052e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10532:	c606                	sw	ra,12(sp)
   10534:	2ee5                	jal	1092c <__retarget_lock_acquire_recursive>
   10536:	585c                	lw	a5,52(s0)
   10538:	eb89                	bnez	a5,1054a <__sinit+0x22>
   1053a:	d501a783          	lw	a5,-688(gp) # 12560 <__stdio_exit_handler>
   1053e:	00000717          	auipc	a4,0x0
   10542:	d5470713          	addi	a4,a4,-684 # 10292 <cleanup_stdio>
   10546:	d858                	sw	a4,52(s0)
   10548:	c799                	beqz	a5,10556 <__sinit+0x2e>
   1054a:	4422                	lw	s0,8(sp)
   1054c:	40b2                	lw	ra,12(sp)
   1054e:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10552:	0141                	addi	sp,sp,16
   10554:	a6d5                	j	10938 <__retarget_lock_release_recursive>
   10556:	33e1                	jal	1031e <global_stdio_init.part.0>
   10558:	4422                	lw	s0,8(sp)
   1055a:	40b2                	lw	ra,12(sp)
   1055c:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10560:	0141                	addi	sp,sp,16
   10562:	aed9                	j	10938 <__retarget_lock_release_recursive>

00010564 <__sfp_lock_acquire>:
   10564:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10568:	a6d1                	j	1092c <__retarget_lock_acquire_recursive>

0001056a <__sfp_lock_release>:
   1056a:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   1056e:	a6e9                	j	10938 <__retarget_lock_release_recursive>

00010570 <__fp_lock_all>:
   10570:	1141                	addi	sp,sp,-16
   10572:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   10576:	c606                	sw	ra,12(sp)
   10578:	2e55                	jal	1092c <__retarget_lock_acquire_recursive>
   1057a:	40b2                	lw	ra,12(sp)
   1057c:	00002617          	auipc	a2,0x2
   10580:	a9460613          	addi	a2,a2,-1388 # 12010 <__sglue>
   10584:	00000597          	auipc	a1,0x0
   10588:	d5258593          	addi	a1,a1,-686 # 102d6 <__fp_lock>
   1058c:	4501                	li	a0,0
   1058e:	0141                	addi	sp,sp,16
   10590:	a015                	j	105b4 <_fwalk_sglue>

00010592 <__fp_unlock_all>:
   10592:	1141                	addi	sp,sp,-16
   10594:	00002617          	auipc	a2,0x2
   10598:	a7c60613          	addi	a2,a2,-1412 # 12010 <__sglue>
   1059c:	00000597          	auipc	a1,0x0
   105a0:	d5e58593          	addi	a1,a1,-674 # 102fa <__fp_unlock>
   105a4:	4501                	li	a0,0
   105a6:	c606                	sw	ra,12(sp)
   105a8:	2031                	jal	105b4 <_fwalk_sglue>
   105aa:	40b2                	lw	ra,12(sp)
   105ac:	d7418513          	addi	a0,gp,-652 # 12584 <__lock___sfp_recursive_mutex>
   105b0:	0141                	addi	sp,sp,16
   105b2:	a659                	j	10938 <__retarget_lock_release_recursive>

000105b4 <_fwalk_sglue>:
   105b4:	7179                	addi	sp,sp,-48
   105b6:	d04a                	sw	s2,32(sp)
   105b8:	ce4e                	sw	s3,28(sp)
   105ba:	cc52                	sw	s4,24(sp)
   105bc:	ca56                	sw	s5,20(sp)
   105be:	c85a                	sw	s6,16(sp)
   105c0:	c65e                	sw	s7,12(sp)
   105c2:	d606                	sw	ra,44(sp)
   105c4:	d422                	sw	s0,40(sp)
   105c6:	d226                	sw	s1,36(sp)
   105c8:	8b2a                	mv	s6,a0
   105ca:	8bae                	mv	s7,a1
   105cc:	8ab2                	mv	s5,a2
   105ce:	4a01                	li	s4,0
   105d0:	4985                	li	s3,1
   105d2:	597d                	li	s2,-1
   105d4:	004aa483          	lw	s1,4(s5)
   105d8:	008aa403          	lw	s0,8(s5)
   105dc:	14fd                	addi	s1,s1,-1
   105de:	0204c463          	bltz	s1,10606 <_fwalk_sglue+0x52>
   105e2:	00c45783          	lhu	a5,12(s0)
   105e6:	00f9fb63          	bgeu	s3,a5,105fc <_fwalk_sglue+0x48>
   105ea:	00e41783          	lh	a5,14(s0)
   105ee:	85a2                	mv	a1,s0
   105f0:	855a                	mv	a0,s6
   105f2:	01278563          	beq	a5,s2,105fc <_fwalk_sglue+0x48>
   105f6:	9b82                	jalr	s7
   105f8:	00aa6a33          	or	s4,s4,a0
   105fc:	14fd                	addi	s1,s1,-1
   105fe:	06840413          	addi	s0,s0,104
   10602:	ff2490e3          	bne	s1,s2,105e2 <_fwalk_sglue+0x2e>
   10606:	000aaa83          	lw	s5,0(s5)
   1060a:	fc0a95e3          	bnez	s5,105d4 <_fwalk_sglue+0x20>
   1060e:	50b2                	lw	ra,44(sp)
   10610:	5422                	lw	s0,40(sp)
   10612:	5492                	lw	s1,36(sp)
   10614:	5902                	lw	s2,32(sp)
   10616:	49f2                	lw	s3,28(sp)
   10618:	4ad2                	lw	s5,20(sp)
   1061a:	4b42                	lw	s6,16(sp)
   1061c:	4bb2                	lw	s7,12(sp)
   1061e:	8552                	mv	a0,s4
   10620:	4a62                	lw	s4,24(sp)
   10622:	6145                	addi	sp,sp,48
   10624:	8082                	ret

00010626 <__sread>:
   10626:	1141                	addi	sp,sp,-16
   10628:	c422                	sw	s0,8(sp)
   1062a:	842e                	mv	s0,a1
   1062c:	00e59583          	lh	a1,14(a1)
   10630:	c606                	sw	ra,12(sp)
   10632:	22c9                	jal	107f4 <_read_r>
   10634:	00054963          	bltz	a0,10646 <__sread+0x20>
   10638:	483c                	lw	a5,80(s0)
   1063a:	40b2                	lw	ra,12(sp)
   1063c:	97aa                	add	a5,a5,a0
   1063e:	c83c                	sw	a5,80(s0)
   10640:	4422                	lw	s0,8(sp)
   10642:	0141                	addi	sp,sp,16
   10644:	8082                	ret
   10646:	00c45783          	lhu	a5,12(s0)
   1064a:	777d                	lui	a4,0xfffff
   1064c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   1064e:	8ff9                	and	a5,a5,a4
   10650:	40b2                	lw	ra,12(sp)
   10652:	00f41623          	sh	a5,12(s0)
   10656:	4422                	lw	s0,8(sp)
   10658:	0141                	addi	sp,sp,16
   1065a:	8082                	ret

0001065c <__seofread>:
   1065c:	4501                	li	a0,0
   1065e:	8082                	ret

00010660 <__swrite>:
   10660:	00c59783          	lh	a5,12(a1)
   10664:	1101                	addi	sp,sp,-32
   10666:	cc22                	sw	s0,24(sp)
   10668:	ca26                	sw	s1,20(sp)
   1066a:	c84a                	sw	s2,16(sp)
   1066c:	c64e                	sw	s3,12(sp)
   1066e:	ce06                	sw	ra,28(sp)
   10670:	1007f713          	andi	a4,a5,256
   10674:	842e                	mv	s0,a1
   10676:	8932                	mv	s2,a2
   10678:	89b6                	mv	s3,a3
   1067a:	84aa                	mv	s1,a0
   1067c:	e315                	bnez	a4,106a0 <__swrite+0x40>
   1067e:	777d                	lui	a4,0xfffff
   10680:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   10682:	8ff9                	and	a5,a5,a4
   10684:	00e41583          	lh	a1,14(s0)
   10688:	00f41623          	sh	a5,12(s0)
   1068c:	4462                	lw	s0,24(sp)
   1068e:	40f2                	lw	ra,28(sp)
   10690:	86ce                	mv	a3,s3
   10692:	864a                	mv	a2,s2
   10694:	49b2                	lw	s3,12(sp)
   10696:	4942                	lw	s2,16(sp)
   10698:	8526                	mv	a0,s1
   1069a:	44d2                	lw	s1,20(sp)
   1069c:	6105                	addi	sp,sp,32
   1069e:	aa71                	j	1083a <_write_r>
   106a0:	00e59583          	lh	a1,14(a1)
   106a4:	4689                	li	a3,2
   106a6:	4601                	li	a2,0
   106a8:	2219                	jal	107ae <_lseek_r>
   106aa:	00c41783          	lh	a5,12(s0)
   106ae:	bfc1                	j	1067e <__swrite+0x1e>

000106b0 <__sseek>:
   106b0:	1141                	addi	sp,sp,-16
   106b2:	c422                	sw	s0,8(sp)
   106b4:	842e                	mv	s0,a1
   106b6:	00e59583          	lh	a1,14(a1)
   106ba:	c606                	sw	ra,12(sp)
   106bc:	28cd                	jal	107ae <_lseek_r>
   106be:	577d                	li	a4,-1
   106c0:	00c41783          	lh	a5,12(s0)
   106c4:	00e50b63          	beq	a0,a4,106da <__sseek+0x2a>
   106c8:	6705                	lui	a4,0x1
   106ca:	8fd9                	or	a5,a5,a4
   106cc:	40b2                	lw	ra,12(sp)
   106ce:	c828                	sw	a0,80(s0)
   106d0:	00f41623          	sh	a5,12(s0)
   106d4:	4422                	lw	s0,8(sp)
   106d6:	0141                	addi	sp,sp,16
   106d8:	8082                	ret
   106da:	777d                	lui	a4,0xfffff
   106dc:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffec75b>
   106de:	8ff9                	and	a5,a5,a4
   106e0:	40b2                	lw	ra,12(sp)
   106e2:	00f41623          	sh	a5,12(s0)
   106e6:	4422                	lw	s0,8(sp)
   106e8:	0141                	addi	sp,sp,16
   106ea:	8082                	ret

000106ec <__sclose>:
   106ec:	00e59583          	lh	a1,14(a1)
   106f0:	a009                	j	106f2 <_close_r>

000106f2 <_close_r>:
   106f2:	1141                	addi	sp,sp,-16
   106f4:	c422                	sw	s0,8(sp)
   106f6:	842a                	mv	s0,a0
   106f8:	852e                	mv	a0,a1
   106fa:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   106fe:	c606                	sw	ra,12(sp)
   10700:	0ee010ef          	jal	117ee <_close>
   10704:	57fd                	li	a5,-1
   10706:	00f50663          	beq	a0,a5,10712 <_close_r+0x20>
   1070a:	40b2                	lw	ra,12(sp)
   1070c:	4422                	lw	s0,8(sp)
   1070e:	0141                	addi	sp,sp,16
   10710:	8082                	ret
   10712:	c226                	sw	s1,4(sp)
   10714:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10718:	409c                	lw	a5,0(s1)
   1071a:	c799                	beqz	a5,10728 <_close_r+0x36>
   1071c:	40b2                	lw	ra,12(sp)
   1071e:	c01c                	sw	a5,0(s0)
   10720:	4422                	lw	s0,8(sp)
   10722:	4492                	lw	s1,4(sp)
   10724:	0141                	addi	sp,sp,16
   10726:	8082                	ret
   10728:	40b2                	lw	ra,12(sp)
   1072a:	4422                	lw	s0,8(sp)
   1072c:	4492                	lw	s1,4(sp)
   1072e:	0141                	addi	sp,sp,16
   10730:	8082                	ret

00010732 <_reclaim_reent>:
   10732:	d3c1a783          	lw	a5,-708(gp) # 1254c <_impure_ptr>
   10736:	06a78b63          	beq	a5,a0,107ac <_reclaim_reent+0x7a>
   1073a:	416c                	lw	a1,68(a0)
   1073c:	1101                	addi	sp,sp,-32
   1073e:	ca26                	sw	s1,20(sp)
   10740:	ce06                	sw	ra,28(sp)
   10742:	cc22                	sw	s0,24(sp)
   10744:	84aa                	mv	s1,a0
   10746:	c59d                	beqz	a1,10774 <_reclaim_reent+0x42>
   10748:	c84a                	sw	s2,16(sp)
   1074a:	c64e                	sw	s3,12(sp)
   1074c:	4901                	li	s2,0
   1074e:	08000993          	li	s3,128
   10752:	012587b3          	add	a5,a1,s2
   10756:	4380                	lw	s0,0(a5)
   10758:	c419                	beqz	s0,10766 <_reclaim_reent+0x34>
   1075a:	85a2                	mv	a1,s0
   1075c:	4000                	lw	s0,0(s0)
   1075e:	8526                	mv	a0,s1
   10760:	21d1                	jal	10c24 <_free_r>
   10762:	fc65                	bnez	s0,1075a <_reclaim_reent+0x28>
   10764:	40ec                	lw	a1,68(s1)
   10766:	0911                	addi	s2,s2,4
   10768:	ff3915e3          	bne	s2,s3,10752 <_reclaim_reent+0x20>
   1076c:	8526                	mv	a0,s1
   1076e:	295d                	jal	10c24 <_free_r>
   10770:	4942                	lw	s2,16(sp)
   10772:	49b2                	lw	s3,12(sp)
   10774:	5c8c                	lw	a1,56(s1)
   10776:	c199                	beqz	a1,1077c <_reclaim_reent+0x4a>
   10778:	8526                	mv	a0,s1
   1077a:	216d                	jal	10c24 <_free_r>
   1077c:	40a0                	lw	s0,64(s1)
   1077e:	c411                	beqz	s0,1078a <_reclaim_reent+0x58>
   10780:	85a2                	mv	a1,s0
   10782:	4000                	lw	s0,0(s0)
   10784:	8526                	mv	a0,s1
   10786:	2979                	jal	10c24 <_free_r>
   10788:	fc65                	bnez	s0,10780 <_reclaim_reent+0x4e>
   1078a:	44ec                	lw	a1,76(s1)
   1078c:	c199                	beqz	a1,10792 <_reclaim_reent+0x60>
   1078e:	8526                	mv	a0,s1
   10790:	2951                	jal	10c24 <_free_r>
   10792:	58dc                	lw	a5,52(s1)
   10794:	c799                	beqz	a5,107a2 <_reclaim_reent+0x70>
   10796:	4462                	lw	s0,24(sp)
   10798:	40f2                	lw	ra,28(sp)
   1079a:	8526                	mv	a0,s1
   1079c:	44d2                	lw	s1,20(sp)
   1079e:	6105                	addi	sp,sp,32
   107a0:	8782                	jr	a5
   107a2:	40f2                	lw	ra,28(sp)
   107a4:	4462                	lw	s0,24(sp)
   107a6:	44d2                	lw	s1,20(sp)
   107a8:	6105                	addi	sp,sp,32
   107aa:	8082                	ret
   107ac:	8082                	ret

000107ae <_lseek_r>:
   107ae:	1141                	addi	sp,sp,-16
   107b0:	872e                	mv	a4,a1
   107b2:	c422                	sw	s0,8(sp)
   107b4:	85b2                	mv	a1,a2
   107b6:	842a                	mv	s0,a0
   107b8:	8636                	mv	a2,a3
   107ba:	853a                	mv	a0,a4
   107bc:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   107c0:	c606                	sw	ra,12(sp)
   107c2:	076010ef          	jal	11838 <_lseek>
   107c6:	57fd                	li	a5,-1
   107c8:	00f50663          	beq	a0,a5,107d4 <_lseek_r+0x26>
   107cc:	40b2                	lw	ra,12(sp)
   107ce:	4422                	lw	s0,8(sp)
   107d0:	0141                	addi	sp,sp,16
   107d2:	8082                	ret
   107d4:	c226                	sw	s1,4(sp)
   107d6:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   107da:	409c                	lw	a5,0(s1)
   107dc:	c799                	beqz	a5,107ea <_lseek_r+0x3c>
   107de:	40b2                	lw	ra,12(sp)
   107e0:	c01c                	sw	a5,0(s0)
   107e2:	4422                	lw	s0,8(sp)
   107e4:	4492                	lw	s1,4(sp)
   107e6:	0141                	addi	sp,sp,16
   107e8:	8082                	ret
   107ea:	40b2                	lw	ra,12(sp)
   107ec:	4422                	lw	s0,8(sp)
   107ee:	4492                	lw	s1,4(sp)
   107f0:	0141                	addi	sp,sp,16
   107f2:	8082                	ret

000107f4 <_read_r>:
   107f4:	1141                	addi	sp,sp,-16
   107f6:	872e                	mv	a4,a1
   107f8:	c422                	sw	s0,8(sp)
   107fa:	85b2                	mv	a1,a2
   107fc:	842a                	mv	s0,a0
   107fe:	8636                	mv	a2,a3
   10800:	853a                	mv	a0,a4
   10802:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   10806:	c606                	sw	ra,12(sp)
   10808:	05a010ef          	jal	11862 <_read>
   1080c:	57fd                	li	a5,-1
   1080e:	00f50663          	beq	a0,a5,1081a <_read_r+0x26>
   10812:	40b2                	lw	ra,12(sp)
   10814:	4422                	lw	s0,8(sp)
   10816:	0141                	addi	sp,sp,16
   10818:	8082                	ret
   1081a:	c226                	sw	s1,4(sp)
   1081c:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10820:	409c                	lw	a5,0(s1)
   10822:	c799                	beqz	a5,10830 <_read_r+0x3c>
   10824:	40b2                	lw	ra,12(sp)
   10826:	c01c                	sw	a5,0(s0)
   10828:	4422                	lw	s0,8(sp)
   1082a:	4492                	lw	s1,4(sp)
   1082c:	0141                	addi	sp,sp,16
   1082e:	8082                	ret
   10830:	40b2                	lw	ra,12(sp)
   10832:	4422                	lw	s0,8(sp)
   10834:	4492                	lw	s1,4(sp)
   10836:	0141                	addi	sp,sp,16
   10838:	8082                	ret

0001083a <_write_r>:
   1083a:	1141                	addi	sp,sp,-16
   1083c:	872e                	mv	a4,a1
   1083e:	c422                	sw	s0,8(sp)
   10840:	85b2                	mv	a1,a2
   10842:	842a                	mv	s0,a0
   10844:	8636                	mv	a2,a3
   10846:	853a                	mv	a0,a4
   10848:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   1084c:	c606                	sw	ra,12(sp)
   1084e:	08c010ef          	jal	118da <_write>
   10852:	57fd                	li	a5,-1
   10854:	00f50663          	beq	a0,a5,10860 <_write_r+0x26>
   10858:	40b2                	lw	ra,12(sp)
   1085a:	4422                	lw	s0,8(sp)
   1085c:	0141                	addi	sp,sp,16
   1085e:	8082                	ret
   10860:	c226                	sw	s1,4(sp)
   10862:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   10866:	409c                	lw	a5,0(s1)
   10868:	c799                	beqz	a5,10876 <_write_r+0x3c>
   1086a:	40b2                	lw	ra,12(sp)
   1086c:	c01c                	sw	a5,0(s0)
   1086e:	4422                	lw	s0,8(sp)
   10870:	4492                	lw	s1,4(sp)
   10872:	0141                	addi	sp,sp,16
   10874:	8082                	ret
   10876:	40b2                	lw	ra,12(sp)
   10878:	4422                	lw	s0,8(sp)
   1087a:	4492                	lw	s1,4(sp)
   1087c:	0141                	addi	sp,sp,16
   1087e:	8082                	ret

00010880 <__libc_init_array>:
   10880:	1141                	addi	sp,sp,-16
   10882:	c422                	sw	s0,8(sp)
   10884:	c04a                	sw	s2,0(sp)
   10886:	00001797          	auipc	a5,0x1
   1088a:	77a78793          	addi	a5,a5,1914 # 12000 <__init_array_start>
   1088e:	00001417          	auipc	s0,0x1
   10892:	77240413          	addi	s0,s0,1906 # 12000 <__init_array_start>
   10896:	c606                	sw	ra,12(sp)
   10898:	c226                	sw	s1,4(sp)
   1089a:	40878933          	sub	s2,a5,s0
   1089e:	00878b63          	beq	a5,s0,108b4 <__libc_init_array+0x34>
   108a2:	40295913          	srai	s2,s2,0x2
   108a6:	4481                	li	s1,0
   108a8:	401c                	lw	a5,0(s0)
   108aa:	0485                	addi	s1,s1,1
   108ac:	0411                	addi	s0,s0,4
   108ae:	9782                	jalr	a5
   108b0:	ff24ece3          	bltu	s1,s2,108a8 <__libc_init_array+0x28>
   108b4:	00001797          	auipc	a5,0x1
   108b8:	75478793          	addi	a5,a5,1876 # 12008 <__do_global_dtors_aux_fini_array_entry>
   108bc:	00001417          	auipc	s0,0x1
   108c0:	74440413          	addi	s0,s0,1860 # 12000 <__init_array_start>
   108c4:	40878933          	sub	s2,a5,s0
   108c8:	40295913          	srai	s2,s2,0x2
   108cc:	00878963          	beq	a5,s0,108de <__libc_init_array+0x5e>
   108d0:	4481                	li	s1,0
   108d2:	401c                	lw	a5,0(s0)
   108d4:	0485                	addi	s1,s1,1
   108d6:	0411                	addi	s0,s0,4
   108d8:	9782                	jalr	a5
   108da:	ff24ece3          	bltu	s1,s2,108d2 <__libc_init_array+0x52>
   108de:	40b2                	lw	ra,12(sp)
   108e0:	4422                	lw	s0,8(sp)
   108e2:	4492                	lw	s1,4(sp)
   108e4:	4902                	lw	s2,0(sp)
   108e6:	0141                	addi	sp,sp,16
   108e8:	8082                	ret

000108ea <__libc_fini_array>:
   108ea:	1141                	addi	sp,sp,-16
   108ec:	c422                	sw	s0,8(sp)
   108ee:	00001797          	auipc	a5,0x1
   108f2:	71a78793          	addi	a5,a5,1818 # 12008 <__do_global_dtors_aux_fini_array_entry>
   108f6:	00001417          	auipc	s0,0x1
   108fa:	71640413          	addi	s0,s0,1814 # 1200c <__fini_array_end>
   108fe:	8c1d                	sub	s0,s0,a5
   10900:	c226                	sw	s1,4(sp)
   10902:	c606                	sw	ra,12(sp)
   10904:	40245493          	srai	s1,s0,0x2
   10908:	c881                	beqz	s1,10918 <__libc_fini_array+0x2e>
   1090a:	1471                	addi	s0,s0,-4
   1090c:	943e                	add	s0,s0,a5
   1090e:	401c                	lw	a5,0(s0)
   10910:	14fd                	addi	s1,s1,-1
   10912:	1471                	addi	s0,s0,-4
   10914:	9782                	jalr	a5
   10916:	fce5                	bnez	s1,1090e <__libc_fini_array+0x24>
   10918:	40b2                	lw	ra,12(sp)
   1091a:	4422                	lw	s0,8(sp)
   1091c:	4492                	lw	s1,4(sp)
   1091e:	0141                	addi	sp,sp,16
   10920:	8082                	ret

00010922 <__retarget_lock_init>:
   10922:	8082                	ret

00010924 <__retarget_lock_init_recursive>:
   10924:	8082                	ret

00010926 <__retarget_lock_close>:
   10926:	8082                	ret

00010928 <__retarget_lock_close_recursive>:
   10928:	8082                	ret

0001092a <__retarget_lock_acquire>:
   1092a:	8082                	ret

0001092c <__retarget_lock_acquire_recursive>:
   1092c:	8082                	ret

0001092e <__retarget_lock_try_acquire>:
   1092e:	4505                	li	a0,1
   10930:	8082                	ret

00010932 <__retarget_lock_try_acquire_recursive>:
   10932:	4505                	li	a0,1
   10934:	8082                	ret

00010936 <__retarget_lock_release>:
   10936:	8082                	ret

00010938 <__retarget_lock_release_recursive>:
   10938:	8082                	ret

0001093a <memset>:
   1093a:	433d                	li	t1,15
   1093c:	872a                	mv	a4,a0
   1093e:	02c37363          	bgeu	t1,a2,10964 <memset+0x2a>
   10942:	00f77793          	andi	a5,a4,15
   10946:	efbd                	bnez	a5,109c4 <memset+0x8a>
   10948:	e5ad                	bnez	a1,109b2 <memset+0x78>
   1094a:	ff067693          	andi	a3,a2,-16
   1094e:	8a3d                	andi	a2,a2,15
   10950:	96ba                	add	a3,a3,a4
   10952:	c30c                	sw	a1,0(a4)
   10954:	c34c                	sw	a1,4(a4)
   10956:	c70c                	sw	a1,8(a4)
   10958:	c74c                	sw	a1,12(a4)
   1095a:	0741                	addi	a4,a4,16
   1095c:	fed76be3          	bltu	a4,a3,10952 <memset+0x18>
   10960:	e211                	bnez	a2,10964 <memset+0x2a>
   10962:	8082                	ret
   10964:	40c306b3          	sub	a3,t1,a2
   10968:	068a                	slli	a3,a3,0x2
   1096a:	00000297          	auipc	t0,0x0
   1096e:	9696                	add	a3,a3,t0
   10970:	00a68067          	jr	10(a3)
   10974:	00b70723          	sb	a1,14(a4)
   10978:	00b706a3          	sb	a1,13(a4)
   1097c:	00b70623          	sb	a1,12(a4)
   10980:	00b705a3          	sb	a1,11(a4)
   10984:	00b70523          	sb	a1,10(a4)
   10988:	00b704a3          	sb	a1,9(a4)
   1098c:	00b70423          	sb	a1,8(a4)
   10990:	00b703a3          	sb	a1,7(a4)
   10994:	00b70323          	sb	a1,6(a4)
   10998:	00b702a3          	sb	a1,5(a4)
   1099c:	00b70223          	sb	a1,4(a4)
   109a0:	00b701a3          	sb	a1,3(a4)
   109a4:	00b70123          	sb	a1,2(a4)
   109a8:	00b700a3          	sb	a1,1(a4)
   109ac:	00b70023          	sb	a1,0(a4)
   109b0:	8082                	ret
   109b2:	0ff5f593          	zext.b	a1,a1
   109b6:	00859693          	slli	a3,a1,0x8
   109ba:	8dd5                	or	a1,a1,a3
   109bc:	01059693          	slli	a3,a1,0x10
   109c0:	8dd5                	or	a1,a1,a3
   109c2:	b761                	j	1094a <memset+0x10>
   109c4:	00279693          	slli	a3,a5,0x2
   109c8:	00000297          	auipc	t0,0x0
   109cc:	9696                	add	a3,a3,t0
   109ce:	8286                	mv	t0,ra
   109d0:	fa8680e7          	jalr	-88(a3)
   109d4:	8096                	mv	ra,t0
   109d6:	17c1                	addi	a5,a5,-16
   109d8:	8f1d                	sub	a4,a4,a5
   109da:	963e                	add	a2,a2,a5
   109dc:	f8c374e3          	bgeu	t1,a2,10964 <memset+0x2a>
   109e0:	b7a5                	j	10948 <memset+0xe>

000109e2 <__register_exitproc>:
   109e2:	1101                	addi	sp,sp,-32
   109e4:	c84a                	sw	s2,16(sp)
   109e6:	d4018913          	addi	s2,gp,-704 # 12550 <__atexit_recursive_mutex>
   109ea:	cc22                	sw	s0,24(sp)
   109ec:	842a                	mv	s0,a0
   109ee:	00092503          	lw	a0,0(s2)
   109f2:	ca26                	sw	s1,20(sp)
   109f4:	c64e                	sw	s3,12(sp)
   109f6:	c452                	sw	s4,8(sp)
   109f8:	ce06                	sw	ra,28(sp)
   109fa:	84ae                	mv	s1,a1
   109fc:	8a32                	mv	s4,a2
   109fe:	89b6                	mv	s3,a3
   10a00:	3735                	jal	1092c <__retarget_lock_acquire_recursive>
   10a02:	d7818713          	addi	a4,gp,-648 # 12588 <__atexit>
   10a06:	431c                	lw	a5,0(a4)
   10a08:	cfb9                	beqz	a5,10a66 <__register_exitproc+0x84>
   10a0a:	43d8                	lw	a4,4(a5)
   10a0c:	45fd                	li	a1,31
   10a0e:	00092503          	lw	a0,0(s2)
   10a12:	04e5ce63          	blt	a1,a4,10a6e <__register_exitproc+0x8c>
   10a16:	00271593          	slli	a1,a4,0x2
   10a1a:	ec19                	bnez	s0,10a38 <__register_exitproc+0x56>
   10a1c:	0705                	addi	a4,a4,1
   10a1e:	c3d8                	sw	a4,4(a5)
   10a20:	97ae                	add	a5,a5,a1
   10a22:	c784                	sw	s1,8(a5)
   10a24:	3f11                	jal	10938 <__retarget_lock_release_recursive>
   10a26:	4501                	li	a0,0
   10a28:	40f2                	lw	ra,28(sp)
   10a2a:	4462                	lw	s0,24(sp)
   10a2c:	44d2                	lw	s1,20(sp)
   10a2e:	4942                	lw	s2,16(sp)
   10a30:	49b2                	lw	s3,12(sp)
   10a32:	4a22                	lw	s4,8(sp)
   10a34:	6105                	addi	sp,sp,32
   10a36:	8082                	ret
   10a38:	00b78833          	add	a6,a5,a1
   10a3c:	09482423          	sw	s4,136(a6)
   10a40:	1887a683          	lw	a3,392(a5)
   10a44:	4605                	li	a2,1
   10a46:	00e61633          	sll	a2,a2,a4
   10a4a:	8ed1                	or	a3,a3,a2
   10a4c:	18d7a423          	sw	a3,392(a5)
   10a50:	11382423          	sw	s3,264(a6)
   10a54:	4689                	li	a3,2
   10a56:	fcd413e3          	bne	s0,a3,10a1c <__register_exitproc+0x3a>
   10a5a:	18c7a683          	lw	a3,396(a5)
   10a5e:	8ed1                	or	a3,a3,a2
   10a60:	18d7a623          	sw	a3,396(a5)
   10a64:	bf65                	j	10a1c <__register_exitproc+0x3a>
   10a66:	edc18793          	addi	a5,gp,-292 # 126ec <__atexit0>
   10a6a:	c31c                	sw	a5,0(a4)
   10a6c:	bf79                	j	10a0a <__register_exitproc+0x28>
   10a6e:	35e9                	jal	10938 <__retarget_lock_release_recursive>
   10a70:	557d                	li	a0,-1
   10a72:	bf5d                	j	10a28 <__register_exitproc+0x46>

00010a74 <__call_exitprocs>:
   10a74:	7179                	addi	sp,sp,-48
   10a76:	c65e                	sw	s7,12(sp)
   10a78:	d4018b93          	addi	s7,gp,-704 # 12550 <__atexit_recursive_mutex>
   10a7c:	c85a                	sw	s6,16(sp)
   10a7e:	8b2a                	mv	s6,a0
   10a80:	000ba503          	lw	a0,0(s7)
   10a84:	cc52                	sw	s4,24(sp)
   10a86:	d7818a13          	addi	s4,gp,-648 # 12588 <__atexit>
   10a8a:	d04a                	sw	s2,32(sp)
   10a8c:	c462                	sw	s8,8(sp)
   10a8e:	d606                	sw	ra,44(sp)
   10a90:	8c2e                	mv	s8,a1
   10a92:	3d69                	jal	1092c <__retarget_lock_acquire_recursive>
   10a94:	000a2903          	lw	s2,0(s4)
   10a98:	04090063          	beqz	s2,10ad8 <__call_exitprocs+0x64>
   10a9c:	ce4e                	sw	s3,28(sp)
   10a9e:	ca56                	sw	s5,20(sp)
   10aa0:	d422                	sw	s0,40(sp)
   10aa2:	d226                	sw	s1,36(sp)
   10aa4:	c266                	sw	s9,4(sp)
   10aa6:	59fd                	li	s3,-1
   10aa8:	4a85                	li	s5,1
   10aaa:	00492483          	lw	s1,4(s2)
   10aae:	fff48413          	addi	s0,s1,-1
   10ab2:	00044e63          	bltz	s0,10ace <__call_exitprocs+0x5a>
   10ab6:	048a                	slli	s1,s1,0x2
   10ab8:	94ca                	add	s1,s1,s2
   10aba:	020c0963          	beqz	s8,10aec <__call_exitprocs+0x78>
   10abe:	1044a783          	lw	a5,260(s1)
   10ac2:	03878563          	beq	a5,s8,10aec <__call_exitprocs+0x78>
   10ac6:	147d                	addi	s0,s0,-1
   10ac8:	14f1                	addi	s1,s1,-4
   10aca:	ff341ae3          	bne	s0,s3,10abe <__call_exitprocs+0x4a>
   10ace:	5422                	lw	s0,40(sp)
   10ad0:	5492                	lw	s1,36(sp)
   10ad2:	49f2                	lw	s3,28(sp)
   10ad4:	4ad2                	lw	s5,20(sp)
   10ad6:	4c92                	lw	s9,4(sp)
   10ad8:	000ba503          	lw	a0,0(s7)
   10adc:	50b2                	lw	ra,44(sp)
   10ade:	5902                	lw	s2,32(sp)
   10ae0:	4a62                	lw	s4,24(sp)
   10ae2:	4b42                	lw	s6,16(sp)
   10ae4:	4bb2                	lw	s7,12(sp)
   10ae6:	4c22                	lw	s8,8(sp)
   10ae8:	6145                	addi	sp,sp,48
   10aea:	b5b9                	j	10938 <__retarget_lock_release_recursive>
   10aec:	00492783          	lw	a5,4(s2)
   10af0:	40d4                	lw	a3,4(s1)
   10af2:	17fd                	addi	a5,a5,-1
   10af4:	04878c63          	beq	a5,s0,10b4c <__call_exitprocs+0xd8>
   10af8:	0004a223          	sw	zero,4(s1)
   10afc:	c295                	beqz	a3,10b20 <__call_exitprocs+0xac>
   10afe:	18892783          	lw	a5,392(s2)
   10b02:	008a9733          	sll	a4,s5,s0
   10b06:	00492c83          	lw	s9,4(s2)
   10b0a:	8ff9                	and	a5,a5,a4
   10b0c:	ef99                	bnez	a5,10b2a <__call_exitprocs+0xb6>
   10b0e:	9682                	jalr	a3
   10b10:	00492703          	lw	a4,4(s2)
   10b14:	000a2783          	lw	a5,0(s4)
   10b18:	03971763          	bne	a4,s9,10b46 <__call_exitprocs+0xd2>
   10b1c:	03279563          	bne	a5,s2,10b46 <__call_exitprocs+0xd2>
   10b20:	147d                	addi	s0,s0,-1
   10b22:	14f1                	addi	s1,s1,-4
   10b24:	f9341be3          	bne	s0,s3,10aba <__call_exitprocs+0x46>
   10b28:	b75d                	j	10ace <__call_exitprocs+0x5a>
   10b2a:	18c92783          	lw	a5,396(s2)
   10b2e:	0844a583          	lw	a1,132(s1)
   10b32:	8f7d                	and	a4,a4,a5
   10b34:	ef19                	bnez	a4,10b52 <__call_exitprocs+0xde>
   10b36:	855a                	mv	a0,s6
   10b38:	9682                	jalr	a3
   10b3a:	00492703          	lw	a4,4(s2)
   10b3e:	000a2783          	lw	a5,0(s4)
   10b42:	fd970de3          	beq	a4,s9,10b1c <__call_exitprocs+0xa8>
   10b46:	d7c1                	beqz	a5,10ace <__call_exitprocs+0x5a>
   10b48:	893e                	mv	s2,a5
   10b4a:	b785                	j	10aaa <__call_exitprocs+0x36>
   10b4c:	00892223          	sw	s0,4(s2)
   10b50:	b775                	j	10afc <__call_exitprocs+0x88>
   10b52:	852e                	mv	a0,a1
   10b54:	9682                	jalr	a3
   10b56:	bf6d                	j	10b10 <__call_exitprocs+0x9c>

00010b58 <_malloc_trim_r>:
   10b58:	1101                	addi	sp,sp,-32
   10b5a:	cc22                	sw	s0,24(sp)
   10b5c:	ca26                	sw	s1,20(sp)
   10b5e:	c84a                	sw	s2,16(sp)
   10b60:	c64e                	sw	s3,12(sp)
   10b62:	c452                	sw	s4,8(sp)
   10b64:	89ae                	mv	s3,a1
   10b66:	ce06                	sw	ra,28(sp)
   10b68:	892a                	mv	s2,a0
   10b6a:	00001a17          	auipc	s4,0x1
   10b6e:	5d6a0a13          	addi	s4,s4,1494 # 12140 <__malloc_av_>
   10b72:	0a3000ef          	jal	11414 <__malloc_lock>
   10b76:	008a2783          	lw	a5,8(s4)
   10b7a:	6405                	lui	s0,0x1
   10b7c:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   10b7e:	43c4                	lw	s1,4(a5)
   10b80:	6785                	lui	a5,0x1
   10b82:	98f1                	andi	s1,s1,-4
   10b84:	9426                	add	s0,s0,s1
   10b86:	41340433          	sub	s0,s0,s3
   10b8a:	8031                	srli	s0,s0,0xc
   10b8c:	147d                	addi	s0,s0,-1
   10b8e:	0432                	slli	s0,s0,0xc
   10b90:	00f44b63          	blt	s0,a5,10ba6 <_malloc_trim_r+0x4e>
   10b94:	4581                	li	a1,0
   10b96:	854a                	mv	a0,s2
   10b98:	419000ef          	jal	117b0 <_sbrk_r>
   10b9c:	008a2783          	lw	a5,8(s4)
   10ba0:	97a6                	add	a5,a5,s1
   10ba2:	00f50e63          	beq	a0,a5,10bbe <_malloc_trim_r+0x66>
   10ba6:	854a                	mv	a0,s2
   10ba8:	075000ef          	jal	1141c <__malloc_unlock>
   10bac:	40f2                	lw	ra,28(sp)
   10bae:	4462                	lw	s0,24(sp)
   10bb0:	44d2                	lw	s1,20(sp)
   10bb2:	4942                	lw	s2,16(sp)
   10bb4:	49b2                	lw	s3,12(sp)
   10bb6:	4a22                	lw	s4,8(sp)
   10bb8:	4501                	li	a0,0
   10bba:	6105                	addi	sp,sp,32
   10bbc:	8082                	ret
   10bbe:	408005b3          	neg	a1,s0
   10bc2:	854a                	mv	a0,s2
   10bc4:	3ed000ef          	jal	117b0 <_sbrk_r>
   10bc8:	57fd                	li	a5,-1
   10bca:	02f50963          	beq	a0,a5,10bfc <_malloc_trim_r+0xa4>
   10bce:	06c18713          	addi	a4,gp,108 # 1287c <__malloc_current_mallinfo>
   10bd2:	008a2683          	lw	a3,8(s4)
   10bd6:	431c                	lw	a5,0(a4)
   10bd8:	8c81                	sub	s1,s1,s0
   10bda:	0014e493          	ori	s1,s1,1
   10bde:	854a                	mv	a0,s2
   10be0:	8f81                	sub	a5,a5,s0
   10be2:	c2c4                	sw	s1,4(a3)
   10be4:	c31c                	sw	a5,0(a4)
   10be6:	037000ef          	jal	1141c <__malloc_unlock>
   10bea:	40f2                	lw	ra,28(sp)
   10bec:	4462                	lw	s0,24(sp)
   10bee:	44d2                	lw	s1,20(sp)
   10bf0:	4942                	lw	s2,16(sp)
   10bf2:	49b2                	lw	s3,12(sp)
   10bf4:	4a22                	lw	s4,8(sp)
   10bf6:	4505                	li	a0,1
   10bf8:	6105                	addi	sp,sp,32
   10bfa:	8082                	ret
   10bfc:	4581                	li	a1,0
   10bfe:	854a                	mv	a0,s2
   10c00:	3b1000ef          	jal	117b0 <_sbrk_r>
   10c04:	008a2703          	lw	a4,8(s4)
   10c08:	46bd                	li	a3,15
   10c0a:	40e507b3          	sub	a5,a0,a4
   10c0e:	f8f6dce3          	bge	a3,a5,10ba6 <_malloc_trim_r+0x4e>
   10c12:	d441a683          	lw	a3,-700(gp) # 12554 <__malloc_sbrk_base>
   10c16:	0017e793          	ori	a5,a5,1
   10c1a:	c35c                	sw	a5,4(a4)
   10c1c:	8d15                	sub	a0,a0,a3
   10c1e:	06a1a623          	sw	a0,108(gp) # 1287c <__malloc_current_mallinfo>
   10c22:	b751                	j	10ba6 <_malloc_trim_r+0x4e>

00010c24 <_free_r>:
   10c24:	cdf1                	beqz	a1,10d00 <_free_r+0xdc>
   10c26:	1141                	addi	sp,sp,-16
   10c28:	c422                	sw	s0,8(sp)
   10c2a:	c226                	sw	s1,4(sp)
   10c2c:	842e                	mv	s0,a1
   10c2e:	84aa                	mv	s1,a0
   10c30:	c606                	sw	ra,12(sp)
   10c32:	7e2000ef          	jal	11414 <__malloc_lock>
   10c36:	ffc42583          	lw	a1,-4(s0)
   10c3a:	ff840713          	addi	a4,s0,-8
   10c3e:	00001817          	auipc	a6,0x1
   10c42:	50280813          	addi	a6,a6,1282 # 12140 <__malloc_av_>
   10c46:	ffe5f793          	andi	a5,a1,-2
   10c4a:	00f70633          	add	a2,a4,a5
   10c4e:	4254                	lw	a3,4(a2)
   10c50:	00882503          	lw	a0,8(a6)
   10c54:	0015f893          	andi	a7,a1,1
   10c58:	9af1                	andi	a3,a3,-4
   10c5a:	10c50d63          	beq	a0,a2,10d74 <_free_r+0x150>
   10c5e:	c254                	sw	a3,4(a2)
   10c60:	00d60533          	add	a0,a2,a3
   10c64:	4148                	lw	a0,4(a0)
   10c66:	8905                	andi	a0,a0,1
   10c68:	06089963          	bnez	a7,10cda <_free_r+0xb6>
   10c6c:	ff842303          	lw	t1,-8(s0)
   10c70:	00001897          	auipc	a7,0x1
   10c74:	4d888893          	addi	a7,a7,1240 # 12148 <__malloc_av_+0x8>
   10c78:	40670733          	sub	a4,a4,t1
   10c7c:	470c                	lw	a1,8(a4)
   10c7e:	979a                	add	a5,a5,t1
   10c80:	0d158e63          	beq	a1,a7,10d5c <_free_r+0x138>
   10c84:	00c72303          	lw	t1,12(a4)
   10c88:	0065a623          	sw	t1,12(a1)
   10c8c:	00b32423          	sw	a1,8(t1) # 10166 <frame_dummy+0x1a>
   10c90:	10050b63          	beqz	a0,10da6 <_free_r+0x182>
   10c94:	0017e693          	ori	a3,a5,1
   10c98:	c354                	sw	a3,4(a4)
   10c9a:	c21c                	sw	a5,0(a2)
   10c9c:	1ff00693          	li	a3,511
   10ca0:	06f6ea63          	bltu	a3,a5,10d14 <_free_r+0xf0>
   10ca4:	ff87f693          	andi	a3,a5,-8
   10ca8:	06a1                	addi	a3,a3,8
   10caa:	00482583          	lw	a1,4(a6)
   10cae:	96c2                	add	a3,a3,a6
   10cb0:	4290                	lw	a2,0(a3)
   10cb2:	0057d513          	srli	a0,a5,0x5
   10cb6:	4785                	li	a5,1
   10cb8:	00a797b3          	sll	a5,a5,a0
   10cbc:	8fcd                	or	a5,a5,a1
   10cbe:	ff868593          	addi	a1,a3,-8
   10cc2:	c710                	sw	a2,8(a4)
   10cc4:	c74c                	sw	a1,12(a4)
   10cc6:	00f82223          	sw	a5,4(a6)
   10cca:	c298                	sw	a4,0(a3)
   10ccc:	c658                	sw	a4,12(a2)
   10cce:	4422                	lw	s0,8(sp)
   10cd0:	40b2                	lw	ra,12(sp)
   10cd2:	8526                	mv	a0,s1
   10cd4:	4492                	lw	s1,4(sp)
   10cd6:	0141                	addi	sp,sp,16
   10cd8:	a791                	j	1141c <__malloc_unlock>
   10cda:	e505                	bnez	a0,10d02 <_free_r+0xde>
   10cdc:	97b6                	add	a5,a5,a3
   10cde:	00001897          	auipc	a7,0x1
   10ce2:	46a88893          	addi	a7,a7,1130 # 12148 <__malloc_av_+0x8>
   10ce6:	4614                	lw	a3,8(a2)
   10ce8:	0017e513          	ori	a0,a5,1
   10cec:	00f705b3          	add	a1,a4,a5
   10cf0:	0f168763          	beq	a3,a7,10dde <_free_r+0x1ba>
   10cf4:	4650                	lw	a2,12(a2)
   10cf6:	c6d0                	sw	a2,12(a3)
   10cf8:	c614                	sw	a3,8(a2)
   10cfa:	c348                	sw	a0,4(a4)
   10cfc:	c19c                	sw	a5,0(a1)
   10cfe:	bf79                	j	10c9c <_free_r+0x78>
   10d00:	8082                	ret
   10d02:	0015e593          	ori	a1,a1,1
   10d06:	feb42e23          	sw	a1,-4(s0)
   10d0a:	c21c                	sw	a5,0(a2)
   10d0c:	1ff00693          	li	a3,511
   10d10:	f8f6fae3          	bgeu	a3,a5,10ca4 <_free_r+0x80>
   10d14:	0097d693          	srli	a3,a5,0x9
   10d18:	4611                	li	a2,4
   10d1a:	08d66863          	bltu	a2,a3,10daa <_free_r+0x186>
   10d1e:	0067d693          	srli	a3,a5,0x6
   10d22:	03968593          	addi	a1,a3,57
   10d26:	058e                	slli	a1,a1,0x3
   10d28:	03868613          	addi	a2,a3,56
   10d2c:	95c2                	add	a1,a1,a6
   10d2e:	4194                	lw	a3,0(a1)
   10d30:	15e1                	addi	a1,a1,-8
   10d32:	00d59663          	bne	a1,a3,10d3e <_free_r+0x11a>
   10d36:	a87d                	j	10df4 <_free_r+0x1d0>
   10d38:	4694                	lw	a3,8(a3)
   10d3a:	00d58663          	beq	a1,a3,10d46 <_free_r+0x122>
   10d3e:	42d0                	lw	a2,4(a3)
   10d40:	9a71                	andi	a2,a2,-4
   10d42:	fec7ebe3          	bltu	a5,a2,10d38 <_free_r+0x114>
   10d46:	46cc                	lw	a1,12(a3)
   10d48:	c74c                	sw	a1,12(a4)
   10d4a:	c714                	sw	a3,8(a4)
   10d4c:	4422                	lw	s0,8(sp)
   10d4e:	40b2                	lw	ra,12(sp)
   10d50:	c598                	sw	a4,8(a1)
   10d52:	8526                	mv	a0,s1
   10d54:	4492                	lw	s1,4(sp)
   10d56:	c6d8                	sw	a4,12(a3)
   10d58:	0141                	addi	sp,sp,16
   10d5a:	a5c9                	j	1141c <__malloc_unlock>
   10d5c:	e535                	bnez	a0,10dc8 <_free_r+0x1a4>
   10d5e:	464c                	lw	a1,12(a2)
   10d60:	4610                	lw	a2,8(a2)
   10d62:	96be                	add	a3,a3,a5
   10d64:	0016e793          	ori	a5,a3,1
   10d68:	c64c                	sw	a1,12(a2)
   10d6a:	c590                	sw	a2,8(a1)
   10d6c:	c35c                	sw	a5,4(a4)
   10d6e:	9736                	add	a4,a4,a3
   10d70:	c314                	sw	a3,0(a4)
   10d72:	bfb1                	j	10cce <_free_r+0xaa>
   10d74:	96be                	add	a3,a3,a5
   10d76:	00089a63          	bnez	a7,10d8a <_free_r+0x166>
   10d7a:	ff842583          	lw	a1,-8(s0)
   10d7e:	8f0d                	sub	a4,a4,a1
   10d80:	475c                	lw	a5,12(a4)
   10d82:	4710                	lw	a2,8(a4)
   10d84:	96ae                	add	a3,a3,a1
   10d86:	c65c                	sw	a5,12(a2)
   10d88:	c790                	sw	a2,8(a5)
   10d8a:	0016e613          	ori	a2,a3,1
   10d8e:	d481a783          	lw	a5,-696(gp) # 12558 <__malloc_trim_threshold>
   10d92:	c350                	sw	a2,4(a4)
   10d94:	00e82423          	sw	a4,8(a6)
   10d98:	f2f6ebe3          	bltu	a3,a5,10cce <_free_r+0xaa>
   10d9c:	d841a583          	lw	a1,-636(gp) # 12594 <__malloc_top_pad>
   10da0:	8526                	mv	a0,s1
   10da2:	3b5d                	jal	10b58 <_malloc_trim_r>
   10da4:	b72d                	j	10cce <_free_r+0xaa>
   10da6:	97b6                	add	a5,a5,a3
   10da8:	bf3d                	j	10ce6 <_free_r+0xc2>
   10daa:	4651                	li	a2,20
   10dac:	02d67363          	bgeu	a2,a3,10dd2 <_free_r+0x1ae>
   10db0:	05400613          	li	a2,84
   10db4:	04d66a63          	bltu	a2,a3,10e08 <_free_r+0x1e4>
   10db8:	00c7d693          	srli	a3,a5,0xc
   10dbc:	06f68593          	addi	a1,a3,111
   10dc0:	058e                	slli	a1,a1,0x3
   10dc2:	06e68613          	addi	a2,a3,110
   10dc6:	b79d                	j	10d2c <_free_r+0x108>
   10dc8:	0017e693          	ori	a3,a5,1
   10dcc:	c354                	sw	a3,4(a4)
   10dce:	c21c                	sw	a5,0(a2)
   10dd0:	bdfd                	j	10cce <_free_r+0xaa>
   10dd2:	05c68593          	addi	a1,a3,92
   10dd6:	058e                	slli	a1,a1,0x3
   10dd8:	05b68613          	addi	a2,a3,91
   10ddc:	bf81                	j	10d2c <_free_r+0x108>
   10dde:	00e82a23          	sw	a4,20(a6)
   10de2:	00e82823          	sw	a4,16(a6)
   10de6:	01172623          	sw	a7,12(a4)
   10dea:	01172423          	sw	a7,8(a4)
   10dee:	c348                	sw	a0,4(a4)
   10df0:	c19c                	sw	a5,0(a1)
   10df2:	bdf1                	j	10cce <_free_r+0xaa>
   10df4:	00482503          	lw	a0,4(a6)
   10df8:	8609                	srai	a2,a2,0x2
   10dfa:	4785                	li	a5,1
   10dfc:	00c797b3          	sll	a5,a5,a2
   10e00:	8fc9                	or	a5,a5,a0
   10e02:	00f82223          	sw	a5,4(a6)
   10e06:	b789                	j	10d48 <_free_r+0x124>
   10e08:	15400613          	li	a2,340
   10e0c:	00d66a63          	bltu	a2,a3,10e20 <_free_r+0x1fc>
   10e10:	00f7d693          	srli	a3,a5,0xf
   10e14:	07868593          	addi	a1,a3,120
   10e18:	058e                	slli	a1,a1,0x3
   10e1a:	07768613          	addi	a2,a3,119
   10e1e:	b739                	j	10d2c <_free_r+0x108>
   10e20:	55400613          	li	a2,1364
   10e24:	00d66a63          	bltu	a2,a3,10e38 <_free_r+0x214>
   10e28:	0127d693          	srli	a3,a5,0x12
   10e2c:	07d68593          	addi	a1,a3,125
   10e30:	058e                	slli	a1,a1,0x3
   10e32:	07c68613          	addi	a2,a3,124
   10e36:	bddd                	j	10d2c <_free_r+0x108>
   10e38:	3f800593          	li	a1,1016
   10e3c:	07e00613          	li	a2,126
   10e40:	b5f5                	j	10d2c <_free_r+0x108>

00010e42 <_malloc_r>:
   10e42:	7179                	addi	sp,sp,-48
   10e44:	d04a                	sw	s2,32(sp)
   10e46:	d606                	sw	ra,44(sp)
   10e48:	d422                	sw	s0,40(sp)
   10e4a:	d226                	sw	s1,36(sp)
   10e4c:	ce4e                	sw	s3,28(sp)
   10e4e:	00b58793          	addi	a5,a1,11
   10e52:	4759                	li	a4,22
   10e54:	892a                	mv	s2,a0
   10e56:	04f76863          	bltu	a4,a5,10ea6 <_malloc_r+0x64>
   10e5a:	44c1                	li	s1,16
   10e5c:	16b4ea63          	bltu	s1,a1,10fd0 <_malloc_r+0x18e>
   10e60:	2b55                	jal	11414 <__malloc_lock>
   10e62:	47e1                	li	a5,24
   10e64:	4589                	li	a1,2
   10e66:	00001997          	auipc	s3,0x1
   10e6a:	2da98993          	addi	s3,s3,730 # 12140 <__malloc_av_>
   10e6e:	97ce                	add	a5,a5,s3
   10e70:	43c0                	lw	s0,4(a5)
   10e72:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   10e76:	30e40963          	beq	s0,a4,11188 <_malloc_r+0x346>
   10e7a:	405c                	lw	a5,4(s0)
   10e7c:	4454                	lw	a3,12(s0)
   10e7e:	4410                	lw	a2,8(s0)
   10e80:	9bf1                	andi	a5,a5,-4
   10e82:	97a2                	add	a5,a5,s0
   10e84:	43d8                	lw	a4,4(a5)
   10e86:	c654                	sw	a3,12(a2)
   10e88:	c690                	sw	a2,8(a3)
   10e8a:	00176713          	ori	a4,a4,1
   10e8e:	854a                	mv	a0,s2
   10e90:	c3d8                	sw	a4,4(a5)
   10e92:	2369                	jal	1141c <__malloc_unlock>
   10e94:	50b2                	lw	ra,44(sp)
   10e96:	00840513          	addi	a0,s0,8
   10e9a:	5422                	lw	s0,40(sp)
   10e9c:	5492                	lw	s1,36(sp)
   10e9e:	5902                	lw	s2,32(sp)
   10ea0:	49f2                	lw	s3,28(sp)
   10ea2:	6145                	addi	sp,sp,48
   10ea4:	8082                	ret
   10ea6:	ff87f493          	andi	s1,a5,-8
   10eaa:	1207c363          	bltz	a5,10fd0 <_malloc_r+0x18e>
   10eae:	12b4e163          	bltu	s1,a1,10fd0 <_malloc_r+0x18e>
   10eb2:	238d                	jal	11414 <__malloc_lock>
   10eb4:	1f700793          	li	a5,503
   10eb8:	3897f763          	bgeu	a5,s1,11246 <_malloc_r+0x404>
   10ebc:	0094d793          	srli	a5,s1,0x9
   10ec0:	12078363          	beqz	a5,10fe6 <_malloc_r+0x1a4>
   10ec4:	4711                	li	a4,4
   10ec6:	30f76663          	bltu	a4,a5,111d2 <_malloc_r+0x390>
   10eca:	0064d793          	srli	a5,s1,0x6
   10ece:	03978593          	addi	a1,a5,57
   10ed2:	03878813          	addi	a6,a5,56
   10ed6:	00359613          	slli	a2,a1,0x3
   10eda:	00001997          	auipc	s3,0x1
   10ede:	26698993          	addi	s3,s3,614 # 12140 <__malloc_av_>
   10ee2:	964e                	add	a2,a2,s3
   10ee4:	4240                	lw	s0,4(a2)
   10ee6:	1661                	addi	a2,a2,-8
   10ee8:	02860163          	beq	a2,s0,10f0a <_malloc_r+0xc8>
   10eec:	453d                	li	a0,15
   10eee:	a039                	j	10efc <_malloc_r+0xba>
   10ef0:	4454                	lw	a3,12(s0)
   10ef2:	26075863          	bgez	a4,11162 <_malloc_r+0x320>
   10ef6:	00d60a63          	beq	a2,a3,10f0a <_malloc_r+0xc8>
   10efa:	8436                	mv	s0,a3
   10efc:	405c                	lw	a5,4(s0)
   10efe:	9bf1                	andi	a5,a5,-4
   10f00:	40978733          	sub	a4,a5,s1
   10f04:	fee556e3          	bge	a0,a4,10ef0 <_malloc_r+0xae>
   10f08:	85c2                	mv	a1,a6
   10f0a:	0109a403          	lw	s0,16(s3)
   10f0e:	00001897          	auipc	a7,0x1
   10f12:	23a88893          	addi	a7,a7,570 # 12148 <__malloc_av_+0x8>
   10f16:	1f140c63          	beq	s0,a7,1110e <_malloc_r+0x2cc>
   10f1a:	405c                	lw	a5,4(s0)
   10f1c:	46bd                	li	a3,15
   10f1e:	9bf1                	andi	a5,a5,-4
   10f20:	40978733          	sub	a4,a5,s1
   10f24:	32e6c663          	blt	a3,a4,11250 <_malloc_r+0x40e>
   10f28:	0119aa23          	sw	a7,20(s3)
   10f2c:	0119a823          	sw	a7,16(s3)
   10f30:	30075163          	bgez	a4,11232 <_malloc_r+0x3f0>
   10f34:	1ff00713          	li	a4,511
   10f38:	0049a503          	lw	a0,4(s3)
   10f3c:	24f76b63          	bltu	a4,a5,11192 <_malloc_r+0x350>
   10f40:	ff87f713          	andi	a4,a5,-8
   10f44:	0721                	addi	a4,a4,8
   10f46:	974e                	add	a4,a4,s3
   10f48:	4314                	lw	a3,0(a4)
   10f4a:	0057d613          	srli	a2,a5,0x5
   10f4e:	4785                	li	a5,1
   10f50:	00c797b3          	sll	a5,a5,a2
   10f54:	8d5d                	or	a0,a0,a5
   10f56:	ff870793          	addi	a5,a4,-8
   10f5a:	c414                	sw	a3,8(s0)
   10f5c:	c45c                	sw	a5,12(s0)
   10f5e:	00a9a223          	sw	a0,4(s3)
   10f62:	c300                	sw	s0,0(a4)
   10f64:	c6c0                	sw	s0,12(a3)
   10f66:	4025d793          	srai	a5,a1,0x2
   10f6a:	4605                	li	a2,1
   10f6c:	00f61633          	sll	a2,a2,a5
   10f70:	08c56263          	bltu	a0,a2,10ff4 <_malloc_r+0x1b2>
   10f74:	00a677b3          	and	a5,a2,a0
   10f78:	ef81                	bnez	a5,10f90 <_malloc_r+0x14e>
   10f7a:	0606                	slli	a2,a2,0x1
   10f7c:	99f1                	andi	a1,a1,-4
   10f7e:	00a677b3          	and	a5,a2,a0
   10f82:	0591                	addi	a1,a1,4
   10f84:	e791                	bnez	a5,10f90 <_malloc_r+0x14e>
   10f86:	0606                	slli	a2,a2,0x1
   10f88:	00a677b3          	and	a5,a2,a0
   10f8c:	0591                	addi	a1,a1,4
   10f8e:	dfe5                	beqz	a5,10f86 <_malloc_r+0x144>
   10f90:	483d                	li	a6,15
   10f92:	00359313          	slli	t1,a1,0x3
   10f96:	934e                	add	t1,t1,s3
   10f98:	851a                	mv	a0,t1
   10f9a:	455c                	lw	a5,12(a0)
   10f9c:	8e2e                	mv	t3,a1
   10f9e:	24f50a63          	beq	a0,a5,111f2 <_malloc_r+0x3b0>
   10fa2:	43d8                	lw	a4,4(a5)
   10fa4:	843e                	mv	s0,a5
   10fa6:	47dc                	lw	a5,12(a5)
   10fa8:	9b71                	andi	a4,a4,-4
   10faa:	409706b3          	sub	a3,a4,s1
   10fae:	24d84963          	blt	a6,a3,11200 <_malloc_r+0x3be>
   10fb2:	fe06c6e3          	bltz	a3,10f9e <_malloc_r+0x15c>
   10fb6:	9722                	add	a4,a4,s0
   10fb8:	4354                	lw	a3,4(a4)
   10fba:	4410                	lw	a2,8(s0)
   10fbc:	854a                	mv	a0,s2
   10fbe:	0016e693          	ori	a3,a3,1
   10fc2:	c354                	sw	a3,4(a4)
   10fc4:	c65c                	sw	a5,12(a2)
   10fc6:	c790                	sw	a2,8(a5)
   10fc8:	2991                	jal	1141c <__malloc_unlock>
   10fca:	00840513          	addi	a0,s0,8
   10fce:	a029                	j	10fd8 <_malloc_r+0x196>
   10fd0:	47b1                	li	a5,12
   10fd2:	00f92023          	sw	a5,0(s2)
   10fd6:	4501                	li	a0,0
   10fd8:	50b2                	lw	ra,44(sp)
   10fda:	5422                	lw	s0,40(sp)
   10fdc:	5492                	lw	s1,36(sp)
   10fde:	5902                	lw	s2,32(sp)
   10fe0:	49f2                	lw	s3,28(sp)
   10fe2:	6145                	addi	sp,sp,48
   10fe4:	8082                	ret
   10fe6:	20000613          	li	a2,512
   10fea:	04000593          	li	a1,64
   10fee:	03f00813          	li	a6,63
   10ff2:	b5e5                	j	10eda <_malloc_r+0x98>
   10ff4:	0089a403          	lw	s0,8(s3)
   10ff8:	c85a                	sw	s6,16(sp)
   10ffa:	405c                	lw	a5,4(s0)
   10ffc:	ffc7fb13          	andi	s6,a5,-4
   11000:	009b6763          	bltu	s6,s1,1100e <_malloc_r+0x1cc>
   11004:	409b0733          	sub	a4,s6,s1
   11008:	47bd                	li	a5,15
   1100a:	12e7c763          	blt	a5,a4,11138 <_malloc_r+0x2f6>
   1100e:	c266                	sw	s9,4(sp)
   11010:	d4418c93          	addi	s9,gp,-700 # 12554 <__malloc_sbrk_base>
   11014:	ca56                	sw	s5,20(sp)
   11016:	000ca703          	lw	a4,0(s9)
   1101a:	d841aa83          	lw	s5,-636(gp) # 12594 <__malloc_top_pad>
   1101e:	cc52                	sw	s4,24(sp)
   11020:	c65e                	sw	s7,12(sp)
   11022:	57fd                	li	a5,-1
   11024:	01640a33          	add	s4,s0,s6
   11028:	9aa6                	add	s5,s5,s1
   1102a:	2cf70163          	beq	a4,a5,112ec <_malloc_r+0x4aa>
   1102e:	6785                	lui	a5,0x1
   11030:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   11032:	9abe                	add	s5,s5,a5
   11034:	77fd                	lui	a5,0xfffff
   11036:	00fafab3          	and	s5,s5,a5
   1103a:	85d6                	mv	a1,s5
   1103c:	854a                	mv	a0,s2
   1103e:	772000ef          	jal	117b0 <_sbrk_r>
   11042:	57fd                	li	a5,-1
   11044:	8baa                	mv	s7,a0
   11046:	32f50963          	beq	a0,a5,11378 <_malloc_r+0x536>
   1104a:	c462                	sw	s8,8(sp)
   1104c:	0d456463          	bltu	a0,s4,11114 <_malloc_r+0x2d2>
   11050:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   11054:	000c2583          	lw	a1,0(s8)
   11058:	95d6                	add	a1,a1,s5
   1105a:	00bc2023          	sw	a1,0(s8)
   1105e:	872e                	mv	a4,a1
   11060:	32aa0063          	beq	s4,a0,11380 <_malloc_r+0x53e>
   11064:	000ca683          	lw	a3,0(s9)
   11068:	57fd                	li	a5,-1
   1106a:	32f68863          	beq	a3,a5,1139a <_malloc_r+0x558>
   1106e:	414b87b3          	sub	a5,s7,s4
   11072:	97ba                	add	a5,a5,a4
   11074:	00fc2023          	sw	a5,0(s8)
   11078:	007bfc93          	andi	s9,s7,7
   1107c:	280c8263          	beqz	s9,11300 <_malloc_r+0x4be>
   11080:	419b8bb3          	sub	s7,s7,s9
   11084:	6585                	lui	a1,0x1
   11086:	0ba1                	addi	s7,s7,8
   11088:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   1108a:	9ade                	add	s5,s5,s7
   1108c:	419585b3          	sub	a1,a1,s9
   11090:	415585b3          	sub	a1,a1,s5
   11094:	05d2                	slli	a1,a1,0x14
   11096:	0145da13          	srli	s4,a1,0x14
   1109a:	85d2                	mv	a1,s4
   1109c:	854a                	mv	a0,s2
   1109e:	2f09                	jal	117b0 <_sbrk_r>
   110a0:	57fd                	li	a5,-1
   110a2:	32f50863          	beq	a0,a5,113d2 <_malloc_r+0x590>
   110a6:	41750533          	sub	a0,a0,s7
   110aa:	01450ab3          	add	s5,a0,s4
   110ae:	000c2703          	lw	a4,0(s8)
   110b2:	0179a423          	sw	s7,8(s3)
   110b6:	001ae793          	ori	a5,s5,1
   110ba:	00ea05b3          	add	a1,s4,a4
   110be:	00fba223          	sw	a5,4(s7)
   110c2:	00bc2023          	sw	a1,0(s8)
   110c6:	03340563          	beq	s0,s3,110f0 <_malloc_r+0x2ae>
   110ca:	46bd                	li	a3,15
   110cc:	2566f963          	bgeu	a3,s6,1131e <_malloc_r+0x4dc>
   110d0:	4058                	lw	a4,4(s0)
   110d2:	ff4b0793          	addi	a5,s6,-12
   110d6:	9be1                	andi	a5,a5,-8
   110d8:	8b05                	andi	a4,a4,1
   110da:	8f5d                	or	a4,a4,a5
   110dc:	c058                	sw	a4,4(s0)
   110de:	4615                	li	a2,5
   110e0:	00f40733          	add	a4,s0,a5
   110e4:	c350                	sw	a2,4(a4)
   110e6:	c710                	sw	a2,8(a4)
   110e8:	1ef6e863          	bltu	a3,a5,112d8 <_malloc_r+0x496>
   110ec:	004ba783          	lw	a5,4(s7)
   110f0:	d8018713          	addi	a4,gp,-640 # 12590 <__malloc_max_sbrked_mem>
   110f4:	4314                	lw	a3,0(a4)
   110f6:	00b6f363          	bgeu	a3,a1,110fc <_malloc_r+0x2ba>
   110fa:	c30c                	sw	a1,0(a4)
   110fc:	d7c18713          	addi	a4,gp,-644 # 1258c <__malloc_max_total_mem>
   11100:	4314                	lw	a3,0(a4)
   11102:	00b6f363          	bgeu	a3,a1,11108 <_malloc_r+0x2c6>
   11106:	c30c                	sw	a1,0(a4)
   11108:	4c22                	lw	s8,8(sp)
   1110a:	845e                	mv	s0,s7
   1110c:	a811                	j	11120 <_malloc_r+0x2de>
   1110e:	0049a503          	lw	a0,4(s3)
   11112:	bd91                	j	10f66 <_malloc_r+0x124>
   11114:	25340a63          	beq	s0,s3,11368 <_malloc_r+0x526>
   11118:	0089a403          	lw	s0,8(s3)
   1111c:	4c22                	lw	s8,8(sp)
   1111e:	405c                	lw	a5,4(s0)
   11120:	9bf1                	andi	a5,a5,-4
   11122:	40978733          	sub	a4,a5,s1
   11126:	2097e063          	bltu	a5,s1,11326 <_malloc_r+0x4e4>
   1112a:	47bd                	li	a5,15
   1112c:	1ee7dd63          	bge	a5,a4,11326 <_malloc_r+0x4e4>
   11130:	4a62                	lw	s4,24(sp)
   11132:	4ad2                	lw	s5,20(sp)
   11134:	4bb2                	lw	s7,12(sp)
   11136:	4c92                	lw	s9,4(sp)
   11138:	0014e793          	ori	a5,s1,1
   1113c:	c05c                	sw	a5,4(s0)
   1113e:	94a2                	add	s1,s1,s0
   11140:	0099a423          	sw	s1,8(s3)
   11144:	00176713          	ori	a4,a4,1
   11148:	854a                	mv	a0,s2
   1114a:	c0d8                	sw	a4,4(s1)
   1114c:	2cc1                	jal	1141c <__malloc_unlock>
   1114e:	50b2                	lw	ra,44(sp)
   11150:	00840513          	addi	a0,s0,8
   11154:	5422                	lw	s0,40(sp)
   11156:	4b42                	lw	s6,16(sp)
   11158:	5492                	lw	s1,36(sp)
   1115a:	5902                	lw	s2,32(sp)
   1115c:	49f2                	lw	s3,28(sp)
   1115e:	6145                	addi	sp,sp,48
   11160:	8082                	ret
   11162:	4410                	lw	a2,8(s0)
   11164:	97a2                	add	a5,a5,s0
   11166:	43d8                	lw	a4,4(a5)
   11168:	c654                	sw	a3,12(a2)
   1116a:	c690                	sw	a2,8(a3)
   1116c:	00176713          	ori	a4,a4,1
   11170:	854a                	mv	a0,s2
   11172:	c3d8                	sw	a4,4(a5)
   11174:	2465                	jal	1141c <__malloc_unlock>
   11176:	50b2                	lw	ra,44(sp)
   11178:	00840513          	addi	a0,s0,8
   1117c:	5422                	lw	s0,40(sp)
   1117e:	5492                	lw	s1,36(sp)
   11180:	5902                	lw	s2,32(sp)
   11182:	49f2                	lw	s3,28(sp)
   11184:	6145                	addi	sp,sp,48
   11186:	8082                	ret
   11188:	47c0                	lw	s0,12(a5)
   1118a:	0589                	addi	a1,a1,2
   1118c:	d6878fe3          	beq	a5,s0,10f0a <_malloc_r+0xc8>
   11190:	b1ed                	j	10e7a <_malloc_r+0x38>
   11192:	0097d713          	srli	a4,a5,0x9
   11196:	4691                	li	a3,4
   11198:	0ee6f263          	bgeu	a3,a4,1127c <_malloc_r+0x43a>
   1119c:	46d1                	li	a3,20
   1119e:	18e6ec63          	bltu	a3,a4,11336 <_malloc_r+0x4f4>
   111a2:	05c70613          	addi	a2,a4,92
   111a6:	060e                	slli	a2,a2,0x3
   111a8:	05b70693          	addi	a3,a4,91
   111ac:	964e                	add	a2,a2,s3
   111ae:	4218                	lw	a4,0(a2)
   111b0:	1661                	addi	a2,a2,-8
   111b2:	00e61663          	bne	a2,a4,111be <_malloc_r+0x37c>
   111b6:	aa2d                	j	112f0 <_malloc_r+0x4ae>
   111b8:	4718                	lw	a4,8(a4)
   111ba:	00e60663          	beq	a2,a4,111c6 <_malloc_r+0x384>
   111be:	4354                	lw	a3,4(a4)
   111c0:	9af1                	andi	a3,a3,-4
   111c2:	fed7ebe3          	bltu	a5,a3,111b8 <_malloc_r+0x376>
   111c6:	4750                	lw	a2,12(a4)
   111c8:	c450                	sw	a2,12(s0)
   111ca:	c418                	sw	a4,8(s0)
   111cc:	c600                	sw	s0,8(a2)
   111ce:	c740                	sw	s0,12(a4)
   111d0:	bb59                	j	10f66 <_malloc_r+0x124>
   111d2:	4751                	li	a4,20
   111d4:	0af77c63          	bgeu	a4,a5,1128c <_malloc_r+0x44a>
   111d8:	05400713          	li	a4,84
   111dc:	16f76963          	bltu	a4,a5,1134e <_malloc_r+0x50c>
   111e0:	00c4d793          	srli	a5,s1,0xc
   111e4:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffec7cb>
   111e8:	06e78813          	addi	a6,a5,110
   111ec:	00359613          	slli	a2,a1,0x3
   111f0:	b1ed                	j	10eda <_malloc_r+0x98>
   111f2:	0e05                	addi	t3,t3,1
   111f4:	003e7793          	andi	a5,t3,3
   111f8:	0521                	addi	a0,a0,8
   111fa:	c7cd                	beqz	a5,112a4 <_malloc_r+0x462>
   111fc:	455c                	lw	a5,12(a0)
   111fe:	b345                	j	10f9e <_malloc_r+0x15c>
   11200:	4410                	lw	a2,8(s0)
   11202:	0014e593          	ori	a1,s1,1
   11206:	c04c                	sw	a1,4(s0)
   11208:	c65c                	sw	a5,12(a2)
   1120a:	c790                	sw	a2,8(a5)
   1120c:	94a2                	add	s1,s1,s0
   1120e:	0099aa23          	sw	s1,20(s3)
   11212:	0099a823          	sw	s1,16(s3)
   11216:	0016e793          	ori	a5,a3,1
   1121a:	9722                	add	a4,a4,s0
   1121c:	0114a623          	sw	a7,12(s1)
   11220:	0114a423          	sw	a7,8(s1)
   11224:	c0dc                	sw	a5,4(s1)
   11226:	854a                	mv	a0,s2
   11228:	c314                	sw	a3,0(a4)
   1122a:	2acd                	jal	1141c <__malloc_unlock>
   1122c:	00840513          	addi	a0,s0,8
   11230:	b365                	j	10fd8 <_malloc_r+0x196>
   11232:	97a2                	add	a5,a5,s0
   11234:	43d8                	lw	a4,4(a5)
   11236:	854a                	mv	a0,s2
   11238:	00176713          	ori	a4,a4,1
   1123c:	c3d8                	sw	a4,4(a5)
   1123e:	2af9                	jal	1141c <__malloc_unlock>
   11240:	00840513          	addi	a0,s0,8
   11244:	bb51                	j	10fd8 <_malloc_r+0x196>
   11246:	0034d593          	srli	a1,s1,0x3
   1124a:	00848793          	addi	a5,s1,8
   1124e:	b921                	j	10e66 <_malloc_r+0x24>
   11250:	0014e693          	ori	a3,s1,1
   11254:	c054                	sw	a3,4(s0)
   11256:	94a2                	add	s1,s1,s0
   11258:	0099aa23          	sw	s1,20(s3)
   1125c:	0099a823          	sw	s1,16(s3)
   11260:	00176693          	ori	a3,a4,1
   11264:	97a2                	add	a5,a5,s0
   11266:	0114a623          	sw	a7,12(s1)
   1126a:	0114a423          	sw	a7,8(s1)
   1126e:	c0d4                	sw	a3,4(s1)
   11270:	854a                	mv	a0,s2
   11272:	c398                	sw	a4,0(a5)
   11274:	2265                	jal	1141c <__malloc_unlock>
   11276:	00840513          	addi	a0,s0,8
   1127a:	bbb9                	j	10fd8 <_malloc_r+0x196>
   1127c:	0067d713          	srli	a4,a5,0x6
   11280:	03970613          	addi	a2,a4,57
   11284:	060e                	slli	a2,a2,0x3
   11286:	03870693          	addi	a3,a4,56
   1128a:	b70d                	j	111ac <_malloc_r+0x36a>
   1128c:	05c78593          	addi	a1,a5,92
   11290:	05b78813          	addi	a6,a5,91
   11294:	00359613          	slli	a2,a1,0x3
   11298:	b189                	j	10eda <_malloc_r+0x98>
   1129a:	00832783          	lw	a5,8(t1)
   1129e:	15fd                	addi	a1,a1,-1
   112a0:	16679763          	bne	a5,t1,1140e <_malloc_r+0x5cc>
   112a4:	0035f793          	andi	a5,a1,3
   112a8:	1361                	addi	t1,t1,-8
   112aa:	fbe5                	bnez	a5,1129a <_malloc_r+0x458>
   112ac:	0049a703          	lw	a4,4(s3)
   112b0:	fff64793          	not	a5,a2
   112b4:	8ff9                	and	a5,a5,a4
   112b6:	00f9a223          	sw	a5,4(s3)
   112ba:	0606                	slli	a2,a2,0x1
   112bc:	d2c7ece3          	bltu	a5,a2,10ff4 <_malloc_r+0x1b2>
   112c0:	d2060ae3          	beqz	a2,10ff4 <_malloc_r+0x1b2>
   112c4:	00f67733          	and	a4,a2,a5
   112c8:	e711                	bnez	a4,112d4 <_malloc_r+0x492>
   112ca:	0606                	slli	a2,a2,0x1
   112cc:	00f67733          	and	a4,a2,a5
   112d0:	0e11                	addi	t3,t3,4
   112d2:	df65                	beqz	a4,112ca <_malloc_r+0x488>
   112d4:	85f2                	mv	a1,t3
   112d6:	b975                	j	10f92 <_malloc_r+0x150>
   112d8:	00840593          	addi	a1,s0,8
   112dc:	854a                	mv	a0,s2
   112de:	947ff0ef          	jal	10c24 <_free_r>
   112e2:	000c2583          	lw	a1,0(s8)
   112e6:	0089ab83          	lw	s7,8(s3)
   112ea:	b509                	j	110ec <_malloc_r+0x2aa>
   112ec:	0ac1                	addi	s5,s5,16
   112ee:	b3b1                	j	1103a <_malloc_r+0x1f8>
   112f0:	8689                	srai	a3,a3,0x2
   112f2:	4785                	li	a5,1
   112f4:	00d797b3          	sll	a5,a5,a3
   112f8:	8d5d                	or	a0,a0,a5
   112fa:	00a9a223          	sw	a0,4(s3)
   112fe:	b5e9                	j	111c8 <_malloc_r+0x386>
   11300:	015b85b3          	add	a1,s7,s5
   11304:	40b005b3          	neg	a1,a1
   11308:	05d2                	slli	a1,a1,0x14
   1130a:	0145da13          	srli	s4,a1,0x14
   1130e:	85d2                	mv	a1,s4
   11310:	854a                	mv	a0,s2
   11312:	2979                	jal	117b0 <_sbrk_r>
   11314:	57fd                	li	a5,-1
   11316:	d8f518e3          	bne	a0,a5,110a6 <_malloc_r+0x264>
   1131a:	4a01                	li	s4,0
   1131c:	bb49                	j	110ae <_malloc_r+0x26c>
   1131e:	4c22                	lw	s8,8(sp)
   11320:	4785                	li	a5,1
   11322:	00fba223          	sw	a5,4(s7)
   11326:	854a                	mv	a0,s2
   11328:	28d5                	jal	1141c <__malloc_unlock>
   1132a:	4a62                	lw	s4,24(sp)
   1132c:	4ad2                	lw	s5,20(sp)
   1132e:	4b42                	lw	s6,16(sp)
   11330:	4bb2                	lw	s7,12(sp)
   11332:	4c92                	lw	s9,4(sp)
   11334:	b14d                	j	10fd6 <_malloc_r+0x194>
   11336:	05400693          	li	a3,84
   1133a:	06e6e363          	bltu	a3,a4,113a0 <_malloc_r+0x55e>
   1133e:	00c7d713          	srli	a4,a5,0xc
   11342:	06f70613          	addi	a2,a4,111
   11346:	060e                	slli	a2,a2,0x3
   11348:	06e70693          	addi	a3,a4,110
   1134c:	b585                	j	111ac <_malloc_r+0x36a>
   1134e:	15400713          	li	a4,340
   11352:	06f76363          	bltu	a4,a5,113b8 <_malloc_r+0x576>
   11356:	00f4d793          	srli	a5,s1,0xf
   1135a:	07878593          	addi	a1,a5,120
   1135e:	07778813          	addi	a6,a5,119
   11362:	00359613          	slli	a2,a1,0x3
   11366:	be95                	j	10eda <_malloc_r+0x98>
   11368:	06c18c13          	addi	s8,gp,108 # 1287c <__malloc_current_mallinfo>
   1136c:	000c2703          	lw	a4,0(s8)
   11370:	9756                	add	a4,a4,s5
   11372:	00ec2023          	sw	a4,0(s8)
   11376:	b1fd                	j	11064 <_malloc_r+0x222>
   11378:	0089a403          	lw	s0,8(s3)
   1137c:	405c                	lw	a5,4(s0)
   1137e:	b34d                	j	11120 <_malloc_r+0x2de>
   11380:	01451793          	slli	a5,a0,0x14
   11384:	ce0790e3          	bnez	a5,11064 <_malloc_r+0x222>
   11388:	0089ab83          	lw	s7,8(s3)
   1138c:	015b07b3          	add	a5,s6,s5
   11390:	0017e793          	ori	a5,a5,1
   11394:	00fba223          	sw	a5,4(s7)
   11398:	bba1                	j	110f0 <_malloc_r+0x2ae>
   1139a:	017ca023          	sw	s7,0(s9)
   1139e:	b9e9                	j	11078 <_malloc_r+0x236>
   113a0:	15400693          	li	a3,340
   113a4:	02e6ed63          	bltu	a3,a4,113de <_malloc_r+0x59c>
   113a8:	00f7d713          	srli	a4,a5,0xf
   113ac:	07870613          	addi	a2,a4,120
   113b0:	060e                	slli	a2,a2,0x3
   113b2:	07770693          	addi	a3,a4,119
   113b6:	bbdd                	j	111ac <_malloc_r+0x36a>
   113b8:	55400713          	li	a4,1364
   113bc:	02f76d63          	bltu	a4,a5,113f6 <_malloc_r+0x5b4>
   113c0:	0124d793          	srli	a5,s1,0x12
   113c4:	07d78593          	addi	a1,a5,125
   113c8:	07c78813          	addi	a6,a5,124
   113cc:	00359613          	slli	a2,a1,0x3
   113d0:	b629                	j	10eda <_malloc_r+0x98>
   113d2:	1ce1                	addi	s9,s9,-8
   113d4:	9ae6                	add	s5,s5,s9
   113d6:	417a8ab3          	sub	s5,s5,s7
   113da:	4a01                	li	s4,0
   113dc:	b9c9                	j	110ae <_malloc_r+0x26c>
   113de:	55400693          	li	a3,1364
   113e2:	02e6e163          	bltu	a3,a4,11404 <_malloc_r+0x5c2>
   113e6:	0127d713          	srli	a4,a5,0x12
   113ea:	07d70613          	addi	a2,a4,125
   113ee:	060e                	slli	a2,a2,0x3
   113f0:	07c70693          	addi	a3,a4,124
   113f4:	bb65                	j	111ac <_malloc_r+0x36a>
   113f6:	3f800613          	li	a2,1016
   113fa:	07f00593          	li	a1,127
   113fe:	07e00813          	li	a6,126
   11402:	bce1                	j	10eda <_malloc_r+0x98>
   11404:	3f800613          	li	a2,1016
   11408:	07e00693          	li	a3,126
   1140c:	b345                	j	111ac <_malloc_r+0x36a>
   1140e:	0049a783          	lw	a5,4(s3)
   11412:	b565                	j	112ba <_malloc_r+0x478>

00011414 <__malloc_lock>:
   11414:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11418:	d14ff06f          	j	1092c <__retarget_lock_acquire_recursive>

0001141c <__malloc_unlock>:
   1141c:	d6818513          	addi	a0,gp,-664 # 12578 <__lock___malloc_recursive_mutex>
   11420:	d18ff06f          	j	10938 <__retarget_lock_release_recursive>

00011424 <_fclose_r>:
   11424:	1141                	addi	sp,sp,-16
   11426:	c606                	sw	ra,12(sp)
   11428:	c04a                	sw	s2,0(sp)
   1142a:	c9c1                	beqz	a1,114ba <_fclose_r+0x96>
   1142c:	c422                	sw	s0,8(sp)
   1142e:	c226                	sw	s1,4(sp)
   11430:	842e                	mv	s0,a1
   11432:	84aa                	mv	s1,a0
   11434:	c119                	beqz	a0,1143a <_fclose_r+0x16>
   11436:	595c                	lw	a5,52(a0)
   11438:	c3d5                	beqz	a5,114dc <_fclose_r+0xb8>
   1143a:	507c                	lw	a5,100(s0)
   1143c:	00c41703          	lh	a4,12(s0)
   11440:	8b85                	andi	a5,a5,1
   11442:	ebad                	bnez	a5,114b4 <_fclose_r+0x90>
   11444:	20077713          	andi	a4,a4,512
   11448:	cf49                	beqz	a4,114e2 <_fclose_r+0xbe>
   1144a:	85a2                	mv	a1,s0
   1144c:	8526                	mv	a0,s1
   1144e:	20c9                	jal	11510 <__sflush_r>
   11450:	545c                	lw	a5,44(s0)
   11452:	892a                	mv	s2,a0
   11454:	c791                	beqz	a5,11460 <_fclose_r+0x3c>
   11456:	4c4c                	lw	a1,28(s0)
   11458:	8526                	mv	a0,s1
   1145a:	9782                	jalr	a5
   1145c:	06054563          	bltz	a0,114c6 <_fclose_r+0xa2>
   11460:	00c45783          	lhu	a5,12(s0)
   11464:	0807f793          	andi	a5,a5,128
   11468:	e7ad                	bnez	a5,114d2 <_fclose_r+0xae>
   1146a:	580c                	lw	a1,48(s0)
   1146c:	c991                	beqz	a1,11480 <_fclose_r+0x5c>
   1146e:	04040793          	addi	a5,s0,64
   11472:	00f58563          	beq	a1,a5,1147c <_fclose_r+0x58>
   11476:	8526                	mv	a0,s1
   11478:	facff0ef          	jal	10c24 <_free_r>
   1147c:	02042823          	sw	zero,48(s0)
   11480:	406c                	lw	a1,68(s0)
   11482:	c591                	beqz	a1,1148e <_fclose_r+0x6a>
   11484:	8526                	mv	a0,s1
   11486:	f9eff0ef          	jal	10c24 <_free_r>
   1148a:	04042223          	sw	zero,68(s0)
   1148e:	8d6ff0ef          	jal	10564 <__sfp_lock_acquire>
   11492:	507c                	lw	a5,100(s0)
   11494:	00041623          	sh	zero,12(s0)
   11498:	8b85                	andi	a5,a5,1
   1149a:	c3bd                	beqz	a5,11500 <_fclose_r+0xdc>
   1149c:	4c28                	lw	a0,88(s0)
   1149e:	c8aff0ef          	jal	10928 <__retarget_lock_close_recursive>
   114a2:	8c8ff0ef          	jal	1056a <__sfp_lock_release>
   114a6:	40b2                	lw	ra,12(sp)
   114a8:	4422                	lw	s0,8(sp)
   114aa:	4492                	lw	s1,4(sp)
   114ac:	854a                	mv	a0,s2
   114ae:	4902                	lw	s2,0(sp)
   114b0:	0141                	addi	sp,sp,16
   114b2:	8082                	ret
   114b4:	fb59                	bnez	a4,1144a <_fclose_r+0x26>
   114b6:	4422                	lw	s0,8(sp)
   114b8:	4492                	lw	s1,4(sp)
   114ba:	40b2                	lw	ra,12(sp)
   114bc:	4901                	li	s2,0
   114be:	854a                	mv	a0,s2
   114c0:	4902                	lw	s2,0(sp)
   114c2:	0141                	addi	sp,sp,16
   114c4:	8082                	ret
   114c6:	00c45783          	lhu	a5,12(s0)
   114ca:	597d                	li	s2,-1
   114cc:	0807f793          	andi	a5,a5,128
   114d0:	dfc9                	beqz	a5,1146a <_fclose_r+0x46>
   114d2:	480c                	lw	a1,16(s0)
   114d4:	8526                	mv	a0,s1
   114d6:	f4eff0ef          	jal	10c24 <_free_r>
   114da:	bf41                	j	1146a <_fclose_r+0x46>
   114dc:	84cff0ef          	jal	10528 <__sinit>
   114e0:	bfa9                	j	1143a <_fclose_r+0x16>
   114e2:	4c28                	lw	a0,88(s0)
   114e4:	c48ff0ef          	jal	1092c <__retarget_lock_acquire_recursive>
   114e8:	00c41783          	lh	a5,12(s0)
   114ec:	ffb9                	bnez	a5,1144a <_fclose_r+0x26>
   114ee:	507c                	lw	a5,100(s0)
   114f0:	8b85                	andi	a5,a5,1
   114f2:	f3f1                	bnez	a5,114b6 <_fclose_r+0x92>
   114f4:	4c28                	lw	a0,88(s0)
   114f6:	c42ff0ef          	jal	10938 <__retarget_lock_release_recursive>
   114fa:	4422                	lw	s0,8(sp)
   114fc:	4492                	lw	s1,4(sp)
   114fe:	bf75                	j	114ba <_fclose_r+0x96>
   11500:	4c28                	lw	a0,88(s0)
   11502:	c36ff0ef          	jal	10938 <__retarget_lock_release_recursive>
   11506:	bf59                	j	1149c <_fclose_r+0x78>

00011508 <fclose>:
   11508:	85aa                	mv	a1,a0
   1150a:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   1150e:	bf19                	j	11424 <_fclose_r>

00011510 <__sflush_r>:
   11510:	00c59703          	lh	a4,12(a1)
   11514:	1101                	addi	sp,sp,-32
   11516:	cc22                	sw	s0,24(sp)
   11518:	c64e                	sw	s3,12(sp)
   1151a:	ce06                	sw	ra,28(sp)
   1151c:	00877793          	andi	a5,a4,8
   11520:	842e                	mv	s0,a1
   11522:	89aa                	mv	s3,a0
   11524:	e7e1                	bnez	a5,115ec <__sflush_r+0xdc>
   11526:	6785                	lui	a5,0x1
   11528:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   1152c:	41d4                	lw	a3,4(a1)
   1152e:	8fd9                	or	a5,a5,a4
   11530:	00f59623          	sh	a5,12(a1)
   11534:	10d05963          	blez	a3,11646 <__sflush_r+0x136>
   11538:	02842803          	lw	a6,40(s0)
   1153c:	0a080263          	beqz	a6,115e0 <__sflush_r+0xd0>
   11540:	ca26                	sw	s1,20(sp)
   11542:	01371693          	slli	a3,a4,0x13
   11546:	0009a483          	lw	s1,0(s3)
   1154a:	0009a023          	sw	zero,0(s3)
   1154e:	1006c363          	bltz	a3,11654 <__sflush_r+0x144>
   11552:	4c4c                	lw	a1,28(s0)
   11554:	4601                	li	a2,0
   11556:	4685                	li	a3,1
   11558:	854e                	mv	a0,s3
   1155a:	9802                	jalr	a6
   1155c:	57fd                	li	a5,-1
   1155e:	862a                	mv	a2,a0
   11560:	12f50163          	beq	a0,a5,11682 <__sflush_r+0x172>
   11564:	00c41783          	lh	a5,12(s0)
   11568:	02842803          	lw	a6,40(s0)
   1156c:	8b91                	andi	a5,a5,4
   1156e:	c799                	beqz	a5,1157c <__sflush_r+0x6c>
   11570:	4058                	lw	a4,4(s0)
   11572:	581c                	lw	a5,48(s0)
   11574:	8e19                	sub	a2,a2,a4
   11576:	c399                	beqz	a5,1157c <__sflush_r+0x6c>
   11578:	5c5c                	lw	a5,60(s0)
   1157a:	8e1d                	sub	a2,a2,a5
   1157c:	4c4c                	lw	a1,28(s0)
   1157e:	4681                	li	a3,0
   11580:	854e                	mv	a0,s3
   11582:	9802                	jalr	a6
   11584:	577d                	li	a4,-1
   11586:	00c41783          	lh	a5,12(s0)
   1158a:	0ce51763          	bne	a0,a4,11658 <__sflush_r+0x148>
   1158e:	0009a683          	lw	a3,0(s3)
   11592:	4775                	li	a4,29
   11594:	10d76363          	bltu	a4,a3,1169a <__sflush_r+0x18a>
   11598:	20400737          	lui	a4,0x20400
   1159c:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ed75d>
   1159e:	00d75733          	srl	a4,a4,a3
   115a2:	8b05                	andi	a4,a4,1
   115a4:	cb7d                	beqz	a4,1169a <__sflush_r+0x18a>
   115a6:	4810                	lw	a2,16(s0)
   115a8:	777d                	lui	a4,0xfffff
   115aa:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   115ae:	8f7d                	and	a4,a4,a5
   115b0:	00e41623          	sh	a4,12(s0)
   115b4:	00042223          	sw	zero,4(s0)
   115b8:	c010                	sw	a2,0(s0)
   115ba:	01379713          	slli	a4,a5,0x13
   115be:	00075363          	bgez	a4,115c4 <__sflush_r+0xb4>
   115c2:	cacd                	beqz	a3,11674 <__sflush_r+0x164>
   115c4:	580c                	lw	a1,48(s0)
   115c6:	0099a023          	sw	s1,0(s3)
   115ca:	c9d5                	beqz	a1,1167e <__sflush_r+0x16e>
   115cc:	04040793          	addi	a5,s0,64
   115d0:	00f58563          	beq	a1,a5,115da <__sflush_r+0xca>
   115d4:	854e                	mv	a0,s3
   115d6:	e4eff0ef          	jal	10c24 <_free_r>
   115da:	44d2                	lw	s1,20(sp)
   115dc:	02042823          	sw	zero,48(s0)
   115e0:	40f2                	lw	ra,28(sp)
   115e2:	4462                	lw	s0,24(sp)
   115e4:	49b2                	lw	s3,12(sp)
   115e6:	4501                	li	a0,0
   115e8:	6105                	addi	sp,sp,32
   115ea:	8082                	ret
   115ec:	c84a                	sw	s2,16(sp)
   115ee:	0105a903          	lw	s2,16(a1)
   115f2:	04090f63          	beqz	s2,11650 <__sflush_r+0x140>
   115f6:	ca26                	sw	s1,20(sp)
   115f8:	4184                	lw	s1,0(a1)
   115fa:	8b0d                	andi	a4,a4,3
   115fc:	0125a023          	sw	s2,0(a1)
   11600:	412484b3          	sub	s1,s1,s2
   11604:	4781                	li	a5,0
   11606:	e311                	bnez	a4,1160a <__sflush_r+0xfa>
   11608:	49dc                	lw	a5,20(a1)
   1160a:	c41c                	sw	a5,8(s0)
   1160c:	00904663          	bgtz	s1,11618 <__sflush_r+0x108>
   11610:	a83d                	j	1164e <__sflush_r+0x13e>
   11612:	992a                	add	s2,s2,a0
   11614:	02905d63          	blez	s1,1164e <__sflush_r+0x13e>
   11618:	505c                	lw	a5,36(s0)
   1161a:	4c4c                	lw	a1,28(s0)
   1161c:	86a6                	mv	a3,s1
   1161e:	864a                	mv	a2,s2
   11620:	854e                	mv	a0,s3
   11622:	9782                	jalr	a5
   11624:	8c89                	sub	s1,s1,a0
   11626:	fea046e3          	bgtz	a0,11612 <__sflush_r+0x102>
   1162a:	00c41783          	lh	a5,12(s0)
   1162e:	4942                	lw	s2,16(sp)
   11630:	0407e793          	ori	a5,a5,64
   11634:	40f2                	lw	ra,28(sp)
   11636:	00f41623          	sh	a5,12(s0)
   1163a:	4462                	lw	s0,24(sp)
   1163c:	44d2                	lw	s1,20(sp)
   1163e:	49b2                	lw	s3,12(sp)
   11640:	557d                	li	a0,-1
   11642:	6105                	addi	sp,sp,32
   11644:	8082                	ret
   11646:	5dd4                	lw	a3,60(a1)
   11648:	eed048e3          	bgtz	a3,11538 <__sflush_r+0x28>
   1164c:	bf51                	j	115e0 <__sflush_r+0xd0>
   1164e:	44d2                	lw	s1,20(sp)
   11650:	4942                	lw	s2,16(sp)
   11652:	b779                	j	115e0 <__sflush_r+0xd0>
   11654:	4830                	lw	a2,80(s0)
   11656:	bf19                	j	1156c <__sflush_r+0x5c>
   11658:	4814                	lw	a3,16(s0)
   1165a:	777d                	lui	a4,0xfffff
   1165c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffecf5b>
   11660:	8f7d                	and	a4,a4,a5
   11662:	00e41623          	sh	a4,12(s0)
   11666:	00042223          	sw	zero,4(s0)
   1166a:	c014                	sw	a3,0(s0)
   1166c:	01379713          	slli	a4,a5,0x13
   11670:	f4075ae3          	bgez	a4,115c4 <__sflush_r+0xb4>
   11674:	580c                	lw	a1,48(s0)
   11676:	c828                	sw	a0,80(s0)
   11678:	0099a023          	sw	s1,0(s3)
   1167c:	f9a1                	bnez	a1,115cc <__sflush_r+0xbc>
   1167e:	44d2                	lw	s1,20(sp)
   11680:	b785                	j	115e0 <__sflush_r+0xd0>
   11682:	0009a783          	lw	a5,0(s3)
   11686:	ec078fe3          	beqz	a5,11564 <__sflush_r+0x54>
   1168a:	4775                	li	a4,29
   1168c:	00e78a63          	beq	a5,a4,116a0 <__sflush_r+0x190>
   11690:	4759                	li	a4,22
   11692:	00e78763          	beq	a5,a4,116a0 <__sflush_r+0x190>
   11696:	00c41783          	lh	a5,12(s0)
   1169a:	0407e793          	ori	a5,a5,64
   1169e:	bf59                	j	11634 <__sflush_r+0x124>
   116a0:	0099a023          	sw	s1,0(s3)
   116a4:	44d2                	lw	s1,20(sp)
   116a6:	bf2d                	j	115e0 <__sflush_r+0xd0>

000116a8 <_fflush_r>:
   116a8:	1141                	addi	sp,sp,-16
   116aa:	c422                	sw	s0,8(sp)
   116ac:	c226                	sw	s1,4(sp)
   116ae:	c606                	sw	ra,12(sp)
   116b0:	c04a                	sw	s2,0(sp)
   116b2:	84aa                	mv	s1,a0
   116b4:	842e                	mv	s0,a1
   116b6:	c119                	beqz	a0,116bc <_fflush_r+0x14>
   116b8:	595c                	lw	a5,52(a0)
   116ba:	c3bd                	beqz	a5,11720 <_fflush_r+0x78>
   116bc:	00c41783          	lh	a5,12(s0)
   116c0:	4901                	li	s2,0
   116c2:	c39d                	beqz	a5,116e8 <_fflush_r+0x40>
   116c4:	5078                	lw	a4,100(s0)
   116c6:	8b05                	andi	a4,a4,1
   116c8:	e701                	bnez	a4,116d0 <_fflush_r+0x28>
   116ca:	2007f793          	andi	a5,a5,512
   116ce:	c785                	beqz	a5,116f6 <_fflush_r+0x4e>
   116d0:	8526                	mv	a0,s1
   116d2:	85a2                	mv	a1,s0
   116d4:	3d35                	jal	11510 <__sflush_r>
   116d6:	507c                	lw	a5,100(s0)
   116d8:	892a                	mv	s2,a0
   116da:	8b85                	andi	a5,a5,1
   116dc:	e791                	bnez	a5,116e8 <_fflush_r+0x40>
   116de:	00c45783          	lhu	a5,12(s0)
   116e2:	2007f793          	andi	a5,a5,512
   116e6:	c39d                	beqz	a5,1170c <_fflush_r+0x64>
   116e8:	40b2                	lw	ra,12(sp)
   116ea:	4422                	lw	s0,8(sp)
   116ec:	4492                	lw	s1,4(sp)
   116ee:	854a                	mv	a0,s2
   116f0:	4902                	lw	s2,0(sp)
   116f2:	0141                	addi	sp,sp,16
   116f4:	8082                	ret
   116f6:	4c28                	lw	a0,88(s0)
   116f8:	a34ff0ef          	jal	1092c <__retarget_lock_acquire_recursive>
   116fc:	8526                	mv	a0,s1
   116fe:	85a2                	mv	a1,s0
   11700:	3d01                	jal	11510 <__sflush_r>
   11702:	507c                	lw	a5,100(s0)
   11704:	892a                	mv	s2,a0
   11706:	8b85                	andi	a5,a5,1
   11708:	f3e5                	bnez	a5,116e8 <_fflush_r+0x40>
   1170a:	bfd1                	j	116de <_fflush_r+0x36>
   1170c:	4c28                	lw	a0,88(s0)
   1170e:	a2aff0ef          	jal	10938 <__retarget_lock_release_recursive>
   11712:	40b2                	lw	ra,12(sp)
   11714:	4422                	lw	s0,8(sp)
   11716:	4492                	lw	s1,4(sp)
   11718:	854a                	mv	a0,s2
   1171a:	4902                	lw	s2,0(sp)
   1171c:	0141                	addi	sp,sp,16
   1171e:	8082                	ret
   11720:	e09fe0ef          	jal	10528 <__sinit>
   11724:	bf61                	j	116bc <_fflush_r+0x14>

00011726 <fflush>:
   11726:	c53d                	beqz	a0,11794 <fflush+0x6e>
   11728:	1141                	addi	sp,sp,-16
   1172a:	c04a                	sw	s2,0(sp)
   1172c:	d3c1a903          	lw	s2,-708(gp) # 1254c <_impure_ptr>
   11730:	c422                	sw	s0,8(sp)
   11732:	c606                	sw	ra,12(sp)
   11734:	c226                	sw	s1,4(sp)
   11736:	842a                	mv	s0,a0
   11738:	00090563          	beqz	s2,11742 <fflush+0x1c>
   1173c:	03492783          	lw	a5,52(s2)
   11740:	cf95                	beqz	a5,1177c <fflush+0x56>
   11742:	00c41783          	lh	a5,12(s0)
   11746:	4481                	li	s1,0
   11748:	c39d                	beqz	a5,1176e <fflush+0x48>
   1174a:	5078                	lw	a4,100(s0)
   1174c:	8b05                	andi	a4,a4,1
   1174e:	e701                	bnez	a4,11756 <fflush+0x30>
   11750:	2007f793          	andi	a5,a5,512
   11754:	cb85                	beqz	a5,11784 <fflush+0x5e>
   11756:	854a                	mv	a0,s2
   11758:	85a2                	mv	a1,s0
   1175a:	3b5d                	jal	11510 <__sflush_r>
   1175c:	507c                	lw	a5,100(s0)
   1175e:	84aa                	mv	s1,a0
   11760:	8b85                	andi	a5,a5,1
   11762:	e791                	bnez	a5,1176e <fflush+0x48>
   11764:	00c45783          	lhu	a5,12(s0)
   11768:	2007f793          	andi	a5,a5,512
   1176c:	c385                	beqz	a5,1178c <fflush+0x66>
   1176e:	40b2                	lw	ra,12(sp)
   11770:	4422                	lw	s0,8(sp)
   11772:	4902                	lw	s2,0(sp)
   11774:	8526                	mv	a0,s1
   11776:	4492                	lw	s1,4(sp)
   11778:	0141                	addi	sp,sp,16
   1177a:	8082                	ret
   1177c:	854a                	mv	a0,s2
   1177e:	dabfe0ef          	jal	10528 <__sinit>
   11782:	b7c1                	j	11742 <fflush+0x1c>
   11784:	4c28                	lw	a0,88(s0)
   11786:	9a6ff0ef          	jal	1092c <__retarget_lock_acquire_recursive>
   1178a:	b7f1                	j	11756 <fflush+0x30>
   1178c:	4c28                	lw	a0,88(s0)
   1178e:	9aaff0ef          	jal	10938 <__retarget_lock_release_recursive>
   11792:	bff1                	j	1176e <fflush+0x48>
   11794:	00001617          	auipc	a2,0x1
   11798:	87c60613          	addi	a2,a2,-1924 # 12010 <__sglue>
   1179c:	00000597          	auipc	a1,0x0
   117a0:	f0c58593          	addi	a1,a1,-244 # 116a8 <_fflush_r>
   117a4:	00001517          	auipc	a0,0x1
   117a8:	87c50513          	addi	a0,a0,-1924 # 12020 <_impure_data>
   117ac:	e09fe06f          	j	105b4 <_fwalk_sglue>

000117b0 <_sbrk_r>:
   117b0:	1141                	addi	sp,sp,-16
   117b2:	c422                	sw	s0,8(sp)
   117b4:	842a                	mv	s0,a0
   117b6:	852e                	mv	a0,a1
   117b8:	d401aa23          	sw	zero,-684(gp) # 12564 <errno>
   117bc:	c606                	sw	ra,12(sp)
   117be:	20f9                	jal	1188c <_sbrk>
   117c0:	57fd                	li	a5,-1
   117c2:	00f50663          	beq	a0,a5,117ce <_sbrk_r+0x1e>
   117c6:	40b2                	lw	ra,12(sp)
   117c8:	4422                	lw	s0,8(sp)
   117ca:	0141                	addi	sp,sp,16
   117cc:	8082                	ret
   117ce:	c226                	sw	s1,4(sp)
   117d0:	d5418493          	addi	s1,gp,-684 # 12564 <errno>
   117d4:	409c                	lw	a5,0(s1)
   117d6:	c799                	beqz	a5,117e4 <_sbrk_r+0x34>
   117d8:	40b2                	lw	ra,12(sp)
   117da:	c01c                	sw	a5,0(s0)
   117dc:	4422                	lw	s0,8(sp)
   117de:	4492                	lw	s1,4(sp)
   117e0:	0141                	addi	sp,sp,16
   117e2:	8082                	ret
   117e4:	40b2                	lw	ra,12(sp)
   117e6:	4422                	lw	s0,8(sp)
   117e8:	4492                	lw	s1,4(sp)
   117ea:	0141                	addi	sp,sp,16
   117ec:	8082                	ret

000117ee <_close>:
   117ee:	1141                	addi	sp,sp,-16
   117f0:	c606                	sw	ra,12(sp)
   117f2:	c422                	sw	s0,8(sp)
   117f4:	03900893          	li	a7,57
   117f8:	00000073          	ecall
   117fc:	842a                	mv	s0,a0
   117fe:	00054763          	bltz	a0,1180c <_close+0x1e>
   11802:	40b2                	lw	ra,12(sp)
   11804:	8522                	mv	a0,s0
   11806:	4422                	lw	s0,8(sp)
   11808:	0141                	addi	sp,sp,16
   1180a:	8082                	ret
   1180c:	40800433          	neg	s0,s0
   11810:	28d5                	jal	11904 <__errno>
   11812:	c100                	sw	s0,0(a0)
   11814:	547d                	li	s0,-1
   11816:	b7f5                	j	11802 <_close+0x14>

00011818 <_exit>:
   11818:	05d00893          	li	a7,93
   1181c:	00000073          	ecall
   11820:	00054363          	bltz	a0,11826 <_exit+0xe>
   11824:	a001                	j	11824 <_exit+0xc>
   11826:	1141                	addi	sp,sp,-16
   11828:	c422                	sw	s0,8(sp)
   1182a:	842a                	mv	s0,a0
   1182c:	c606                	sw	ra,12(sp)
   1182e:	40800433          	neg	s0,s0
   11832:	28c9                	jal	11904 <__errno>
   11834:	c100                	sw	s0,0(a0)
   11836:	a001                	j	11836 <_exit+0x1e>

00011838 <_lseek>:
   11838:	1141                	addi	sp,sp,-16
   1183a:	c606                	sw	ra,12(sp)
   1183c:	c422                	sw	s0,8(sp)
   1183e:	03e00893          	li	a7,62
   11842:	00000073          	ecall
   11846:	842a                	mv	s0,a0
   11848:	00054763          	bltz	a0,11856 <_lseek+0x1e>
   1184c:	40b2                	lw	ra,12(sp)
   1184e:	8522                	mv	a0,s0
   11850:	4422                	lw	s0,8(sp)
   11852:	0141                	addi	sp,sp,16
   11854:	8082                	ret
   11856:	40800433          	neg	s0,s0
   1185a:	206d                	jal	11904 <__errno>
   1185c:	c100                	sw	s0,0(a0)
   1185e:	547d                	li	s0,-1
   11860:	b7f5                	j	1184c <_lseek+0x14>

00011862 <_read>:
   11862:	1141                	addi	sp,sp,-16
   11864:	c606                	sw	ra,12(sp)
   11866:	c422                	sw	s0,8(sp)
   11868:	03f00893          	li	a7,63
   1186c:	00000073          	ecall
   11870:	842a                	mv	s0,a0
   11872:	00054763          	bltz	a0,11880 <_read+0x1e>
   11876:	40b2                	lw	ra,12(sp)
   11878:	8522                	mv	a0,s0
   1187a:	4422                	lw	s0,8(sp)
   1187c:	0141                	addi	sp,sp,16
   1187e:	8082                	ret
   11880:	40800433          	neg	s0,s0
   11884:	2041                	jal	11904 <__errno>
   11886:	c100                	sw	s0,0(a0)
   11888:	547d                	li	s0,-1
   1188a:	b7f5                	j	11876 <_read+0x14>

0001188c <_sbrk>:
   1188c:	d8818693          	addi	a3,gp,-632 # 12598 <heap_end.0>
   11890:	4298                	lw	a4,0(a3)
   11892:	1141                	addi	sp,sp,-16
   11894:	c606                	sw	ra,12(sp)
   11896:	87aa                	mv	a5,a0
   11898:	eb19                	bnez	a4,118ae <_sbrk+0x22>
   1189a:	0d600893          	li	a7,214
   1189e:	4501                	li	a0,0
   118a0:	00000073          	ecall
   118a4:	567d                	li	a2,-1
   118a6:	872a                	mv	a4,a0
   118a8:	02c50263          	beq	a0,a2,118cc <_sbrk+0x40>
   118ac:	c288                	sw	a0,0(a3)
   118ae:	00e78533          	add	a0,a5,a4
   118b2:	0d600893          	li	a7,214
   118b6:	00000073          	ecall
   118ba:	4298                	lw	a4,0(a3)
   118bc:	97ba                	add	a5,a5,a4
   118be:	00f51763          	bne	a0,a5,118cc <_sbrk+0x40>
   118c2:	40b2                	lw	ra,12(sp)
   118c4:	c288                	sw	a0,0(a3)
   118c6:	853a                	mv	a0,a4
   118c8:	0141                	addi	sp,sp,16
   118ca:	8082                	ret
   118cc:	2825                	jal	11904 <__errno>
   118ce:	40b2                	lw	ra,12(sp)
   118d0:	47b1                	li	a5,12
   118d2:	c11c                	sw	a5,0(a0)
   118d4:	557d                	li	a0,-1
   118d6:	0141                	addi	sp,sp,16
   118d8:	8082                	ret

000118da <_write>:
   118da:	1141                	addi	sp,sp,-16
   118dc:	c606                	sw	ra,12(sp)
   118de:	c422                	sw	s0,8(sp)
   118e0:	04000893          	li	a7,64
   118e4:	00000073          	ecall
   118e8:	842a                	mv	s0,a0
   118ea:	00054763          	bltz	a0,118f8 <_write+0x1e>
   118ee:	40b2                	lw	ra,12(sp)
   118f0:	8522                	mv	a0,s0
   118f2:	4422                	lw	s0,8(sp)
   118f4:	0141                	addi	sp,sp,16
   118f6:	8082                	ret
   118f8:	40800433          	neg	s0,s0
   118fc:	2021                	jal	11904 <__errno>
   118fe:	c100                	sw	s0,0(a0)
   11900:	547d                	li	s0,-1
   11902:	b7f5                	j	118ee <_write+0x14>

00011904 <__errno>:
   11904:	d3c1a503          	lw	a0,-708(gp) # 1254c <_impure_ptr>
   11908:	8082                	ret
