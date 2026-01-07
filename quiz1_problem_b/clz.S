    # clz
    .equ STDOUT, 1
    .equ WRITE, 64
    .equ EXIT, 93

    .section .rodata
    .align 2
undefined:
    .ascii "Undefined Behavior!\n"
    .section .text
    .global clz

# a0:   x
# t0:   n
# t1:   c
# t2:   y
clz:
        beq a0, x0, clz_equal_zero
        addi t0, x0, 32 # n = 32
        addi t1, x0, 16 # c = 16
clz_while:
        srl t2, a0, t1          # y = x >> c
        beq t2, x0, clz_skip
        sub t0, t0, t1          # n -= c
        addi a0, t2, 0  # x = y
clz_skip:
        srli t1, t1, 1          # c >>= 1
        bnez t1, clz_while # while (c != 0)
clz_ret:
        sub a0, t0, a0  # return n - x
        jr ra
clz_equal_zero:
        # print undefined behavior
        li a0, STDOUT
        la a1, undefined
        li a2, 20
        li a7, WRITE
        ecall

        li a0, -1
        jr ra
