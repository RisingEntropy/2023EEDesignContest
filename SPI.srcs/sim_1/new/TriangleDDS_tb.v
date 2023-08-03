`timescale 1ns / 1ps
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
    reg phase0_valid = 0;
    reg [31:0] phase0 = 0;
    reg [31:0] FTW = 10485760;
    reg FTW_state = 1;
    wire[13:0] dds_out;
    
    SineDDS dds(
        .clk(clk),
        .rstn(rstn),
        .phase0_valid(phase0_valid),
        .FTW(FTW),
        .FTW_state(FTW_state),
        .dds_out(dds_out)
    );
    
    always #5 clk=~clk;
endmodule
