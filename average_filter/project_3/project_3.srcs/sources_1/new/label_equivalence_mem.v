`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/17 15:03:42
// Design Name: 
// Module Name: label_equivalence_mem
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


module label_equivalence_mem (
    input wire clk,
    input wire wea,             // Write enable signal
    input wire [4:0] addr,      // Address (5 bits for 32 locations)
    input wire [4:0] din,       // Data input for writing
    output reg [4:0] dout       // Data output for reading
);

    reg [4:0] mem [31:0];

    always @(posedge clk) begin
        if (wea) begin
            mem[addr] <= din;  // Write data to memory
        end
        dout <= mem[addr];      // Read data from memory
    end

endmodule

