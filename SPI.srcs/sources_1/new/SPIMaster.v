`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/27 22:24:45
// Design Name: 
// Module Name: SPIMaster
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

//POLE = 0 SPI 16bit data width LSB First
parameter STATE_RESET = 5'd0;
parameter STATE_BIT_0 = 5'd1;
parameter STATE_BIT_1 = 5'd2;
parameter STATE_BIT_2 = 5'd3;
parameter STATE_BIT_3 = 5'd4;
parameter STATE_BIT_4 = 5'd5;
parameter STATE_BIT_5 = 5'd6;
parameter STATE_BIT_6 = 5'd7;
parameter STATE_BIT_7 = 5'd8;
parameter STATE_BIT_8 = 5'd9;
parameter STATE_BIT_9 = 5'd10;
parameter STATE_BIT_10 = 5'd11;
parameter STATE_BIT_11 = 5'd12;
parameter STATE_BIT_12 = 5'd13;
parameter STATE_BIT_13 = 5'd14;
parameter STATE_BIT_14 = 5'd15;
parameter STATE_BIT_15 = 5'd16;
parameter STATE_STARTING = 5'd17;
module SPIMasterSend
#(parameter SYSTEM_CLK_RATE = 50000000,// default 40M input clock
  parameter SPI_RATE = 1000000//SPI default rate 1M
)(input wire clk,
        output wire spi_clk,
        output reg MOSI,
        input wire send_flag,// pull up to start sending frame, after that, the busy is pull up
        input wire[15:0] data_to_send,//data to send
        output reg busy,//current state, busy or wait
        output reg error
        
    );
    
    reg[27:0] spi_clk_counter;
    reg internal_clk;
    reg initialized = 0;
    reg[5:0] current_state;
    
    assign spi_clk = ~internal_clk;
    always@(posedge clk)begin
        if(initialized==0)begin
            initialized <= 1;//auto reset
            busy<=0;
            MOSI<=0;
            current_state<=STATE_RESET;
            spi_clk_counter<=0;
            internal_clk <= 0;
            error<=0;
        end else begin
            initialized<=initialized;
        end
    end
    
    always@(posedge clk)begin
        if(current_state!=STATE_RESET)begin
            if(spi_clk_counter<SYSTEM_CLK_RATE/SPI_RATE/2)begin
                spi_clk_counter<=spi_clk_counter+1;
            end else begin
                spi_clk_counter <= 0;
                internal_clk <= ~internal_clk;
            end
        end else begin
            spi_clk_counter<=0;
            internal_clk <= 0;
        end
    end
    always@(posedge clk)begin
        if(current_state==STATE_RESET&&send_flag==1)begin
            current_state<=STATE_STARTING;
            busy<=1;
            error<=0;
        end
    end
    always@(posedge internal_clk)begin
        case(current_state)
            STATE_RESET:begin
                current_state<=current_state;
                busy<=busy;
                MOSI<=MOSI;
                error<=0;
            end
            STATE_STARTING:begin
                current_state<=STATE_BIT_0;
                busy<=1;
                MOSI<=data_to_send[0];
                error<=0;
            end
            STATE_BIT_0:begin
                current_state<=STATE_BIT_1;
                busy<=1;
                MOSI<=data_to_send[1];
                error<=0;
            end
            STATE_BIT_1:begin
                current_state<=STATE_BIT_2;
                busy<=1;
                MOSI<=data_to_send[2];
                error<=0;
            end
            STATE_BIT_2:begin
                current_state<=STATE_BIT_3;
                busy<=1;
                MOSI<=data_to_send[3];
                error<=0;
            end
            STATE_BIT_3:begin
                current_state<=STATE_BIT_4;
                busy<=1;
                MOSI<=data_to_send[4];
                error<=0;
            end
            STATE_BIT_4:begin
                current_state<=STATE_BIT_5;
                busy<=1;
                MOSI<=data_to_send[5];
                error<=0;
            end
            STATE_BIT_5:begin
                current_state<=STATE_BIT_6;
                busy<=1;
                MOSI<=data_to_send[6];
                error<=0;
            end
            STATE_BIT_6:begin
                current_state<=STATE_BIT_7;
                busy<=1;
                MOSI<=data_to_send[7];
                error<=0;
            end
            STATE_BIT_7:begin
                current_state<=STATE_BIT_8;
                busy<=1;
                MOSI<=data_to_send[8];
                error<=0;
            end
            STATE_BIT_8:begin
                current_state<=STATE_BIT_9;
                busy<=1;
                MOSI<=data_to_send[9];
                error<=0;
            end
            STATE_BIT_9:begin
                current_state<=STATE_BIT_10;
                busy<=1;
                MOSI<=data_to_send[10];
                error<=0;
            end
            STATE_BIT_10:begin
                current_state<=STATE_BIT_11;
                busy<=1;
                MOSI<=data_to_send[11];
                error<=0;
            end
            STATE_BIT_11:begin
                current_state<=STATE_BIT_12;
                busy<=1;
                MOSI<=data_to_send[12];
                error<=0;
            end
            STATE_BIT_12:begin
                current_state<=STATE_BIT_13;
                busy<=1;
                MOSI<=data_to_send[13];
                error<=0;
            end
            STATE_BIT_13:begin
                current_state<=STATE_BIT_14;
                busy<=1;
                MOSI<=data_to_send[14];
                error<=0;
            end
            STATE_BIT_14:begin
                current_state<=STATE_BIT_15;
                busy<=1;
                MOSI<=data_to_send[15];
                error<=0;
            end
            STATE_BIT_15:begin
                current_state<=STATE_RESET;
                busy<=0;
                MOSI<=0;
                error<=0;
            end
            default:begin
                current_state<=STATE_RESET;
                busy<=0;
                MOSI<=0;
                error<=1;
            end
        endcase
    end
    
    
endmodule
