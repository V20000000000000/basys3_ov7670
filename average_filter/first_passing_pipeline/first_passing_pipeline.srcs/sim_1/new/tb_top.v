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
    wire w_p_tick;
    wire w_n_tick;
    wire [1:0] pass_state;
    wire clear;
    wire label_write_1;
    wire label_write_2;
    wire a_video_on;
    wire b_video_on;
    wire [14:0] pixel_addr;
    wire [14:0] pixel_addr_1;
    wire [11:0] rgb_pixel_in;
    wire [11:0] rgb_pixel_original;
    wire preprocess_result;
    wire preprocessing_image;
    wire [5:0] label;
    wire display_signal;

    // Instantiate the top module
    top uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb),
        .w_x(w_x),
        .w_y(w_y),
        .w_p_tick(w_p_tick),
        .w_n_tick(w_n_tick),
        .pass_state(pass_state),
        .clear(clear),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .pixel_addr(pixel_addr),
        .pixel_addr_1(pixel_addr_1),
        .rgb_pixel_in(rgb_pixel_in),
        .rgb_pixel_original(rgb_pixel_original),
        .preprocess_result(preprocess_result),
        .preprocessing_image(preprocessing_image),
        .label(label),
        .display_signal(display_signal)
    );

    // Clock generation
    initial begin
        clk_100MHz = 0;
        forever #5 clk_100MHz = ~clk_100MHz; // Generate 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1;

        // Wait 100ns for initial signal stabilization
        #100;
        reset = 0;

        // Let the simulation run for some time
        #150000000;

        // Finish simulation
        $stop;
    end

    // Monitor internal signals using $monitor
    initial begin
        $monitor("Time = %0d, Reset = %b, hsync = %b, vsync = %b, rgb = %h, w_x = %d, w_y = %d, w_p_tick = %b, pass_state = %b, \
        label_write_1 = %b, label_write_2 = %b, pixel_addr = %d, pixel_addr_1 = %d, preprocess_result = %b, label = %h, \
        display_signal = %b", 
        $realtime, reset, hsync, vsync, rgb, w_x, w_y, w_p_tick, pass_state, label_write_1, label_write_2, pixel_addr, pixel_addr_1, preprocess_result, label, display_signal);
    end

    // Dump all signals to a VCD file for waveform analysis
    initial begin
        $dumpfile("top_tb.vcd");    // VCD file name
        $dumpvars(0, top_tb);       // Dump all signals in top_tb (including uut)
    end

endmodule

