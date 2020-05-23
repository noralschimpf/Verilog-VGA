`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2020 11:07:52 AM
// Design Name: 
// Module Name: top
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


module top(
    input wire clk,
    input wire btnC,
    input wire[15:0] sw,
    output wire[15:0] led,
    output wire[3:0] vgaRed,
    output wire[3:0] vgaBlue,
    output wire[3:0] vgaGreen,
    output wire Hsync,
    output wire Vsync
    //debug
//    ,output reg px_strobe = 0
//    ,output wire[9:0] x
//    ,output wire[8:0] y
    );

wire[9:0] x;
wire [8:0] y;

wire reset = btnC;

reg[1:0] cnt = 0;
reg px_strobe = 0;

//divide clk by 4, px_strobe
always @(posedge clk)
begin
//    {px_strobe, cnt} = cnt + 16'h4000;
        if (cnt == 2'b01)
        begin
            cnt <= 0;
            px_strobe <= ~px_strobe;
        end
        
        else
        begin
            cnt = cnt + 1;
        end
end



assign led = btnC ? (sw & px_strobe) : sw;


vga640x480 vga (
    .i_clk                (clk ),
    .i_px_strobe     (px_strobe),
    .i_rst  (reset),
    .o_hs  (Hsync),
    .o_vs  (Vsync),
//    .o_blanking       ,
//    .o_active           ,
//    .o_screenend    ,
//    .o_animate          ,
    .o_x                     (x) ,
    .o_y                      ( y) 
);

assign vgaRed[3:0] = 4'h8 & (x > 0) & (y > 0);//sw[3:0];
assign vgaBlue[3:0] = 4'h8 & (x > 0) & (y > 0);//sw[7:4];
assign vgaGreen[3:0] = 4'h8 & (x > 0) & (y > 0);//sw[11:8];


/*associations
sw0: cap diamond
sw1: cap base
sw2: tassel 1
sw3: tassel 2
sw4: cardinal
sw5: SSoE
*/


endmodule
