`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/24 17:10:49
// Design Name: 
// Module Name: relabel_module
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

module relabel_module (
    input wire clk,
    input wire reset,
    input wire [5:0] pixel_in,    // 6-bit input label
    input wire video_on,  // 6-bit input label
    input wire [1:0] pass_state,
    output reg [5:0] relabel_out, // relabeled output
    output reg [5:0] labelcount   // current count of labels
);

    reg [5:0] test [63:0]; // array to store the relabeled values for each original label
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset || pass_state == 2'b11) begin
            // Reset relabeling table and counters
            for (i = 0; i < 64; i = i + 1) begin
                test[i] <= 0;
            end
            labelcount <= 1;
            relabel_out <= 0;
        end
        else begin
            if(video_on) begin
                // Relabel pixel_in only if it's non-zero
                if (pixel_in != 0) begin
                    if (test[pixel_in] == 0) begin
                        // Assign new label if not yet relabeled
                        labelcount <= labelcount + 1;
                        test[pixel_in] <= labelcount;
                        relabel_out <= labelcount;
                    end
                    else begin
                        // Use existing relabel value
                        relabel_out <= test[pixel_in];
                    end
                end
                else begin
                    relabel_out <= 0; // No relabel for pixel_in == 0
                end
            end
            else begin
                relabel_out <= 0;
            end
        end
    end
endmodule

