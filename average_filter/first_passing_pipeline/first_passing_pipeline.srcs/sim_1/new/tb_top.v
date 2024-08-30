`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/25 18:12:54
// Design Name: 
// Module Name: tb_top
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

`timescale 1ns / 1ps

module top_tb;

    reg clk_100MHz;
    reg reset;
    wire hsync;
    wire vsync;
    wire [11:0] rgb;
    wire [9:0] w_x;
    wire [9:0] w_y;
    wire binarize_pixel;
    wire [6:0] left_label;
    wire [6:0] final_label_out;
    wire cclk;
    wire w_p_tick;
    wire [1:0] pass_state;
    wire clear;
    wire label_write;
    wire [16:0] pixel_addr;
    wire [16:0] pixel_addr_1;
    wire hsync_0;
    wire vsync_0;
    wire clk_100MHz_1;
    wire [9:0] w_x_0;
    wire [9:0] w_y_0;

    // Instantiate the top module
    top uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb),
        .w_x(w_x),
        .w_y(w_y),
        .binarize_pixel(binarize_pixel),
        .left_label(left_label),
        .final_label_out(final_label_out),
        .cclk(cclk),
        .w_p_tick(w_p_tick),
        .pass_state(pass_state),
        .clear(clear),
        .label_write(label_write),
        .pixel_addr(pixel_addr),
        .pixel_addr_1(pixel_addr_1),
        .hsync_0(hsync_0),
        .vsync_0(vsync_0),
        .clk_100MHz_1(clk_100MHz_1),
        .w_x_0(w_x_0),
        .w_y_0(w_y_0)
    );

    // Clock generation
    initial begin
        clk_100MHz = 0;
        forever #5 clk_100MHz = ~clk_100MHz; // 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1;

        // Apply reset
        #100;
        reset = 0;

        // Let the simulation run for a while to observe the interactions
        #100000000;

        // Finish simulation
        $stop;
    end

    // Monitor internal signals using $monitor
    initial begin
    $monitor("Time = %0d, Reset = %b, hsync = %b, vsync = %b, rgb = %h, w_x = %d, w_y = %d, binarize_pixel = %b, left_label = %h, \
    final_label_out = %h, cclk = %b, w_p_tick = %b, pass_state = %b, clear = %b, label_write = %b, pixel_addr = %d, pixel_addr_1 = %d, \
    hsync_0 = %b, vsync_0 = %b, clk_100MHz_1 = %b, w_x_0 = %d, w_y_0 = %d", $realtime, clk_100MHz, reset, hsync, vsync, rgb, w_x, w_y, binarize_pixel, left_label, final_label_out, cclk, w_p_tick, pass_state, 
    clear, label_write, pixel_addr, pixel_addr_1, hsync_0, vsync_0, clk_100MHz_1, w_x_0, w_y_0);
end


    // Dump all signals to a VCD file for waveform analysis
    initial begin
        $dumpfile("top_tb.vcd");    // VCD file name
        $dumpvars(0, top_tb);       // Dump all signals in top_tb (including uut)
    end

endmodule