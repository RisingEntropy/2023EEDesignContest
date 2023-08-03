`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 13:11:18
// Design Name: 
// Module Name: DACTest
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


module DACTest(
    input wire clk,
    output wire[13:0] dac,
    output reg dac_sleep = 0
    );
    wire dds_clk;
    wire pll_locked;
    wire dds_valid;
    reg reset = 0;
    dds_compiler_0 dds(
        .aclk(clk),
        .m_axis_data_tdata(dac),
        .m_axis_data_tvalid(dds_valid)
    );
    ila_4 ila(
        .clk(clk),
        .probe0(dac)
    );
endmodule
