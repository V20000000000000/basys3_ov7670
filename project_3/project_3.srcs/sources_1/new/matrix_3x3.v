`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/03 20:58:20
// Design Name: 
// Module Name: matrix_3x3
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

module matrix_3x3 (
    clk,
    rst_n,
    valid_in,
    din,
    dout_r0,
    dout_r1,
    dout_r2,
    dout,
    mat_flag
);
parameter       WIDTH = 4;
parameter       COL_NUM = 320    ;
parameter       ROW_NUM = 240     ;
parameter       LINE_NUM = 3;

input clk;
input rst_n;
input valid_in;
input [WIDTH-1:0] din;

output[WIDTH-1:0] dout;
output[WIDTH-1:0] dout_r0;
output[WIDTH-1:0] dout_r1;
output[WIDTH-1:0] dout_r2;
output mat_flag;

reg   [WIDTH-1:0] line[2:0];
reg   valid_in_r  [2:0];
wire  valid_out_r [2:0];
wire  [WIDTH-1:0] dout_r[2:0];

assign dout_r0 = dout_r[0];
assign dout_r1 = dout_r[1];
assign dout_r2 = dout_r[2];

assign dout = dout_r[2];

genvar i;
generate
    begin:HDL1
    for (i = 0;i < LINE_NUM;i = i +1)
        begin : buffer_inst
            // line 1
            if(i == 0) begin: MAPO
                always @(*)begin
                    line[i]<=din;
                    valid_in_r[i]<= valid_in;
                end
            end
            // line 2 3 ...
            if(~(i == 0)) begin: MAP1
                always @(*) begin
                	
                    line[i] <= dout_r[i-1];
                    valid_in_r[i] <= valid_out_r[i-1];
                end
            end
        line_buffer #(WIDTH,COL_NUM)
            line_buffer_inst(
                .rst_n (rst_n),
                .clk (clk),
                .din (line[i]),
                .dout (dout_r[i]),
                .valid_in(valid_in_r[i]),
                .valid_out (valid_out_r[i])
                );
        end
    end
endgenerate
reg                 [10:0]  col_cnt;
reg                 [10:0]  row_cnt;

assign      mat_flag        =       row_cnt >= 11'd3 ? valid_in : 1'b0;

always @(posedge clk or negedge rst_n)
    if(rst_n == 1'b0)
        col_cnt             <=          11'd0;
    else if(col_cnt == COL_NUM-1 && valid_in == 1'b1)
        col_cnt             <=          11'd0;
    else if(valid_in == 1'b1)
        col_cnt             <=          col_cnt + 1'b1;
    else
        col_cnt             <=          col_cnt;

always @(posedge clk or negedge rst_n)
    if(rst_n == 1'b0)
        row_cnt             <=          11'd0;
    else if(row_cnt == ROW_NUM-1 && col_cnt == COL_NUM-1 && valid_in == 1'b1)
        row_cnt             <=          11'd0;
    else if(col_cnt == COL_NUM-1 && valid_in == 1'b1) 
        row_cnt             <=          row_cnt + 1'b1;
endmodule

