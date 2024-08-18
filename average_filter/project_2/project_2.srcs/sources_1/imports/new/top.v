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

    // Instantiating Average Filter
    // average_filter af(
    //     .clk(w_25MHz), 
    //     .reset(reset), 
    //     .x(w_x), 
    //     .y(w_y), 
    //     .video_on(w_video_on), 
    //     .rgb_in(rgb_filter_in), 
    //     .rgb_out(rgb_filter_out)   
    // );  
 
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




