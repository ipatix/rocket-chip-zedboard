bootrom_img = bootrom.img

GCC=riscv64-unknown-elf-gcc
OBJCOPY=riscv64-unknown-elf-objcopy

all: $(bootrom_img)

%.img: %.bin
	dd if=$< of=$@ bs=32768 count=1

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

devicetree.dtb: devicetree.dts
	dtc -O dtb -o $@ $<

.PRECIOUS: bootrom.elf
%.elf: bootrom.S bootrom.c linker.ld devicetree.dtb
	$(GCC) -Tlinker.ld bootrom.S bootrom.c -nostdlib -static -Wl,--no-gc-sections -o $@ -Os -Wall -Wextra
