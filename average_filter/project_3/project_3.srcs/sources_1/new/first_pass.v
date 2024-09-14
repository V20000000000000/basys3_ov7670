module connected_component_labeling (
    input wire clk,
    input wire reset,
    input wire [8:0] x,         // 9 bits for 320 pixels width
    input wire [7:0] y,         // 8 bits for 240 pixels height
    input wire video_on,
    input wire pixel_in,
    output reg [6:0] final_label_out  // 7-bit label output
);

    reg [6:0] label_temp;  // Temporary label storage
    reg [6:0] new_label;   // Counter for new labels
    reg [6:0] min_label;   // Minimum label from neighbors

    // Line buffers to store the labels of the previous row
    reg [6:0] prev_line_buf_1 [319:0];  // Line buffer 1 (7 bits)
    reg [6:0] prev_line_buf_2 [319:0];  // Line buffer 2 (7 bits)

    // Union-Find array for label equivalence
    reg [6:0] label_equivalence [127:0];  // 128 entries for equivalence classes (7 bits)
    
    // Define the neighbor labels
    reg [6:0] left_label;      // Label from the left neighbor
    reg [6:0] left_up_label;   // Label from the left-upper neighbor
    reg [6:0] up_label;        // Label from the upper neighbor
    reg [6:0] right_up_label;  // Label from the right-upper neighbor

    // Control signal for Block Memory write
    reg wea;

    // Pixel address for 320x240 resolution
    wire [16:0] pixel_addr;
    assign pixel_addr = x + y * 320;

    // Instantiate Block Memory for Label Storage
    first_pass_mem first_pass_mem_inst (
        .clka(clk),                // Use the main clock
        .wea(wea),                 // Write Enable for writing labels to memory
        .addra(pixel_addr),        // Address for the pixel
        .dina(label_temp),         // Data to write (label_temp)
        .douta(first_label_out),   // Data output from memory
        .ena(1'b1)                 // Enable signal
    );

    integer i;

    // Initialize and reset
    always @(posedge clk) begin
        if (reset) begin
            new_label <= 7'b0000001;  // Initialize label counter to 1
            label_temp <= 6'b000000; // Reset temporary label
            for (i = 0; i < 128; i = i + 1) begin
                label_equivalence[i] <= i; // Initialize union-find array
            end
        end else if (video_on) begin
            // Shift line buffers
            prev_line_buf_2[x] <= prev_line_buf_1[x];
            prev_line_buf_1[x] <= first_label_out;

            // Assign neighbor labels based on x and y positions
            left_label     <= (x > 0) ? prev_line_buf_1[x-1] : 6'b000000;
            left_up_label  <= (x > 0 && y > 0) ? prev_line_buf_2[x-1] : 6'b000000;
            up_label       <= (y > 0) ? prev_line_buf_2[x] : 6'b000000;
            right_up_label <= (x < 319 && y > 0) ? prev_line_buf_2[x+1] : 6'b000000;
        end
    end

    // Label assignment logic
    always @(posedge clk) begin
        if (video_on && pixel_in) begin
            // Case 1: All neighbors are 0, create a new label
            if (left_label == 6'b000000 && left_up_label == 6'b000000 &&
                up_label == 6'b000000 && right_up_label == 6'b000000) begin
                label_temp <= new_label;
                new_label <= new_label + 1;
            end else begin
                // Case 2 & 3: Assign the minimum label among neighbors
                min_label = left_label;  
                if (left_up_label != 6'b000000 && (min_label == 6'b000000 || left_up_label < min_label))
                    min_label = left_up_label;
                if (up_label != 6'b000000 && (min_label == 6'b000000 || up_label < min_label))
                    min_label = up_label;
                if (right_up_label != 6'b000000 && (min_label == 6'b000000 || right_up_label < min_label))
                    min_label = right_up_label;

                label_temp = min_label;
                
                // Record label equivalence if necessary
                if (left_label != 6'b000000 && left_label != min_label)
                    label_equivalence[left_label] = min_label;
                if (left_up_label != 6'b000000 && left_up_label != min_label)
                    label_equivalence[left_up_label] = min_label;
                if (up_label != 6'b000000 && up_label != min_label)
                    label_equivalence[up_label] = min_label;
                if (right_up_label != 6'b000000 && right_up_label != min_label)
                    label_equivalence[right_up_label] = min_label;
            end
            wea <= 1'b1;  // Enable write to Block Memory
        end else begin
            wea <= 1'b0;  // Disable write when video is off
        end

        final_label_out <= label_temp;  // Output the final label
    end

endmodule









