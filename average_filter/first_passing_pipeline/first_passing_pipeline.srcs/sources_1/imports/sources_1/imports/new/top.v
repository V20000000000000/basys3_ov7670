module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb
);

    wire w_video_on;
    wire [11:0] rgb_pixel_in, rgb_pixel_original, data;
    wire [5:0] label;
    wire SCLR;
    wire ena = 1'b1;
    wire label_write_1, label_write_2;
    wire [9:0] w_x, w_y;
    wire clear;
    wire [1:0] pass_state;
    wire w_p_tick, w_n_tick;
    wire binarize_pixel;
    wire [14:0] pixel_addr, pixel_addr_1, pixel_addr_2;
    wire preprocess_result, display_signal;
    wire a_video_on, b_video_on;

    // Instantiate controller
    controller controller_inst (
        .clk(clk_100MHz),
        .reset(reset),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .w_x(w_x),
        .w_y(w_y),
        .pixel_addr(pixel_addr),
        .pixel_addr_1(pixel_addr_1),
        .pixel_addr_2(pixel_addr_2),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .pass_state(pass_state),
        .clear(clear),
        .hsync(hsync),
        .vsync(vsync),
        .w_n_tick(w_n_tick),
        .w_p_tick(w_p_tick)
    );
        
    // Instantiate blk_mem_gen_1
    blk_mem_gen_1 blk_mem_gen_1_inst (
        .clka(clk_100MHz),
        .wea(1'b0),
        .addra(pixel_addr),
        .dina(data),
        .douta(rgb_pixel_in),
        .clkb(w_n_tick),
        .web(1'b0),
        .addrb(pixel_addr_1),
        .dinb(data),
        .doutb(rgb_pixel_original),
        .ena(ena)
    );

    // Instantiate preprocessor
    preprocess preprocessor_inst (
        .clk(w_n_tick),
        .reset(reset),
        .rgb_pixel_in(rgb_pixel_in),
        .w_x(w_x),
        .w_y(w_y),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .binarize_pixel(binarize_pixel),
        .result(preprocess_result)
    );

    // Instantiate two_passing module
    two_passing two_passing_inst (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .w_p_tick(w_p_tick),
        .w_n_tick(w_n_tick),
        .w_x(w_x),
        .w_y(w_y),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .pass_state(pass_state),
        .clear(clear),
        .pixel_addr(pixel_addr),
        .pixel_in(preprocess_result),
        .label_result(label)
    );

    // Instantiate draw_frame module
    draw_frame draw_frame_inst (
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .w_p_tick(w_p_tick),
        .w_n_tick(w_n_tick),
        .w_x(w_x),
        .w_y(w_y),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .pass_state(pass_state),
        .clear(clear),
        .pixel_addr(pixel_addr),
        .pixel_in(label),
        .pixel_out(display_signal)
    );
    
    // Instantiate display module
    display display_inst (
        .clk_100MHz(w_p_tick),
        .a_video_on(a_video_on),
        .b_video_on(b_video_on),
        .rectangle(display_signal),
        .rgb_pixel_original(rgb_pixel_original),
        .rgb(rgb)
    );

endmodule

