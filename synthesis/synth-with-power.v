/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */
/* With case-insensitive names (SPICE-compatible) */

module upcounter(
    inout VDD,
    inout VSS,
    input clk,
    output [3:0] count,
    input rst_n
);

wire rst_n ;
wire _07_ ;
wire _04_ ;
wire clk ;
wire _01_ ;
wire _06_ ;
wire _03_ ;
wire _00_ ;
wire [3:0] count ;
wire _08_ ;
wire _05_ ;
wire _02_ ;

sky130_fd_sc_hd__lpflow_isobufsrc_1 _09_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A(rst_n),
    .SLEEP(count[0]),
    .X(_00_)
);

sky130_fd_sc_hd__o21ai_0 _10_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A1(count[0]),
    .A2(count[1]),
    .B1(rst_n),
    .Y(_04_)
);

sky130_fd_sc_hd__a21oi_1 _11_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A1(count[0]),
    .A2(count[1]),
    .B1(_04_),
    .Y(_01_)
);

sky130_fd_sc_hd__nand3_1 _12_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A(count[0]),
    .B(count[2]),
    .C(count[1]),
    .Y(_05_)
);

sky130_fd_sc_hd__a21oi_1 _13_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A1(count[0]),
    .A2(count[1]),
    .B1(count[2]),
    .Y(_06_)
);

sky130_fd_sc_hd__and3b_1 _14_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A_N(_06_),
    .B(rst_n),
    .C(_05_),
    .X(_02_)
);

sky130_fd_sc_hd__nand4_1 _15_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A(count[0]),
    .B(count[2]),
    .C(count[3]),
    .D(count[1]),
    .Y(_07_)
);

sky130_fd_sc_hd__a31o_1 _16_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A1(count[0]),
    .A2(count[2]),
    .A3(count[1]),
    .B1(count[3]),
    .X(_08_)
);

sky130_fd_sc_hd__and3_1 _17_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .A(rst_n),
    .B(_07_),
    .C(_08_),
    .X(_03_)
);

sky130_fd_sc_hd__dfxtp_1 _18_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .CLK(clk),
    .D(_00_),
    .Q(count[0])
);

sky130_fd_sc_hd__dfxtp_1 _19_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .CLK(clk),
    .D(_01_),
    .Q(count[1])
);

sky130_fd_sc_hd__dfxtp_1 _20_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .CLK(clk),
    .D(_02_),
    .Q(count[2])
);

sky130_fd_sc_hd__dfxtp_1 _21_ (
    .VGND(VSS),
    .VNB(VSS),
    .VPB(VDD),
    .VPWR(VDD),
    .CLK(clk),
    .D(_03_),
    .Q(count[3])
);

endmodule
