`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/19 17:10:09
// Design Name: 
// Module Name: test_min_label
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

`timescale 1ns / 1ps

module tb_min_label_selector;

    // Inputs
    reg [6:0] left_label;
    reg [6:0] left_up_label;
    reg [6:0] up_label;
    reg [6:0] right_up_label;

    // Outputs
    wire [6:0] min_label;

    // Instantiate the Unit Under Test (UUT)
    min_label_selector uut (
        .left_label(left_label),
        .left_up_label(left_up_label),
        .up_label(up_label),
        .right_up_label(right_up_label),
        .min_label(min_label)
    );

    initial begin
        // Initialize Inputs
        left_label = 7'b0000000;
        left_up_label = 7'b0000000;
        up_label = 7'b0000000;
        right_up_label = 7'b0000000;

        // Wait for global reset
        #100;

        // Test case 1: 4 2 3 1
        left_label = 7'b0000100; // 4
        left_up_label = 7'b0000010; // 2
        up_label = 7'b0000011; // 3
        right_up_label = 7'b0000001; // 1
        #10;

        // Test case 2: 7 5 9 2
        left_label = 7'b0000111; // 7
        left_up_label = 7'b0000101; // 5
        up_label = 7'b0001001; // 9
        right_up_label = 7'b0000010; // 2
        #10;

        // Test case 3: 0 0 0 0
        left_label = 7'b0000000; // 0
        left_up_label = 7'b0000000; // 0
        up_label = 7'b0000000; // 0
        right_up_label = 7'b0000000; // 0
        #10;

        // Test case 4: 0 0 0 1
        left_label = 7'b0000000; // 0
        left_up_label = 7'b0000000; // 0
        up_label = 7'b0000000; // 0
        right_up_label = 7'b0000001; // 1
        #10;

        // Test case 5: 11 12 31 6
        left_label = 7'b0001011; // 11
        left_up_label = 7'b0001100; // 12
        up_label = 7'b0011111; // 31
        right_up_label = 7'b0000110; // 6
        #10;
        
        // Add more test cases as needed
    end
      
endmodule
