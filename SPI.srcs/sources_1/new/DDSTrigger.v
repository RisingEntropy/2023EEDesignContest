`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 18:05:31
// Design Name: 
// Module Name: DDSTrigger
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


module DDSTrigger(
        input wire clk,
        input wire[15:0] adc_data,
        output wire[13:0] dac
    );
    parameter STATE_COUNTING = 3'b000;
    parameter STATE_WAITING_FOR_JUMP = 3'b001;
    parameter STATE_RESETING_DDS = 3'b010;
    reg[2:0] current_state = STATE_COUNTING;
    reg[31:0] counter = 0;
    reg[1:0] adc_buffer;
    reg[3:0] tick_wait = 0;  
    reg areset = 1;
    // dds_compiler_0 dds(
    //     .aclk(clk),
    //     .aresetn(areset),
    //     .m_axis_data_tdata(dac)
    // );
    ila_5 ila(
        .clk(clk),
        .probe0(adc_buffer),
        .probe1(adc_data),
        .probe2(dac),
        .probe3(areset)
    );
    always@(posedge clk)begin
        case(current_state)
            STATE_COUNTING:begin
                if(counter<32'd7950)begin
                    counter <= counter+1;
                    current_state <= STATE_COUNTING;
                end else begin
                    counter <= 0;
                    current_state <= STATE_WAITING_FOR_JUMP;
                    adc_buffer <= 2'b00;
                end
            end
            STATE_WAITING_FOR_JUMP:begin
                if(adc_buffer==2'b01)begin
                    current_state <= STATE_RESETING_DDS;
                    adc_buffer<=2'b00;
                end else begin
                    current_state <= STATE_WAITING_FOR_JUMP;
                    adc_buffer = {adc_buffer[0],adc_data[15]};
                end
            end
            STATE_RESETING_DDS:begin
                if(tick_wait<3)begin
                    tick_wait <= tick_wait + 1;
                    areset <= 0;
                    current_state <= current_state;
                end else begin
                    tick_wait <= 0;
                    areset <= 1;
                    current_state <= STATE_COUNTING;
                end
            end
        endcase
    end
    
endmodule
