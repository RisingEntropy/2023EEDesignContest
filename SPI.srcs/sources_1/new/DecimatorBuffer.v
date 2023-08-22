`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 11:12:04
// Design Name: 
// Module Name: DecimatorBuffer
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


module DecimatorBuffer(
        input wire clk,
        input wire[15:0] adc_in,
        input wire rstn,
        input wire enable,
        input wire rst_phase,
        output reg busy = 0,
        output wire spi_clk,
        output wire spi_mosi
    );
    parameter STATE_IDLE = 3'b000;
    parameter STATE_COLLECTING = 3'b001;
    parameter STATE_SENDING = 3'b010;
    parameter STATE_FINISH = 3'b011;
    reg[2:0] current_state = STATE_IDLE;
    reg fifo_wr_en = 0;
    reg fifo_rd_en = 0;
    wire spi_busy;
    wire spi_error;
    wire fifo_almost_full,fifo_almost_empty,fifo_empty,fifo_full;
    wire [15:0] fifo_dout;
    reg spi_send_flag = 0;
    reg[1:0] internal_enable = 2'b11;
    wire[11:0] data_count;
    reg[7:0] decimator_counter = 0;
//    reg flag = 0;
    fifo_generator_0 fifo(
        .clk(clk),
        .srst(!rstn),
        .almost_full(fifo_almost_full),
        .full(fifo_full),
        .din(adc_in),
        .wr_en(fifo_wr_en),
        .almost_empty(fifo_almost_empty),
        .dout(fifo_dout),
        .rd_en(fifo_rd_en),
        .data_count(data_count),
        .empty(fifo_empty)
    );
    
    SPIMasterSend  #(1000,100) sender(
        .clk(clk),
        .spi_clk(spi_clk),
        .MOSI(spi_mosi),
        .send_flag(spi_send_flag),
        .data_to_send(fifo_dout),
        .busy(spi_busy),
        .error(spi_error)
    );
    
//    always@(posedge clk)begin
//        internal_enable = {internal_enable[0],enable};
//        if(internal_enable==2'b01)begin
//            flag <= 1;
//        end
//    end
    always@(posedge clk)begin
        if(rstn==0)begin
            busy <= 0;
        end else if(enable==1&&current_state==STATE_IDLE&&rst_phase==1) begin
            busy <= 1;
        end else if(current_state==STATE_FINISH)begin
            busy <= 0;
        end else begin
            busy <= busy;
        end
    end
    always@(posedge clk or negedge rstn)begin
        if(rstn==0)begin
            current_state<=STATE_IDLE;
            spi_send_flag <= 0;
            fifo_rd_en <= 0;
            fifo_wr_en <= 0;
            
        end else begin
            case(current_state)
                STATE_IDLE:begin
                    if(busy==1)begin
                        current_state <= STATE_COLLECTING;
                        fifo_wr_en <= 1;
                        decimator_counter <= 0;
                    end else begin
                        current_state <= current_state;
                    end
                end
                STATE_COLLECTING:begin
                    if(fifo_almost_full==1)begin
                        current_state <= STATE_SENDING;
                        fifo_wr_en <= 0;
                        fifo_rd_en <= 1;
                        spi_send_flag <= 1;
                        decimator_counter <= 0;
                    end else begin
                        current_state<= current_state;
                        if(decimator_counter<9)begin // decimate by 10 times
                            decimator_counter <= decimator_counter + 1;
                            fifo_wr_en <= 0;                            
                        end else begin
                            decimator_counter <= 0;
                            fifo_wr_en <= 1;
                        end
                    end
                end
                STATE_SENDING:begin
                    if(fifo_empty==1)begin
                        fifo_rd_en <= 0;
                        spi_send_flag <= 0;
                        current_state <= STATE_FINISH;
                    end else begin
                        if(spi_busy==1||fifo_rd_en==1)begin
                            fifo_rd_en <= 0;
                            spi_send_flag <= 1;
                        end else begin
                            fifo_rd_en <= 1;
                            spi_send_flag <= 1;
                        end
                    end
                end
                STATE_FINISH:begin
                    current_state <= STATE_IDLE;
                end
            endcase
        end
    end
endmodule
