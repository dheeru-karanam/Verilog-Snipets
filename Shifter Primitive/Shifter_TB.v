`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2021 00:29:42
// Design Name: 
// Module Name: Shifter_TB
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


module Shifter_TB(
    );
    reg[15:0] A;
    reg[15:0] Fill_In;
    reg clk;
    reg[3:0] Control;
    wire[15:0] Shifted_out;
    Shifter_16Bit Shifter16(
        .A(A),
        .Fill_In(Fill_In),
        .clk(clk),
        .Control(Control),
        .Shifted_out(Shifted_out)
        );
     always #25 clk = ~clk;
     initial begin
            clk = 1'b0;
            A = 16'hFFFF; Fill_In = 16'h0000; Control = 4'h1;
    #100    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h2;
    #110    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h3;
    #120    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h4;
    #130    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h5;
    #140    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h6;
    #150    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h7;
    #160    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h8;
    #170    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h9;
    #180    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hA;
    #190    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hB;
    #200    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hC;
    #210    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hD;
    #220    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hE;
    #230    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'hF;
    #240    A = 16'hA0A0; Fill_In = 16'h0000; Control = 4'h0;
    $finish;
     end   
endmodule
