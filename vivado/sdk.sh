#!/bin/bash

set -eu

vivado -mode batch -source "launch_sdk.tcl" -nojournal -nolog
