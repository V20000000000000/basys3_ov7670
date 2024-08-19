module line_buffer(
    input wire clk,
    input wire reset,
    input wire [8:0] x,
    input wire [7:0] y,
    input wire video_on,
    input wire pixel_in,
    input wire [16:0] pixel_addr_in,
    input wire hsync_in,
    input wire vsync_in,
    output reg hsync_out,
    output reg vsync_out,
    output reg [16:0] pixel_addr_out,
    output reg [6:0] smallest_label_out,
    output reg [8:0] x_out,
    output reg [7:0] y_out,
    output reg [6:0] left_label_out,
    output reg [6:0] left_up_label_out,
    output reg [6:0] right_up_label_out,
    output reg [6:0] up_label_out,
    output reg equivalence_out
);

    reg [6:0] left_label, left_up_label, right_up_label, up_label;
    wire [6:0] min_label;
    reg [6:0] new_label;   // Counter for new labels
    reg [6:0] prev_line_buf_0 [319:0];
    reg [6:0] prev_line_buf_1 [319:0];

    // Equivalence table
    reg equivalence;
    reg [6:0] equivalence_table [127:0];

    integer i;

    // Instantiate min_label_selector
    min_label_selector min_label_selector_inst (
        .left_label(left_label),
        .left_up_label(left_up_label),
        .up_label(up_label),
        .right_up_label(right_up_label),
        .min_label(min_label)
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            hsync_out <= 0;
            vsync_out <= 0;
            smallest_label_out <= 7'b0000000;
            x_out <= 0;
            y_out <= 0;
            left_label <= 7'b0000000;
            left_up_label <= 7'b0000000;
            right_up_label <= 7'b0000000;
            up_label <= 7'b0000000;
            equivalence_out <= 0;
            new_label <= 7'b0000001;  // Initialize label counter to 1

            for (i = 0; i < 320; i = i + 1) begin
                prev_line_buf_0[i] <= 7'b0000000;
                prev_line_buf_1[i] <= 7'b0000000;
            end

            for (i = 0; i < 128; i = i + 1) begin
                equivalence_table[i] <= 7'b0000000;
            end
        end else begin
            hsync_out <= hsync_in;
            vsync_out <= vsync_in;
            pixel_addr_out <= pixel_addr_in;

            x_out <= x;
            y_out <= y;

            if (video_on) begin
                // Assign neighbor labels based on x and y positions
                left_label     <= (x > 0) ? prev_line_buf_0[x-1] : 7'b0000000;
                left_up_label  <= (x > 0 && y > 0) ? prev_line_buf_1[x-1] : 7'b0000000;
                up_label       <= (y > 0) ? prev_line_buf_1[x] : 7'b0000000;
                right_up_label <= (x < 319 && y > 0) ? prev_line_buf_1[x+1] : 7'b0000000;

                left_label_out <= left_label;
                left_up_label_out <= left_up_label;
                up_label_out <= up_label;
                right_up_label_out <= right_up_label;

                if (pixel_in) begin
                    // Case 1: All neighbors are 0, create a new label
                    if (left_label == 7'b0000000 && left_up_label == 7'b0000000 &&
                        up_label == 7'b0000000 && right_up_label == 7'b0000000) begin
                        smallest_label_out = new_label;
                        new_label <= new_label + 1;
                        equivalence_out <= 0;
                    end else begin
                        // Case 2: All non-zero neighbors have the same label
                        smallest_label_out = min_label;

                        // Case 3: Different non-zero labels, record equivalence
                        equivalence_out <= 0;
                        if ((left_label != 7'b0000000 && left_label != min_label) || 
                            (left_up_label != 7'b0000000 && left_up_label != min_label) ||
                            (up_label != 7'b0000000 && up_label != min_label) ||
                            (right_up_label != 7'b0000000 && right_up_label != min_label)) begin
                            equivalence_out <= 1;
                            // Record equivalent labels in the table
                            equivalence_table[left_label]     <= min_label;
                            equivalence_table[left_up_label]  <= min_label;
                            equivalence_table[up_label]       <= min_label;
                            equivalence_table[right_up_label] <= min_label;
                        end
                    end
                end else begin
                    smallest_label_out <= 7'b0000000;
                    equivalence_out <= 0;
                end
            end

            // Shift the line buffers for the next line
            prev_line_buf_0[x] <= smallest_label_out;
            prev_line_buf_1[x] <= prev_line_buf_0[x];
        end
    end

endmodule


