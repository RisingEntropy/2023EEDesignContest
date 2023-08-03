`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 22:31:57
// Design Name: 
// Module Name: TriangleDDS_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TriangleDDS_tb(

    );
    reg clk = 0;
    reg rstn = 1;
    reg phase0_valid = 1;
    reg rst_phase = 0;
    reg enable = 1;
    reg [31:0] phase0 = 357913941;
    reg [31:0] FTW = 10485760;
    reg FTW_state = 1;
    wire[13:0] dds_out;
    
    SineDDS dds(
        .clk(clk),
        .rstn(rstn),
        .rst_phase(rst_phase),
        .enable(enable),
        .phase0(phase0),
        .phase0_valid(phase0_valid),
        .FTW(FTW),
        .FTW_state(FTW_state),
        .dds_out(dds_out)
    );
    
    always #25 clk=~clk;
endmodule
