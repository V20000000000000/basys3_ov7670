`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/17 14:45:44
// Design Name: 
// Module Name: second_pass
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


module second_pass (
    input wire clk,
    input wire reset,
    input wire [8:0] x,
    input wire [7:0] y,
    input wire video_on,
    input wire [4:0] label_in,
    output reg [4:0] final_label_out
);

    // Label equivalence memory interface signals
    wire [4:0] label_equiv_out;
    reg [4:0] label_addr;

    // Instantiate label equivalence block memory
    label_equivalence_mem label_mem (
        .clk(clk),
        .wea(1'b0),               // No write in second pass
        .addr(label_addr),
        .din(5'b0),               // No data input in second pass
        .dout(label_equiv_out)
    );

    always @(posedge clk) begin
        if (reset) begin
            final_label_out <= 5'b0;
        end else if (video_on) begin
            label_addr <= label_in;  // Set address to current label_in
            final_label_out <= label_equiv_out;  // Get the final label
        end
    end

endmodule


