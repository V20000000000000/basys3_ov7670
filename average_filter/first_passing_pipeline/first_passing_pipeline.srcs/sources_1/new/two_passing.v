`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 14:56:45
// Design Name: 
// Module Name: two_passing
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


module two_passing(
    input clk_100MHz,
    input reset,
    input w_p_tick,
    input w_n_tick,
    input [9:0] w_x,
    input [9:0] w_y,
    input a_video_on,
    input b_video_on,
    input label_write_1,
    input label_write_2,
    input [1:0] pass_state,
    input clear,
    input [14:0] pixel_addr,
    input pixel_in,
    output [5:0] label_result
    );

    // Declare internal wires and registers
    wire [5:0] left_label;
    wire [5:0] left_up_label;
    wire [5:0] up_label;
    wire [5:0] right_up_label;
    wire [5:0] final_label_out;
    wire [5:0] mem_label_out;
    wire [5:0] label_0;

    // Instantiate buffer module
    buffer buffer_inst_0 (
        .clk(w_n_tick),
        .video_on(a_video_on),
        .pixel_in(pixel_in),
        .x(w_x),
        .y(w_y),
        .reset(reset),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .up_label_out(up_label),
        .right_up_label_out(right_up_label),
        .new_label_out(label_0),
        .state(state),
        .SCLR(SCLR)
    );

    // Instantiate blk_mem_gen_0 (store the result(left_label) of first pass)
    blk_mem_gen_0 blk_mem_gen_0_inst (
        .clka(clk_100MHz),
        .wea(label_write_1),
        .addra(pixel_addr),
        .dina(left_label),
        .douta(mem_label_out)
    );

    // Instantiate label_set module
    label_set label_set_inst (
        .clk(clk_100MHz),
        .reset(reset),
        .clear(clear),
        .pixel_addr(pixel_addr),
        .state(pass_state),
        .min_label_in(mem_label_out),
        .left_up_label_in(left_up_label),
        .up_label_in(up_label),
        .right_up_label_in(right_up_label),
        .min_label_out(final_label_out)
    );

    // Instantiate blk_mem_gen_2 (store the result(left_label) of second pass)
    blk_mem_gen_2 blk_mem_gen_2_inst (
        .clka(clk_100MHz),
        .wea(label_write_2),
        .addra(pixel_addr),
        .dina(final_label_out),
        .douta(label_result)
    );


endmodule
