module top(
    input clk_100MHz,
    input reset,
    output hsync,
    output vsync,
    output [11:0] rgb/*, 
    output [9:0] w_x,
    output [9:0] w_y,
    output wire binarize_pixel,
    output wire [6:0] left_label,
    output wire [6:0] final_label_out,
    output wire cclk,
    output wire w_p_tick,
    output reg [1:0] pass_state,
    output reg clear,
    output reg label_write,
    output wire [16:0] pixel_addr,
    output wire [16:0] pixel_addr_1,
    output wire hsync_0,
    output wire vsync_0,
    output wire clk_100MHz_1,
    output wire [9:0] w_x_0,
    output wire [9:0] w_y_0*/
);

    wire w_video_on;
    
    wire [11:0] rgb_pixel_in;
    wire [11:0] data;
    wire [6:0] label_0;

    wire [6:0] left_up_label;
    wire [6:0] right_up_label;
    wire [6:0] up_label;

    wire SCLR;
    wire ena = 1'b1;

    reg label_write;
    wire [9:0] w_x, w_y; 
    wire hsync_0, vsync_0;
    reg clear;
    reg [1:0] pass_state;
    wire cclk;
    wire w_p_tick;
    wire binarize_pixel;
    wire [16:0] pixel_addr;
    wire [16:0] pixel_addr_1;
    wire [6:0] left_label;
    wire [6:0] final_label_out;
    wire wea = 1'b0;


    // Instantiate clk_100MHz_1
    wire clk_100MHz_1;
    reg [20:0] clk_reg;
    wire [9:0] w_x_0, w_y_0;
    
    reg [6:0] count = 0;
    reg clk_state = 0;

    always @(posedge clk_100MHz) begin
        case (clk_state)
            0: begin
                count <= count + 1;
                if(count == 42) begin
                    clk_state <= 1;
                    count <= 0;
                end
            end
            1: begin
                  count <= 0; // Use non-blocking assignment
            end
        endcase
    end

    assign clk_100MHz_1 = (clk_state == 1) ? clk_100MHz : 1'b0;

    // Instantiate VGA Controller_0
    vga_controller_0 vga_controller_0_inst (
        .clk_100MHz(clk_100MHz_1),
        .reset(reset),
        .hsync(hsync__0),
        .vsync(vsync__0),
        .video_on(w_video_on_0),
        .p_tick(w_p_tick_0),
        .x(w_x_0),
        .y(w_y_0),
        .cclk(cclk_0)
    );

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
        .cclk(cclk)
    );

    assign pixel_addr = (w_x >> 1) + (w_y >> 1) * 320;
    assign pixel_addr_1 = (w_x_0 >> 1) + (w_y_0 >> 1) * 320;

    assign binarize_pixel = (rgb_pixel_in == 12'b0) ? 0 : 1;

    // shift reg of hsync and vsync 
    reg [40:0] hsync_reg, vsync_reg;

    always @(posedge clk_100MHz) begin
        hsync_reg <= {hsync_reg[40:0], hsync__0};
        vsync_reg <= {vsync_reg[40:0], vsync__0};
    end
    
    assign hsync = hsync_reg[0];
    assign vsync = vsync_reg[0];

    // control wea for first pass memory
    // run second pass after first pass is done, during the second pass, wea is 0, so the memory is read only
    // otherwise, wea is 1, so the memory is write only
    parameter FIRST_PASS = 2'b00, SECOND_PASS = 2'b01, DONE = 2'b10;
        
    always @(negedge w_p_tick or posedge reset) begin
        if (reset) begin
            pass_state <= FIRST_PASS;
            label_write <= 1;
            clear <= 1;
        end else begin
            case (pass_state)
                FIRST_PASS: begin
                    clear <= 0;
                    if (w_x == 640 && w_y == 479) begin
                        pass_state <= SECOND_PASS;
                        label_write <= 0;  // Disable writing for the second pass
                    end
                end

                SECOND_PASS: begin
                    if (w_x == 640 && w_y == 479) begin
                        pass_state <= DONE;
                    end
                end

                DONE: begin
                    if (w_x == 799 && w_y == 524) begin  // Coordinates (17,17) for a new frame
                        clear <= 1;
                    end
                        
                    if (w_x == 0 && w_y == 0) begin  // Coordinates (17,17) for a new frame
                        pass_state <= FIRST_PASS;
                        label_write <= 1;  // Enable writing for the first pass again
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
        .clka(cclk),
        .wea(label_write),
        .addra(pixel_addr),
        .dina(left_label),
        // .rsta(reset || clear),  
        .ena(ena),
        .clkb(cclk_0),
        .addrb(pixel_addr_1),
        .doutb(final_label_out),
        .enb(ena),
        .rstb(reset || clear) // Memory reset with reset or clear signal
    );

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
       .new_label_out(label_0),
       .state(state),
       .SCLR(SCLR)
   );

    assign rgb = {2'b00,final_label_out, 3'b000};
    // assign rgb = {2'b00,left_label, 3'b000};
    // massign rgb = rgb_pixel_in;

endmodule
