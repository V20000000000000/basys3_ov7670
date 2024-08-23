`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 21:54:07
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb;

    // Parameters
    parameter image_width = 320;

    // Inputs
    reg pixel_in;
    reg [8:0] x;
    reg [8:0] y;

    // Outputs
    wire [6:0] left_label_out;
    wire [6:0] left_up_label_out;
    wire [6:0] up_label_out;
    wire [6:0] right_up_label_out;
    wire [6:0] current_label; // Changed to reg
    wire [6:0] new_label_out;
    wire [3:0] state;

    // Instantiate the Unit Under Test (UUT)
    buffer uut (
        .pixel_in(pixel_in),
        .x(x),
        .y(y),
        .left_label_out(left_label_out),
        .left_up_label_out(left_up_label_out),
        .up_label_out(up_label_out),
        .right_up_label_out(right_up_label_out),
        .current_label(current_label),
        .new_label_out(new_label_out),
        .state(state)
    );

    // Testbench clock and reset
    initial begin
        // Initialize Inputs
        pixel_in = 0;
        x = 400;
        y = 262;

        // Wait for the global reset to finish
        #10;
        
        // Initialize Inputs
        pixel_in = 0;
        x = 0;
        y = 0;

        // Simulate input conditions
        // Example scenario: Set a few pixels in the image
        for (y = 0; y < 262; y = y + 1) begin
            for (x = 0; x < 400; x = x + 1) begin
                // Generate binary values for pixel_in
                pixel_in = $random % 2; // Random binary value (0 or 1)
                #10; // Wait a little before next clock
            end
        end

        // Additional test cases can be added here
        #10000;  // Wait an additional time before ending simulation
        $finish;  // End the simulation
    end
    
    // Optional: Monitor signals to understand the simulation behavior
    initial begin
        $monitor("At time %0t: x = %0d, y = %0d, pixel_in = %b, left_label_out = %b, left_up_label_out = %b, up_label_out = %b, right_up_label_out = %b, current_label = %b, new_label_out = %b, state = %b", 
                 $time, x, y, pixel_in, left_label_out, left_up_label_out, up_label_out, right_up_label_out, current_label, new_label_out, state);
    end

endmodule





