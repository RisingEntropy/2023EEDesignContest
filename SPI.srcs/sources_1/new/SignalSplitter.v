`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 13:49:26
// Design Name: 
// Module Name: SignalSplitter
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


module SignalSplitter(
        input wire clk,
        input wire[15:0] adc_in,
        input wire rstn,
        input wire conf_cs,
        input wire conf_spi_clk,
        input wire conf_spi_mosi,
        input wire adc_data_enable,
        output wire adc_data_spi_clk,
        output wire adc_data_spi_mosi,
        output wire adc_data_busy,
        output wire[13:0] dac_ch1_data,
        output wire[13:0] dac_ch2_data,
        output wire dac1_sleep,
        output wire dac2_sleep
    );
    parameter STATE_COUNTING = 2'b00;
    parameter STATE_WAITING_FOR_JUMP = 2'b01;
    parameter STATE_RESET_DDS = 2'b10;
    reg[1:0] current_state = STATE_COUNTING;
    
    wire register_reset_period_state;
    wire[31:0] register_reset_period;

    wire register_ch1_FTW_state;
    wire[31:0] register_ch1_FTW;

    wire register_ch2_FTW_state;
    wire[31:0] register_ch2_FTW;

    wire register_DDS_function_sel_state;
    wire[15:0] register_DDS_function_sel;

    wire register_ch1_phase0_state;
    wire[31:0] register_ch1_phase0;

    wire register_ch2_phase0_state;
    wire[31:0] register_ch2_phase0;
    reg rst_phase = 0;
    reg [31:0] rst_phase_counter = 0;
    reg[1:0] adc_buffer = 0;
    reg[2:0] tick_wait = 0;
    wire[13:0] ch1_data;
    wire[13:0] ch2_data;

    SignalSplitter_ila ila(
        .clk(clk),
        .probe0(adc_in),
        .probe1(dac_ch1_data),
        .probe2(dac_ch2_data)
    );
    RegisterModule registers(
        .clk(clk),
        .spi_clk(conf_spi_clk),
        .rstn(rstn),
        .cs(conf_cs),
        .MOSI(conf_spi_mosi),
        
        .register_reset_period_state(register_reset_period_state),
        .register_reset_period(register_reset_period),
        
        .register_ch1_FTW_state(register_ch1_FTW_state),
        .register_ch1_FTW(register_ch1_FTW),
        
        .register_ch2_FTW_state(register_ch2_FTW_state),
        .register_ch2_FTW(register_ch2_FTW),
        
        .register_DDS_function_sel_state(register_DDS_function_sel_state),
        .register_DDS_function_sel(register_DDS_function_sel),
        
        .register_ch1_phase0_state(register_ch1_phase0_state),
        .register_ch1_phase0(register_ch1_phase0),
        
        .register_ch2_phase0_state(register_ch2_phase1_state),
        .register_ch2_phase0(register_ch2_phase1)
        
    );
    
    DecimatorBuffer decimator_buffer(
        .clk(clk),
        .adc_in(adc_in),
        .rstn(rstn),
        .enable(adc_data_enable),
        .busy(adc_data_busy),
        .spi_clk(adc_data_spi_clk),
        .spi_mosi(adc_data_spi_mosi)
    );
    
    DDSModule dds1(
        .clk(clk),
        .rstn(rstn),
        .rst_phase(rst_phase),
        .phase0_valid(register_ch1_phase0_state),
        .phase0(register_ch1_phase0),
        .FTW(register_ch1_FTW),
        .FTW_state(register_ch1_FTW_state),
        .confg_state(register_DDS_function_sel_state),
        .confg(register_DDS_function_sel[15:8]),
        .dds_out(dac_ch1_data),
        .dac_sleep(dac1_sleep)
    );
    
    DDSModule dds2(
        .clk(clk),
        .rstn(rstn),
        .rst_phase(rst_phase),
        .phase0_valid(register_ch2_phase0_state),
        .phase0(register_ch2_phase0),
        .FTW(register_ch2_FTW),
        .FTW_state(register_ch2_FTW_state),
        .confg_state(register_DDS_function_sel_state),
        .confg(register_DDS_function_sel[7:0]),
        .dds_out(dac_ch2_data),
        .dac_sleep(dac2_sleep)
    );
    
    always@(posedge clk)begin
        if(rstn==0)begin
            current_state <= STATE_COUNTING;
        end else begin
            case(current_state)
                STATE_COUNTING:begin
                    rst_phase <= 0;
                    if(register_reset_period==0)begin
                        current_state <= STATE_COUNTING;
                    end else if(register_reset_period_state==0)begin
                        current_state <= STATE_COUNTING;
                    end else if(rst_phase_counter<register_reset_period)begin
                        rst_phase_counter <= rst_phase_counter + 1;
                    end else begin
                        rst_phase_counter <= 0;
                        current_state <= STATE_WAITING_FOR_JUMP;
                        adc_buffer <= 0;
                    end
                end
                STATE_WAITING_FOR_JUMP:begin
                    if(adc_buffer==2'b01)begin
                        current_state <= STATE_RESET_DDS;
                        adc_buffer<=2'b00;
                    end else begin
                        current_state <= STATE_WAITING_FOR_JUMP;
                        adc_buffer = {adc_buffer[0],adc_in[15]};//judge it's sign bit
                    end
                end
                STATE_RESET_DDS:begin
                    if(tick_wait<1)begin
                        tick_wait <= tick_wait + 1;
                        rst_phase <= 0;
                        current_state <= current_state;
                    end else begin
                        tick_wait <= 0;
                        rst_phase <= 1;
                        current_state <= STATE_COUNTING;
                    end
                end
            endcase
        end
    end


endmodule
