`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/08 16:49:25
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
    input wire [11:0] din,
    output wire [3:0] dout
    );
    
    assign dout = (77*din[11:8]+150*din[7:4]+din[3:0])>>8;
    
endmodule
