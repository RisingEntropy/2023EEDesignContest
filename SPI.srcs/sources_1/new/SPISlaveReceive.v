`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/01 12:20:48
// Design Name: 
// Module Name: SPISlaveReceive
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


module SPISlaveReceive(
        input wire clk,
        input wire spi_clk,
        input wire MOSI,
        input wire rstn,
        input wire cs,
        input wire clear_ready_flag,
        output reg busy = 0,
        output reg data_ready = 0,
        output reg[15:0] data = 0
    );
    parameter STATE_IDLE = 6'd0;
    parameter STATE_RECEIVING_BIT_0 = 6'd1;
    parameter STATE_RECEIVING_BIT_1 = 6'd2;
    parameter STATE_RECEIVING_BIT_2 = 6'd3;
    parameter STATE_RECEIVING_BIT_3 = 6'd4;
    parameter STATE_RECEIVING_BIT_4 = 6'd5;
    parameter STATE_RECEIVING_BIT_5 = 6'd6;
    parameter STATE_RECEIVING_BIT_6 = 6'd7;
    parameter STATE_RECEIVING_BIT_7 = 6'd8;
    parameter STATE_RECEIVING_BIT_8 = 6'd9;
    parameter STATE_RECEIVING_BIT_9 = 6'd10;
    parameter STATE_RECEIVING_BIT_10 = 6'd11;
    parameter STATE_RECEIVING_BIT_11 = 6'd12;
    parameter STATE_RECEIVING_BIT_12 = 6'd13;
    parameter STATE_RECEIVING_BIT_13 = 6'd14;
    parameter STATE_RECEIVING_BIT_14 = 6'd15;
    parameter STATE_RECEIVING_BIT_15 = 6'd16;
    reg[5:0] current_state = STATE_IDLE;
    reg[1:0] internal_spi_clk = 2'b00;
    
    ila_3 ila(
        .clk(clk),
        .probe0(spi_clk),
        .probe1(MOSI),
        .probe2(clear_ready_flag),
        .probe3(busy),
        .probe4(data_ready),
        .probe5(data),
        .probe6(current_state),
        .probe7(internal_spi_clk)
        
    );
    always@(posedge clk)begin
        if(rstn==0)begin
            internal_spi_clk <= {spi_clk,spi_clk};
        end else if(cs==1) begin
            internal_spi_clk <= {spi_clk,spi_clk};
        end else begin
            internal_spi_clk <= {internal_spi_clk[0], spi_clk};
        end
    end  
    
    always@(posedge clk)begin
        if(rstn==0)begin
            busy<=0;
            data_ready <= 0;
        end else if(cs==1)begin
            busy<=0;
        end else if(internal_spi_clk==2'b01&&current_state==STATE_IDLE)begin
            busy <= 1;
            data_ready <= 0;
        end else if(data_ready==1&&clear_ready_flag==1)begin
            data_ready <= 0;
        end if(current_state==STATE_RECEIVING_BIT_15)begin
            data_ready<=1;
            busy <= 0;
        end else begin
            data_ready <= data_ready;
        end
    end
    
    always@(posedge clk)begin
        if(rstn==0)begin
            current_state <= STATE_IDLE;
            data <= 0;
        end else if(cs==1)begin 
            current_state <= STATE_IDLE;
        end else if(internal_spi_clk==2'b01)begin
            case(current_state)
                STATE_IDLE:begin
                    data[15] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_0;
                end
                STATE_RECEIVING_BIT_0:begin
                    data[14] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_1;
                end
                 STATE_RECEIVING_BIT_1:begin
                    data[13] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_2;
                end
                STATE_RECEIVING_BIT_2:begin
                    data[12] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_3;
                end
                STATE_RECEIVING_BIT_3:begin
                    data[11] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_4;
                end
                STATE_RECEIVING_BIT_4:begin
                    data[10] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_5;
                end
                STATE_RECEIVING_BIT_5:begin
                    data[9] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_6;
                end
                STATE_RECEIVING_BIT_6:begin
                    data[8] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_7;
                end
                STATE_RECEIVING_BIT_7:begin
                    data[7] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_8;
                end
                STATE_RECEIVING_BIT_8:begin
                    data[6] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_9;
                end
                STATE_RECEIVING_BIT_9:begin
                    data[5] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_10;
                end
                STATE_RECEIVING_BIT_10:begin
                    data[4] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_11;
                end
                STATE_RECEIVING_BIT_11:begin
                    data[3] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_12;
                end
                STATE_RECEIVING_BIT_12:begin
                    data[2] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_13;
                end
                STATE_RECEIVING_BIT_13:begin
                    data[1] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_14;
                end
                STATE_RECEIVING_BIT_14:begin
                    data[0] <= MOSI;
                    current_state <= STATE_RECEIVING_BIT_15;
                end
                STATE_RECEIVING_BIT_15:begin
                    current_state <= STATE_IDLE;
                end
            endcase
        end else begin
            if(current_state==STATE_RECEIVING_BIT_15)begin
                current_state <= STATE_IDLE;
            end
        end
    end
    
  
endmodule
