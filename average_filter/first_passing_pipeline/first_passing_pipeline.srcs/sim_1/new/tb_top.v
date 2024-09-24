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
    wire [14:0] pixel_addr;
    wire [14:0] pixel_addr_1;
    wire [9:0] Xmin;
    wire [9:0] Ymin;
    wire [9:0] Xmax;
    wire [9:0] Ymax;
    wire [9:0] test_reg;
    wire [5:0] display_signal;

    // Instantiate the top module
    top uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb)
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
        $monitor("Time = %0d, Reset = %b, hsync = %b, vsync = %b, rgb = %h", 
        $realtime, reset, hsync, vsync, rgb);
    end

    // Dump all signals to a VCD file for waveform analysis
    initial begin
        $dumpfile("top_tb.vcd");    // VCD file name
        $dumpvars(0, top_tb);       // Dump all signals in top_tb (including uut)
    end

endmodule


