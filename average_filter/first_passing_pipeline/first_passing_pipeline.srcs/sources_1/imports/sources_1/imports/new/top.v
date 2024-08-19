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

    wire [8:0] x_0;
    wire [7:0] y_0;
    wire [8:0] x_1;
    wire [7:0] y_1;

    wire hsync_0;
    wire vsync_0;
    wire hsync_1;
    wire vsync_1;
    wire hsync_2;
    wire vsync_2;

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
        .frame_done(frame_done) 
    );

    assign pixel_addr = (w_x >> 1) + (w_y >> 1) * 320;

    // Instantiate blk_mem_gen_1
    blk_mem_gen_1 blk_mem_gen_1_inst (
        .clka(w_25MHz),
        .wea(wea),
        .addra(pixel_addr),
        .dina(data),
        .douta(rgb_pixel_in)
    );

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

    // Instantiate line_buffer module
    line_buffer line_buffer_inst(
        .clk(w_25MHz),
        .reset(reset),
        .x(w_x >> 1),
        .y(w_y >> 1),
        .video_on(w_video_on),
        .pixel_in(binarize_pixel),
        .pixel_addr_in(pixel_addr),
        .smallest_label_out(label_0),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .right_up_label_out(right_up_label),
        .up_label_out(up_label),
        .equivalence_out(equivalence)
    );


    assign rgb = {5'b00000,label_0};

endmodule







