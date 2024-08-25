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

module tb_top;

    // Testbench signals
    reg clk_100MHz;
    reg reset;
    wire hsync;
    wire vsync;
    wire [11:0] rgb;

    // Internal signals for observing the internal modules
    wire w_video_on, w_p_tick, frame_done;
    wire [9:0] w_x, w_y;
    wire binarize_pixel;
    wire [11:0] rgb_pixel_in;
    wire [16:0] pixel_addr;
    wire [11:0] data;
    wire [6:0] label_0, final_label_out;
    wire w_25MHz;
    wire [6:0] left_label, left_up_label, right_up_label, up_label;
    wire [8:0] x_0, x_1;
    wire [7:0] y_0, y_1;
    wire equivalence;
    wire hsync_0, vsync_0, hsync_1, vsync_1, hsync_2, vsync_2;

    // Instantiate the top module
    top uut (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb)
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

        // Run simulation for a specified amount of time
        #500000;

        // Stop simulation
        $stop;
    end

    // Observe internal signals by connecting them to testbench signals
    assign w_video_on = uut.w_video_on;
    assign w_p_tick = uut.w_p_tick;
    assign w_x = uut.w_x;
    assign w_y = uut.w_y;
    assign binarize_pixel = uut.binarize_pixel;
    assign rgb_pixel_in = uut.rgb_pixel_in;
    assign pixel_addr = uut.pixel_addr;
    assign data = uut.data;
    assign label_0 = uut.label_0;
    assign final_label_out = uut.final_label_out;
    assign w_25MHz = uut.w_25MHz;
    assign left_label = uut.left_label;
    assign left_up_label = uut.left_up_label;
    assign right_up_label = uut.right_up_label;
    assign up_label = uut.up_label;
    assign x_0 = uut.x_0;
    assign y_0 = uut.y_0;
    assign x_1 = uut.x_1;
    assign y_1 = uut.y_1;
    assign equivalence = uut.equivalence;
    assign hsync_0 = uut.hsync_0;
    assign vsync_0 = uut.vsync_0;
    assign hsync_1 = uut.hsync_1;
    assign vsync_1 = uut.vsync_1;
    assign hsync_2 = uut.hsync_2;
    assign vsync_2 = uut.vsync_2;
    assign frame_done = uut.frame_done;

endmodule

