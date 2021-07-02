`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2021 23:52:05
// Design Name: 
// Module Name: Mux_2x1
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


module Mux_2x1(
    input A,
    input B,
    input sel,
    output reg out
    );
    always @(*)begin
        case(sel)
            1'b0: out = A;
            1'b1: out = B;
        endcase
    end
endmodule
