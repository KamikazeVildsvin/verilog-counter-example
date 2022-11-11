#!/bin/bash
# Convert synthesized Yosys RTL verilog netlist to a spice netlist
echo "Converting RTL verilog to spice netlist WITH power pins"

echo "Running vlog2Verilog..."
vlog2Verilog -o ./synthesis/synth-with-power.v -l "/usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef" -v "VDD," -g "VSS," ./synthesis/synth.v

echo "Running vlog2Spice..."
vlog2Spice -o ./synthesis/synth.spice -l "/usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice" ./synthesis/synth-with-power.v

echo "Done!"
