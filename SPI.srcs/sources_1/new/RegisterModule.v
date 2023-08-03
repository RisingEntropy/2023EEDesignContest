`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/01 16:28:52
// Design Name: 
// Module Name: RegisterModule
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


module RegisterModule(
        input wire clk,
        input wire spi_clk,
        input wire rstn,
        input wire cs,
        input wire MOSI,
        
        output wire register_reset_period_state,
        output wire[31:0] register_reset_period,
        
        output wire register_ch1_FTW_state,
        output wire[31:0] register_ch1_FTW,
        
        output wire register_ch2_FTW_state,
        output wire[31:0] register_ch2_FTW,
        
        output wire register_DDS_function_sel_state,
        output wire[15:0] register_DDS_function_sel,
        
        output wire register_ch1_phase0_state,
        output wire[31:0] register_ch1_phase0,
        
        output wire register_ch2_phase0_state,
        output wire[31:0] register_ch2_phase0
        
    );
    parameter STATE_IDLE = 3'b000;
    parameter STATE_RECEIVING_COMMAND = 3'b001;
    parameter STATE_RECEIVING_DATA = 3'b010;
    parameter STATE_FINISH = 3'b011;
    parameter REGISTER_AMUNT = 10;
    
    reg[15:0] registers[REGISTER_AMUNT-1:0];
    reg[REGISTER_AMUNT-1:0] register_state = 10'b1111111111;
    
    assign register_reset_period_state = register_state[0]&register_state[1];
    assign register_reset_period = {registers[0],registers[1]};
    
    assign register_ch1_FTW_state = register_state[3]&register_state[4];
    assign register_ch1_FTW = {registers[3],registers[4]};
    
    assign register_ch2_FTW_state = register_state[6]&register_state[7];
    assign register_ch2_FTW = {registers[6],registers[7]};
    
    assign register_DDS_function_sel_state = register_state[8];
    assign register_DDS_function_sel = registers[8];
    
    assign register_ch1_phase0_state = register_state[9]&register_state[10];
    assign register_ch1_phase0 = {registers[9]&registers[10]};
    
    assign register_ch2_phase0_state = register_state[11]&register_state[12];
    assign register_ch2_phase0 = {registers[11]&registers[12]};
    
    reg[2:0] current_state = STATE_IDLE;
    reg spi_clear_ready_flag = 0;
    wire spi_receiver_busy, spi_data_ready;
    wire[15:0] spi_data;
    reg[15:0] register_address = 0;
    reg[5:0] delay_counter = 0;
    reg[1:0] busy_edge;
    
    

    SPISlaveReceive spi_receiver(
        .clk(clk),
        .spi_clk(spi_clk),
        .rstn(rstn),
        .cs(cs),
        .MOSI(MOSI),
        .clear_ready_flag(spi_clear_ready_flag),
        .busy(spi_receiver_busy),
        .data_ready(spi_data_ready),
        .data(spi_data)
    );
    ila_2 ila(
        .clk(clk),
        .probe0(current_state),
        .probe1(spi_data),
        .probe2(spi_receiver_busy),
        .probe3(spi_data_ready),
        .probe4(rstn),
        .probe5(spi_clear_ready_flag)
    );
    always@(posedge clk)begin
        if(rstn==0)begin
            busy_edge <= 0;
        end else begin
            busy_edge <= {busy_edge[0],spi_receiver_busy};
        end
    end
    always@(posedge clk)begin
        if(rstn==0)begin
            current_state <= STATE_IDLE;
            register_state <= 4'b1111;
            registers[0] <= 0;
            registers[1] <= 0;
            registers[2] <= 0;
            registers[3] <= 0;
            registers[4] <= 0;
            delay_counter <= 0;
        end else begin
            case(current_state)
                STATE_IDLE:begin
                    if(spi_receiver_busy==1)begin
                        current_state <= STATE_RECEIVING_COMMAND;
                        delay_counter <= 0;
                    end else begin
                        current_state <= current_state;
                    end
                end
                STATE_RECEIVING_COMMAND:begin
                    if(busy_edge==2'b10)begin
                        register_address <= spi_data;
                        current_state <= STATE_RECEIVING_DATA;
                        delay_counter <= 0;
                        if(spi_data<REGISTER_AMUNT)begin
                            register_state[spi_data] <= 0;
                        end
                    end else begin
                        current_state <= current_state;
                        delay_counter <= delay_counter+1;
                    end
                end
                STATE_RECEIVING_DATA:begin
                    if(busy_edge==2'b10)begin
                        if(register_address<REGISTER_AMUNT)begin
                            registers[register_address] <= spi_data;   
                            register_state[register_address] <= 1;
                        end
                        current_state <= STATE_FINISH;
                    end else begin
                        current_state <= current_state;
                        delay_counter <= delay_counter+1;
                    end
                end
                STATE_FINISH:begin
                    current_state <= STATE_IDLE;
                end
            endcase
        end
    end
endmodule
