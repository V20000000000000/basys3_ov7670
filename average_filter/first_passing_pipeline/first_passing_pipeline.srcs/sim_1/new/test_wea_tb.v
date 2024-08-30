`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 15:30:39
// Design Name: 
// Module Name: test_wea_tb
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


module test_wea_tb();
    reg reset;
    reg w_p_tick;
    reg [4:0] w_x;
    reg [4:0] w_y;
    wire label_write;
    wire clear;

    // Instantiate the test_wea module
    test_wea uut (
        .reset(reset),
        .w_p_tick(w_p_tick),
        .w_x(w_x),
        .w_y(w_y),
        .label_write(label_write),
        .clear(clear),
        .pass_state(pass_state)
    );

    initial begin
        // Initialize inputs
        reset = 1;
        w_p_tick = 0;
        w_x = 0;
        w_y = 0;

        // Release reset
        #5 reset = 0;

        // Simulate 17x17 pixel processing
        for (integer i = 0; i < 5; i = i + 1) begin  // Two full image passes
            for (integer y = 0; y < 18; y = y + 1) begin
                for (integer x = 0; x < 18; x = x + 1) begin
                    #5;
                    w_x = x;
                    w_y = y;
                    w_p_tick = 1;
                    #5 w_p_tick = 0;
                end
            end
        end

        // Simulate (17, 17) condition
        #5;
        w_x = 17;
        w_y = 17;
        w_p_tick = 1;
        #5 w_p_tick = 0;

        // Finish simulation
        #50 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time: %0d, w_x: %d, w_y: %d, label_write: %b, clear: %b, pass_state: %b", 
                 $time, w_x, w_y, label_write, clear, uut.pass_state);
    end
endmodule

