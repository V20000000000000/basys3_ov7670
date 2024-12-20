`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/09 09:47:32
// Design Name: 
// Module Name: matrix_multiplication_3x3
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


module matrix_multiplication_3x3(
    input [71:0] A,  // 第一個矩陣，3x3 展開為 72 位元向量（9 個 8 位元元素）
    input [71:0] B,  // 第二個矩陣，3x3 展開為 72 位元向量（9 個 8 位元元素）
    output reg [143:0] C  // 結果矩陣，3x3 展開為 144 位元向量（9 個 16 位元元素）
);

integer i, j, k;
reg [7:0] mat_A [0:2][0:2]; // 內部 3x3 矩陣表示
reg [7:0] mat_B [0:2][0:2];
reg [15:0] mat_C [0:2][0:2];

always @(*) begin
    // 將向量 A、B 轉換為內部 3x3 矩陣 mat_A 和 mat_B
    for (i = 0; i < 3; i = i + 1) begin
        for (j = 0; j < 3; j = j + 1) begin
            mat_A[i][j] = A[(i * 3 + j) * 8 +: 8];
            mat_B[i][j] = B[(i * 3 + j) * 8 +: 8];
            mat_C[i][j] = 0;  // 初始化結果矩陣 mat_C
        end
    end

    // 進行矩陣乘法
    for (i = 0; i < 3; i = i + 1) begin
        for (j = 0; j < 3; j = j + 1) begin
            for (k = 0; k < 3; k = k + 1) begin
                mat_C[i][j] = mat_C[i][j] + mat_A[i][k] * mat_B[k][j];
            end
        end
    end

    // 將內部 3x3 矩陣 mat_C 轉換為向量 C
    for (i = 0; i < 3; i = i + 1) begin
        for (j = 0; j < 3; j = j + 1) begin
            C[(i * 3 + j) * 16 +: 16] = mat_C[i][j];
        end
    end
end

endmodule



