`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 17:09:24
// Design Name: 
// Module Name: ConfigurableReceiver_tb
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


module ConfigurableReceiver_tb(

    );
    reg clk = 0;
    reg[15:0] data[4095:0];
    reg[15:0] data_to_module;
    reg[14:0] index = 0;
    reg[15:0] data_16b = 16'habcd;
    wire busy;
    reg enable = 0;
    wire out_spi_clk,out_MOSI;
    wire spi_clk, spi_mosi;
    always #5 clk=~clk;
    initial begin
        $readmemb("C:/Users/RisingEntropy/Documents/Projects/FPGA/fft_data.txt",data);
    end
    
    DecimatorBuffer buffer(
        .clk(clk),
        .adc_in(data_to_module),
        .rstn(1),
        .enable(enable),
        .spi_clk(spi_clk),
        .spi_mosi(spi_mosi)
    );
    
    initial begin
        #20 enable = 0;
        #20 enable = 1;
    end
    always@(posedge clk)begin
        if(index<4096)begin
            index<=index+1;
            data_to_module <= data[index];
        end else begin
            index<=0;
        end
    end
    

endmodule
