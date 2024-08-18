module top(
    input clk_100MHz,       // from Basys 3
    input reset,            // btnC on Basys 3
    output hsync,           // to VGA connector
    output vsync,           // to VGA connector
    output [11:0] rgb       // to DAC, 3 RGB bits to VGA connector
    );

    wire w_video_on, w_p_tick;
    wire [9:0] w_x, w_y; 
    reg [11:0] rgb_reg;
    reg [3:0] grag_reg;
    wire [11:0] rgb_filter_in;
    wire [11:0] rgb_filter_out;
    wire [16:0] pixel_addr;
    wire [11:0] data;
    wire w_25MHz;
    reg ccl_reset;   // New signal for CCL reset

    // Instantiating VGA Controller
    vga_controller vc(
        .clk_100MHz(clk_100MHz), 
        .reset(reset), 
        .video_on(w_video_on),     
        .hsync(hsync), 
        .vsync(vsync), 
        .p_tick(w_p_tick), 
        .x(w_x), 
        .y(w_y)   
    );

    // Generate 25MHz clock from 100MHz clock
    reg [1:0] r_25MHz = 0;
    always @(posedge clk_100MHz or posedge reset)   
        if (reset)
            r_25MHz <= 0;
        else
            r_25MHz <= r_25MHz + 1;

    assign w_25MHz = (r_25MHz == 0);

    // Pixel Address Generation
    assign pixel_addr = ((w_x >> 1) + (w_y >> 1) * 320) % 76800;

    // Block Memory Generator Instance
    blk_mem_gen_1 blk_mem_gen_1_inst(
       .clka(w_25MHz),      // Use the 25MHz clock generated earlier
       .wea(0),
       .addra(pixel_addr),
       .dina(data),
       .douta(rgb_filter_in)
   );

    // Instantiating Connected Component Labeling
    connected_component_labeling ccl (
        .clk(w_25MHz),
        .reset(ccl_reset),  // Use the new ccl_reset signal
        .x(w_x),
        .y(w_y),
        .video_on(w_video_on),
        .pixel_in(1'b1),   // Assuming pixel input logic is elsewhere
        .final_label_out()
    );

    // Auto reset control for CCL
    always @(posedge w_25MHz or posedge reset)
    begin
        if (reset)  
            ccl_reset <= 1'b1;  // Reset CCL when main reset is asserted
        else if (~vsync)        // Assert reset on the falling edge of vsync
            ccl_reset <= 1'b1;
        else 
            ccl_reset <= 1'b0;  // Deassert reset after the falling edge of vsync
    end

    // Buffer RGB
    always @(posedge w_25MHz)
    begin
        if (reset)  
            rgb_reg <= 12'h0;       
        else if (w_video_on)
            rgb_reg <= rgb_filter_in;      
        grag_reg <= (rgb_reg[11:8] * 77 + rgb_reg[7:4] * 151 + rgb_reg[3:0] * 28) >> 8;
    end

    assign rgb = rgb_reg;  //{grag_reg, grag_reg, grag_reg}; 

endmodule





