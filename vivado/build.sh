#!/bin/bash

set -eu

# make sure we are in the right directory
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

renice -n 10 $$
make -j `nproc` -C ../vsim verilog CONFIG=ADMPCIE9H7Config
rm -rf .Xil rocket_board_design rocket_ip_core
vivado -mode batch -source "all.tcl" -nojournal -nolog
