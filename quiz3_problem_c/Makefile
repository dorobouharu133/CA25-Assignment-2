include ../../../mk/toolchain.mk

ARCH = -march=rv32izicsr
LINKER_SCRIPT = linker.ld

EMU ?= ../../../build/rv32emu

AFLAGS = -g $(ARCH)
CFLAGS = -g $(ARCH)
LDFLAGS = -T $(LINKER_SCRIPT)
EXEC = test.elf

CC = $(CROSS_COMPILE)gcc
AS = $(CROSS_COMPILE)as
OBJDUMP = $(CROSS_COMPILE)objdump

OBJS = start.o main.o

.PHONY: all run dump clean

all: $(EXEC)

$(EXEC): $(OBJS) $(LINKER_SCRIPT)
	$(CC) $(CFLAGS) $(LDFLAGS) -nostartfiles -o $@ $(OBJS)

%.o: %.S
	$(AS) $(AFLAGS) -c $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@ -c

run: $(EXEC)
	@test -f $(EMU) || (echo "Error: $(EMU) not found" && exit 1)
	@grep -q "ENABLE_ELF_LOADER=1" ../../../build/.config || (echo "Error: ENABLE_ELF_LOADER=1 not set" && exit 1)
	@grep -q "ENABLE_SYSTEM=1" ../../../build/.config || (echo "Error: ENABLE_SYSTEM=1 not set" && exit 1)
	$(EMU) $<

dump: $(EXEC)
	$(OBJDUMP) -Ds $< | less

clean:
	rm -f $(EXEC) $(OBJS)