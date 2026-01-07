# uf8_encode.S
    .section .text
    .global uf8_encode
    
# a0: value
# t0: lz
# t1: msb
# t2: exponent
# t3: overflow
# t4: temp
# t5: mantissa
# t6: next_overflow
uf8_encode:
    addi t4, x0, 16
    blt a0, t4, encode_return_lt16 # if(value < 16) then return value

encode_ge16: 
    addi sp, sp, -8
    sw ra, 0(sp)
    sw s0, 4(sp)
    addi s0, a0, 0 # save value, help us not to access the memory

    jal clz
    addi t0, a0, 0    # lz
    addi t1, x0, 31  
    sub t1, t1, t0    # msb = 31 - lz

    addi t2, x0, 0 # exponent = 0 
    addi t3, x0, 0 # overflow = 0
    addi t4, x0, 5

encode_if_1:
    blt t1, t4,  encode_while_2 # if(msb < 5) goto encode_while_2
    
    addi t2, t1, -4 # exponent = msb - 4
encode_if_2:
    addi t4, x0, 15
    ble t2, t4, encode_for_1 # if (exponent <= 15) goto encode_for_1
    li t2, 15

encode_for_1: 
    li t4, 1
    sll t4, t4, t2
    addi t4, t4, -1
    slli t4, t4, 4
    mv t3, t4

encode_while_1:
    beq t2, x0, encode_while_2
    bge s0, t3, encode_while_2
    addi t3, t3, -16
    srli t3, t3, 1
    addi t2, t2, -1
    jal x0, encode_while_1

encode_while_2:
    li t4, 15
    bge t2, t4, encode_return
    slli t6, t3, 1
    addi t6, t6, 16

encode_if_3:
    blt s0, t6, encode_return # if(value < nextoverflow) then break
    addi t3, t6, 0
    addi t2, t2, 1
    jal x0, encode_while_2

encode_return:
    sub t5, s0, t3
    srl t5, t5, t2  # mantissa = (value - overflow) >> exponent
    slli a0, t2, 4
    or a0, a0, t5
    lw s0, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 8
    jr ra    # can be omitted

encode_return_lt16:
    jr ra
