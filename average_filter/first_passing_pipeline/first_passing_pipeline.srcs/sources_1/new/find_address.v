module find_address (
    input wire clk,
    input wire reset,
    input wire [8:0] x,         // 9 bits for 320 pixels width
    input wire [7:0] y,         // 8 bits for 240 pixels height
    input wire video_on,
    input wire [11 : 0] rgb_pixel_in,
    input wire hsync_in,
    input wire vsync_in,
    input wire [16:0] pixel_addr_in,
    output reg hsync_out,
    output reg vsync_out,
    output reg [16:0] pixel_addr_out,  // 17-bit address output
    output reg binarize_pixel_out,
    output reg [8:0] x_out, // 9 bits for 320 pixels width
    output reg [7:0] y_out // 8 bits for 240 pixels height
);

    always @(posedge clk) begin
        hsync_out <= hsync_in;
        vsync_out <= vsync_in;
        pixel_addr_out <= pixel_addr_in;
        if (reset) begin
            binarize_pixel_out <= 0;
            x_out <= 0;
            y_out <= 0;
        end
        else begin
            if (video_on) begin
                x_out <= x;
                y_out <= y;
                if (rgb_pixel_in == 12'b0) begin
                    binarize_pixel_out <= 0;
                end
                else begin
                    binarize_pixel_out <= 1;
                end
            end
            else begin
                binarize_pixel_out <= 0;
            end
        end
    end

endmodule
