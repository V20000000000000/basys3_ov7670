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
    wire [16:0] pixel_addr_0;
    wire [16:0] pixel_addr_1;
    wire [16:0] pixel_addr_2;
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
        .hsync(hsync_0),    
        .vsync(vsync_0), 
        .p_tick(w_p_tick), 
        .x(w_x), 
        .y(w_y),
        .frame_done(frame_done) 
    );

    assign pixel_addr_0 = (w_x >> 1) + (w_y >> 1) * 320;

    // Instantiate blk_mem_gen_1
    blk_mem_gen_1 blk_mem_gen_1_inst (
        .clka(w_25MHz),
        .wea(wea),
        .addra(pixel_addr_0),
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

    // Instantiate find_address module
    find_address find_address_inst(
        .clk(w_25MHz),
        .clk_100mhz(clk_100MHz),
        .reset(reset),
        .x(w_x >> 1),
        .y(w_y >> 1),
        .video_on(w_video_on),
        .rgb_pixel_in(rgb_pixel_in),
        .pixel_addr_in(pixel_addr_0),
        .binarize_pixel_out(binarize_pixel),
        .pixel_addr_out(pixel_addr_1),
        .x_out(x_0),
        .y_out(y_0),
        .hsync_in(hsync_0),
        .vsync_in(vsync_0),
        .hsync_out(hsync_1),
        .vsync_out(vsync_1)
    );

    // Instantiate line_buffer module
    line_buffer line_buffer_inst(
        .clk(w_25MHz),
        .reset(reset),
        .x(x_0),
        .y(y_0),
        .video_on(w_video_on),
        .pixel_in(binarize_pixel),
        .pixel_addr_in(pixel_addr_1),
        .pixel_addr_out(pixel_addr_2),
        .smallest_label_out(label_0),
        .x_out(x_1),
        .y_out(y_1),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .right_up_label_out(right_up_label),
        .up_label_out(up_label),
        .equivalence_out(equivalence),
        .hsync_in(hsync_1),
        .vsync_in(vsync_1),
        .hsync_out(hsync_2),
        .vsync_out(vsync_2)
    );

    // Implementing 8-clock cycle delay for hsync and vsync
    reg [7:0] hsync_shift_reg, vsync_shift_reg;

    always @(posedge clk_100MHz or posedge reset) begin
        if (reset) begin
            hsync_shift_reg <= 8'b0;
            vsync_shift_reg <= 8'b0;
        end else begin
            hsync_shift_reg <= {hsync_shift_reg[6:0], hsync_0};
            vsync_shift_reg <= {vsync_shift_reg[6:0], vsync_0};
        end
    end

    assign hsync = hsync_shift_reg[7];
    assign vsync = vsync_shift_reg[7];

    //assign hsync = hsync_2;
    //assign vsync = vsync_2;

    // Instantiate write_mem module
    // write_mem write_mem_inst(
    //     .clk(w_25MHz),
    //     .clk_100mhz(clk_100MHz),
    //     .reset(reset),
    //     .pixel_addr(pixel_addr),
    //     .smallest_label_in(label_0),
    //     .left_label_in(left_label),
    //     .left_up_label_in(left_up_label),
    //     .right_up_label_in(right_up_label),
    //     .up_label_in(up_label),
    //     .equivalence_in(equivalence),
    //     .x(x_1),
    //     .y(y_1),
    //     .label(final_label_wire),
    //     .hsync_in(hsync_2),
    //     .vsync_in(vsync_2),
    //     .hsync_out(hsync),
    //     .vsync_out(vsync)
    // );

    assign rgb = {5'b00000,label_0};

endmodule







