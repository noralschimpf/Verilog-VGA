`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2020 04:19:17 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb;

reg clk;
reg btnC = 1'b1;
reg [15:0] sw = 16'h8888;

wire [15:0] led;
wire[3:0] vgaRed, vgaBlue, vgaGreen;
wire Hsync, Vsync;
wire strobe;
wire [9:0] x; wire [8:0] y;
top UUT(
   .clk( clk),
    .btnC(btnC),
    .sw(sw),
    .led(led),
    .vgaRed(vgaRed),
    .vgaBlue(vgaBlue),
     .vgaGreen(vgaGreen),
    .Hsync(Hsync),
    .Vsync(Vsync)
//   , .px_strobe(strobe)
//    , .x(x), .y(y)
    );
    
always
begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
end    

initial
begin
    $display("<<TOP Simulation Start>>");
    #1000;
    btnC = 1'b0;
    #200000;
end

//initial begin
//    $monitor($time, "strobe=%b",strobe);
//end
    
endmodule
