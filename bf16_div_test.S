# main.S
.data
newline: .string "\n"
pass_msg: .string "All tests passed!"
fail_msg: .string "Test failed!"
bf16_add_cycle_msg: .string "BF16_ADD Cycles: "
bf16_sub_cycle_msg: .string "BF16_SUB Cycles: "
bf16_div_cycle_msg: .string "BF16_DIV Cycles: "
bf16_add_instret_count_msg: .string "BF16_ADD Instructions Retire: "
bf16_sub_instret_count_msg: .string "BF16_SUB Instructions Retire: "
bf16_div_instret_count_msg: .string "BF16_DIV Instructions Retire: "
buffer: .space 4

.text
.globl main
#.globl bf16_add
#.globl bf16_sub
.globl bf16_div
.globl get_cycles
.globl get_instret

main:
    jal ra, get_cycles
    addi sp, sp, -32
    sw a0, 0(sp)
    jal ra, get_instret
    sw a0, 4(sp)
bf16_div_start:
    jal ra, get_cycles
    addi sp, sp, -32
    sw a0, 0(sp)

    jal ra, get_instret
    sw a0, 4(sp)
# 0x7F7F / 0x0080, maximal finite positive number / minimal normalized number = +inf
bf16_div_test_1:
    addi a0, x0, 0x7F
    slli a0, a0, 8
    ori a0, a0, 0x7F
    addi a1, x0, 0x80
    jal ra, bf16_div   

    addi s0, a0, 0
    addi t0, x0, 0x7F
    slli t0, t0, 8
    ori t0, t0, 0x80
    bne s0, t0, test_fail

# NaN / 1.000000 = NaN
bf16_div_test_2:
    addi a0, x0, 0x7F
    slli a0, a0, 8
    ori a0, a0, 0xC0
    addi a1, x0, 0x3F
    slli a1, a1, 8
    ori a1, a1, 0x80
    jal ra, bf16_div   

    addi s0, a0, 0
    addi t0, x0, 0x7F
    slli t0, t0, 8
    ori t0, t0, 0xC0
    bne s0, t0, test_fail

# +inf / (-inf) = NaN
bf16_div_test_3:
    addi a0, x0, 0x7F
    slli a0, a0, 8
    ori a0, a0, 0x80
    addi a1, x0, 0xFF
    slli a1, a1, 8
    ori a1, a1, 0x80
    jal ra, bf16_div   

    addi s0, a0, 0
    addi t0, x0, 0x7F
    slli t0, t0, 8
    ori t0, t0, 0xC0
    bne s0, t0, test_fail

# 3.000000 / 2.000000 = 1.500000
bf16_div_test_4:
    addi a0, x0, 0x40 # 3.000000
    slli a0, a0, 8
    ori a0, a0, 0x40
    addi a1, x0, 0x40 # 2.000000
    slli a1, a1, 8
    ori a1, a1, 0x00
    jal ra, bf16_div   

    addi s0, a0, 0
    addi t0, x0, 0x3F # 1.500000
    slli t0, t0, 8
    ori t0, t0, 0xC0
    bne s0, t0, test_fail

# -6.0 / 2.0 = -3.0
bf16_div_test_6:
    li a0, 0xC0C0
    li a1, 0x4000
    jal ra, bf16_div   
    addi s0, a0, 0
    li t0, 0xC040
    bne s0, t0, test_fail

# 1.0 / 3.0 = 0.333984 (0x3EAA)
bf16_div_test_7:
    li a0, 0x3F80
    li a1, 0x4040
    jal ra, bf16_div
    addi s0, a0, 0
    li t0, 0x3EAA
    bne s0, t0, test_fail


bf16_div_count_cycles:
    jal ra, get_cycles
    addi s3, a0, 0

    jal ra, get_instret
    addi s4, a0, 0
    
    lw t1, 0(sp)
    sub s1, s3, t1

    li a0, 1
    la a1, bf16_div_cycle_msg
    li a2, 18
    li a7, 64
    ecall

    addi a0, s1, 0
    jal ra, print_dec

    li a0, 1
    la a1, newline
    li a2, 1
    li a7, 64
    ecall

    lw t1, 4(sp)
    sub s2, s4, t1

    li a0, 1
    la a1, bf16_div_instret_count_msg
    li a2, 30
    li a7, 64
    ecall

    addi a0, s2, 0
    jal ra, print_dec

    li a0, 1
    la a1, newline
    li a2, 1
    li a7, 64
    ecall

    addi sp, sp, 32

test_pass:
    li a0, 1
    la a1, pass_msg
    li a2, 17
    li a7, 64
    ecall
    jal new_line

test_fail:
    li a0, 1
    la a1, fail_msg
    li a2, 12
    li a7, 64
    ecall
    
new_line:
    li a0, 1
    la a1, newline
    li a2, 2
    li a7, 64
    ecall

end:
    li a0, 0
    li a7, 93
    ecall

get_cycles:
    csrr a1, cycleh
    csrr a0, cycle
    csrr a2, cycleh
    bne a1, a2, get_cycles
    ret

get_instret:
    csrr a1, instreth
    csrr a0, instret
    csrr a2, instreth
    bne a1, a2, get_instret
    ret

.size get_instret,.-get_instret
.size get_cycles,.-get_cycles

