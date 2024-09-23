`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 03:26:50
// Design Name: 
// Module Name: controller
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

// control wea for first pass memory
// run second pass after first pass is done, during the second pass, wea is 0, so the memory is read only
// otherwise, wea is 1, so the memory is write only

module controller (
    input wire clk,             // System clock
    input wire reset,           // Reset signal
    output wire [9:0] w_x,       // Current X coordinate
    output wire [9:0] w_y,       // Current Y coordinate
    output reg label_write_1,   // Write enable signal for the first pass
    output reg label_write_2,   // Write enable signal for the second pass
    output wire [14:0] pixel_addr,  // Pixel address for the first pass
    output wire [14:0] pixel_addr_1,  // Pixel address for the second pass
    output wire [14:0] pixel_addr_2,  // Pixel address for the second pass
    output wire w_p_tick,       // Tick signal for synchronization
    output wire w_n_tick,       // Tick signal for synchronization
    output reg [1:0] pass_state,      // State signal
    output reg clear,           // Clear signal 
    output wire a_video_on, // video signal on/off
    output wire b_video_on, // video signal on/off
    output wire hsync,          // Horizontal synchronization signal
    output wire vsync           // Vertical synchronization signal
);

    wire w_video_on;  // Video signal on/off

    // Instantiate VGA Controller
    vga_controller vc(
        .clk_100MHz(clk),     
        .reset(reset), 
        .video_on(w_video_on),     
        .hsync(hsync),    
        .vsync(vsync), 
        .p_tick(w_p_tick), 
        .n_tick(w_n_tick),
        .x(w_x), 
        .y(w_y)
    );

    wire a, b;  
    parameter shift = 10;

    // Calculate pixel addresses
    assign pixel_addr = (a) ? (w_x + w_y * 192) : 15'b111111111111111;
    assign pixel_addr_1 = (b) ? ((w_x - shift) + (w_y - shift) * 192) : 15'b111111111111111;
    assign pixel_addr_2 = (a) ? (w_x + (w_y - 1) * 192) : 15'b111111111111111;

    // Video signal on/off
    assign a = (w_x < 192 && w_y < 144) ? 1 : 0;
    assign b = (w_x < (192 + shift) && w_x >= shift && w_y < (144 + shift) && w_y >= shift) ? 1 : 0;

    assign a_video_on = a;
    assign b_video_on = b;

    // State parameters
    parameter FIRST_PASS = 2'b00, 
              WaitForSecondPass = 2'b01, 
              SECOND_PASS = 2'b10, 
              DONE = 2'b11;

    // State machine
    always @(negedge w_p_tick or posedge reset) begin
        if (reset) begin
            pass_state <= FIRST_PASS;
            label_write_1 <= 1;
            label_write_2 <= 0;
            clear <= 1;
        end else begin
            case (pass_state)
                FIRST_PASS: begin
                    clear <= 0;
                    if (w_x == 192 && w_y == 144) begin
                        pass_state <= WaitForSecondPass;
                        label_write_1 <= 0;  // Disable writing for the second pass
                        label_write_2 <= 0;  // Keep writing disabled until second pass starts
                    end
                end

                WaitForSecondPass: begin
                    if (w_x == 0 && w_y == 0) begin
                        pass_state <= SECOND_PASS;
                        label_write_1 <= 0;  // Disable writing for the second pass
                        label_write_2 <= 1;  // Enable writing for the second pass
                    end
                end

                SECOND_PASS: begin
                    if (w_x == 192 && w_y == 144) begin
                        pass_state <= DONE;
                        label_write_2 <= 0;  // Disable writing after second pass
                    end
                end

                DONE: begin
                    if (w_x == 799 && w_y == 524) begin  // Coordinates indicating end of frame
                        clear <= 1;
                    end
                        
                    if (w_x == 0 && w_y == 0) begin  // Coordinates indicating start of a new frame
                        pass_state <= FIRST_PASS;
                        label_write_1 <= 1;  // Enable writing for the first pass again
                        label_write_2 <= 0;  // Disable writing for the second pass
                        clear <= 0;
                    end
                end
            endcase
        end
    end

endmodule

