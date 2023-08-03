`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 12:48:35
// Design Name: 
// Module Name: SPI_tb
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


module SPI_tb(

    );
    reg clk = 0;
    reg [15:0] data_to_send = 16'habcd;
    reg receive_flag = 0;
    wire busy;
    wire mosi;
    wire spi_clk;
    wire data_ready;
    reg miso;
    wire error;
    wire[15:0] data_received;
    SPIMasterReceive #(50000000,50000000) receiver(
        .clk(clk),
        .spi_clk(spi_clk),
        .MISO(miso),
        .receive_flag(receive_flag),
        .busy(busy),
        .data_ready(data_ready),
        .error(error),
        .data_receive(data_received)
    );
    always #20 clk=~clk;
    reg[5:0] index=0;
    always@(posedge spi_clk)begin
        if(index<16)begin
            miso<=data_to_send[index];
            index<=index+1;
        end else begin
            index <= 0;
        end
    end
    initial begin
        #40 receive_flag=1;
        #40 receive_flag = 0;
    end
    
endmodule
