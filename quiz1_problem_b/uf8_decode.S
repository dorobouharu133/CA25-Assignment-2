# uf8_decode.S
    .section .text
    .global uf8_decode

# a0: f1
# t0: mantissa
# t1: exponent
# t2: offset
uf8_decode:
    andi t0, a0, 0x0f    # mantissa = f1 & 0x0f
    srli t1, a0, 4       # exponent = f1 >> 4
    addi t2, x0, 15
    sub t2, t2, t1

    addi t3, x0, 0x7F    # replace pseudo instruction li t3, 0x7FFF
    slli t3, t3, 8
    ori t3, t3, 0xFF

    srl t3, t3, t2
    slli t3, t3, 4
    sll a0, t0, t1
    add a0, a0, t3
    jr ra
