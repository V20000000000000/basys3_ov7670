`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 17:12:37
// Design Name: 
// Module Name: testMem
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

module testMem(
    input clk,
    input wea,
    input ena,
    input addra,
    input dina,
    input reset,
    output rgb0,
    output rgb
    );

    // Instantiate the tmem1
    tmem1 tmem1_inst (
        .clka(clk),
        .wea(wea),
        .addra(addra),
        .dina(dina),
        .douta(rgb0),
        .rsta(reset),
        .ena(ena)
    );

    // Instantiate the tmem2
    tmem2 tmem2_inst (
        .clka(clk),
        .wea(wea),
        .addra(addra),
        .dina(rgb0),
        .douta(rgb),
        .rsta(reset),
        .ena(ena)
    );

endmodule
