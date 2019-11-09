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
  li    t0, 0
  sd    t0, 16(sp)
  add   a0, sp, 16
  jal   inc_hart_count
  // value at the stack base is used to signal completion of program loading
  sd    t0, 8(sp)
  csrr  t0, mhartid
  bnez  t0, wait_for_main_hart
  fence
  ld    a0, 16(sp)
  jal   bootrom_main
  // send signal to other harts to wake them up
  li    t0, 1
  sd    t0, 8(sp)
  fence
  j     prepare_boot

wait_for_main_hart:
  // check if the program loading is done
  fence
  ld    t0, 8(sp)
  // wait as long as the value hasn't changed from 0 to 1
  // using WFI and an IPI would be nicer, but it requires parsing the device tree to get the PLIC location
  beqz  t0, wait_for_main_hart
prepare_boot:
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
