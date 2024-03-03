`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/25 22:03:58
// Design Name: 
// Module Name: color_to_gray
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


module color_to_gray(
    input [11:0] din,
    input clk,
    input reset,
    output [3:0] dout
    );
    
    reg [3:0] gray_data;

    always @(posedge clk or negedge reset) 
    begin
        if(!reset)
            gray_data[3:0] <= 4'b0000;
        else
            gray_data[3:0] <= #1 (77*din[11:8]+150*din[7:4]+din[3:0])>>8;
    end
    
endmodule
