module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb
);

    wire w_video_on, w_p_tick;
    wire [9:0] w_x, w_y; 
    wire [:0] final_label_wire;  // Use wire type instead of reg
    reg [11:0] rgb_reg;
    reg [5:0] label_reg;
    wire rgb_filter_in;
    wire [16:0] pixel_addr;
    wire [11:0] data;
    wire w_25MHz;
    wire [11:0] mem_out;
    reg ccl_reset;
    wire frame_done;

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

    // binariazation pixel in
    assign rgb_filter_in = (mem_out == 12'b0) ? 1'b0 : 1'b1;

    // Generate 25MHz clock from 100MHz clock
    reg [1:0] r_25MHz = 0;
    always @(posedge clk_100MHz or posedge reset) begin
        if (reset)
            r_25MHz <= 0;
        else
            r_25MHz <= r_25MHz + 1;
    end

    assign w_25MHz = r_25MHz[1];  // Divides the 100MHz clock by 4 to get 25MHz

    // Pixel Address Generation
    assign pixel_addr = ((w_x >> 1) + (w_y >> 1) * 320) % 76800;

    // Block Memory Generator Instance (for the filtered image)
    blk_mem_gen_1 blk_mem_gen_1_inst(
        .clka(w_25MHz),        // Use the 25MHz clock
        .wea(1'b0),            // No writing to this memory in this module
        .addra(pixel_addr),    // Address from pixel position
        .dina(12'b0),          // No data input (write disabled)
        .douta(mem_out)  // Data output for pixel data
    );

    // Instantiate Connected Component Labeling module
    connected_component_labeling connected_component_labeling_inst(
        .clk(w_25MHz),
        .reset(frame_done),
        .x(w_x >> 1),           // Scale x-coordinate to match 320x240 resolution
        .y(w_y >> 1),           // Scale y-coordinate to match 320x240 resolution
        .video_on(w_video_on),
        .pixel_in(rgb_filter_in),  // Assume using the least significant bit for pixel_in
        .final_label_out(final_label_wire)  // Connect wire output to the module
    );

    // Buffer RGB
    // always @(posedge w_25MHz) begin
    //     if (reset)
    //         label_reg <= 7'h0;   
    //     else if (w_video_on)
    //         label_reg <= final_label_wire;  // Update with the final label from CCL module
    // end

    // Assign RGB output (scaling label to 12-bit color)
    //assign rgb = {5'b0, label_reg};  // Assign the 7-bit label to the most significant bits, with zero padding
    assign rgb = final_label_wire;
endmodule







