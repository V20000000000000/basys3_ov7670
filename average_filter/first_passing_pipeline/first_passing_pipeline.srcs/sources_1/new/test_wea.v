`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 15:23:39
// Design Name: 
// Module Name: test_wea
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


module test_wea(
    input wire reset,
    input wire w_p_tick,
    input wire [4:0] w_x,  // Assuming 4-bit width for 17x17 image
    input wire [4:0] w_y,
    output reg label_write,
    output reg clear,
    output reg [1:0] pass_state  // Declare pass_state as an output reg
);
    parameter FIRST_PASS = 2'b00, SECOND_PASS = 2'b01, DONE = 2'b10, image_size = 16;

    always @(posedge w_p_tick or posedge reset) begin
        if (reset) begin
            pass_state <= FIRST_PASS;
            label_write <= 1;
            clear <= 1;
        end else begin
            case (pass_state)
                FIRST_PASS: begin
                    clear <= 0;
                    if (w_x == image_size && w_y == image_size-1) begin
                        pass_state <= SECOND_PASS;
                        label_write <= 0;  // Disable writing for the second pass
                    end
                end

                SECOND_PASS: begin
                    if (w_x == image_size && w_y == image_size-1) begin
                        pass_state <= DONE;
                    end
                end

                DONE: begin
                    if (w_x == 16&& w_y == 17) begin  // Coordinates (17,17) for a new frame
                        clear <= 1;
                    end
                    
                    if (w_x == 0&& w_y == 0) begin  // Coordinates (17,17) for a new frame
                        pass_state <= FIRST_PASS;
                        label_write <= 1;  // Enable writing for the first pass again
                        clear <= 0;
                    end
                end
            endcase
        end
    end
endmodule



