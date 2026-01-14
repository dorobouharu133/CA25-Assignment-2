.globl bf16_div
bf16_div:
    slli    a1, a1, 0x10
    srli    a1, a1, 0x10
    slli    a0, a0, 0x10
    srli    a0, a0, 0x10
    srli    a2, a1, 0x7
    srli    a4, a0, 0x7
    xor     a6, a1, a0
    zext.b  a2, a2
    li      a3, 255
    zext.b  a4, a4
    andi    a5, a0, 127
    andi    a7, a1, 127
    srli    t1, a6, 0xf
    bne     a2, a3, L_10474
    mv      a0, a1
    bnez    a7, L_104ac
    bne     a4, a2, L_1046c
    lui     a0, 0x8
    addi    a0, a0, -64     # 7fc0 <_start-0x8040>
    beqz    a5, L_104ac

L_1046c:
    slli    a0, t1, 0xf
    ret

L_10474:
    or      a1, a7, a2
    bnez    a1, L_104a4
    lui     a0, 0x8
    or      a5, a5, a4
    addi    a0, a0, -64     # 7fc0 <_start-0x8040>
    beqz    a5, L_104ac

L_1048c:
    lui     a0, 0xffff8
    lui     a5, 0x8
    and     a0, a6, a0
    addi    a5, a5, -128    # 7f80 <_start-0x8080>
    or      a0, a0, a5
    ret

L_104a4:
    bne     a4, a3, L_104b0
    beqz    a5, L_1048c

L_104ac:
    ret

L_104b0:
    bnez    a4, L_10558
    beqz    a5, L_1046c

L_104b8:
    beqz    a2, L_104c0
    ori     a7, a7, 128

L_104c0:
    slli    a3, a5, 0xf
    li      a1, 15
    li      a5, 0
    li      t3, -1

L_104d0:
    
    sll     a0, a7, a1      # divisor << current_i
    slli    a5, a5, 1       # quotient << 1
    bltu    a3, a0, .L_skip_1
    sub     a3, a3, a0      # dividend -= shifted_divisor
    ori     a5, a5, 1       # quotient |= 1
.L_skip_1:
    addi    a1, a1, -1      # Counter--

    sll     a0, a7, a1      # divisor << a1
    slli    a5, a5, 1
    bltu    a3, a0, .L_skip_2
    sub     a3, a3, a0
    ori     a5, a5, 1
.L_skip_2:
    addi    a1, a1, -1      # Counter--

    sll     a0, a7, a1      # divisor << a1
    slli    a5, a5, 1
    bltu    a3, a0, .L_skip_3
    sub     a3, a3, a0
    ori     a5, a5, 1
.L_skip_3:
    addi    a1, a1, -1      # Counter--

    sll     a0, a7, a1      # divisor << a1
    slli    a5, a5, 1
    bltu    a3, a0, .L_skip_4
    sub     a3, a3, a0
    ori     a5, a5, 1
.L_skip_4:
    addi    a1, a1, -1      # Counter--

    bne     a1, t3, L_104d0

    sub     a3, a4, a2
    snez    a4, a4
    add     a4, a4, a3
    addi    a4, a4, 126
    seqz    a2, a2
    slli    a3, a5, 0x10
    add     a4, a4, a2
    bltz    a3, L_10524
    li      a3, 1

L_10510:
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524

    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524

    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524

    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524
    
    bge     a3, a4, L_10524
    slli    a5, a5, 0x1
    slli    a2, a5, 0x10
    addi    a4, a4, -1
    bltz    a2, L_10524

    j       L_10510

L_10524:
    li      a3, 254
    srli    a5, a5, 0x8
    blt     a3, a4, L_1048c
    blez    a4, L_1046c
    andi    a0, a5, 127
    slli    a4, a4, 0x7
    lui     a5, 0xffff8
    or      a0, a0, a4
    and     a6, a6, a5
    or      a0, a0, a6
    slli    a0, a0, 0x10
    srli    a0, a0, 0x10
    ret

L_10558:
    ori     a5, a5, 128
    j       L_104b8
