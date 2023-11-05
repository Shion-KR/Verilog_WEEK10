`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 00:50:02
// Design Name: 
// Module Name: binary_to_bcd_tb
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


module binary_to_bcd_tb();
reg clk;
reg rst;
reg [3:0] bin;
wire [7:0] bcd;

binary_to_bcd u(clk, rst, bin, bcd);
initial begin
        clk = 0; rst = 1;
    #10 bin = 4'b0000;
    #10 bin = 4'b0001;
    #10 bin = 4'b0010;
    #10 bin = 4'b0011;
    #10 bin = 4'b0100;
    #10 bin = 4'b0101;
    #10 bin = 4'b0110;
    #10 bin = 4'b1111;
    #10 bin = 4'b1000;
    #10 bin = 4'b1001;
    #10 bin = 4'b1010;
    #10 bin = 4'b1011;
    #10 bin = 4'b1100;
    #10 bin = 4'b1101;
    #10 bin = 4'b1110;
    #10 bin = 4'b1111;
    #20
    $finish;
end

always
    #5 clk = ~clk;

endmodule
