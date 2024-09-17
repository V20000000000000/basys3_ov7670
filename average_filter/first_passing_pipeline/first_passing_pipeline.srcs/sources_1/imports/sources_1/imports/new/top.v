module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb/*, 
    output [9:0] w_x,
    output [9:0] w_y,
    output wire binarize_pixel,
    output wire dilation_result,
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

    wire dilation_result_1;
    wire dilation_result_2;
    wire dilation_result_3;

    wire erosion_result_1;
    wire erosion_result_2;
    wire erosion_result_3;

    // Intermediate wires for the color channels
    wire [7:0] r, g, b;
    wire [11:0] gray;

    // Extract the RGB channels
    assign r = {rgb_pixel_original[11:8], 4'b0000}; // Extend to 8 bits
    assign g = {rgb_pixel_original[7:4], 4'b0000};  // Extend to 8 bits
    assign b = {rgb_pixel_original[3:0], 4'b0000};  // Extend to 8 bits

    // Compute grayscale value using integer arithmetic
    // Approximation: gray = (r*77 + g*150 + b*29) >> 8;
    assign gray = (r * 8'd77 + g * 8'd150 + b * 8'd29) >> 8;

    //assign binarize_pixel = (a_video_on) ? ((gray  > 32) ? 1 : 0) : 0;

    // Intermediate wires for the color channels
    wire [7:0] r_1, g_1, b_1;
    wire [11:0] gray_1;

    // Extract the RGB channels
    assign r_1 = {rgb_pixel_in[11:8], 4'b0000}; // Extend to 8 bits
    assign g_1 = {rgb_pixel_in[7:4], 4'b0000};  // Extend to 8 bits
    assign b_1 = {rgb_pixel_in[3:0], 4'b0000};  // Extend to 8 bits

    // Compute grayscale value using integer arithmetic
    // Approximation: gray = (r*77 + g*150 + b*29) >> 8;
    assign gray_1 = (r_1 * 8'd77 + g_1 * 8'd150 + b_1 * 8'd29) >> 8;

    assign binarize_pixel = (a_video_on) ? (((gray_1[3:0] < 4) || (gray_1[3:0] > 9)) ? 0 : 1) : 0;
    
    // Instantiate dilate module
    erosion erosion_inst_1 (
        .clk(w_p_tick),
        .reset(reset),
        .a_video_on(a_video_on),
        .pixel_in(binarize_pixel),
        .erosion_result(erosion_result_1)
    );

    // erosion erosion_inst_2 (
    //     .clk(w_p_tick),
    //     .reset(reset),
    //     .a_video_on(a_video_on),
    //     .pixel_in(erosion_result_1), 
    //     .erosion_result(erosion_result_2)
    // );

    // erosion erosion_inst_3 (
    //     .clk(w_p_tick),
    //     .reset(reset),
    //     .a_video_on(a_video_on),
    //     .pixel_in(erosion_result_2),
    //     .erosion_result(erosion_result_3)
    // );

    // Instantiate dilate module
   dilation dilate_inst_1 (
       .clk(w_p_tick),
       .reset(reset),
       .a_video_on(a_video_on),
       .pixel_in(erosion_result_1),
       .dilation_result(dilation_result_1)
   );

   dilation dilate_inst_2 (
       .clk(w_p_tick),
       .reset(reset),
       .a_video_on(a_video_on),
       .pixel_in(dilation_result_1),
       .dilation_result(dilation_result_2)
   );

   dilation dilate_inst_3 (
       .clk(w_p_tick),
       .reset(reset),
       .a_video_on(a_video_on),
       .pixel_in(dilation_result_2),
       .dilation_result(dilation_result_3)
   );

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

    assign pixel_addr = (a_video_on) ? (w_x + w_y * 192)  :  15'b111111111111111;
    assign pixel_addr_1 = b_video_on ? ((w_x - 195) + w_y * 192) : 15'b111111111111111;

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
        .clka(w_p_tick),
        .wea(wea),
        .addra(pixel_addr),
        .dina(data),
        .douta(rgb_pixel_in),
        .clkb(w_p_tick),
        .web(wea),
        .addrb(pixel_addr_1),
        .dinb(data),
        .doutb(rgb_pixel_original),
        .enb(ena)
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

    assign sa = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : 12'b000000000000;
    // assign sb = (b_video_on) ? rgb_pixel_original : 12'b000000000000;
    assign background = 12'b000000000000;

    // assign sa = (a_video_on) ? {binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel} : 12'b000000000000;
    assign sb = (b_video_on) ? {gray[3:0], gray[3:0], gray[3:0]} : 12'b000000000000;
    
    // assign sa = (a_video_on) ? {dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result, dilation_result} : 12'b000000000000;

    //add rgb buffer
    always @(posedge clk_100MHz) begin
        rgb_reg <= sa + sb + background;
    end

    // assign rgb = (a_video_on) ? {4'b0000, mem_label_out_2, 2'b00} : ((b_video_on) ? rgb_pixel_in : (w_video_on ? 12'b111111111111 : 12'b000000000000));
    assign rgb = rgb_reg; //|| sb || background;

endmodule
