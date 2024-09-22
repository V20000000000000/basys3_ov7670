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
        end /*
        else if(pass_state == 2'b01)begin
                    if(x >= 0 && x <= 64 && y == 200 && count == 0) begin
                        if (minX[x[5:0]] >= 5) begin
                            minX[x[5:0]] <= minX[x[5:0]] - 5;
                        end
                        if (minY[x[5:0]] >= 5) begin
                            minY[x[5:0]] <= minY[x[5:0]] - 5;
                        end
                        if (maxX[x[5:0]] >= 5) begin
                            maxX[x[5:0]] <= maxX[x[5:0]] - 5;
                        end
                        if (maxY[x[5:0]] >= 5) begin
                            maxY[x[5:0]] <= maxY[x[5:0]] - 5;
                        end
                    end
            end*/
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
                    end/* else if (((x == minX[10] || x == maxX[10]) && (y >= minY[10] && y <= maxY[10])) || 
                        ((y == minY[10] || y == maxY[10]) && (x >= minX[10] && x <= maxX[10]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[11] || x == maxX[11]) && (y >= minY[11] && y <= maxY[11])) || 
                        ((y == minY[11] || y == maxY[11]) && (x >= minX[11] && x <= maxX[11]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[12] || x == maxX[12]) && (y >= minY[12] && y <= maxY[12])) || 
                        ((y == minY[12] || y == maxY[12]) && (x >= minX[12] && x <= maxX[12]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[13] || x == maxX[13]) && (y >= minY[13] && y <= maxY[13])) || 
                        ((y == minY[13] || y == maxY[13]) && (x >= minX[13] && x <= maxX[13]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[14] || x == maxX[14]) && (y >= minY[14] && y <= maxY[14])) || 
                        ((y == minY[14] || y == maxY[14]) && (x >= minX[14] && x <= maxX[14]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[15] || x == maxX[15]) && (y >= minY[15] && y <= maxY[15])) || 
                        ((y == minY[15] || y == maxY[15]) && (x >= minX[15] && x <= maxX[15]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[16] || x == maxX[16]) && (y >= minY[16] && y <= maxY[16])) || 
                        ((y == minY[16] || y == maxY[16]) && (x >= minX[16] && x <= maxX[16]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[17] || x == maxX[17]) && (y >= minY[17] && y <= maxY[17])) || 
                        ((y == minY[17] || y == maxY[17]) && (x >= minX[17] && x <= maxX[17]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[18] || x == maxX[18]) && (y >= minY[18] && y <= maxY[18])) || 
                        ((y == minY[18] || y == maxY[18]) && (x >= minX[18] && x <= maxX[18]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[19] || x == maxX[19]) && (y >= minY[19] && y <= maxY[19])) || 
                        ((y == minY[19] || y == maxY[19]) && (x >= minX[19] && x <= maxX[19]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[20] || x == maxX[20]) && (y >= minY[20] && y <= maxY[20])) || 
                        ((y == minY[20] || y == maxY[20]) && (x >= minX[20] && x <= maxX[20]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[21] || x == maxX[21]) && (y >= minY[21] && y <= maxY[21])) || 
                        ((y == minY[21] || y == maxY[21]) && (x >= minX[21] && x <= maxX[21]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[22] || x == maxX[22]) && (y >= minY[22] && y <= maxY[22])) || 
                        ((y == minY[22] || y == maxY[22]) && (x >= minX[22] && x <= maxX[22]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[23] || x == maxX[23]) && (y >= minY[23] && y <= maxY[23])) || 
                        ((y == minY[23] || y == maxY[23]) && (x >= minX[23] && x <= maxX[23]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[24] || x == maxX[24]) && (y >= minY[24] && y <= maxY[24])) || 
                        ((y == minY[24] || y == maxY[24]) && (x >= minX[24] && x <= maxX[24]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[25] || x == maxX[25]) && (y >= minY[25] && y <= maxY[25])) || 
                        ((y == minY[25] || y == maxY[25]) && (x >= minX[25] && x <= maxX[25]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[26] || x == maxX[26]) && (y >= minY[26] && y <= maxY[26])) || 
                        ((y == minY[26] || y == maxY[26]) && (x >= minX[26] && x <= maxX[26]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[27] || x == maxX[27]) && (y >= minY[27] && y <= maxY[27])) || 
                        ((y == minY[27] || y == maxY[27]) && (x >= minX[27] && x <= maxX[27]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[28] || x == maxX[28]) && (y >= minY[28] && y <= maxY[28])) || 
                        ((y == minY[28] || y == maxY[28]) && (x >= minX[28] && x <= maxX[28]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[29] || x == maxX[29]) && (y >= minY[29] && y <= maxY[29])) || 
                        ((y == minY[29] || y == maxY[29]) && (x >= minX[29] && x <= maxX[29]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[30] || x == maxX[30]) && (y >= minY[30] && y <= maxY[30])) || 
                        ((y == minY[30] || y == maxY[30]) && (x >= minX[30] && x <= maxX[30]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[31] || x == maxX[31]) && (y >= minY[31] && y <= maxY[31])) || 
                        ((y == minY[31] || y == maxY[31]) && (x >= minX[31] && x <= maxX[31]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[32] || x == maxX[32]) && (y >= minY[32] && y <= maxY[32])) || 
                        ((y == minY[32] || y == maxY[32]) && (x >= minX[32] && x <= maxX[32]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[33] || x == maxX[33]) && (y >= minY[33] && y <= maxY[33])) || 
                        ((y == minY[33] || y == maxY[33]) && (x >= minX[33] && x <= maxX[33]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[34] || x == maxX[34]) && (y >= minY[34] && y <= maxY[34])) || 
                        ((y == minY[34] || y == maxY[34]) && (x >= minX[34] && x <= maxX[34]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[35] || x == maxX[35]) && (y >= minY[35] && y <= maxY[35])) || 
                        ((y == minY[35] || y == maxY[35]) && (x >= minX[35] && x <= maxX[35]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[36] || x == maxX[36]) && (y >= minY[36] && y <= maxY[36])) || 
                        ((y == minY[36] || y == maxY[36]) && (x >= minX[36] && x <= maxX[36]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[37] || x == maxX[37]) && (y >= minY[37] && y <= maxY[37])) || 
                        ((y == minY[37] || y == maxY[37]) && (x >= minX[37] && x <= maxX[37]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[38] || x == maxX[38]) && (y >= minY[38] && y <= maxY[38])) || 
                        ((y == minY[38] || y == maxY[38]) && (x >= minX[38] && x <= maxX[38]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[39] || x == maxX[39]) && (y >= minY[39] && y <= maxY[39])) || 
                        ((y == minY[39] || y == maxY[39]) && (x >= minX[39] && x <= maxX[39]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[40] || x == maxX[40]) && (y >= minY[40] && y <= maxY[40])) || 
                        ((y == minY[40] || y == maxY[40]) && (x >= minX[40] && x <= maxX[40]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[41] || x == maxX[41]) && (y >= minY[41] && y <= maxY[41])) || 
                        ((y == minY[41] || y == maxY[41]) && (x >= minX[41] && x <= maxX[41]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[42] || x == maxX[42]) && (y >= minY[42] && y <= maxY[42])) || 
                        ((y == minY[42] || y == maxY[42]) && (x >= minX[42] && x <= maxX[42]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[43] || x == maxX[43]) && (y >= minY[43] && y <= maxY[43])) || 
                        ((y == minY[43] || y == maxY[43]) && (x >= minX[43] && x <= maxX[43]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[44] || x == maxX[44]) && (y >= minY[44] && y <= maxY[44])) || 
                        ((y == minY[44] || y == maxY[44]) && (x >= minX[44] && x <= maxX[44]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[45] || x == maxX[45]) && (y >= minY[45] && y <= maxY[45])) || 
                        ((y == minY[45] || y == maxY[45]) && (x >= minX[45] && x <= maxX[45]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[46] || x == maxX[46]) && (y >= minY[46] && y <= maxY[46])) || 
                        ((y == minY[46] || y == maxY[46]) && (x >= minX[46] && x <= maxX[46]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[47] || x == maxX[47]) && (y >= minY[47] && y <= maxY[47])) || 
                        ((y == minY[47] || y == maxY[47]) && (x >= minX[47] && x <= maxX[47]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[48] || x == maxX[48]) && (y >= minY[48] && y <= maxY[48])) || 
                        ((y == minY[48] || y == maxY[48]) && (x >= minX[48] && x <= maxX[48]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[49] || x == maxX[49]) && (y >= minY[49] && y <= maxY[49])) || 
                        ((y == minY[49] || y == maxY[49]) && (x >= minX[49] && x <= maxX[49]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[50] || x == maxX[50]) && (y >= minY[50] && y <= maxY[50])) || 
                        ((y == minY[50] || y == maxY[50]) && (x >= minX[50] && x <= maxX[50]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[51] || x == maxX[51]) && (y >= minY[51] && y <= maxY[51])) || 
                        ((y == minY[51] || y == maxY[51]) && (x >= minX[51] && x <= maxX[51]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[52] || x == maxX[52]) && (y >= minY[52] && y <= maxY[52])) || 
                        ((y == minY[52] || y == maxY[52]) && (x >= minX[52] && x <= maxX[52]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[53] || x == maxX[53]) && (y >= minY[53] && y <= maxY[53])) || 
                        ((y == minY[53] || y == maxY[53]) && (x >= minX[53] && x <= maxX[53]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[54] || x == maxX[54]) && (y >= minY[54] && y <= maxY[54])) || 
                        ((y == minY[54] || y == maxY[54]) && (x >= minX[54] && x <= maxX[54]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[55] || x == maxX[55]) && (y >= minY[55] && y <= maxY[55])) || 
                        ((y == minY[55] || y == maxY[55]) && (x >= minX[55] && x <= maxX[55]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[56] || x == maxX[56]) && (y >= minY[56] && y <= maxY[56])) || 
                        ((y == minY[56] || y == maxY[56]) && (x >= minX[56] && x <= maxX[56]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[57] || x == maxX[57]) && (y >= minY[57] && y <= maxY[57])) || 
                        ((y == minY[57] || y == maxY[57]) && (x >= minX[57] && x <= maxX[57]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[58] || x == maxX[58]) && (y >= minY[58] && y <= maxY[58])) || 
                        ((y == minY[58] || y == maxY[58]) && (x >= minX[58] && x <= maxX[58]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[59] || x == maxX[59]) && (y >= minY[59] && y <= maxY[59])) || 
                        ((y == minY[59] || y == maxY[59]) && (x >= minX[59] && x <= maxX[59]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[60] || x == maxX[60]) && (y >= minY[60] && y <= maxY[60])) || 
                        ((y == minY[60] || y == maxY[60]) && (x >= minX[60] && x <= maxX[60]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[61] || x == maxX[61]) && (y >= minY[61] && y <= maxY[61])) || 
                        ((y == minY[61] || y == maxY[61]) && (x >= minX[61] && x <= maxX[61]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[62] || x == maxX[62]) && (y >= minY[62] && y <= maxY[62])) || 
                        ((y == minY[62] || y == maxY[62]) && (x >= minX[62] && x <= maxX[62]))) begin
                        pixel_out <= 1;
                    end else if (((x == minX[63] || x == maxX[63]) && (y >= minY[63] && y <= maxY[63])) || 
                        ((y == minY[63] || y == maxY[63]) && (x >= minX[63] && x <= maxX[63]))) begin
                        pixel_out <= 1;
                    end*/
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


