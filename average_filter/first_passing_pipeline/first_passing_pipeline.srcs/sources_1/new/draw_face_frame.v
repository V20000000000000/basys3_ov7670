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
    input wire [1:0] pass_state, // changed to 2-bit to allow more states
    input wire video_on,         // video signal on/off
    input wire [9:0] x,          // current x coordinate (10-bit for VGA resolution)
    input wire [9:0] y,          // current y coordinate (10-bit for VGA resolution)
    output reg frame_mem_wea,    // write enable signal for frame memory
    output reg pixel_out,         // output pixel signal
    output wire [9:0] Xmin,               // output signal for second pass
    output wire [9:0] Ymin,               // output signal for second pass
    output wire [9:0] Xmax,               // output signal for second pass
    output wire [9:0] Ymax,               // output signal for second pass
    output wire [9:0] test_reg        // test register
);

    reg [9:0] minX [63:0];       // minimum x for each label
    reg [9:0] minY [63:0];       // minimum y for each label
    reg [9:0] maxX [63:0];       // maximum x for each label
    reg [9:0] maxY [63:0];       // maximum y for each label

    reg is_frame;         // flag to indicate if the pixel is on the frame boundary

    reg [9:0] test [63:0];

    integer i;
    integer j;

    //generate 25mhz clock
    reg [1:0] count;

    reg p1;
    reg p2;
    reg p3;
    
    // Reset or update min/max bounds for each label
    always @(posedge clk) begin
        count <= count + 1;
        if (reset || pass_state == 3) begin
            // Initialize min/max values to their respective bounds
            for (i = 0; i < 64; i = i + 1) begin
                test[i] <= 0;
                maxX[i] <= 0;
                maxY[i] <= 0;
                minX[i] <= 10'b1111111111;
                minY[i] <= 10'b1111111111;
            end
                pixel_out <= 0;       // Output black pixel when reset or video is off
        end 
        else begin
            if(video_on == 1) begin
                if(pass_state == 2'b00) begin
                    // Update minX, minY, maxX, maxY for the given pixel_in label
                    if(pixel_in != 0) begin
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
                    end
                    pixel_out <= 0;
                end
                else if(pass_state == 2'b10) begin
                    // Check if current pixel is on the frame boundary for the detected label
                    if (((x == minX[0] || x == maxX[0]) && (y >= minY[0] && y <= maxY[0])) || 
                        ((y == minY[0] || y == maxY[0]) && (x >= minX[0] && x <= maxX[0]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[1] || x == maxX[1]) && (y >= minY[1] && y <= maxY[1])) || 
                        ((y == minY[1] || y == maxY[1]) && (x >= minX[1] && x <= maxX[1]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[2] || x == maxX[2]) && (y >= minY[2] && y <= maxY[2])) || 
                        ((y == minY[2] || y == maxY[2]) && (x >= minX[2] && x <= maxX[2]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[3] || x == maxX[3]) && (y >= minY[3] && y <= maxY[3])) || 
                        ((y == minY[3] || y == maxY[3]) && (x >= minX[3] && x <= maxX[3]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[4] || x == maxX[4]) && (y >= minY[4] && y <= maxY[4])) || 
                        ((y == minY[4] || y == maxY[4]) && (x >= minX[4] && x <= maxX[4]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[5] || x == maxX[5]) && (y >= minY[5] && y <= maxY[5])) || 
                        ((y == minY[5] || y == maxY[5]) && (x >= minX[5] && x <= maxX[5]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[6] || x == maxX[6]) && (y >= minY[6] && y <= maxY[6])) || 
                        ((y == minY[6] || y == maxY[6]) && (x >= minX[6] && x <= maxX[6]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[7] || x == maxX[7]) && (y >= minY[7] && y <= maxY[7])) || 
                        ((y == minY[7] || y == maxY[7]) && (x >= minX[7] && x <= maxX[7]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[8] || x == maxX[8]) && (y >= minY[8] && y <= maxY[8])) || 
                        ((y == minY[8] || y == maxY[8]) && (x >= minX[8] && x <= maxX[8]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[9] || x == maxX[9]) && (y >= minY[9] && y <= maxY[9])) || 
                        ((y == minY[9] || y == maxY[9]) && (x >= minX[9] && x <= maxX[9]))) begin
                        pixel_out <= 1;
                    end
                    else begin
                        // If video is off, output black
                        pixel_out <= 0;
                    end
                end
                else begin
                    // If video is off, output black
                    pixel_out <= 0;
                end
                test[x[5:0]] <= {x[9:0]};
            end
        end
    end

    assign Xmin = minX[pixel_in];
    assign Ymin = minY[pixel_in];
    assign Xmax = maxX[pixel_in];
    assign Ymax = maxY[pixel_in];
    assign test_reg = test[x[5:0]];

    // Set write enable signal for frame memory
    always @(posedge clk) begin
        if (reset) begin
            frame_mem_wea <= 0;
        end else begin
            if (video_on == 1 && pass_state == 2'b10) begin
                frame_mem_wea <= 1;
            end else begin
                frame_mem_wea <= 0;
            end
        end
    end

endmodule


