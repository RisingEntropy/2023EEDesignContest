//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2023/08/01 16:27:52
//// Design Name: 
//// Module Name: ConfigurableReceiver
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module ConfigurableReceiver(
//        input wire clk,
//        input wire in_spi_clk,
//        input wire in_MOSI,
//        input wire rstn,
//        input wire cs,
//        input wire[15:0] adc_in,
//        input wire enable,
//        output wire out_spi_clk,
//        output wire out_MOSI
//    );
//    wire DDS_parameter_ready,demodulator_mux_ready;
//    wire[23:0] DDS_parameter;
//    wire[15:0] demodulator_mux;
//    wire[15:0] am_out,fm_out;
//    wire demodulator_data_ready;
//    reg[15:0] data_to_send;
//    wire spi_sender_busy,spi_sender_error;
//    RegisterModule regs(
//        .clk(clk),
//        .spi_clk(in_spi_clk),
//        .MOSI(in_MOSI),
//        .rstn(rstn),
//        .cs(cs),
//        .DDS_parameter_ready(DDS_parameter_ready),
//        .DDS_parameter(DDS_parameter),
//        .demodulator_mux_ready(demodulator_mux_ready),
//        .demodulator_mux(demodulator_mux)
//    );
    
//    ila_1 ila(
//        .clk(clk),
//        .probe0(in_spi_clk),
//        .probe1(in_MOSI),
//        .probe2(adc_in),
//        .probe3(enable),
//        .probe4(out_spi_clk),
//        .probe5(out_MOSI),
//        .probe6(DDS_parameter_ready),
//        .probe7(DDS_parameter),
//        .probe8(demodulator_mux_ready),
//        .probe9(demodulator_mux),
//        .probe10(am_out),
//        .probe11(fm_out)
//    );
    
//    configurablereceiver_0 receiver(
//        .clk(clk),
//        .adc_in(adc_in),
//        .dds_tvalid(DDS_parameter_ready),
//        .dds_config_data(DDS_parameter),
//        .am_out(am_out),
//        .fm_out(fm_out),
//        .data_ready(demodulator_data_ready)
//    );
//    SPIMasterSend spi_sender(
//        .clk(clk),
//        .spi_clk(out_spi_clk),
//        .MOSI(out_MOSI),
//        .send_flag(demodulator_data_ready&&enable),//it will send a frame only when the data is ready and enable is pulled high
//        .data_to_send(data_to_send),
//        .busy(spi_sender_busy),
//        .error(spi_sender_error)
//    );
//    always@(posedge clk)begin
//        if(rstn==0)begin
//            data_to_send <= 0;
//        end else begin
//            if(demodulator_mux_ready==1)begin
//                if(demodulator_mux==16'd0)begin
//                    data_to_send <= am_out;
//                end else if(demodulator_mux==16'd1)begin
//                    data_to_send <= fm_out;
//                end else begin
//                    data_to_send <= 16'hFFFF;//if the mux is wrong , it will send 0xFFFF, this function can be extended later if ASK FSK etc. are needed
//                end
//            end else begin
//                data_to_send <= 0;
//            end
//        end
//    end
//endmodule
