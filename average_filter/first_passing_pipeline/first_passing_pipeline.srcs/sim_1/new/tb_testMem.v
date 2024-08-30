`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 17:18:36
// Design Name: 
// Module Name: tb_testMem
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


`timescale 1ns / 1ps

module tb_testMem;

    // Inputs
    reg clk;
    reg wea;
    reg ena;
    reg addra;  // 1-bit address
    reg dina;   // 1-bit data input
    reg reset;

    // Outputs
    wire rgb0;  // 1-bit output from tmem1
    wire rgb;   // 1-bit output from tmem2

    // Instantiate the Unit Under Test (UUT)
    testMem uut (
        .clk(clk),
        .wea(wea),
        .ena(ena),
        .addra(addra),
        .dina(dina),
        .reset(reset),
        .rgb0(rgb0),
        .rgb(rgb)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        wea = 0;
        ena = 0;
        addra = 0;
        dina = 0;
        reset = 1;

        // Apply reset
        #10;
        reset = 0;

        // Enable writing and memory
        ena = 1;
        wea = 1;

        // Finish the simulation after some time to observe outputs
        #150;
        $finish;
    end

    // Positive edge-triggered signal generation
    always @(posedge clk) begin
        if (reset == 0) begin
            dina <= ~dina;  // Toggle data input
            addra <= ~addra; // Toggle address
        end
    end

endmodule




