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
    wire [1:0] pass_state; // changed to reg to match your `top` module
    wire clear;            // changed to reg to match your `top` module
    wire label_write_1;     // changed to reg to match your `top` module
    wire label_write_2;     // changed to reg to match your `top` module
    wire [14:0] pixel_addr; // changed size to match your `top` module
    wire [14:0] pixel_addr_1; // changed size to match your `top` module
    wire [5:0] mem_label_out;
    wire [5:0] mem_label_out_2;
    wire frame_mem_wea;
    wire frame;
    wire [11:0] sc;
    wire rectangle;
    wire [9:0] Xmin;
    wire [9:0] Ymin;
    wire [9:0] Xmax;
    wire [9:0] Ymax;
    wire [9:0] test_reg;

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
        .mem_label_out(mem_label_out),
        .final_label_out(final_label_out),
        .mem_label_out_2(mem_label_out_2),
        .cclk(cclk),
        .w_p_tick(w_p_tick),
        .w_n_tick(w_n_tick),
        .pass_state(pass_state),
        .clear(clear),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .pixel_addr(pixel_addr),
        .pixel_addr_1(pixel_addr_1),
        .frame_mem_wea(frame_mem_wea),
        .frame(frame),
        .sc(sc),
        .rectangle(rectangle),
        .Xmin(Xmin),
        .Ymin(Ymin),
        .Xmax(Xmax),
        .Ymax(Ymax),
        .test_reg(test_reg)
    );

    // Test sequence
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
        #150000000;

        // Finish simulation
        $stop;
    end

    // Monitor internal signals using $monitor
    initial begin
        $monitor("Time = %0d, Reset = %b, hsync = %b, vsync = %b, rgb = %h, w_x = %d, w_y = %d, binarize_pixel = %b, left_label = %h, \
        final_label_out = %h, mem_label_out = %h, mem_label_out_2 = %b, cclk = %b, w_p_tick = %b, w_n_tick = %b, pass_state = %b, clear = %b, \
        label_write_1 = %b, label_write_2 = %b, pixel_addr = %d, pixel_addr_1 = %d, frame_mem_wea = %b, frame = %b, sc = %b, rectangle = %b, \
        Xmin = %d, Ymin = %d, Xmax = %d, Ymax = %d, test_reg = %b", 
        $realtime, clk_100MHz, reset, hsync, vsync, rgb, w_x, w_y, binarize_pixel, left_label, final_label_out, mem_label_out, 
         mem_label_out_2, cclk, w_p_tick, w_n_tick, pass_state, clear, label_write_1, label_write_2, pixel_addr, pixel_addr_1, frame_mem_wea, frame, sc, rectangle, Xmin, Ymin, Xmax, Ymax, test_reg);
    end

    // Dump all signals to a VCD file for waveform analysis
    initial begin
        $dumpfile("top_tb.vcd");    // VCD file name
        $dumpvars(0, top_tb);       // Dump all signals in top_tb (including uut)
    end

endmodule

