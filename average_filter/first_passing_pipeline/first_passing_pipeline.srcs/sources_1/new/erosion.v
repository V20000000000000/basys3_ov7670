`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 17:15:50
// Design Name: 
// Module Name: erosion
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


module erosion(
    input wire clk,
    input wire reset,
    input wire a_video_on,
    input wire pixel_in,
    output wire erosion_result
    );

    // Shift register to store previous pixel values
    reg [385:0] erosion_reg;
    
    // Intermediate wires for the neighboring pixels
    wire p1, p2, p3, p4, p5, p6, p7, p8;

    integer i;

    // Shift register logic
    always @(posedge clk) begin
        if (reset) begin
            // Reset the shift register
            for (i = 0; i < 386; i = i + 1) begin
                erosion_reg[i] <= 0;
            end
        end
        else if (a_video_on) begin
            // Shift the register and add the new binarize_pixel value
            erosion_reg <= {erosion_reg[384:0], pixel_in};
        end
    end

    // Assign the values of the neighboring pixels
    assign p1 = erosion_reg[385];
    assign p2 = erosion_reg[384];
    assign p3 = erosion_reg[383];
    assign p4 = erosion_reg[193];
    assign p5 = erosion_reg[192];
    assign p6 = erosion_reg[191];
    assign p7 = erosion_reg[1];
    assign p8 = erosion_reg[0];

    // Compute the dilation result
    assign erosion_result = p1 * p2 * p3 * p4 * p5 * p6 * p7 * p8 * pixel_in;

endmodule
