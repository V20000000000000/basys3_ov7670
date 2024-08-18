`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/13 19:35:15
// Design Name: 
// Module Name: average_filter
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


module average_filter(
    input wire clk,
    input wire reset,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire video_on,
    input wire [11:0] rgb_in,
    output reg [11:0] rgb_out
    );

    // Line Buffer Registers
    reg [11:0] line_buf_1 [639:0];
    reg [11:0] line_buf_2 [639:0];
    reg [11:0] line_buf_3 [639:0];

    reg [12:0] rgb_temp;

    // Filter Operation
    always @(posedge clk) begin
        if (reset) begin
            rgb_temp <= 12'h0;
        end else if (video_on) begin
            // Store the current line into the buffer
            line_buf_3[x] <= line_buf_2[x];
            line_buf_2[x] <= line_buf_1[x];
            line_buf_1[x] <= rgb_in;

            // Calculate the average of the surrounding 9 pixels
            if (x > 0 && x < 639 && y > 0 && y < 479) begin
                rgb_temp <= (
                    line_buf_3[x-1] + line_buf_3[x] + line_buf_3[x+1] +  // 上一行的3个像素
                    line_buf_2[x-1] + line_buf_2[x] + line_buf_2[x+1] +  // 上一行的3个像素
                    line_buf_1[x-1] + line_buf_1[x] + line_buf_1[x+1]  // 当前行的3个像素
                ) / 9;    // 下一行的3个像素
            end else begin
                // 如果在边缘，直接输出当前像素值
                rgb_temp <= {1'h0, rgb_in}; 
            end 
        end 
        rgb_out <= rgb_temp [11:0];
    end  
endmodule


