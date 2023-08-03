`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 21:44:17
// Design Name: 
// Module Name: DDSModule
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


module DDSModule(
        input wire clk,
        input wire rstn,
        input wire rst_phase,
        input wire phase0_valid,
        input wire[31:0] phase0,
        input wire FTW_state,
        input wire[31:0] FTW,
        input wire confg_state,
        input wire[7:0] confg,
        output reg[13:0] dds_out
    );
    reg enable_triangle = 0;
    reg enable_sin = 0;
    wire[13:0] triangle_out,sin_out;
    TriangleDDS triangle(
        .clk(clk),
        .rstn(rstn),
        .enable(enable_triangle),
        .rst_phase(rst_phase),
        .phase0_valid(phase0_valid),
        .phase0(phase0),
        .FTW(FTW),
        .FTW_state(FTW_state),
        .dds_out(triangle_out)
    );
    SineDDS sine(
        .clk(clk),
        .rstn(rstn),
        .enable(enable_sin),
        .rst_phase(rst_phase),
        .phase0_valid(phase0_valid),
        .phase0(phase0),
        .FTW(FTW),
        .FTW_state(FTW_state),
        .dds_out(sin_out)
    );
    always@(posedge clk)begin
        if(rstn==0)begin
            enable_sin <= 0;
            enable_triangle <= 0;
        end else begin
            if(confg_state==1)begin
                if(confg[1:0]==2'b00)begin//disable output
                    dds_out <= 14'b00_0000_0000_0000;
                    enable_sin <= 0;
                    enable_triangle <= 0;
                end else if(confg[1:0]==2'b01)begin
                    dds_out <= sin_out;
                    enable_sin <= 1;
                    enable_triangle <= 0;
                end else if(confg[1:0]==2'b01)begin
                    dds_out <= triangle_out;
                    enable_sin <= 0;
                    enable_triangle <= 1;
                end else begin
                    dds_out <= sin_out;
                    enable_sin <= 1;
                    enable_triangle <= 0;
                end
            end else begin
                dds_out <= dds_out;
                enable_sin <= enable_sin;
                enable_triangle <= enable_triangle;
            end
        end
    end
endmodule
