`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 02:37:16
// Design Name: 
// Module Name: draw_face_frame
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

module draw_face_frame(
    input wire clk,
    input wire reset,
    input wire [5:0] pixel_in,   // 6-bit input representing label (range 0-63)
    input wire video_on,         // video signal on/off
    input wire [9:0] x,          // current x coordinate (10-bit for VGA resolution)
    input wire [9:0] y,          // current y coordinate (10-bit for VGA resolution)
    output reg [5:0] pixel_out   // output pixel signal
    );

    reg [9:0] minX [63:0];       // minimum x for each label
    reg [9:0] minY [63:0];       // minimum y for each label
    reg [9:0] maxX [63:0];       // maximum x for each label
    reg [9:0] maxY [63:0];       // maximum y for each label

    integer i;
    
    // Reset or update min/max bounds for each label
    always @(posedge clk) begin
        if (reset) begin
            // Initialize min/max values to their respective bounds
            for (i = 0; i < 64; i = i + 1) begin
                minX[i] <= 10'd1023;
                minY[i] <= 10'd1023;
                maxX[i] <= 10'd0;
                maxY[i] <= 10'd0;
            end
        end 
        else if (video_on && pixel_in != 0) begin
            // Update minX, minY, maxX, maxY for the given pixel_in label
            if (x < minX[pixel_in]) begin
                minX[pixel_in] <= x;
            end
            if (y < minY[pixel_in]) begin
                minY[pixel_in] <= y;
            end
            if (x > maxX[pixel_in]) begin
                maxX[pixel_in] <= x;
            end
            if (y > maxY[pixel_in]) begin
                maxY[pixel_in] <= y;
            end

            // Check if current pixel is on the frame boundary for the detected label
            if ((x == minX[pixel_in] || x == maxX[pixel_in]) && (y >= minY[pixel_in] && y <= maxY[pixel_in]) || 
                (y == minY[pixel_in] || y == maxY[pixel_in]) && (x >= minX[pixel_in] && x <= maxX[pixel_in])) begin
                pixel_out <= 6'b111111;  // Draw white frame for the face
            end else begin
                pixel_out <= pixel_in;   // Keep original label otherwise
            end
        end
        else begin
            // If video is off or no face is detected (pixel_in == 0), output black
            pixel_out <= 6'b000000;
        end
    end

endmodule


