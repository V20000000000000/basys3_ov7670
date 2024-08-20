module line_buffer(
    input wire clk,
    input wire reset,
    input wire [8:0] x,
    input wire [7:0] y,
    input wire video_on,
    input wire pixel_in,
    input wire [16:0] pixel_addr_in,
    output reg [6:0] smallest_label_out,
    output reg [6:0] left_label_out,
    output reg [6:0] left_up_label_out,
    output reg [6:0] right_up_label_out,
    output reg [6:0] up_label_out,
    output reg equivalence_out
);

    wire [6:0] min_label;
    reg [6:0] new_label;   // Counter for new labels

    wire [6:0] left_label;
    wire [6:0] left_up_label;
    wire [6:0] up_label;
    wire [6:0] right_up_label;

    integer i;

    // Instantiate min_label_selector
    min_label_selector min_label_selector_inst (
        .left_label(left_label),
        .left_up_label(left_up_label),
        .up_label(up_label),
        .right_up_label(right_up_label),
        .min_label(min_label)
    );

    // Instantiate buffer
    buffer buffer_inst (
        .current_label(smallest_label_out),
        .x(x),
        .y(y),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .up_label_out(up_label),
        .right_up_label_out(right_up_label)
    );


    always @(posedge clk) begin
        if (reset) begin
            smallest_label_out <= 7'b0000000;
            new_label <= 7'b0000001;  // Initialize label counter to 1

        end else begin
            if (video_on) begin
                // Shift the line buffers for the next line
                // Assign neighbor labels based on x and y positions
                if(pixel_in) begin
                    // Case 1: All neighbors are 0, create a new label
                    if (left_label == 7'b0000000 && left_up_label == 7'b0000000 &&
                        up_label == 7'b0000000 && right_up_label == 7'b0000000) begin
                        smallest_label_out <= new_label;
                        new_label <= new_label + 1;
                    end else begin
                        // Case 2: All non-zero neighbors have the same label
                        smallest_label_out <= min_label;
                    end
                end else begin
                    smallest_label_out <= 7'b0000000;
                end
            end
            else begin
                smallest_label_out <= 7'b0000000;
            end
            if(x == 319 && y == 239) begin
                smallest_label_out <= 7'b0000000;
                new_label <= 7'b0000001;  // Initialize label counter to 1
            end
        end
        left_label_out <= left_label;
        left_up_label_out <= left_up_label;
        up_label_out <= up_label;
        right_up_label_out <= right_up_label;
    end
endmodule


