`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/02 22:17:20
// Design Name: 
// Module Name: label_set_tb
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

module label_set_tb;

    reg clk;
    reg reset;
    reg clear;
    reg [16:0] pixel_addr;
    reg [1:0] state;
    reg [6:0] min_label_in;
    reg [6:0] left_up_label_in;
    reg [6:0] up_label_in;
    reg [6:0] right_up_label_in;
    wire [6:0] min_label_out;

    // State Machine Signals
    reg [1:0] pass_state;
    reg label_write;
    reg [9:0] w_x, w_y;  // Assuming w_x, w_y are 10-bit wide for a 640x480 resolution
    reg w_p_tick;

    // Instantiate the label_set module
    label_set uut (
        .clk(clk),
        .reset(reset),
        .clear(clear),
        .pixel_addr(pixel_addr),
        .state(state),
        .min_label_in(min_label_in),
        .left_up_label_in(left_up_label_in),
        .up_label_in(up_label_in),
        .right_up_label_in(right_up_label_in),
        .min_label_out(min_label_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Simulate w_p_tick (pixel clock tick)
    initial begin
        w_p_tick = 0;
        forever #10 w_p_tick = ~w_p_tick;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | State: %b | w_x: %d | w_y: %d | label_write: %b | min_label_out: %b",
                 $time, pass_state, w_x, w_y, label_write, min_label_out);
    end

    // Test procedure
    initial begin
        // Initialize signals
        reset = 1;
        clear = 0;
        pixel_addr = 0;
        state = 0;
        min_label_in = 7'b0000001;
        left_up_label_in = 7'b0000010;
        up_label_in = 7'b0000011;
        right_up_label_in = 7'b0000100;
        w_x = 0;
        w_y = 0;

        // Apply reset
        #10 reset = 0;

        // Begin First Pass
        pass_state = 2'b00;
        label_write = 1;
        clear = 0;
        state = 0;

        // Simulate First Pass
        repeat(640*480) begin
            @(posedge w_p_tick);
            w_x = w_x + 1;
            if (w_x == 640) begin
                w_x = 0;
                w_y = w_y + 1;
            end
            if (w_y == 479) begin
                pass_state = 2'b01;
                label_write = 0;
            end
        end

        // Wait for Second Pass
        #10 state = 1;
        @(posedge w_p_tick);
        w_x = 0;
        w_y = 0;

        // Begin Second Pass
        pass_state = 2'b10;
        state = 2;

        // Simulate Second Pass
        repeat(640*480) begin
            @(posedge w_p_tick);
            w_x = w_x + 1;
            if (w_x == 640) begin
                w_x = 0;
                w_y = w_y + 1;
            end
            if (w_y == 479) begin
                pass_state = 2'b11;
            end
            pixel_addr = 640 * w_y + w_x;
        end

        // Done State
        pass_state = 2'b11;
        #10 state = 3;

        // Clear and Reset for next frame
        #10 reset = 1;
        @(posedge w_p_tick);
        #10 reset = 0;

        // Finish simulation
        #100 $stop;
    end

endmodule



