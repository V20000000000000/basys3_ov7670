`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 03:02:16
// Design Name: 
// Module Name: preprocess
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

module preprocess(
    input wire clk,
    input wire reset,
    input wire [11:0] rgb_pixel_in, // 12-bit RGB input (4 bits each for R, G, B)
    input wire [9:0] w_x,           // X-coordinate
    input wire [9:0] w_y,           // Y-coordinate
    input wire a_video_on,
    input wire b_video_on,
    output wire binarize_pixel,
    output wire result
);

    // Area a --------------------------------------------
    // Intermediate wires for the color channels of rgb_pixel_in
    wire [7:0] r_a, g_a, b_a;  // Extend to 8 bits
    wire signed [15:0] cb_temp_a, cr_temp_a; // Temporary variables for Cb and Cr
    wire [15:0] Cb_a, Cr_a;
    wire [7:0] gray_a;
    wire binarize_pixel_a;

    // Extract the RGB channels
    assign r_a = {rgb_pixel_in[11:8], 4'b0}; // Extend to 8 bits
    assign g_a = {rgb_pixel_in[7:4], 4'b0};  // Extend to 8 bits
    assign b_a = {rgb_pixel_in[3:0], 4'b0};  // Extend to 8 bits

    // Compute grayscale value using integer arithmetic
    // Approximation: gray_a = (r_a*77 + g_a*150 + b_a*29) >> 8;
    assign gray_a = (r_a * 8'd77 + g_a * 8'd150 + b_a * 8'd29) >> 8;

    // Compute Cb and Cr values using the standard YCbCr formulas
    assign Cb_a = 16'd128 - ((16'd37 * r_a + 16'd74 * g_a - 16'd111 * b_a) >> 8);
    assign Cr_a = 16'd128 + ((16'd112 * r_a - 16'd94 * g_a - 16'd18 * b_a) >> 8);

    // Assign binary pixel values based on the Cb and Cr ranges
    assign binarize_pixel_a = (a_video_on) ? (((80 < Cb_a) && (Cb_a < 120) && (140 < Cr_a) && (Cr_a < 165)) ? 1 : 0) : 0;

    // Output binary pixel for final processing
    assign binarize_pixel = binarize_pixel_a;

    // Instantiate erosion module
    wire erosion_result;
    erosion erosion_inst (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(binarize_pixel_a),
        .erosion_result(erosion_result)
    );

    // Instantiate dilation modules
    wire dilation_result_1;
    wire dilation_result_2;
    wire dilation_result_3;
    wire dilation_result_4;
    wire dilation_result_5;
    wire erosion_result_1;
    wire erosion_result_2;

    dilation dilation_inst_1 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(erosion_result),
        .dilation_result(dilation_result_1)
    );

    dilation dilation_inst (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_1),
        .dilation_result(dilation_result_2)
    );

    dilation dilation_inst_2 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_2),
        .dilation_result(dilation_result_3)
    );

    dilation dilation_inst_3 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_3),
        .dilation_result(dilation_result_4)
    );

    erosion erosion_inst_1 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_4),
        .erosion_result(erosion_result_1)
    );

    // Output the final result
    erosion erosion_inst_2 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(erosion_result_1),
        .erosion_result(erosion_result_2)
    );

    erosion erosion_inst_3 (
        .clk(clk),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(erosion_result_2),
        .erosion_result(result)
    );

endmodule

