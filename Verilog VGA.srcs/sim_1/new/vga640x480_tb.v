`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2020 08:42:25 PM
// Design Name: 
// Module Name: vga640x480_tb
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

module vga640x480_tb;

    reg clk = 1'b0,  strobe = 1'b0, reset = 1'b1;
    wire x, y, nready, ready, scrend, tx;
    
    wire [9:0] o_x;
    wire [8:0] o_y;
        
    vga640x480 UUT (
        .i_clk(clk),
        .i_px_strobe(strobe),
        .i_rst(reset),
        .o_hs(x),
        .o_vs(y),
        .o_blanking(nready),
        .o_active(ready),
        .o_screenend(scrend),
        .o_animate(tx),
        .o_x(o_x),
        .o_y(o_y)
    );

    always  
    begin
        clk = 0;
        #1;
        clk = 1;
        #1;
    end

    initial//always  @(posedge clk)
    begin
        
        $display($time, "<<Simulation Begin>>");
        #10;
        reset = 1'b0;
        #10;
        
        
        reset = 1'b0;
        strobe = 1'b1;
        #1667000;
        
        reset = 1'b1;
        strobe = 1'b0;
        #10;
        
        reset = 1'b1;
        strobe = 1'b1;
        #10;
        //wait(tx == 1)
        //$display($time, "<<animate complete>>");
        // wait(scrend == 1);
        
        //$display($time, "<<<screen end>>");
       
    end

    initial begin
        $monitor($time, "clk=%b, strobe=%b, reset=%b, x=%b, y=%b, blanking=%b, active=%b, scrEnd=%b, animate=%b",clk,strobe,reset,o_x,o_y,nready,ready,scrend,tx);
    end
    
    

endmodule
