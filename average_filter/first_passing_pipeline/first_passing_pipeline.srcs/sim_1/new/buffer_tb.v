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


`timescale 1ns / 1ps

module buffer_tb;

    // Testbench signals
    reg clk;
    reg video_on;
    reg pixel_in;
    reg [8:0] x;
    reg [8:0] y;
    wire [6:0] left_label_out;
    wire [6:0] left_up_label_out;
    wire [6:0] up_label_out;
    wire [6:0] right_up_label_out;
    wire [6:0] current_label;
    wire [6:0] new_label_out;
    wire [3:0] state;
    wire SCLR;

    // Instantiate the buffer module
    buffer uut (
        .clk(clk),
        .video_on(video_on),
        .pixel_in(pixel_in),
        .x(x),
        .y(y),
        .left_label_out(left_label_out),
        .left_up_label_out(left_up_label_out),
        .up_label_out(up_label_out),
        .right_up_label_out(right_up_label_out),
        .current_label(current_label),
        .new_label_out(new_label_out),
        .state(state),
        .SCLR(SCLR)
    );

    // Clock generation
    always #5 clk = ~clk;  // 100MHz clock

    initial begin
        // Initialize signals
        clk = 0;
        video_on = 0;
        pixel_in = 0;
        x = 330;
        y = 250;

        // Reset the system and wait for stabilization
        #10;
        
        x = 0;
        y = 0;

        #10;
        // Enable video
        video_on = 1;
    end

    // Update x, y, and pixel_in on the positive edge of the clock
    always @(posedge clk) begin
        if (video_on) begin
            pixel_in <= $random % 2;  // Random binary values for each pixel
            x <= x + 1;
            if (x == 16) begin
                x <= 0;
                y <= y + 1;
            end
        end
    end

    // Stop simulation after enough time has passed
    initial begin
        #10000;  // Wait for the simulation to capture results
        $stop;
    end

endmodule







