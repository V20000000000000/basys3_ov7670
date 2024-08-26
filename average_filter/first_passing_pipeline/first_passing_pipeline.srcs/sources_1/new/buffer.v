//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 21:30:59
// Design Name: 
// Module Name: buffer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module buffer(
    input wire clk,
    input wire video_on,
    input wire pixel_in, 
    input wire [8:0] x,
    input wire [8:0] y,
    input wire reset,
    output wire [6:0] left_label_out, 
    output wire [6:0] left_up_label_out,
    output wire [6:0] up_label_out,
    output wire [6:0] right_up_label_out,
    output reg [6:0] current_label,
    output wire [6:0] new_label_out,
    output reg [3:0] state,
    output reg SCLR
    );

    parameter image_width = 320;

    wire data;
    reg [6:0] left_label;
    wire [6:0] left_up_label;
    wire [6:0] up_label;
    wire [6:0] right_up_label;
    reg [6:0] new_label;
    integer i;
    
    wire buffer_clk;
    
    assign buffer_clk = (video_on) ? clk : 0;
    
    //Initialize left_up_reg (321 bit shift register)
    left_up_reg left_up_reg_inst (
        .D(left_label),
        .CLK(buffer_clk),
        .SCLR(SCLR),
        .Q(left_up_label)
    );
    
    //Initialize up_reg (320 bit shift register)
    up_reg up_reg_inst (
        .D(left_label),
        .CLK(buffer_clk),
        .SCLR(SCLR),
        .Q(up_label)
    );

    //Initialize right_up_reg (319 bit shift register)
    right_up_reg77 right_up_reg_inst (
        .D(left_label),
        .CLK(buffer_clk),
        .SCLR(SCLR),
        .Q(right_up_label)
    );

    //Initialize left_reg (1 bit shift register)
//    left_reg left_reg_inst (
//        .D(left_label),
//        .CLK(clk),
//        .SCLR(SCLR),
//        .Q(left_label)
//    );


    // Assign neighbor labels based on x and y positions
    always @(posedge clk) begin
        if (reset || (x >= image_width && y >= 240)) begin
            new_label <= 7'b0000001;  // Initialize label counter to 1
            left_label <= 7'b0000000;
            SCLR <= 1'b1;
            state <= 4'b0000;
        end else if (video_on) begin
            SCLR <= 1'b0;
            if (pixel_in == 1) begin    
                if((left_label == 7'b0000000) && (left_up_label == 7'b0000000) 
                && (up_label == 7'b0000000) && (right_up_label == 7'b0000000)) begin
                    left_label <= new_label;
                    new_label <= new_label + 1;
                    state <= 4'b0001;
                end
                else begin
                    left_label <= (left_label != 7'b0000000 && 
                        (left_up_label == 7'b0000000 || left_label < left_up_label) &&
                        (up_label == 7'b0000000 || left_label < up_label) &&
                        (right_up_label == 7'b0000000 || left_label < right_up_label)) ? left_label :
                       (left_up_label != 7'b0000000 && 
                        (up_label == 7'b0000000 || left_up_label < up_label) &&
                        (right_up_label == 7'b0000000 || left_up_label < right_up_label)) ? left_up_label :
                       (up_label != 7'b0000000 && 
                        (right_up_label == 7'b0000000 || up_label < right_up_label)) ? up_label :
                       (right_up_label != 7'b0000000) ? right_up_label :
                       7'b0000000;
                    state <= 4'b0010;
                end
            end
            else begin
                left_label <= 7'b0000000;
                state <= 4'b0011;
            end 
        end
        else begin
            SCLR <= 1'b0;
        end
    end

    assign new_label_out = new_label;

    assign left_label_out = left_label;
    assign left_up_label_out = left_up_label;
    assign up_label_out = up_label;
    assign right_up_label_out = right_up_label;

endmodule
