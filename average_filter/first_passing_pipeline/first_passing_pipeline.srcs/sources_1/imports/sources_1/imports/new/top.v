module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb/*, 
    output [9:0] w_x,
    output [9:0] w_y,
    output wire binarize_pixel,
    output wire [5:0] left_label,
    output wire [5:0] mem_label_out,
    output wire [5:0] final_label_out,
    output wire cclk,
    output wire w_p_tick,
    output wire w_n_tick,
    output reg [1:0] pass_state,
    output reg clear,
    output reg label_write_1,
    output reg label_write_2,
    output wire [16:0] pixel_addr,
    output wire [16:0] pixel_addr_1,
    output wire hsync_0,
    output wire vsync_0,
    output wire clk_100MHz_1,
    output wire [9:0] w_x_0,
    output wire [9:0] w_y_0,
    output wire [5:0] display_signal*/
);

    wire w_video_on;
    
    wire [11:0] rgb_pixel_in;
    wire [11:0] rgb_pixel_original;
    wire [11:0] data;
    wire [5:0] label_0;

    wire [5:0] left_up_label;
    wire [5:0] right_up_label;
    wire [5:0] up_label;
    wire [5:0] left_left_label;

    wire SCLR;
    wire ena = 1'b1;

    wire label_write_1;
    wire label_write_2;
    wire [9:0] w_x, w_y; 
    wire hsync_0, vsync_0;
    wire clear;
    wire [1:0] pass_state;
    wire cclk;
    wire w_p_tick;
    wire binarize_pixel;
    wire [14:0] pixel_addr;
    wire [14:0] pixel_addr_1;
    wire [5:0] left_label;
    wire [5:0] mem_label_out;
    wire [5:0] final_label_out;
    wire wea = 1'b0;
    wire a_video_on;
    wire [5:0] display_signal;
    wire [5:0] mem_label_out_2;
    wire w_n_tick;

    assign w_n_tick = ~w_p_tick;

    assign a_video_on = (w_x < 192 && w_y < 144) ? 1 : 0;
    assign b_video_on = (w_x < 387 && w_x >= 195 && w_y < 144) ? 1 : 0;

    wire [9:0] w_x_0, w_y_0;
    wire preprocess_result;
    
    // reg [6:0] count = 0;    
    // reg clk_state = 0;

    // Instantiate VGA Controller
    vga_controller vc(
        .clk_100MHz(clk_100MHz),     
        .reset(reset), 
        .video_on(w_video_on),     
        .hsync(hsync),    
        .vsync(vsync), 
        .p_tick(w_p_tick), 
        .x(w_x), 
        .y(w_y),
        .cclk(cclk)
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
        .pixel_addr(pixel_addr),
        .pixel_addr_1(pixel_addr_1),
        .result(preprocess_result)
    );

    // Instantiate controller
    controller controller_inst (
        .clk(clk_100MHz),
        .reset(reset),
        .w_p_tick(w_p_tick),
        .w_x(w_x),
        .w_y(w_y),
        .label_write_1(label_write_1),
        .label_write_2(label_write_2),
        .pass_state(pass_state),
        .clear(clear)
    );

    // Instantiate blk_mem_gen_0 (store the result(left_label) of first pass)
    blk_mem_gen_0 blk_mem_gen_0_inst (
        .clka(clk_100MHz),
        .wea(label_write_1),
        .addra(pixel_addr),
        .dina(left_label),
        .douta(mem_label_out)
    );
    
    // Instantiate blk_mem_gen_2 (store the result(left_label) of second pass)
    blk_mem_gen_2 blk_mem_gen_2_inst (
        .clka(clk_100MHz),
        .wea(label_write_2),
        .addra(pixel_addr),
        .dina(final_label_out),
        .douta(mem_label_out_2)
    );

    // Instantiate buffer module
   buffer buffer_inst_0 (
       .clk(w_n_tick),
       .video_on(a_video_on),
       .pixel_in(preprocessing_image),
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
    
        // Instantiate blk_mem_gen_1
    blk_mem_gen_1 blk_mem_gen_1_inst (
        .clka(clk_100MHz),
        .wea(wea),
        .addra(pixel_addr),
        .dina(data),
        .douta(rgb_pixel_in),
        .clkb(w_p_tick),
        .web(wea),
        .addrb(pixel_addr_1),
        .dinb(data),
        .doutb(rgb_pixel_original),
        .ena(ena)
    );
    
        // Instantiate blk_mem_gen_3 (store the preprocessing image)
    wire data1;
    wire data2;
    wire preprocessing_image;
    blk_mem_gen_3 blk_mem_gen_3_inst (
        .clka(w_n_tick),
        .wea(a_video_on),
        .addra(pixel_addr),
        .dina(preprocess_result),
        .douta(data1),
        .clkb(w_n_tick),
        .web(1'b0),
        .addrb(pixel_addr),
        .dinb(data2),
        .doutb(preprocessing_image),
        .enb(ena)
    );
    
    wire [11:0] sa;
    wire [11:0] sb;
    wire [11:0] background;
    reg [11:0] rgb_reg;
    
    assign sa = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : 12'b000000000000;
    assign sb = (b_video_on) ? rgb_pixel_original : 12'b000000000000;
    assign background = 12'b000000000000;

    // assign sa = (a_video_on) ? {preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result, preprocess_result} : 12'b000000000000;



    //add rgb buffer
    always @(posedge clk_100MHz) begin
        rgb_reg <= sa + sb + background;
    end

    // assign rgb = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : ((b_video_on) ? rgb_pixel_in : (w_video_on ? 12'b111111111111 : 12'b000000000000));
    assign rgb = rgb_reg; //|| sb || background;

endmodule
