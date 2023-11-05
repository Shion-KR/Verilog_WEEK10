`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 07:19:01
// Design Name: 
// Module Name: seg_array_tb
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


module seg_array_tb();
    reg [3:0] SW;
    reg CLK;
    wire [7:0] seg_data;
    wire [7:0] seg_sel;
    wire [3:0] LED;
    
    seg_array uut(SW, CLK, seg_data, seg_sel, LED);

    initial begin
        SW = 4'b1111;
        CLK = 1;
    end

    always
        #5 CLK = ~CLK;

    always @ (posedge CLK)begin
        SW = 4'b0000;
    #10 SW = 4'b0001;
    #10 SW = 4'b0010;
    #10 SW = 4'b0011;
    #10 SW = 4'b0100;
    #10 SW = 4'b0101;
    #10 SW = 4'b0110;
    #10 SW = 4'b0111;
    #10 SW = 4'b1000;
    #10 SW = 4'b1010;
    #10 SW = 4'b1011;
    #10 SW = 4'b1100;
    #10 SW = 4'b1101;
    #10 SW = 4'b1110;
    #10 SW = 4'b1111;
    end
endmodule
