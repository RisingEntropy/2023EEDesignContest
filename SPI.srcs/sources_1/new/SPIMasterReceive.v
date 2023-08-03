`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 15:44:34
// Design Name: 
// Module Name: SPIMasterReceive
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

module SPIMasterReceive #(parameter SYSTEM_CLK_RATE = 50000000,// default 40M input clock
  parameter SPI_RATE = 1000000//SPI default rate 1M
)(input wire clk,
        output wire spi_clk,
        input wire MISO,
        input wire receive_flag,// pull up to start receive frame, after that, the busy is pulled up
        output reg[15:0] data_receive,//data received
        output reg busy,//current state, busy or wait
        output reg data_ready,// data receiverd, ok to be read
        output reg error
    );
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
    reg[28:0] spi_clk_counter;
    reg initialized = 0;
    reg internal_clk;
    assign spi_clk=~internal_clk;// receive data at the NEGEDGE of internal_clk, posedge of spi_clk is used for sender to prepare data
    reg [5:0] current_state;
    always@(posedge clk)begin
        if(initialized==0)begin
            initialized<=1;
            internal_clk<=0;
            current_state<=STATE_RESET;
            error<=0;
            data_ready<=0;
            data_receive<=0;
            busy<=0;
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
        if(current_state==STATE_RESET&&receive_flag==1)begin
            current_state<=STATE_STARTING;
            busy<=1;
            data_ready<=0;
            error<=0;
        end
    end
    
    always@(negedge internal_clk)begin//receive at NEGEDGE of internal clk
        case(current_state)
            STATE_RESET:begin
                current_state<=current_state;
                busy<=busy;
                data_receive<=data_receive;
                data_ready<=data_ready;
                error<=0;
            end
            STATE_STARTING:begin//keep everything at this state
                current_state<=STATE_BIT_0;
                busy<=1;
                data_receive[0]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_0:begin
                current_state<=STATE_BIT_1;
                busy<=1;
                data_receive[1]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_1:begin
                current_state<=STATE_BIT_2;
                busy<=1;
                data_receive[2]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_2:begin
                current_state<=STATE_BIT_3;
                busy<=1;
                data_receive[3]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_3:begin
                current_state<=STATE_BIT_4;
                busy<=1;
                data_receive[4]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_4:begin
                current_state<=STATE_BIT_5;
                busy<=1;
                data_receive[5]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_5:begin
                current_state<=STATE_BIT_6;
                busy<=1;
                data_receive[6]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_6:begin
                current_state<=STATE_BIT_7;
                busy<=1;
                data_receive[7]<=MISO;
                
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_7:begin
                current_state<=STATE_BIT_8;
                busy<=1;
                data_receive[8]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_8:begin
                current_state<=STATE_BIT_9;
                busy<=1;
                data_receive[9]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_9:begin
                current_state<=STATE_BIT_10;
                busy<=1;
                data_receive[10]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_10:begin
                current_state<=STATE_BIT_11;
                busy<=1;
                data_receive[11]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_11:begin
                current_state<=STATE_BIT_12;
                busy<=1;
                data_receive[12]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_12:begin
                current_state<=STATE_BIT_13;
                busy<=1;
                data_receive[13]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_13:begin
                current_state<=STATE_BIT_14;
                busy<=1;
                data_receive[14]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_14:begin
                current_state<=STATE_BIT_15;
                busy<=1;
                data_receive[15]<=MISO;
                data_ready<=0;
                error<=0;
            end
            STATE_BIT_15:begin
                current_state<=STATE_RESET;
                busy<=0;
                data_ready<=1;
                error<=0;
            end
            default:begin
                current_state<=STATE_RESET;
                busy<=0;
                data_ready<=0;
                error<=1;
            end
            
        endcase
    end
endmodule

