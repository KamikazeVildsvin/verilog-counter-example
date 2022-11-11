#!/bin/zsh

cd simulations

# run the iverilog compiler and simulator
iverilog -o result.out ../source/upcounter_tb.v ../source/upcounter.v

# use vvp to generate the .vcd files to view in gtkwave
vvp result.out
cd ..

# start gtkwave and show results
echo "starting gtkwave ..."
/Applications/gtkwave.app/Contents/Resources/bin/gtkwave ./simulations/upcounter.vcd
