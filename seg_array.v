`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 07:18:45
// Design Name: 
// Module Name: seg_array
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


module seg_array(SW, CLK, seg_data, seg_sel, LED);

    input [3:0] SW;
    input CLK;
    output reg [7:0] seg_data;
    output reg [7:0] seg_sel;
    output reg [3:0] LED;

    slow_clock S1 (CLK, Clk_Slow);         
    initial begin
        seg_sel <= 8'b11111110;           
    end
    
    always @ (posedge Clk_Slow)
    begin
        case (SW)
            4'b0000: seg_data <= 8'b11000000;
            4'b0001: seg_data <= 8'b11111001;
            4'b0010: seg_data <= 8'b10100100;
            4'b0011: seg_data <= 8'b10110000;
            4'b0100: seg_data <= 8'b10011001;
            4'b0101: seg_data <= 8'b10010010;
            4'b0110: seg_data <= 8'b10000010;
            4'b0111: seg_data <= 8'b11011000;
            4'b1000: seg_data <= 8'b10000000;
            4'b1010: seg_data <= 8'b10001000;
            4'b1011: seg_data <= 8'b10000011;
            4'b1100: seg_data <= 8'b11000110;
            4'b1101: seg_data <= 8'b10100001;
            4'b1110: seg_data <= 8'b10000110;
            4'b1111: seg_data <= 8'b10001110;
        endcase

    LED <= SW;

        case (seg_sel)
            8'b11111110: seg_sel <= 8'b11111101;
            8'b11111101: seg_sel <= 8'b11111011;
            8'b11111011: seg_sel <= 8'b11110111;
            8'b11110111: seg_sel <= 8'b11101111;
            8'b11101111: seg_sel <= 8'b11011111;
            8'b11011111: seg_sel <= 8'b10111111;
            8'b10111111: seg_sel <= 8'b01111111;    
            8'b01111111: seg_sel <= 8'b11111110;
        endcase
    end
endmodule

module slow_clock(CLK, Clk_Slow);
    input CLK;
    output Clk_Slow;

    reg [31:0] counter_out;
    reg Clk_Slow; 

initial begin 
   counter_out<=32'h00000000; 
   Clk_Slow<=0; 
end 
    always @(posedge CLK) begin 
   counter_out<=counter_out + 32'h00000001; 
   if (counter_out>32'h00F5E100) begin 
       counter_out<=32'h00000000; 
       Clk_Slow<=!Clk_Slow; 
   end 
end
endmodule
