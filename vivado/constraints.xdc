# main clock
set_property PACKAGE_PIN BJ52       [get_ports {diff_clock_rtl_0_clk_p}]
set_property IOSTANDARD LVDS        [get_ports {diff_clock_rtl_0_clk_p}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {diff_clock_rtl_0_clk_p}]

set_property PACKAGE_PIN BJ53       [get_ports {diff_clock_rtl_0_clk_n}]
set_property IOSTANDARD LVDS        [get_ports {diff_clock_rtl_0_clk_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {diff_clock_rtl_0_clk_n}]

# already constrained by clk_wiz_0
#create_clock -period 3.333 -name refclk [get_ports {diff_clock_rtl_0_clk_p}]

# USER_LED_R0 (DBG_0)
set_property PACKAGE_PIN BE53       [get_ports {DBG_0}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_0}]

# USER_LED_G3 (DBG_1)
set_property PACKAGE_PIN BE54       [get_ports {DBG_1}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_1}]

# USER_LED_G0 (DBG_2)
set_property PACKAGE_PIN BF53       [get_ports {DBG_2}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_2}]

# USER_LED_G1 (DBG_3)
set_property PACKAGE_PIN BG48       [get_ports {DBG_3}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_3}]

## USER_LED_G2 (DBG_4)
set_property PACKAGE_PIN BG49       [get_ports {DBG_4}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_4}]

## QSFP_LED_DG0_1V8 (DBG_A)
set_property PACKAGE_PIN BL53       [get_ports {DBG_A}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_A}]

## QSFP_LED_DG1_1V8 (DBG_B)
set_property PACKAGE_PIN BL50       [get_ports {DBG_B}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_B}]

## QSFP_LED_DR0_1V8 (DBG_C)
set_property PACKAGE_PIN BH47       [get_ports {DBG_C}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_C}]

## QSFP_LED_DR1_1V8 (DBG_D)
set_property PACKAGE_PIN BJ47       [get_ports {DBG_D}]
set_property IOSTANDARD LVCMOS18    [get_ports {DBG_D}]




# GPIO LEDs

# QSFP_LED_BG0_1V8 (LED[0])
set_property PACKAGE_PIN BM50       [get_ports {USER_LED[0]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[0]}]

# QSFP_LED_BG1_1V8 (LED[1])
set_property PACKAGE_PIN BL51       [get_ports {USER_LED[1]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[1]}]

# QSFP_LED_BR0_1V8 (LED[2])
set_property PACKAGE_PIN BK50       [get_ports {USER_LED[2]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[2]}]

# QSFP_LED_BR1_1V8 (LED[3])
set_property PACKAGE_PIN BK51       [get_ports {USER_LED[3]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[3]}]

# QSFP_LED_AG0_1V8 (LED[4])
set_property PACKAGE_PIN BN49       [get_ports {USER_LED[4]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[4]}]

# QSFP_LED_AG1_1V8 (LED[5])
set_property PACKAGE_PIN BM49       [get_ports {USER_LED[5]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[5]}]

# QSFP_LED_AR0_1V8 (LED[6])
set_property PACKAGE_PIN BK48       [get_ports {USER_LED[6]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[6]}]

# QSFP_LED_AR1_1V8 (LED[7])
set_property PACKAGE_PIN BK49       [get_ports {USER_LED[7]}]
set_property IOSTANDARD LVCMOS18    [get_ports {USER_LED[7]}]

# SWs

# SW_1
set_property PACKAGE_PIN BF52       [get_ports {SW1_1}]
set_property IOSTANDARD LVCMOS18    [get_ports {SW1_1}]

# greset
set_property PACKAGE_PIN BF47       [get_ports {greset}]
set_property IOSTANDARD LVCMOS18    [get_ports {greset}]

# UARTs

# UART3
set_property PACKAGE_PIN BK30       [get_ports {uart_rtl_3_rxd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_3_rxd}]
set_property PACKAGE_PIN BG32       [get_ports {uart_rtl_3_txd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_3_txd}]

# UART2
set_property PACKAGE_PIN BG30       [get_ports {uart_rtl_2_rxd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_2_rxd}]
set_property PACKAGE_PIN BG33       [get_ports {uart_rtl_2_txd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_2_txd}]

# UART1
set_property PACKAGE_PIN BH30       [get_ports {uart_rtl_1_rxd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_1_rxd}]
set_property PACKAGE_PIN BG29       [get_ports {uart_rtl_1_txd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_1_txd}]

# UART0
set_property PACKAGE_PIN BF32       [get_ports {uart_rtl_0_rxd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_0_rxd}]
set_property PACKAGE_PIN BJ29       [get_ports {uart_rtl_0_txd}]
set_property IOSTANDARD LVCMOS18    [get_ports {uart_rtl_0_txd}]
