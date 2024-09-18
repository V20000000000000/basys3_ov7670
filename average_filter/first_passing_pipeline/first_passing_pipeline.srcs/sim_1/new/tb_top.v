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

module top_tb;

    reg clk_100MHz;
    reg reset;
    wire hsync;
    wire vsync;
    wire [11:0] rgb;
    wire [9:0] w_x;
    wire [9:0] w_y;
    wire binarize_pixel;
    wire [5:0] left_label;
    wire [5:0] final_label_out;
    wire cclk;
    wire w_p_tick;
    wire w_n_tick;
    wire [1:0] pass_state;
    wire clear;
    wire label_write_1;
    wire label_write_2;
    wire [14:0] pixel_addr;
    wire [5:0] mem_label_out;
    wire [5:0] display_signal;
    wire dilation_result_3;
    wire [11:0] rgb_pixel_in;
    wire [7:0] Cb_a;
    wire [7:0] Cr_a;
    wire binarize_pixel_a;
    wire [7:0] Cb_b;
    wire [7:0] Cr_b;
    wire binarize_pixel_b;

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
        .dilation_result_3(dilation_result_3),
        .left_label(left_label),
        .mem_label_out(mem_label_out),
        .final_label_out(final_label_out),
        .display_signal(display_signal),
        .cclk(cclk),
        .w_p_tick(w_p_tick),
        .w_n_tick(w_n_tick),
        .pass_state(pass_state),
        .clear(clear),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .pixel_addr(pixel_addr),
        .rgb_pixel_in(rgb_pixel_in),
        .Cb_a(Cb_a),
        .Cr_a(Cr_a),
        .binarize_pixel_a(binarize_pixel_a),
        .Cb_b(Cb_b),
        .Cr_b(Cr_b),
        .binarize_pixel_b(binarize_pixel_b)
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
        $monitor("Time = %0d, Reset = %b, hsync = %b, vsync = %b, rgb = %h, w_x = %d, w_y = %d, binarize_pixel = %b, dilation_result_3 = %b, left_label = %h, \
        final_label_out = %h, mem_label_out =  %h, display_signal =  %h, cclk = %b, w_p_tick = %b, w_n_tick = %b, pass_state = %b, clear = %b, label_write_1 = %b, label_write_2 = %b,pixel_addr = %d \
        rgb_pixel_in = %b, Cb_a = %b, Cr_a = %b, binarize_pixel_a = %b, Cb_b = %b, Cr_b = %b, binarize_pixel_b = %b", 
        $realtime, clk_100MHz, reset, hsync, vsync, rgb, w_x, w_y, binarize_pixel, dilation_result_3, left_label, final_label_out, mem_label_out, 
         display_signal, cclk, w_p_tick, w_n_tick, pass_state, clear, label_write_1, label_write_2, pixel_addr, rgb_pixel_in, Cb_a, Cr_a, binarize_pixel_a, Cb_b, Cr_b, binarize_pixel_b);
    end

    // Dump all signals to a VCD file for waveform analysis
    initial begin
        $dumpfile("top_tb.vcd");    // VCD file name
        $dumpvars(0, top_tb);       // Dump all signals in top_tb (including uut)
    end

endmodule
