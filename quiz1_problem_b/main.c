#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#define printstr(ptr, length)                   \
    do {                                        \
        asm volatile(                           \
            "add a7, x0, 0x40;"                 \
            "add a0, x0, 0x1;" /* stdout */     \
            "add a1, x0, %0;"                   \
            "mv a2, %1;" /* length character */ \
            "ecall;"                            \
            :                                   \
            : "r"(ptr), "r"(length)             \
            : "a0", "a1", "a2", "a7");          \
    } while (0)

#define TEST_OUTPUT(msg, length) printstr(msg, length)

#define TEST_LOGGER(msg)                     \
    {                                        \
        char _msg[] = msg;                   \
        TEST_OUTPUT(_msg, sizeof(_msg) - 1); \
    }

extern uint64_t get_cycles(void);
extern uint64_t get_instret(void);

/* Bare metal memcpy implementation */
void *memcpy(void *dest, const void *src, size_t n)
{
    uint8_t *d = (uint8_t *) dest;
    const uint8_t *s = (const uint8_t *) src;
    while (n--)
        *d++ = *s++;
    return dest;
}

/* Software division for RV32I (no M extension) */
static unsigned long udiv(unsigned long dividend, unsigned long divisor)
{
    if (divisor == 0)
        return 0;

    unsigned long quotient = 0;
    unsigned long remainder = 0;

    for (int i = 31; i >= 0; i--) {
        remainder <<= 1;
        remainder |= (dividend >> i) & 1;

        if (remainder >= divisor) {
            remainder -= divisor;
            quotient |= (1UL << i);
        }
    }

    return quotient;
}

static unsigned long umod(unsigned long dividend, unsigned long divisor)
{
    if (divisor == 0)
        return 0;

    unsigned long remainder = 0;

    for (int i = 31; i >= 0; i--) {
        remainder <<= 1;
        remainder |= (dividend >> i) & 1;

        if (remainder >= divisor) {
            remainder -= divisor;
        }
    }

    return remainder;
}

/* Software multiplication for RV32I (no M extension) */
static uint32_t umul(uint32_t a, uint32_t b)
{
    uint32_t result = 0;
    while (b) {
        if (b & 1)
            result += a;
        a <<= 1;
        b >>= 1;
    }
    return result;
}

/* Provide __mulsi3 for GCC */
uint32_t __mulsi3(uint32_t a, uint32_t b)
{
    return umul(a, b);
}

/* Simple integer to hex string conversion */
static void print_hex(unsigned long val)
{
    char buf[20];
    char *p = buf + sizeof(buf);

    if (val == 0) {
        *--p = '0';
    } else {
        while (val > 0) {
            int digit = val & 0xf;
            *--p = (digit < 10) ? ('0' + digit) : ('a' + digit - 10);
            val >>= 4;
        }
    }

    printstr(p, (buf + sizeof(buf) - p));
}

/* Simple integer to decimal string conversion */
static void print_dec(unsigned long val)
{
    char buf[20];
    char *p = buf + sizeof(buf);

    if (val == 0) {
        *--p = '0';
    } else {
        while (val > 0) {
            *--p = '0' + umod(val, 10);
            val = udiv(val, 10);
        }
    }
    printstr(p, (buf + sizeof(buf) - p));
}



typedef uint8_t uf8;

static inline unsigned clz(uint32_t x)
{
    int n = 32, c = 16;
    do {
        uint32_t y = x >> c;
        if (y) {
            n -= c;
            x = y;
        }
        c >>= 1;
    } while (c);
    return n - x;
}

/* Decode uf8 to uint32_t */
uint32_t uf8_decode(uf8 fl)
{
    uint32_t mantissa = fl & 0x0f;
    uint8_t exponent = fl >> 4;
    uint32_t offset = (0x7FFF >> (15 - exponent)) << 4;
    return (mantissa << exponent) + offset;
}

/* Encode uint32_t to uf8 */
uf8 uf8_encode(uint32_t value)
{
    /* Use CLZ for fast exponent calculation */
    if (value < 16)
        return value;

    /* Find appropriate exponent using CLZ hint */
    int lz = clz(value);
    int msb = 31 - lz;

    /* Start from a good initial guess */
    uint8_t exponent = 0;
    uint32_t overflow = 0;

    if (msb >= 5) {
        /* Estimate exponent - the formula is empirical */
        exponent = msb - 4;
        if (exponent > 15)
            exponent = 15;

        /* Calculate overflow for estimated exponent */
        for (uint8_t e = 0; e < exponent; e++)
            overflow = (overflow << 1) + 16;

        /* Adjust if estimate was off */
        while (exponent > 0 && value < overflow) {
            overflow = (overflow - 16) >> 1;
            exponent--;
        }
    }

    /* Find exact exponent */
    while (exponent < 15) {
        uint32_t next_overflow = (overflow << 1) + 16;
        if (value < next_overflow)
            break;
        overflow = next_overflow;
        exponent++;
    }

    uint8_t mantissa = (value - overflow) >> exponent;
    return (exponent << 4) | mantissa;
}


static bool test(void) {
    int32_t previous_value = -1;
    bool passed = true;

    printstr("==== UF8 Encode/Decode Test ====\n", 33);

    for (int i = 0; i < 256; i++) {
        uint8_t f1 = i;
        int32_t value = uf8_decode(f1);
        uint8_t f12 = uf8_encode(value);

        printstr("Test ", 5);
        print_dec(i);
        printstr(" | UF8 = ", 9);
        print_hex(f1);
        printstr(" | Decode = ", 12);
        print_dec(value);
        printstr(" | Encode = ", 11);
        print_hex(f12);
        printstr("\n", 1);

        if (f1 != f12) {
            printstr("0x", 2);
            print_hex(f1);
            printstr(": decoded=", 10);
            print_dec(value);
            printstr(" but encodes back to 0x", 23);
            print_hex(f12);
            printstr("\n", 1);
            passed = false;
        }

        if (value <= previous_value) {
            printstr("0x", 2);
            print_hex(f1);
            printstr(": decoded=", 10);
            print_dec(value);
            printstr(" <= previous ", 13);
            print_dec(previous_value);
            printstr("\n", 1);
            passed = false;
        }
        previous_value = value;
    }
    return passed;
}

int main(void) {
    if(test()) {
        printstr("==== All tests PASSED ====\n", 27);
        return 0;
    } else {
        printstr("==== Some tests FAILED ====\n", 27);
        return 1;
    }
}
