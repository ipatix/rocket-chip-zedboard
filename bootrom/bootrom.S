#define DRAM_BASE 0x80000000
#define DRAM_END  0x9FF00000

#define UART_BASE 0x60000000
#define GPIO_BASE 0x60010000

// GPIO1 == output
#define GPIO_DATA 0x0
#define GPIO_TRI 0x4
// GPIO2 == input
#define GPIO2_DATA 0x8
#define GPIO2_TRI 0xC

.section .text.start, "ax", @progbits
.globl _start
_start:
  j     _hang

.section .text.hang, "ax", @progbits
.globl _hang
_hang:
  csrwi 0x7c1, 0 // disable chicken bits
  j     _bootrom_init

.section .text, "ax", @progbits
.globl _bootrom_init
_bootrom_init:
  li    sp, DRAM_END
  addi  sp, sp, -64
  jal   bootrom_main
  mv    sp, zero
  csrr  a0, mhartid
  li    s0, DRAM_BASE
  la    a1, _custom_devicetree
  fence
  fence.i
  jr    s0

.section .rodata, "a", @progbits
.globl _custom_devicetree
.align 5, 0
_custom_devicetree:
.incbin "devicetree.dtb"

# located at image address 0x1000, not copied to binary
.section .rodata.dtb, "a", @progbits
.globl _dtb
.align 5, 0
_dtb:
.ascii "DTB goes here"
