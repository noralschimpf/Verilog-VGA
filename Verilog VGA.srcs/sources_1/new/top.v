`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Louisville
// Engineer: Nathan Schimpf
// 
// Create Date: 05/11/2020 11:07:52 AM
// Design Name: Verilog VGA
// Module Name: top
// Project Name: 
// Target Devices: Digilent Basys3
// Tool Versions: Vivado 2018.3
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
//    debug
//    ,output reg px_strobe = 0
//    ,output wire[9:0] x
//    ,output wire[8:0] y
    );

wire[9:0] x;
wire [8:0] y;
wire active;

wire reset = btnC;
//reg[1:0] cnt = 0;
reg px_strobe = 0;
reg[15:0] cnt = 0;


localparam COUNT_MAX=1<<26;
reg[31:0] i = 0;
reg ledclk=0;


//divide clk by 4, px_strobe
//divide clk by 2^26
always @(posedge clk)
begin
    {px_strobe, cnt} = cnt + 16'h4000;
    if (i>=COUNT_MAX) begin
        i<=0;
        ledclk <= ~ledclk;
    end else begin
        i <= i + 1;
    end
          
//        if (cnt == 2'b01)
//        begin
//            cnt <= 0;
//            px_strobe <= ~px_strobe;
//        end
        
//        else
//        begin
//            cnt = cnt + 1;
//        end

end


/*VGA Parameter Select
sw[15:13]   Resolution      Refresh Rate        Pixel Rate
000         640x480         60 Hz               25.175 MHz
001         640x480         75 Hz               31.5   MHz
010         800x600         60 Hz               40     MHz
011         800x600         75 Hz               49.5   MHz
100         800x600         85 Hz               56.25  MHz
101         1024x768        60 Hz               65     MHz
110         1024x768        85 Hz               94.5   MHz
111         1280x1024       60 Hz               108    MHz
*/



vgaModular vga (
    .i_clk(clk),
    .i_px_strobe(px_strobe),
    .i_rst(reset),
    .o_hs(Hsync),
    .o_vs(Vsync),
//    .o_blanking       ,
    .o_active(active),
//  ,  .o_screenend    ,
//    .o_animate,
    .o_x(x), 
    .o_y(y) 
);

wire rectA = (( (x < 600) && (x > 400)) && ((y < 480) && (y > 400)));

assign vgaRed[3:0] = rectA && sw[3:0] && (x > 0) && (y > 0);//sw[3:0];
assign vgaBlue[3:0] = sw[7:4] && (x > 0) && (y > 0);//sw[7:4];
assign vgaGreen[3:0] = sw[11:8] && (x > 0) && (y > 0);//sw[11:8];


assign led = btnC ? (sw & active) : sw;


/*associations
sw0: cap diamond
sw1: cap base
sw2: tassel 1
sw3: tassel 2
sw4: cardinal
sw5: SSoE
*/


endmodule
