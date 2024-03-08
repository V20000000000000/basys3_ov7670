`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/03 20:25:10
// Design Name: 
// Module Name: line_buffer
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


module line_buffer (
        rst_n,
        clk,
        din,
        dout,
        valid_in,
        valid_out
    );

parameter WIDTH = 4;   // data width
parameter IMG_WIDTH = 320;  //img width

input  rst_n;
input  clk;
input  [WIDTH-1:0] din;
output [WIDTH-1:0] dout;
input  valid_in; //input valid, write enable
output valid_out;   //output to next valid_in

wire   rd_en; //read enable
reg    [8:0] cnt;   //img width, cnt >= img width

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt <= {9{1'b0}};
    else if(valid_in)
        if(cnt == IMG_WIDTH)
            cnt <= IMG_WIDTH;
        else
            cnt <= cnt +1'b1;
    else
        cnt <= cnt;
end

assign rd_en = ((cnt == IMG_WIDTH) && (valid_in)) ? 1'b1:1'b0;
assign valid_out = rd_en;

line_fifo u_line_fifo(
    .clk (clk),
    .srst (!rst_n),
    .din (din),
    .wr_en (valid_in),
    .rd_en (rd_en),
    .dout(dout),

    .empty(),
    .full()
);

/*
  .clk(clk),                  // input wire clk
  .rst(rst),                  // input wire rst
  .din(din),                  // input wire [9 : 0] din
  .wr_en(wr_en),              // input wire wr_en
  .rd_en(rd_en),              // input wire rd_en
  .dout(dout),                // output wire [9 : 0] dout
  .full(full),                // output wire full
  .empty(empty),              // output wire empty
  .data_count(data_count),    // output wire [8 : 0] data_count
  .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy
*/
endmodule

