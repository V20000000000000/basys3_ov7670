`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 21:30:59
// Design Name: 
// Module Name: buffer
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


module buffer(
    input wire [6:0] current_label, 
    input wire [8:0] x,
    input wire [7:0] y,
    output wire [6:0] left_label_out, 
    output wire [6:0] left_up_label_out,
    output wire [6:0] up_label_out,
    output wire [6:0] right_up_label_out
    );

    reg [320:0] buffer_0; // label digit 0
    reg [320:0] buffer_1; // label digit 1
    reg [320:0] buffer_2; // label digit 2
    reg [320:0] buffer_3; // label digit 3
    reg [320:0] buffer_4; // label digit 4
    reg [320:0] buffer_5; // label digit 5
    reg [320:0] buffer_6; // label digit 6

    reg [6:0] left_label;
    reg [6:0] left_up_label;
    reg [6:0] up_label;
    reg [6:0] right_up_label;
    
    // Assign neighbor labels based on x and y positions
    always @(x or y) begin
        left_label = {buffer_6[0], buffer_5[0], buffer_4[0], buffer_3[0], buffer_2[0], buffer_1[0], buffer_0[0]};
        left_up_label = {buffer_6[320], buffer_5[320], buffer_4[320], buffer_3[320], buffer_2[320], buffer_1[320], buffer_0[320]};
        up_label = {buffer_6[319], buffer_5[319], buffer_4[319], buffer_3[319], buffer_2[319], buffer_1[319], buffer_0[319]};
        right_up_label = {buffer_6[318], buffer_5[318], buffer_4[318], buffer_3[318], buffer_2[318], buffer_1[318], buffer_0[318]};
        buffer_0 = {buffer_0[319:0], current_label[0]};
        buffer_1 = {buffer_1[319:0], current_label[1]};
        buffer_2 = {buffer_2[319:0], current_label[2]};
        buffer_3 = {buffer_3[319:0], current_label[3]};
        buffer_4 = {buffer_4[319:0], current_label[4]};
        buffer_5 = {buffer_5[319:0], current_label[5]};
        buffer_6 = {buffer_6[319:0], current_label[6]};
    end

    assign left_label_out = (x > 0) ? left_label : 7'b0000000;
    assign left_up_label_out = (x > 0 && y > 0) ? left_up_label : 7'b0000000;
    assign up_label_out = (y > 0) ? up_label : 7'b0000000;
    assign right_up_label_out = (x < 8 && y > 0) ? right_up_label : 7'b0000000;

endmodule
