module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb
);

    wire w_video_on, w_p_tick;
    wire [9:0] w_x, w_y; 
    wire binarize_pixel;
    wire [11:0] rgb_pixel_in;
    wire [16:0] pixel_addr;
    wire [11:0] data;
    wire [6:0] label_0;
    wire w_25MHz;
    wire frame_done;

    wire [6:0] final_label_out;
    wire [6:0] left_label;
    wire [6:0] left_up_label;
    wire [6:0] right_up_label;
    wire [6:0] up_label;
    wire equivalence;
    wire SCLR;

    wire [8:0] x_0;
    wire [7:0] y_0;
    wire [8:0] x_1;
    wire [7:0] y_1;
    wire cclk;
    

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

    ///assign pixel_addr = (w_x >> 1) + (w_y >> 1) * 320;

    assign pixel_addr = (w_x >> 1) + (w_y >> 1) * 320;

    // Generate 25MHz clock from 100MHz clock
    reg [1:0] r_25MHz = 0;
    always @(posedge clk_100MHz or posedge reset) begin
        if (reset)
            r_25MHz <= 0;
        else
            r_25MHz <= r_25MHz + 1;
    end

    assign w_25MHz = r_25MHz[1];  // Divides the 100MHz clock by 4 to get 25MHz

    assign binarize_pixel = (rgb_pixel_in == 12'b0) ? 0 : 1;
    
    // Instantiate blk_mem_gen_1
    blk_mem_gen_1 blk_mem_gen_1_inst (
        .clka(w_p_tick),
        .wea(wea),
        .addra(pixel_addr),
        .dina(data),
        .douta(rgb_pixel_in)
    );

    // Instantiate blk_mem_gen_0
    // blk_mem_gen_0 blk_mem_gen_0_inst (
    //     .clka(w_p_tick),
    //     .wea(wea),
    //     .addra(pixel_addr),
    //     .dina(data),
    //     .douta(data)
    // );

//    Instantiate buffer module
    buffer buffer_inst_0 (
        .clk(cclk),
        .video_on(w_video_on),
        .pixel_in(binarize_pixel),
        .x(w_x>>1),
        .y(w_y>>1),
        .reset(reset),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .up_label_out(up_label),
        .right_up_label_out(right_up_label),
        .current_label(final_label_out),
        .new_label_out(label_0),
        .state(state),
        .SCLR(SCLR)
    );

    assign rgb = {2'b00,left_label, 3'b000};
    //assign rgb = {5'b00000,binarize_pixel, 6'b000000};

endmodule







