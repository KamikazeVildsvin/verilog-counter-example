// -- Test Bench 4 bit Upcounter -- //

`timescale 1ns / 1ns

module upcounter_tb();

reg clk, reset;
wire [3:0] count;

upcounter dut(clk, reset, count);

always begin
    #5 clk = ~clk;
end

initial begin 
    $dumpfile("upcounter.vcd");
    $dumpvars(0,upcounter_tb);
    clk = 0; reset = 0;
    #20;
    reset = 1;
    #10 if (count == 4'd1) begin
        $display($time,"ns; Value of counter is correct: %b", count);
    end
    #40 reset = 0;
    #20 reset = 1;
end 

initial begin
    #200;
    $display("simulation done!");
    $finish;
end

endmodule
