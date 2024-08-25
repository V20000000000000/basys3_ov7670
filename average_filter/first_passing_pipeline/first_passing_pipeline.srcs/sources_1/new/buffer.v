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
    output wire [6:0] left_label_out, 
    output wire [6:0] left_up_label_out,
    output wire [6:0] up_label_out,
    output wire [6:0] right_up_label_out,
    output reg [6:0] current_label,
    output wire [6:0] new_label_out,
    output reg [3:0] state
    );

    parameter image_width = 320;

    reg [image_width:0] buffer_0; // label digit 0
    reg [image_width:0] buffer_1; // label digit 1
    reg [image_width:0] buffer_2; // label digit 2
    reg [image_width:0] buffer_3; // label digit 3
    reg [image_width:0] buffer_4; // label digit 4
    reg [image_width:0] buffer_5; // label digit 5
    reg [image_width:0] buffer_6; // label digit 6

    reg [6:0] left_label;
    reg [6:0] left_up_label;
    reg [6:0] up_label;
    reg [6:0] right_up_label;
    reg [6:0] new_label;
    integer i;

    // Assign neighbor labels based on x and y positions
always @(posedge clk) begin
    if (x >= image_width && y >= 240) begin
        new_label = 7'b0000001;  // Initialize label counter to 1
        current_label = 7'b0000000;
        state = 4'b0000;
        // Initialize buffer to 0
        for (i = 0; i < image_width + 1; i = i + 1) begin
            buffer_0[i] = 0;
            buffer_1[i] = 0;
            buffer_2[i] = 0;
            buffer_3[i] = 0;
            buffer_4[i] = 0;
            buffer_5[i] = 0;
            buffer_6[i] = 0;
        end
    end else if (video_on) begin
        left_label = {buffer_6[0], buffer_5[0], buffer_4[0], buffer_3[0], buffer_2[0], buffer_1[0], buffer_0[0]};
        left_up_label = {buffer_6[image_width], buffer_5[image_width], buffer_4[image_width], buffer_3[image_width], buffer_2[image_width], buffer_1[image_width], buffer_0[image_width]};
        up_label = {buffer_6[image_width-1], buffer_5[image_width-1], buffer_4[image_width-1], buffer_3[image_width-1], buffer_2[image_width-1], buffer_1[image_width-1], buffer_0[image_width-1]};
        right_up_label = {buffer_6[image_width-2], buffer_5[image_width-2], buffer_4[image_width-2], buffer_3[image_width-2], buffer_2[image_width-2], buffer_1[image_width-2], buffer_0[image_width-2]};
        
        if (pixel_in == 1) begin    
            if((left_label == 7'b0000000) && (left_up_label == 7'b0000000) 
            && (up_label == 7'b0000000) && (right_up_label == 7'b0000000)) begin
                current_label = new_label;
                new_label = new_label + 1;
                state = 4'b0001;
            end
            else begin
                current_label = (left_label != 7'b0000000 && 
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
                state = 4'b0010;
            end
        end
        else begin
            current_label = 7'b0000000;
            state = 4'b0011;
        end
        
        buffer_0 = {buffer_0[image_width-1:0], current_label[0]};
        buffer_1 = {buffer_1[image_width-1:0], current_label[1]};
        buffer_2 = {buffer_2[image_width-1:0], current_label[2]};
        buffer_3 = {buffer_3[image_width-1:0], current_label[3]};
        buffer_4 = {buffer_4[image_width-1:0], current_label[4]};
        buffer_5 = {buffer_5[image_width-1:0], current_label[5]};
        buffer_6 = {buffer_6[image_width-1:0], current_label[6]};
    end
end

    assign new_label_out = new_label;

    assign left_label_out = (x > 0) ? left_label: 7'b0000000;
    assign left_up_label_out = (x > 0 && y > 0) ? left_up_label: 7'b0000000;
    assign up_label_out = (y > 0) ? up_label: 7'b0000000;
    assign right_up_label_out = (x < image_width-1 && y > 0) ? right_up_label: 7'b0000000;

endmodule
