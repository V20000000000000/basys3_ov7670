`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/25 20:26:35
// Design Name: 
// Module Name: tb_c_shift_ram_0
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


`timescale 1ns/1ps

module tb_c_shift_ram_0;

    // Parameters
    parameter CLOCK_PERIOD = 40; // 25MHz clock period

    // Inputs
    reg [6:0] D;
    reg CLK;
    reg SCLR;

    // Outputs
    wire [6:0] Q;

    // Instantiate the shift register module
    c_shift_ram_0 c_shift_ram_0_inst (
        .D(D), 
        .CLK(CLK), 
        .Q(Q), 
        .SCLR(SCLR)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #(CLOCK_PERIOD/2) CLK = ~CLK;
    end

    // Test stimulus
    initial begin
        // Initialize Inputs
        SCLR = 1;
        D = 7'b0000000;

        // Apply reset (clear)
        #20;
        SCLR = 0;

        // Apply random data input
        repeat (10000) begin
            D = $random; // Generate random 7-bit data
            #(CLOCK_PERIOD);
        end

        // Set clear signal
        #(CLOCK_PERIOD);
        SCLR = 1;

        // Observe the cleared output
        #(CLOCK_PERIOD);
        $display("Shift Register Cleared. Output Q: %b", Q);

        // Finish simulation
        #(CLOCK_PERIOD * 10);
        $finish;
    end

endmodule



