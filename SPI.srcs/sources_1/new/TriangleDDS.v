`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 21:46:31
// Design Name: 
// Module Name: TriangleDDS
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


module TriangleDDS(
        input wire clk,
        input wire rstn,
        input wire rst_phase,
        input wire enable,
        input wire phase0_valid,
        input wire[31:0] phase0,
        input wire[31:0] FTW,
        input wire FTW_state,
        output wire [13:0] dds_out
        
    );
    parameter QUARTER_PHASE = (32'h1<<30) - 1;
    parameter HALF_PHASE = (32'h1<<31) - 1;
    parameter THREE_FORTH_PHASE = (32'h1<<31) + (32'h1<<30); 
    parameter TOTAL_PHASE = 32'hFFFF_FFFF;
    reg [31:0] phase = 0;
    reg signed [31:0] dds_signed = 0;
    wire signed[13:0] dds_truncate = dds_signed[31:31-13];
    assign dds_out = enable==1?dds_truncate:14'b00_0000_0000_0000;
    
    always@(posedge clk)begin
        if(rstn==0||rst_phase==1)begin
            if(phase0_valid==1)begin
                phase <= phase0;
            end else begin
                phase <= 0;
            end
        end else if(FTW_state==1) begin
            phase <= phase + FTW;
        end else begin
            phase <= phase;
        end
    end
    always@(posedge clk)begin
        if(rstn==0)begin
            dds_signed <= 0;
        end else begin

            if(phase<=QUARTER_PHASE)begin
                dds_signed <= phase; 
            end else if(phase<THREE_FORTH_PHASE)begin
                dds_signed <= HALF_PHASE - phase;
            end else begin
                dds_signed <= phase;
            end 
        end
    end
endmodule
