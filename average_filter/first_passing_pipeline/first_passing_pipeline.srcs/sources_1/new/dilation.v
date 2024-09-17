`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 16:36:16
// Design Name: 
// Module Name: dilation
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


module dilation(
    input wire clk,
    input wire reset,
    input wire a_video_on,
    input wire pixel_in,
    output wire dilation_result
);

    // Shift register to store previous pixel values
    reg [385:0] dilation_reg;
    
    // Intermediate wires for the neighboring pixels
    wire p1, p2, p3, p4, p5, p6, p7, p8;

    integer i;

    // Shift register logic
    always @(posedge clk) begin
        if (reset) begin
            // Reset the shift register
            for (i = 0; i < 386; i = i + 1) begin
                dilation_reg[i] <= 0;
            end
        end
        else if (a_video_on) begin
            // Shift the register and add the new binarize_pixel value
            dilation_reg <= {dilation_reg[384:0], pixel_in};
        end
    end

    // Assign the values of the neighboring pixels
    assign p1 = dilation_reg[385];
    assign p2 = dilation_reg[384];
    assign p3 = dilation_reg[383];
    assign p4 = dilation_reg[193];
    assign p5 = dilation_reg[192];
    assign p6 = dilation_reg[191];
    assign p7 = dilation_reg[1];
    assign p8 = dilation_reg[0];

    // Compute the dilation result
    assign dilation_result = p1 | p2 | p3 | p4 | p5 | p6 | p7 | p8 | pixel_in;

endmodule

