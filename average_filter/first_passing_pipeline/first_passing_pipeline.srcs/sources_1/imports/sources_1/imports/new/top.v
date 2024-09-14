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
    // wire [16:0] pixel_addr_1;
    wire [5:0] left_label;
    wire [5:0] mem_label_out;
    wire [5:0] final_label_out;
    wire wea = 1'b0;
    wire a_video_on;
    wire [5:0] display_signal;
    wire [5:0] mem_label_out_2;

    assign a_video_on = ((w_x >>1) < 192 && (w_y >>1) < 144) ? 1 : 0;

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

    assign pixel_addr = ((w_x >> 1) < 192 && (w_y >> 1) < 144) ? ((w_x >> 1) + (w_y >> 1) * 192)  :  15'b111111111111111;

    assign binarize_pixel = (rgb_pixel_in == 12'b0) ? 0 : 1;

    // shift reg of hsync and vsync 
     reg [40:0] hsync_reg, vsync_reg;

//    always @(posedge clk_100MHz) begin
//            hsync_reg <= {hsync_reg[40:0], hsync_0};
//            vsync_reg <= {vsync_reg[40:0], vsync_0};
//        end
    
//    assign hsync = hsync_reg[2];
//    assign vsync = vsync_reg[2];
    // assign hsync = hsync_0;
    // assign vsync = vsync_0;
    
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
        .douta(rgb_pixel_in)
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
       .clk(cclk),
       .video_on(a_video_on),
       .pixel_in(binarize_pixel),
       .x(w_x>>1),
       .y(w_y>>1),
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
    

    assign display_signal = (a_video_on) ? mem_label_out_2 : 6'b000000;
    
    assign rgb = {4'b0000, display_signal, 2'b00};

    // add buffer
    reg [11:0] rgb_reg;
    // always @(posedge cclk) begin
        // rgb_reg <= {3'b000,final_label_out, 3'b00};
       // rgb_reg = {3'b000,left_label, 3'b000};
       // rgb_reg = {6'b000000, display_signal};
        // rgb_reg = {binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel, binarize_pixel};
    // end
    
//    always @(posedge cclk) begin
//        if(a_video_on) begin
//            rgb_reg <= {4'b0000, display_signal, 2'b00};
//        end
//        else begin
//            rgb_reg <= 12'b111100001111; // Default assignment for other cases
//        end
//    end
   
//assign rgb = rgb_reg;

endmodule
