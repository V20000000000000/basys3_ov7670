`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/18 22:11:28
// Design Name: 
// Module Name: write_mem
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


module write_mem(
    input wire clk,
    input wire reset,
    input wire [16:0] pixel_addr,
    input wire [6:0] smallest_label_in,
    input wire [6:0] left_label_in,
    input wire [6:0] left_up_label_in,
    input wire [6:0] right_up_label_in,
    input wire [6:0] up_label_in,
    input wire equivalence_in,
    input wire [11:0] x,
    input wire [10:0] y,
    input wire hsync_in,
    input wire vsync_in,
    output reg hsync_out,
    output reg vsync_out,
    output reg [11:0] label
    );

    reg [11:0] label_reg;
    reg [6:0] smallest_label;
    reg [6:0] left_label;
    reg [6:0] left_up_label;
    reg [6:0] right_up_label;
    reg [6:0] up_label;

    // Instantiate Block Memory for Label Storage
    first_pass_mem first_pass_mem_inst (
        .clka(clk),                // Use the main clock
        .wea(wea),                 // Write Enable for writing labels to memory
        .addra(pixel_addr),        // Address for the pixel
        .dina(smallest_label_in),  // Data to write (smallest_label_in)
        .douta(first_label_out),   // Data output from memory
        .ena(1'b1)                 // Enable signal
    );

    always @(posedge clk) begin
        hsync_out <= hsync_in;
        vsync_out <= vsync_in;
        if (reset) begin
            label_reg <= 12'b0;
            smallest_label <= 7'b0000000;
            left_label <= 7'b0000000;
            left_up_label <= 7'b0000000;
            right_up_label <= 7'b0000000;
            up_label <= 7'b0000000;
        end
        else begin
            label <= smallest_label_in;
        end
    end

endmodule
