`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/09 10:02:34
// Design Name: 
// Module Name: tb_matrix_multiplication_3x3
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


module tb_matrix_multiplication_3x3;

    // 測試輸入和輸出訊號
    reg [71:0] A;
    reg [71:0] B;
    wire [143:0] C;

    // 實例化待測模組
    matrix_multiplication_3x3 uut (
        .A(A),
        .B(B),
        .C(C)
    );

    // 任意的初始值設置
    initial begin
        // 設定 A 和 B 矩陣的值
        // A = | 1 2 3 |
        //     | 4 5 6 |
        //     | 7 8 9 |
        A = {8'd1, 8'd2, 8'd3,
             8'd4, 8'd5, 8'd6,
             8'd7, 8'd8, 8'd9};

        // B = | 9 8 7 |
        //     | 6 5 4 |
        //     | 3 2 1 |
        B = {8'd9, 8'd8, 8'd7,
             8'd6, 8'd5, 8'd4,
             8'd3, 8'd2, 8'd1};

        // 等待一個時間單位，以便查看結果
        #10;

        // 顯示結果
        $display("C Matrix Result:");
        $display("%d %d %d", C[143:128], C[127:112], C[111:96]);
        $display("%d %d %d", C[95:80], C[79:64], C[63:48]);
        $display("%d %d %d", C[47:32], C[31:16], C[15:0]);

        // 結束模擬
        $finish;
    end

endmodule

