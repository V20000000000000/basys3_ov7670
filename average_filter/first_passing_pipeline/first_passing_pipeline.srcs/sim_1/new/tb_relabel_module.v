`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/24 17:13:55
// Design Name: 
// Module Name: tb_relabel_module
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

module tb_relabel_module;

    // Inputs
    reg clk;
    reg reset;
    reg [5:0] pixel_in;

    // Outputs
    wire [5:0] relabel_out;
    wire [5:0] labelcount;

    // Instantiate the relabel module
    relabel_module uut (
        .clk(clk),
        .reset(reset),
        .pixel_in(pixel_in),
        .relabel_out(relabel_out),
        .labelcount(labelcount)
    );

    // Clock generation
    always #5 clk = ~clk;  // 100MHz clock (10ns period)

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        pixel_in = 0;

        // Apply reset
        #10 reset = 1;
        #10 reset = 0;

        // Test with different pixel_in values
        // First input label (1), should get assigned labelcount 1
        #10 pixel_in = 6'd1;  // pixel_in = 1
        #10 pixel_in = 6'd1;  // pixel_in = 1 (repeat to check the relabel)

        // Test another input label (2), should get assigned labelcount 2
        #10 pixel_in = 6'd2; 

        // Test a different pixel_in (3), should get assigned labelcount 3
        #10 pixel_in = 6'd5;  

        // Test an already labeled pixel (1 again), should use relabel_out = 1
        #10 pixel_in = 6'd8;  

        // Test another input label (4), should get assigned labelcount 4
        #10 pixel_in = 6'd3;  

        #10 pixel_in = 6'd4;  // pixel_in = 4

        #10 pixel_in = 6'd5;  // pixel_in = 5

        // Apply reset again to check reset behavior
        #10 reset = 1;
        #10 reset = 0;

        // Test after reset, should start with labelcount 1 again
        #10 pixel_in = 6'd5;  // pixel_in = 5, new label after reset
        #10 pixel_in = 6'd6;  // pixel_in = 6, another new label

        // Finish the simulation
        #50 $finish;
    end

    // Monitor signals for debugging
    initial begin
        $monitor("Time: %0d, Reset: %b, pixel_in: %d, relabel_out: %d, labelcount: %d", 
                 $time, reset, pixel_in, relabel_out, labelcount);
    end
endmodule

