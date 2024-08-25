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

    // Testbench signals
    reg clk_100MHz;
    reg reset;
    wire video_on;
    wire hsync;
    wire vsync;
    wire p_tick;
    wire [9:0] x;
    wire [9:0] y;
    wire frame_done;

    // Instantiate the VGA controller
    vga_controller uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .video_on(video_on),
        .hsync(hsync),
        .vsync(vsync),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .frame_done(frame_done)
    );

    // Clock generation
    always #5 clk_100MHz = ~clk_100MHz; // 100MHz clock period (10ns)

    initial begin
        // Initialize signals
        clk_100MHz = 0;
        reset = 1;

        // Apply reset
        #20;
        reset = 0;

        // Run simulation for a few frames
        repeat(10) @(posedge frame_done);

        // Stop simulation
        $stop;
    end

endmodule

