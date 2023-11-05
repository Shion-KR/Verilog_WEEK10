`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 03:05:17
// Design Name: 
// Module Name: piezo_piano_tb
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


module piezo_piano_tb();
reg clk, rst;
reg [7:0] btn;
wire piezo;

piezo_piano u(clk, rst, btn, piezo);
initial begin
    clk <= 0;
    rst <= 1;
    btn <= 8'b00000001;
    #1e+6; rst <= 0;
    #1e+6; rst <= 1;
    #1e+6; btn <= 8'b00000010;
    #1e+6; btn <= 8'b00000100;
end

always begin
    #0.5 clk <= ~clk;
end
endmodule
