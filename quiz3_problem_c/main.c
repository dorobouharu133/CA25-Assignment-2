#include <stdbool.h>
#include <stdint.h>
#include <string.h>

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
    char *p = buf + sizeof(buf) - 1;
    *p = '\n';
    p--;

    if (val == 0) {
        *p = '0';
        p--;
    } else {
        while (val > 0) {
            int digit = val & 0xf;
            *p = (digit < 10) ? ('0' + digit) : ('a' + digit - 10);
            p--;
            val >>= 4;
        }
    }

    p++;
    printstr(p, (buf + sizeof(buf) - p));
}

/* Simple integer to decimal string conversion */
static void print_dec(unsigned long val)
{
    char buf[20];
    char *p = buf + sizeof(buf) - 1;
    *p = '\n';
    p--;

    if (val == 0) {
        *p = '0';
        p--;
    } else {
        while (val > 0) {
            *p = '0' + umod(val, 10);
            p--;
            val = udiv(val, 10);
        }
    }

    p++;
    printstr(p, (buf + sizeof(buf) - p));
}

static uint64_t mul32(uint32_t a, uint32_t b);
static void newton_step(uint32_t *rec_inv_sqrt, uint32_t x);
uint32_t fast_rsqrt(uint32_t x);
static int clz(uint32_t x);
uint32_t fast_distance_3d(int32_t dx, int32_t dy, int32_t dz);

#define REC_INV_SQRT_CACHE (16)
static const uint32_t inv_sqrt_cache[REC_INV_SQRT_CACHE] = {
    ~0U,        ~0U, 3037000500, 2479700525,
    2147483647, 1920767767, 1753413056, 1623345051,
    1518500250, 1431655765, 1358187914, 1294981364,
    1239850263, 1191209601, 1147878294, 1108955788
};

/*
 * Newton iteration: new_y = y * (3/2 - x * y^2 / 2)
 * Here, y is a Q0.32 fixed-point number (< 1.0)
 */
static void newton_step(uint32_t *rec_inv_sqrt, uint32_t x)
{
    uint32_t invsqrt, invsqrt2;
    uint64_t val;

    invsqrt = *rec_inv_sqrt;  /* Dereference pointer */
    invsqrt2 = ((uint64_t)invsqrt * invsqrt) >> 32;
    val = (3LL << 32) - ((uint64_t)x * invsqrt2);

    val >>= 2; /* Avoid overflow in following multiply */
    val = (val * invsqrt) >> 31;  /* Right shift by 31 = (32 - 2 + 1) */

    *rec_inv_sqrt = (uint32_t)val;
}


static const uint16_t rsqrt_table[32] = {
    65535, 46341, 32768, 23170, 16384,
    11585, 8192, 5793, 4096, 2896,
    2048, 1448, 1024, 724, 512,
    362, 256, 181, 128, 90,
    64, 45, 32, 23, 16,
    11, 8, 6, 4, 3,
    2, 1
};

uint32_t fast_rsqrt(uint32_t x) {
    if (x == 0) return 0xFFFFFFFF;
    if (x == 1) return 65536;

    int exp = 31 - clz(x);

    uint32_t y = rsqrt_table[exp];

    if(x > (1u << exp)) {
        uint32_t y_next = (exp < 31) ? rsqrt_table[exp + 1] : 0;
        uint32_t delta = y - y_next;
        uint32_t frac = (uint32_t) ((((uint64_t)x - (1UL << exp)) << 16) >> exp);
        y -= (uint32_t) ((delta * frac) >> 16);
    }

    for(int iter = 0; iter < 2; iter++) {
        uint32_t y2 = (uint32_t)mul32(y, y);
        uint32_t xy2 = (uint32_t)(mul32(x, y2) >> 16);
        y = (uint32_t)(mul32(y, (3u << 16) - xy2) >> 17);
    }

    return y;
}

static uint64_t mul32(uint32_t a, uint32_t b) {
    uint64_t r = 0;
    for(int i = 0; i < 32; i++) {
        if(b & (1U << i))
            r += (uint64_t)a << i;
    }
    return r;
}

static int clz(uint32_t x) {
    if(!x) return 32;
    int n = 0;
    if(!(x & 0xFFFF0000)) { n += 16; x <<= 16;}
    if(!(x & 0xFF000000)) { n += 8;  x <<= 8;}
    if(!(x & 0xF0000000)) { n += 4;  x <<= 4;}
    if(!(x & 0xC0000000)) { n += 2;  x <<= 2;}
    if(!(x & 0x80000000)) { n += 1;}
    return n;
}

/* Calculate distance using rsqrt
 *
 * Faster than computing sqrt directly:
 * sqrt(x) = x * (1/sqrt(x))
 */
uint32_t fast_distance_3d(int32_t dx, int32_t dy, int32_t dz)
{
    uint64_t dist_sq = (uint64_t)dx * dx +
                       (uint64_t)dy * dy +
                       (uint64_t)dz * dz;

    if (dist_sq > 0xFFFFFFFF)
        dist_sq >>= 16;

    uint32_t inv_dist = fast_rsqrt((uint32_t)dist_sq);

    /* sqrt(x) = x / sqrt(x) = x * (1/sqrt(x)) */
    uint64_t dist = ((uint64_t)dist_sq * inv_dist) >> 16;

    return (uint32_t)dist;
}


int main() {
    TEST_LOGGER("=== RV32 Bare-metal rsqrt test ===\n");

    /* Test Case 1: 1 */
    /* 1/sqrt(1) = 1.00 */
    TEST_LOGGER("Input: 1 (Expect 65536)\n");
    uint32_t res = fast_rsqrt(1);
    TEST_LOGGER("Result: ");
    print_dec(res);


    /* Test Case 2: 4 */
    /* 1/sqrt(4) = 0.50 */
    TEST_LOGGER("Input: 4 (Expect 32768)\n");
    res = fast_rsqrt(4);
    TEST_LOGGER("Result: ");
    print_dec(res);


    /* Test Case 3: 16 */
    /* 1/sqrt(16) = 0.25. Q16.16 format: 0.25 * 65536 = 16384 */
    TEST_LOGGER("Input: 16 (Expect ~16384)\n");
    res = fast_rsqrt(16);
    TEST_LOGGER("Result: ");
    print_dec(res);

    /* Test Case 4: 100 */
    /* 1/sqrt(100) = 0.1. Q16.16 format: 0.1 * 65536 = 6553.6 -> 6553 */
    TEST_LOGGER("Input: 100 (Expect ~6553)\n");
    res = fast_rsqrt(100);
    TEST_LOGGER("Result: ");
    print_dec(res);

    /* Test Case 5: 4096 */
    /* 1/sqrt(4096) = 1/64 = 0.015625. Q16.16: 1024 */
    TEST_LOGGER("Input: 4096 (Expect ~1024)\n");
    res = fast_rsqrt(4096);
    TEST_LOGGER("Result: ");
    print_dec(res);

    return 0;
}