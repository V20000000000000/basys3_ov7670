`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 21:25:46
// Design Name: 
// Module Name: color_to_gray
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


module color_to_gray(
    input wire clk,
    input wire [11:0] pixel_in,
    output reg [11:0] gray_pixel_out
);

    // Intermediate wires for the color channels
    wire [7:0] r, g, b;
    wire [9:0] gray;

    // Extract the RGB channels
    assign r = {pixel_in[11:8], 4'b0}; // Extend to 8 bits
    assign g = {pixel_in[7:4], 4'b0};  // Extend to 8 bits
    assign b = {pixel_in[3:0], 4'b0};  // Extend to 8 bits

    // Compute grayscale value using integer arithmetic
    // Approximation: gray = (r*77 + g*150 + b*29) >> 8;
    assign gray = (r * 8'd77 + g * 8'd150 + b * 8'd29) >> 8;

    always @(posedge clk) begin
        // Assign the 4 most significant bits of the result to each color channel
        gray_pixel_out <= {gray[7:4], gray[7:4], gray[7:4]};
    end

endmodule

