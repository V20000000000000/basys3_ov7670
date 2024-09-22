`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 03:40:22
// Design Name: 
// Module Name: display
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


module display (
    input wire clk_100MHz,
    input wire a_video_on,
    input wire b_video_on,
    input wire rectangle,
    input wire [11:0] rgb_pixel_original,
    output reg [11:0] rgb
);

    // Declare internal wires and registers
    wire [11:0] sa;
    wire [11:0] sc;
    wire [11:0] sd;
    reg [11:0] rgb_reg;
    reg rec;

    // Assignments
    assign sa = (b_video_on) ? rgb_pixel_original : 12'b000000000000;
    assign sc = (a_video_on) ? {rec, rec, rec, rec, 8'b00000000} : 12'b000000000000;
    assign sd = (rec) ? sc : sa;
    
    // Background color
    wire [11:0] background = 12'b000000000000;

    // Update rectangle state on clock edge
    always @(posedge clk_100MHz) begin
        rec <= rectangle;
    end

    // Assign final RGB output
    always @(posedge clk_100MHz) begin
        rgb <= sd + background;
    end

endmodule

