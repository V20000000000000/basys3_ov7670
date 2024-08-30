`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/25 16:45:46
// Design Name: 
// Module Name: tb_vga_controller
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

module tb_vga_controller;

    // Inputs
    reg clk_100MHz;
    reg reset;

    // Outputs
    wire video_on;
    wire hsync;
    wire vsync;
    wire p_tick;
    wire [9:0] x;
    wire [9:0] y;
    wire cclk;

    // Instantiate the Unit Under Test (UUT)
    vga_controller uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .video_on(video_on),
        .hsync(hsync),
        .vsync(vsync),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .cclk(cclk)
    );

    // Clock generation
    initial begin
        clk_100MHz = 0;
        forever #5 clk_100MHz = ~clk_100MHz;  // 100MHz clock period = 10ns
    end

    // Stimulus process
    initial begin
        // Initialize Inputs
        reset = 1;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Deassert reset
        reset = 0;

        // Allow simulation to run long enough to see multiple frames
        #100000000;
        
        // End simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | x: %d, y: %d, hsync: %b, vsync: %b, video_on: %b, p_tick: %b", 
                 $time, x, y, hsync, vsync, video_on, p_tick);
    end

endmodule


