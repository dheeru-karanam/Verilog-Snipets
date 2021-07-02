`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2021 23:50:05
// Design Name: 
// Module Name: Shifter_16Bit
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


module Shifter_16Bit(
    input[15:0] A,
    input[15:0] Fill_In,
    input[3:0] Control,
    input clk,
    output reg [15:0] Shifted_out
    );
    genvar i;
    wire[15:0] out_Layer0;
    wire[15:0] out_Layer1;
    wire[15:0] out_Layer2;
    wire[15:0] out_Layer3;
    always @(posedge clk)begin
        Shifted_out = out_Layer3;
    end
    generate
        for(i=0;i<16;i=i+1)  begin
            if(i!=15)begin
                Mux_2x1 Layer0(.A(A[i]),.B(A[i+1]),.sel(Control[0]),.out(out_Layer0[i]));
            end
            else begin
                Mux_2x1 Layer0(.A(A[i]),.B(Fill_In[0]),.sel(Control[0]),.out(out_Layer0[i]));
            end
        end
    endgenerate
    generate
            for(i=0;i<16;i=i+1)  begin
                if(i<14)begin
                    Mux_2x1 Layer0(.A(out_Layer0[i]),.B(out_Layer0[i+2]),.sel(Control[1]),.out(out_Layer1[i]));
                end
                else begin
                    if(i==14)begin
                        Mux_2x1 Layer0(.A(out_Layer0[i]),.B(Fill_In[1]),.sel(Control[1]),.out(out_Layer1[i]));
                    end
                    else begin
                        Mux_2x1 Layer0(.A(out_Layer0[i]),.B(Fill_In[2]),.sel(Control[1]),.out(out_Layer1[i]));
                    end
                end
            end
    endgenerate    
    generate
            for(i=0;i<16;i=i+1)  begin
                if(i<12)begin
                    Mux_2x1 Layer0(.A(out_Layer1[i]),.B(out_Layer1[i+4]),.sel(Control[2]),.out(out_Layer2[i]));
                end
                else begin
                    if(i==12)begin
                        Mux_2x1 Layer0(.A(out_Layer1[i]),.B(Fill_In[3]),.sel(Control[2]),.out(out_Layer2[i]));
                    end
                    else if(i==13) begin
                        Mux_2x1 Layer0(.A(out_Layer1[i]),.B(Fill_In[4]),.sel(Control[2]),.out(out_Layer2[i]));
                    end
                    else if(i==14) begin
                        Mux_2x1 Layer0(.A(out_Layer1[i]),.B(Fill_In[5]),.sel(Control[2]),.out(out_Layer2[i]));
                    end
                    else begin
                        Mux_2x1 Layer0(.A(out_Layer1[i]),.B(Fill_In[6]),.sel(Control[2]),.out(out_Layer2[i]));
                    end                
                end
            end
    endgenerate    
    generate
            for(i=0;i<16;i=i+1)  begin
                if(i<8)begin
                    Mux_2x1 Layer0(.A(out_Layer2[i]),.B(out_Layer2[i+8]),.sel(Control[3]),.out(out_Layer3[i]));
                end
                else begin
                    if(i==8)begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[7]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==9) begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[8]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==10) begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[9]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==11) begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[10]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==12) begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[11]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==13) begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[12]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else if(i==14)begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[13]),.sel(Control[3]),.out(out_Layer3[i]));
                    end
                    else begin
                        Mux_2x1 Layer0(.A(out_Layer2[i]),.B(Fill_In[14]),.sel(Control[3]),.out(out_Layer3[i]));
                    end                    
                end
            end
    endgenerate
endmodule
