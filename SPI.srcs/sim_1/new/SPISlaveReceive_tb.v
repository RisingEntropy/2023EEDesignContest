`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/01 14:04:18
// Design Name: 
// Module Name: SPISlaveReceive_tb
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


module SPISlaveReceive_tb(

    );
    reg clk = 0;
    reg spi_clk = 0,MOSI = 0,clear_ready_flag = 0;
    wire busy, data_ready;
    wire[15:0] data;
    SPISlaveReceive receiver(
        .clk(clk),
        .spi_clk(spi_clk),
        .MOSI(MOSI),
        .clear_ready_flag(clear_ready_flag),
        .busy(busy),
        .data_ready(data_ready)
    );
    always #5 clk=~clk;
    always #40 spi_clk=~spi_clk;
    always #80 MOSI=~MOSI;
    
    always@(posedge clk)begin
       if(data_ready==1)begin
            clear_ready_flag <= 1;
        end else begin
            clear_ready_flag <= 0;
        end
    end
    
endmodule
