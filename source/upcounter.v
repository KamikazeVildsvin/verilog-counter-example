// -- Simple Verilog Counter -- //
// This file contains a simple 4 bit verilog up-counter.
// This counter has a synchronous reset.
// code inspired by: https://riptutorial.com/verilog/example/8307/simple-counter

module upcounter (clk,rst_n,count);

input clk;
input rst_n;
output reg [3:0] count;

always @(posedge clk) begin
    if (!rst_n)
        count <= 4'd0;
    else
        count <= count + 4'd1;
end

endmodule
