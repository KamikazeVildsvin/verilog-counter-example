# Simple Counter - Verilog to Standard Cells & SPICE
Example of how to use `yosys`, `vlog2Verilog` and `vlog2Spice` to generate a RTL verilog file as well as a spice netlist mapped to the `sky130` PDK.

## Requirements
You need `yosys` from [this](https://github.com/YosysHQ/yosys) repo. To perform the verilog to spice convertion, you need to make the two
binaries `vlog2Verilog` and `vlog2Spice` which can be build from the [qflow](https://github.com/RTimothyEdwards/qflow). For all of this to work, you need
these three binaries in your `$PATH` variable.

#### Skywater 130nm PDK
The skywater 130nm PDK needs to be install into the `/usr/local/share/pdk` directory using the `open_pdks` installation 
(check [this](https://github.com/RTimothyEdwards/open_pdks) repo. Otherwise, the scripts won't work.

## Example
To synthesize the verilog counter `upcounter.v` and create a spice netlist aswell just do
```
make
```
If you want to do only the `yosys` synthesis, you can call
```
make synth-yosys
```
The file `synth.spice` contains the
