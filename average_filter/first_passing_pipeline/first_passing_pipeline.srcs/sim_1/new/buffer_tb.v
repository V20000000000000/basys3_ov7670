`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 21:54:07
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb;

    // 測試參數
    reg current_label;
    reg [3:0] x;
    reg [3:0] y;
    wire left_label;
    wire left_up_label;
    wire up_label;
    wire right_up_label;

    // 例化被測模組
    buffer uut (
        .current_label(current_label),
        .x(x),
        .y(y),
        .left_label(left_label),
        .left_up_label(left_up_label),
        .up_label(up_label),
        .right_up_label(right_up_label)
    );

    // 模擬初始條件
    initial begin
        // 初始化輸入
        current_label = 0;
        x = 0;
        y = 0;
        
        // 打印標題
        $display("Time | X  | Y  | Current Label | Left Label | Left-Up Label | Up Label | Right-Up Label");

        // 遍歷整個16x16的圖像
        for (y = 0; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                // 模擬隨機標籤值
                current_label = $random % 2;  // 假設標籤是二進制值(0或1)

                // 等待時間推移，以便觸發模組更新
                #10;

                // 打印每個位置的結果
                $display("%4t | %2d | %2d |       %d       |      %d      |       %d       |    %d    |       %d",
                         $time, x, y, current_label, left_label, left_up_label, up_label, right_up_label);
            end
        end

        // 結束模擬
        $stop;
    end

endmodule

