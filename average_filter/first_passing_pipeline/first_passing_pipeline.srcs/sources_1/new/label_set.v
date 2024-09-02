`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/02 21:17:55
// Design Name: 
// Module Name: label_set
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

module label_set(
    input wire clk,
    input wire reset,
    input wire clear,
    input wire [16:0] pixel_addr,
    input wire [1:0] state,
    input wire [6:0] min_label_in,
    input wire [6:0] left_up_label_in,
    input wire [6:0] up_label_in,
    input wire [6:0] right_up_label_in,
    output reg [6:0] min_label_out
    );

    reg [6:0] label_set [127:0];
    integer i;

    // Synchronous reset and clear
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 1; i < 129; i = i + 1) begin
                label_set[i] <= i;
            end
            min_label_out <= 7'b0000000;
        end else if (clear) begin
            for (i = 1; i < 129; i = i + 1) begin
                label_set[i] <= i;
            end
            min_label_out <= 7'b0000000;
        end else begin
            case (state)
                // First pass: record equivalence
                2'b00: begin
                    if (left_up_label_in != 0 && min_label_in != 0 && min_label_in < label_set[left_up_label_in]) begin
                        label_set[left_up_label_in] <= min_label_in;
                    end
                    if (up_label_in != 0 && min_label_in != 0 && min_label_in < label_set[up_label_in]) begin
                        label_set[up_label_in] <= min_label_in;
                    end
                    if (right_up_label_in != 0 && min_label_in != 0 && min_label_in < label_set[right_up_label_in]) begin
                        label_set[right_up_label_in] <= min_label_in;
                    end
                    // After updating equivalences, propagate the minimum label to all connected components
                    for (i = 0; i < 128; i = i + 1) begin
                        if (label_set[i] != i) begin
                            label_set[i] <= label_set[label_set[i]];
                        end
                    end
                    min_label_out <= 7'b0000000;
                end
                // Wait for second pass
                2'b01: begin
                    min_label_out <= 7'b0000000;
                end
                // Second pass: output the resolved minimum label
                2'b10: begin
                    min_label_out <= label_set[min_label_in];
                end
                // Default case for unexpected states
                default: begin
                    min_label_out <= 7'b0000000;
                end
            endcase
        end
    end
endmodule


