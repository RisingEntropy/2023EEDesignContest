
//POLE = 0 SPI 16bit data width LSB First


module SPIMasterSend
#(parameter SYSTEM_CLK_RATE = 40000000,// default 40M input clock
  parameter SPI_RATE = 1000000//SPI default rate 1M
)(input wire clk,
        output reg spi_clk = 1,
        output reg MOSI = 0,
        input wire send_flag,// pull up to start sending frame, after that, the busy is pull up
        input wire[15:0] data_to_send,//data to send
        output reg busy = 0,//current state, busy or wait
        output reg error = 0
        
    );
    parameter STATE_RESET = 6'd0;
    parameter STATE_BIT_0 = 6'd2;
    parameter STATE_BIT_1 = 6'd4;
    parameter STATE_BIT_2 = 6'd6;
    parameter STATE_BIT_3 = 6'd8;
    parameter STATE_BIT_4 = 6'd10;
    parameter STATE_BIT_5 = 6'd12;
    parameter STATE_BIT_6 = 6'd14;
    parameter STATE_BIT_7 = 6'd16;
    parameter STATE_BIT_8 = 6'd18;
    parameter STATE_BIT_9 = 6'd20;
    parameter STATE_BIT_10 = 6'd22;
    parameter STATE_BIT_11 = 6'd24;
    parameter STATE_BIT_12 = 6'd26;
    parameter STATE_BIT_13 = 6'd28;
    parameter STATE_BIT_14 = 6'd30;
    parameter STATE_BIT_15 = 6'd32;
    reg[6:0] current_state = STATE_RESET;
    reg[24:0] counter=0;

    always@(posedge clk)begin
        if(busy==0)begin
            if(send_flag==1)begin
                busy<=1;
                current_state<=STATE_RESET;
            end else begin
                busy<=0;
                current_state<=STATE_RESET;
            end
        end begin
            if(current_state!=33)begin
                if(counter<SYSTEM_CLK_RATE/SPI_RATE/2)begin
                    counter<=counter+1;
                end else begin
                    counter<=0;
                    current_state<=current_state+1;
                end
            end else begin
                busy<=0;
            end
        end
    end
    
    always@(posedge clk)begin
        case(current_state)
            6'd1,6'd3,6'd5,6'd7,6'd9,6'd11,6'd13,6'd15,6'd17,6'd19,6'd21,6'd23,6'd25,6'd27,6'd29,6'd31,6'd33:begin
                spi_clk<=1;
            end
            STATE_BIT_0:begin
                spi_clk<=0;
                MOSI<=data_to_send[15];//MSB First
            end
            STATE_BIT_1:begin
                spi_clk<=0;
                MOSI<=data_to_send[14];
            end
            STATE_BIT_2:begin
                spi_clk<=0;
                MOSI<=data_to_send[13];
            end
            STATE_BIT_3:begin
                spi_clk<=0;
                MOSI<=data_to_send[12];
            end
            STATE_BIT_4:begin
                spi_clk<=0;
                MOSI<=data_to_send[11];
            end
            STATE_BIT_5:begin
                spi_clk<=0;
                MOSI<=data_to_send[10];
            end
            STATE_BIT_6:begin
                spi_clk<=0;
                MOSI<=data_to_send[9];
            end
            STATE_BIT_7:begin
                spi_clk<=0;
                MOSI<=data_to_send[8];
            end
            STATE_BIT_8:begin
                spi_clk<=0;
                MOSI<=data_to_send[7];
            end
            STATE_BIT_9:begin
                spi_clk<=0;
                MOSI<=data_to_send[6];
            end
            STATE_BIT_10:begin
                spi_clk<=0;
                MOSI<=data_to_send[5];
            end
            STATE_BIT_11:begin
                spi_clk<=0;
                MOSI<=data_to_send[4];
            end
            STATE_BIT_12:begin
                spi_clk<=0;
                MOSI<=data_to_send[3];
            end
            STATE_BIT_13:begin
                spi_clk<=0;
                MOSI<=data_to_send[2];
            end
            STATE_BIT_14:begin
                spi_clk<=0;
                MOSI<=data_to_send[1];
            end
            STATE_BIT_15:begin
                spi_clk<=0;
                MOSI<=data_to_send[0];
            end
            
        endcase
    end
   
endmodule
