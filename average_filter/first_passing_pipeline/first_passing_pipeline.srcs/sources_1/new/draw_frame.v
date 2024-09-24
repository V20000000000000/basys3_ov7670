`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 15:38:39
// Design Name: 
// Module Name: draw_frame
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


module draw_frame(
    input clk_100MHz,
    input reset,
    input w_p_tick,
    input w_n_tick,
    input [9:0] w_x,
    input [9:0] w_y,
    input a_video_on,
    input b_video_on,
    input [1:0] pass_state,
    input clear, 
    input [14:0] pixel_addr,
    input [5:0] pixel_in,
    output wire pixel_out
    );

    // Instantiate draw_face_frame module
    wire frame_mem_wea;
    wire frame;
    wire [9:0] Xmin;
    wire [9:0] Ymin;
    wire [9:0] Xmax;
    wire [9:0] Ymax;

    wire [5:0] relabel_out;
    
    wire [5:0] new_label;

    // Instantiate relabel_module module
    relabel_module relabel_module_inst (
        .clk(clk_100MHz),
        .reset(reset),
        .pixel_in(pixel_in),
        .video_on(a_video_on),
        .pass_state(pass_state),
        .relabel_out(relabel_out),
        .labelcount(new_label)
    );

    draw_face_frame draw_face_frame_inst (
        .clk(clk_100MHz),
        .reset(reset),
        .pixel_in(relabel_out),
        .pass_state(pass_state),
        .video_on(a_video_on),
        .x(w_x),
        .y(w_y),
        .frame_mem_wea(frame_mem_wea),
        .pixel_out(frame),
        .Xmin(Xmin),
        .Ymin(Ymin),
        .Xmax(Xmax),
        .Ymax(Ymax),
        .test_reg(test_reg)
    );

    // frame memory
    wire data3;
    wire data4;
    wire rectangle;
    frame_mem frame_memory_inst (
        .clka(clk_100MHz),
        .wea(frame_mem_wea),
        .addra(pixel_addr),
        .dina(frame),
        .douta(data3),
        .clkb(w_n_tick),
        .web(1'b0),
        .addrb(pixel_addr),
        .dinb(data4),
        .doutb(pixel_out),
        .enb(1'b1)
    );

endmodule
