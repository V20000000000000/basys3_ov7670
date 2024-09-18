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

    reg label_write_1;
    reg label_write_2;
    wire [9:0] w_x, w_y; 
    wire hsync_0, vsync_0;
    reg clear;
    reg [1:0] pass_state;
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

    // Instantiate clk_100MHz_1
    wire clk_100MHz_1;
    wire [9:0] w_x_0, w_y_0;
    
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

    // Area a --------------------------------------------
    // Intermediate wires for the color channels of rgb_pixel_in
    wire [7:0] r_a, g_a, b_a;  // Extend to 8 bits
    wire signed [15:0] cb_temp_a, cr_temp_a; // Temporary variables for Cb and Cr
    wire [15:0] Cb_a, Cr_a;
    wire [7:0] gray_a;

    // Extract the RGB channels
    assign r_a = {rgb_pixel_in[11:8], 4'b0}; // Extend to 8 bits
    assign g_a = {rgb_pixel_in[7:4], 4'b0};  // Extend to 8 bits
    assign b_a = {rgb_pixel_in[3:0], 4'b0};  // Extend to 8 bits

    // Compute grayscale value using integer arithmetic
    // Approximation: gray_a = (r_a*77 + g_a*150 + b_a*29) >> 8;
    assign gray_a = (r_a * 8'd77 + g_a * 8'd150 + b_a * 8'd29) >> 8;

    // Compute Cb and Cr values using the standard YCbCr formulas
    assign Cb_a = 16'd128 - ((16'd37 * r_a + 16'd74 * g_a - 16'd111 * b_a) >> 8);
    assign Cr_a = 16'd128 + ((16'd112 * r_a - 16'd94 * g_a - 16'd18 * b_a) >> 8);

    // Assign binary pixel values based on the Cb and Cr ranges
    assign binarize_pixel_a = (a_video_on) ? (((80 < Cb_a) && (Cb_a < 120) && (140 < Cr_a) && (Cr_a < 165)) ? 1 : 0) : 0;
    // assign binarize_pixel_b = (b_video_on) ? (((80 < Cb_b) && (Cb_b < 120) && (140 < Cr_b) && (Cr_b < 165)) ? 1 : 0) : 0;
    //--------------------------------------------

    assign pixel_addr = (a_video_on) ? (w_x + w_y * 192)  :  15'b111111111111111;
    assign pixel_addr_1 = b_video_on ? ((w_x - 195) + w_y * 192) : 15'b111111111111111;
    assign binarize_pixel = (rgb_pixel_in == 12'b0) ? 0 : 1;

    // Instantiate dilation module
    wire dilation_result_1;
    wire dilation_result_2;
    wire dilation_result_3;

    dilation dilation_inst_1 (
        .clk(w_n_tick),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(binarize_pixel),
        .dilation_result(dilation_result_1)
    );

    dilation dilation_inst (
        .clk(w_n_tick),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_1),
        .dilation_result(dilation_result_2)
    );

    dilation dilation_inst_2 (
        .clk(w_n_tick),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(dilation_result_2),
        .dilation_result(dilation_result_3)
    );

    // control wea for first pass memory
    // run second pass after first pass is done, during the second pass, wea is 0, so the memory is read only
    // otherwise, wea is 1, so the memory is write only
    parameter FIRST_PASS = 2'b00, WaitForSecondPass = 2'b01, SECOND_PASS = 2'b10, DONE = 2'b11;
        
    always @(negedge w_p_tick or posedge reset) begin
        if (reset) begin
            pass_state <= FIRST_PASS;
            label_write_1 <= 1;
            clear <= 1;
        end else begin
            case (pass_state)
                FIRST_PASS: begin
                    clear <= 0;
                    if (w_x == 192 && w_y == 144) begin
                        pass_state <= WaitForSecondPass;
                        label_write_1 <= 0;  // Disable writing for the second pass
                        label_write_2 <= 0;  // Enable writing for the second pass
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
                        label_write_2 <= 0;  // Disable writing for the second pass
                    end
                end

                DONE: begin
                    if (w_x == 799 && w_y == 524) begin  // Coordinates (17,17) for a new frame
                        clear <= 1;
                    end
                        
                    if (w_x == 0 && w_y == 0) begin  // Coordinates (17,17) for a new frame
                        pass_state <= FIRST_PASS;
                        label_write_1 <= 1;  // Enable writing for the first pass again
                        label_write_2 <= 0;  // Disable writing for the second pass
                        clear <= 0;
                    end
                end
            endcase
        end
    end

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
       .pixel_in(dilation_result_3),
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
    
    wire [11:0] sa;
    wire [11:0] sb;
    wire [11:0] background;
    reg [11:0] rgb_reg;
    
    // assign sa = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : 12'b000000000000;
    assign sb = (b_video_on) ? rgb_pixel_original : 12'b000000000000;
    assign background = 12'b000000000000;

    assign sa = (a_video_on) ? {binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a, binarize_pixel_a} : 12'b000000000000;

    //add rgb buffer
    always @(posedge clk_100MHz) begin
        rgb_reg <= sa + sb + background;
    end

    // assign rgb = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : ((b_video_on) ? rgb_pixel_in : (w_video_on ? 12'b111111111111 : 12'b000000000000));
    assign rgb = rgb_reg; //|| sb || background;

endmodule
