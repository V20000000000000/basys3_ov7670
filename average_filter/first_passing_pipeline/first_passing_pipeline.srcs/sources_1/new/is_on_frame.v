`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/22 15:18:10
// Design Name: 
// Module Name: is_on_frame
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


module is_on_frame(
    input wire [9:0] x,         // Current pixel's x-coordinate
    input wire [9:0] y,         // Current pixel's y-coordinate
    input wire [9:0] minX [63:0], // Array of min X coordinates for each label
    input wire [9:0] minY [63:0], // Array of min Y coordinates for each label
    input wire [9:0] maxX [63:0], // Array of max X coordinates for each label
    input wire [9:0] maxY [63:0], // Array of max Y coordinates for each label
    output reg is_on_frame       // Output flag, 1 if pixel is on any frame boundary
);

    integer j; // Loop variable

    always @(*) begin
        is_on_frame = 1'b0;  // Initialize flag to 0 (not on frame boundary)
        for (j = 0; j < 64; j = j + 1) begin
            if (((x == minX[j] || x == maxX[j]) && (y >= minY[j] && y <= maxY[j])) || 
                ((y == minY[j] || y == maxY[j]) && (x >= minX[j] && x <= maxX[j]))) begin
                is_on_frame = 1'b1;  // Set flag if pixel is on any frame boundary
            end
        end
    end

endmodule

