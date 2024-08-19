`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/19 14:23:35
// Design Name: 
// Module Name: min_label_selector
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


module min_label_selector (
    input [6:0] left_label,
    input [6:0] left_up_label,
    input [6:0] up_label,
    input [6:0] right_up_label,
    output [6:0] min_label
);

    assign min_label = (left_label != 7'b0000000 && 
                        (left_up_label == 7'b0000000 || left_label < left_up_label) &&
                        (up_label == 7'b0000000 || left_label < up_label) &&
                        (right_up_label == 7'b0000000 || left_label < right_up_label)) ? left_label :
                       (left_up_label != 7'b0000000 && 
                        (up_label == 7'b0000000 || left_up_label < up_label) &&
                        (right_up_label == 7'b0000000 || left_up_label < right_up_label)) ? left_up_label :
                       (up_label != 7'b0000000 && 
                        (right_up_label == 7'b0000000 || up_label < right_up_label)) ? up_label :
                       (right_up_label != 7'b0000000) ? right_up_label :
                       7'b0000000;

endmodule



