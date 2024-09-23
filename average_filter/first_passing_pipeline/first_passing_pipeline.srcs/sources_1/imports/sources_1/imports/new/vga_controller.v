`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/12 19:58:21
// Design Name: 
// Module Name: vga_controller
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

module vga_controller(
    input clk_100MHz,   // from Basys 3
    input reset,        // system reset
    output video_on,    // ON while pixel counts for x and y and within display area
    output hsync,       // horizontal sync
    output vsync,       // vertical sync
    output p_tick,      // the 25MHz pixel/second rate signal, pixel tick
    output n_tick,
    output [9:0] x,     // pixel count/position of pixel x, max 0-799
    output [9:0] y,     // pixel count/position of pixel y, max 0-524
    output cclk
    );

    // VGA standard parameters
    parameter HD = 640;             // horizontal display area width in pixels
    parameter HF = 48;              // horizontal front porch width in pixels
    parameter HB = 16;              // horizontal back porch width in pixels 
    parameter HR = 96;              // horizontal retrace width in pixels
    parameter HMAX = HD+HF+HB+HR-1; // max value of horizontal counter = 799
    parameter VD = 480;             // vertical display area length in pixels
    parameter VF = 10;              // vertical front porch length in pixels
    parameter VB = 33;              // vertical back porch length in pixels
    parameter VR = 2;               // vertical retrace length in pixels 
    parameter VMAX = VD+VF+VB+VR-1; // max value of vertical counter = 524   
 
    // Generate 25MHz clock
    reg  [1:0] r_25MHz;
    wire w_25MHz;

    // Generate 12MHz clock
    reg  [2:0] r_12MHz;
    wire w_12MHz;

    always @(posedge clk_100MHz or posedge reset)
        if(reset)
            r_25MHz <= 0;
        else
            r_25MHz <= r_25MHz + 1;

    assign w_25MHz = (r_25MHz == 0);

    always @(posedge clk_100MHz or posedge reset)
        if(reset)
            r_12MHz <= 0;
        else
            r_12MHz <= r_12MHz + 1;

    assign w_12MHz = (r_12MHz == 0);

    // Counter Registers
    reg [9:0] h_count_reg, h_count_next;
    reg [9:0] v_count_reg, v_count_next;

    // Output Buffers
    reg v_sync_reg, h_sync_reg;
    wire v_sync_next, h_sync_next;

    // Frame Done Signal
    reg frame_done_reg;

    // Register Control
    always @(posedge clk_100MHz or posedge reset)
        if(reset) begin 
            v_count_reg <= 0;
            h_count_reg <= 0;
            v_sync_reg  <= 1'b0;
            h_sync_reg  <= 1'b0;
            frame_done_reg <= 1'b0;
        end
        else begin
            v_count_reg <= v_count_next;
            h_count_reg <= h_count_next;
            v_sync_reg  <= v_sync_next; 
            h_sync_reg  <= h_sync_next;
            frame_done_reg <= (v_count_reg == VMAX && h_count_reg == HMAX);
        end

    // Horizontal Counter
    always @(posedge w_25MHz or posedge reset)
        if(reset)
            h_count_next = 0;
        else if(h_count_reg == HMAX)
            h_count_next = 0; 
        else
            h_count_next = h_count_reg + 1;
  
    // Vertical Counter
    always @(posedge w_25MHz or posedge reset)   
        if(reset)
            v_count_next = 0;
        else if(h_count_reg == HMAX)
            if(v_count_reg == VMAX)
                v_count_next = 0;
            else
                v_count_next = v_count_reg + 1;

    // Horizontal Sync
    assign h_sync_next = (h_count_reg >= (HD+HB) && h_count_reg <= (HD+HB+HR-1));

    // Vertical Sync
    assign v_sync_next = (v_count_reg >= (VD+VB) && v_count_reg <= (VD+VB+VR-1));

    // Video ON/OFF
    assign video_on = (h_count_reg < HD) && (v_count_reg < VD);

    // Outputs
    assign hsync  = h_sync_reg;
    assign vsync  = v_sync_reg;
    assign x      = h_count_reg;
    assign y      = v_count_reg;
    assign p_tick = w_25MHz;
    assign n_tick = ~w_25MHz;
    assign cclk = ~w_12MHz;

endmodule

