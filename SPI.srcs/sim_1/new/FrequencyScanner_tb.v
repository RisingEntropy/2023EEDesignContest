`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/30 11:14:38
// Design Name: 
// Module Name: FrequencyScanner_tb
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


module FrequencyScanner_tb(

    );
    reg clk = 0;
    wire spi_clk;
    wire spi_mosi;
    FrequencyScanner scanner(
        .clk(clk),
        .spi_clk(spi_clk),
        .spi_mosi(spi_mosi)
    );
    always #5 clk=~clk;
endmodule
