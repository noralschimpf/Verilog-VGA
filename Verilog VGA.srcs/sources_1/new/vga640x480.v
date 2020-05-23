`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2020 06:55:12 PM
// Design Name: 
// Module Name: vga640x480
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


module vga640x480 (
    input wire i_clk,
    input wire i_px_strobe,
    input wire i_rst,
    
    output wire o_hs,
    output wire o_vs,
    output wire o_blanking,
    output wire o_active,
    output wire o_screenend,
    output wire o_animate,
    
    output wire [9:0] o_x,
    output wire [8:0] o_y
    );
    
    localparam HS_STRT = 16;
    localparam HS_END = 16 + 96;
    localparam HA_STRT = 16 + 96 + 48;
    localparam VS_STRT = 480 + 10;
    localparam VS_END = 480 + 10 + 2;
    localparam VA_END = 480;
    localparam ENDLINE = 800;
    localparam ENDSCREEN = 525;
    
    reg[9:0] v_sync;
    reg[9:0] h_sync; 
    
    //sync signals (active low in sync region)
    assign o_hs = ~((h_sync>HS_STRT)|(h_sync<HS_END));
    assign o_vs = ~((v_sync>VS_STRT)|(v_sync<VS_END));
    
    //active pixel
   assign o_x = ((h_sync < HA_STRT) ? 0 : (h_sync - HA_STRT));
   assign o_y = ((v_sync >= VA_END) ? (VA_END-1) : v_sync);
   //assign o_x = h_sync;
   //assign o_y = v_sync;
    
    //blanking: animation on hold
    assign o_blanking = ((h_sync < HA_STRT) | (v_sync > VA_END - 1)); 
    
    //output active
    assign o_active =  ~((h_sync < HA_STRT) | (v_sync > VA_END - 1));
    
    //end of screen
    assign o_screenend = (h_sync == ENDLINE) & (v_sync == ENDSCREEN - 1);
    
    //end of frame animation
    assign o_animate = (h_sync == ENDLINE) & (v_sync == VA_END - 1);
    
    
    //cycle count
    always @ (posedge i_clk)
    begin
        
        if (i_rst)
            begin
                h_sync <= 0;
                v_sync <= 0;
            end
        
        else if (i_px_strobe)
            begin

                if (h_sync == ENDLINE)
                    begin
                        h_sync <= 0;
                        v_sync <= v_sync + 1;
                    end
                    
                else if (v_sync == ENDSCREEN - 1)
                    begin
                        v_sync <= 0;
                    end

                else
                    begin
                        h_sync <= h_sync + 1;
                    end
            end
    end    
    
endmodule
