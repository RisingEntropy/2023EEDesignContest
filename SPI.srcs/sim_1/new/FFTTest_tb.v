`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/29 17:09:05
// Design Name: 
// Module Name: FFTTest_tb
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


module FFTTest_tb(

    );
    reg clk = 0;
    reg[15:0] data[4095:0];
    reg[15:0] data_to_module;
    reg[14:0] index = 0;
    reg start ;
    reg rstn = 1;
    wire busy;
    wire spi_clk, spi_mosi;
    always #5 clk=~clk;
    initial begin
        $readmemb("C:/Users/RisingEntropy/Documents/Projects/FPGA/fft_data.txt",data);
    end

    ADCBuffer buffer(
        .clk(clk),
        .rstn(rstn),
        .adc_data(data_to_module),
        .enable(start),
        .busy(busy),
        .spi_clk(spi_clk),
        .spi_mosi(spi_mosi)
    );
    always@(posedge clk)begin
        if(index<4096)begin
            index<=index+1;
            data_to_module <= data[index];
        end else begin
            index<=0;
        end
    end
    always@(posedge clk)begin
        if(busy==0)begin
            #10 start = 1;
        end
    end
    initial begin
        #20 start=1;
    end

endmodule
