# a0: a
# a1: b
# t0: sign_a
# t1: sign_b
# t2: exp_a
# t3: exp_b
# t4: mant_a
# t5: mant_b
# t6: temp
bf16_add:
bf16_add_swap_magnitude:
    li t6, 0x7FFF     # use t6 as mask to get magnitude
    and s0, a0, t6    # s0 = |A|
    and s1, a1, t6    # s1 = |B|
    
    slt t6, s0, s1    # t6 = (|A| < |B|) ? 1 : 0
    neg t6, t6        # t6 = (|A| < |B|) ? 0xFFFFFFFF : 0
    
    xor t5, a0, a1    # swap logic
    and t5, t5, t6
    xor a0, a0, t5
    xor a1, a1, t5

bf16_unpack:
    srli t0, a0, 15
    andi t0, t0, 1 # sign_a = (a.bits >> 15) & 1
    srli t1, a1, 15
    andi t1, t1, 1 # sign_b = (a.bits >> 15) & 1
    srli t2, a0, 7
    andi t2, t2, 0xFF # exp_a = (a.bits >> 7) & 0xFF
    srli t3, a1, 7
    andi t3, t3, 0xFF # exp_b = (a.bits >> 7) & 0xFF
    andi t4, a0, 0x7F # mant_a = a.bits & 0x7F
    andi t5, a1, 0x7F # mant_b = b.bits & 0x7F

    mv s1, t2
bf16_add_special_cases:
    li t6, 0xFF
    bne t2, t6, bf16_add_check_b_inf_nan
    beq t3, t6, bf16_add_return_exp_b_0xFF

bf16_add_check_b_inf_nan:
    beq t3, t6, bf16_add_return_b

    or t6, t2, t4 
    beq t6, x0, bf16_add_return_b
    or t6, t3, t5
    beq t6, x0, bf16_add_return_a
    beq t2, x0, bf16_add_skip1
    ori t4, t4, 0x80 # mant_a |= 0x80

bf16_add_skip1:
    beq t3, x0, bf16_add_skip2
    ori t5, t5, 0x80 # mant_b |= 0x80

bf16_add_skip2:
    slli t4, t4, 3
    slli t5, t5, 3
bf16_add_align:
    # t2: exp_a
    # t3: exp_b
    sub s3, t2, t3 # exp_diff = exp_a - exp_b
    
    li t6, 8
    blt t6, s3, bf16_add_return_a
    
    sra t5, t5, s3 # mant_b >>= exp_diff

bf16_add_sign_compare:
    # t0: sign_a 
    # t1: sign_b 
    # t5: mant_b
    xor t6, t0, t1 
    bne t6, x0, bf16_add_diff_sign

bf16_add_same_sign: 
    add s3, t4, t5 # result_mant = mant_a + mant_b

    li t2, 0x800   # result & 0x800, check if carry out
    and t2, s3, t2
    beq t2, x0, bf16_add_return 
    srli s3, s3, 1 # result_mant >>= 1
    addi s1, s1, 1 # result_exp += 1
    li t6, 0xFF # check for overflow 
    bge s1, t6, bf16_add_return_overflow    
    jal x0, bf16_add_return

bf16_add_diff_sign: 
    sub s3, t4, t5 # result_mant = mant_a - mant_b 
    beq s3, x0, bf16_add_return_bf16_zero

bf16_add_normalize_loop: # normalize, maybe can optimize later
    andi t6, s3, 0x400 
    bne t6, x0, bf16_add_return 
    slli s3, s3, 1 # result_mant <<= 1
    addi s1, s1, -1 # result_exp -= 1
    blt s1, x0, bf16_add_return_bf16_zero
    jal x0, bf16_add_normalize_loop

bf16_add_return:
    # t0: result_sign
    # s1: result_exp
    # s3: result_mant
    srli s3, s3, 3
    slli t0, t0, 15 # result_sign << 15
    andi s1, s1, 0xFF # result_exp & 0xFF
    slli s1, s1, 7 # result_exp << 7
    andi s3, s3, 0x7F # result_mant & 0x7F
    or a0, t0, s1
    or a0, a0, s3
    jr ra

bf16_add_return_a:
    jr ra

bf16_add_return_b:
    mv a0, a1
    jr ra

bf16_add_return_bf16_nan:
    li a0, 0x7FC0
    jr ra

bf16_add_return_exp_b_0xFF:
    bne t5, x0, bf16_add_return_b # if mant_b != 0 return b (NaN)
    xor t6, t0, t1
    beq t6, x0, bf16_add_return_b # if sign_a == sign_b return b (Inf)
    jal x0, bf16_add_return_bf16_nan # else return NaN

bf16_add_return_bf16_zero:
    li a0, 0
    jr ra

bf16_add_return_overflow:
    slli t0, t0, 15 # result_sign << 15
    li t6, 0x7F80
    or a0, t0, t6 # return Inf
    jr ra
