`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/29 22:31:08
// Design Name: 
// Module Name: FrequencyScanner
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


module FrequencyScanner(
        input wire clk,
        input wire[15:0] adc_data,
        input wire do_fft,
        output reg busy,
        output wire spi_clk,
        output wire spi_mosi
    );
    parameter STATE_RESET = 4'b0000;
    parameter STATE_PUSHING_DATA = 4'b0001;
    parameter STATE_WAITING_FFT_RESULT = 4'b0010;
    parameter STATE_COUNT_RESULT = 4'b0011;
    parameter STATE_SPI_SENDING_INDEX  = 4'b0100;
    parameter STATE_SPI_SENDING_AMP = 4'b0101;
    parameter STATE_SPI_SENDING_PHASE = 4'b0110;
    parameter STATE_FINISH = 4'b0111;
    
    reg[3:0] state = STATE_RESET;
    reg[13:0] data_pushed = 0;
    reg fft_input_start_frame = 0;
    wire[15:0] fft_out_real,fft_out_phase;
    wire fft_out_start_frame;
    reg[15:0] fft_max_index = 0;
    reg[15:0] fft_max_amp = 0;
    reg[15:0] fft_max_phase = 0;
    reg[14:0] index = 0;
    reg[15:0] data_buffer;
    reg spi_send_flag = 0;
    wire spi_send_busy;
    wire spi_send_error;
    reg[2:0] delayer = 0;
    
    
    fftmodule_0 fft_module(
        .clk(clk),
        .fft_data_in_re(adc_data),
        .fft_data_in_im(16'b0000_0000_0000_0000),
        .fft_data_start_frame(fft_input_start_frame),
        .fft_out_real(fft_out_real),
        .fft_out_phase(fft_out_phase),
        .fft_out_start_frame(fft_out_start_frame)
    );
    SPIMasterSend spi_sender(
        .clk(clk),
        .spi_clk(spi_clk),
        .MOSI(spi_mosi),
        .send_flag(spi_send_flag),
        .data_to_send(data_buffer),
        .busy(spi_send_busy),
        .error(spi_send_error)
    );
    always@(posedge clk)begin
        if(state==STATE_RESET&&do_fft==1)begin
            busy<=1;
        end else if(state==STATE_FINISH)begin
            busy<=0;
        end else begin
            busy<=busy;
        end
    end
    
    always@(posedge clk)begin
        case(state)
            STATE_RESET:begin
                if(busy==1)begin
                    delayer <= 0;
                    state<=STATE_PUSHING_DATA;
                    fft_input_start_frame <= 1;
                end else begin
                    state<=state;
                    fft_input_start_frame <= fft_out_start_frame;
                end
            end
            STATE_PUSHING_DATA:begin
                if(data_pushed<4096)begin
                    data_pushed <= data_pushed + 1;
                end else begin
                    state<=STATE_WAITING_FFT_RESULT;
                end
            end
            STATE_WAITING_FFT_RESULT:begin
                if(fft_out_start_frame==1)begin
                    state<=STATE_COUNT_RESULT;
                    fft_max_index <= 0;
                    fft_max_phase <= 0;
                    fft_max_amp <= 0;
                    index <= 0;
                    
                end else begin
                    state<= state;
                end
            end
            STATE_COUNT_RESULT:begin
                if(index<4096)begin
                    index<=index+1;
                    if(fft_out_real>fft_max_amp&&index<2048)begin
                        fft_max_amp<=fft_out_real;
                        fft_max_phase <= fft_out_phase;
                        fft_max_index <= index;
                    end else begin
                        fft_max_amp<=fft_max_amp;
                        fft_max_phase <= fft_max_phase;
                        fft_max_index <= fft_max_index;
                    end
                end else begin
                    state <= STATE_SPI_SENDING_INDEX;
                    data_buffer <= fft_max_index;
                    spi_send_flag <= 1;
                end
            end
            STATE_SPI_SENDING_INDEX:begin
                if(spi_send_busy==1||delayer==0)begin
                    state<=STATE_SPI_SENDING_INDEX;
                    spi_send_flag <= spi_send_busy==1?0:1;
                    delayer<=delayer+1;
                end else begin
                    state <= STATE_SPI_SENDING_AMP;
                    spi_send_flag <= 1;
                    data_buffer <= fft_max_amp;
                    delayer<=0;
                end
            end
            STATE_SPI_SENDING_AMP:begin
                if(spi_send_busy==1||delayer==0)begin
                    state<=STATE_SPI_SENDING_AMP;
                    spi_send_flag <= spi_send_busy==1?0:1;
                    delayer<=delayer+1;
                end else begin
                    state <= STATE_SPI_SENDING_PHASE;
                    spi_send_flag <= 1;
                    data_buffer <= fft_max_phase;
                    delayer<=0;
                end
            end
            STATE_SPI_SENDING_PHASE:begin
                if(spi_send_busy==1||delayer==0)begin
                    state<=STATE_SPI_SENDING_PHASE;
                    spi_send_flag <= spi_send_busy==1?0:1;
                    delayer<=delayer+1;
                end else begin
                    state <= STATE_FINISH;
                    delayer<=0;
                end
            end
            STATE_FINISH:begin
                state<=STATE_RESET;
            end
        endcase
    end
endmodule
