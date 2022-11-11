# Makefile for yosys synthesis and verilog2spice conversion

all: synth-yosys verilog2spice

synth-yosys:
	yosys upcounter.ys

verilog2spice:
	./synth2spice.sh

clean:
	rm -f ./synthesis/*
