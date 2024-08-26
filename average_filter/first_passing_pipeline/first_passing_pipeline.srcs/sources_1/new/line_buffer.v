module line_buffer(
    input wire clk,
    input wire reset,
    input wire [8:0] x,
    input wire [7:0] y,
    input wire video_on,
    input wire pixel_in,
    input wire [16:0] pixel_addr_in,
    output wire [6:0] smallest_label_out,
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

    buffer buffer_inst (
        .pixel_in(pixel_in),
        .x(x),
        .y(y),
        .left_label_out(left_label),
        .left_up_label_out(left_up_label),
        .up_label_out(up_label),
        .right_up_label_out(right_up_label),
        .current_label(smallest_label_out)
    );

    always @(posedge clk) begin
        left_label_out <= left_label;
        left_up_label_out <= left_up_label;
        up_label_out <= up_label;
        right_up_label_out <= right_up_label;
    end
endmodule


