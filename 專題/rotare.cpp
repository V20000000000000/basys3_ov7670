#include <iostream>
#include <opencv2/opencv.hpp>
#include <windows.h>
#include <cmath>
#include <vector>
#include <fstream>

using namespace std;
using namespace cv;

int main()
{
	LARGE_INTEGER frequency, start, end;
	QueryPerformanceFrequency(&frequency);
	QueryPerformanceCounter(&start);

	Mat inputImage = imread("test2.png", cv::IMREAD_GRAYSCALE); // 读取灰度图像
	Mat BinaryImage = inputImage.clone();                      // 二值化图像

	ofstream outputFile("output.txt");

	// 二值化
	threshold(inputImage, BinaryImage, 0, 255, cv::THRESH_BINARY | cv::THRESH_OTSU);

	vector<vector<double>> polarRadius(BinaryImage.rows, vector<double>(BinaryImage.cols)); // 极坐标半径
	vector<vector<double>> polarAngle(BinaryImage.rows, vector<double>(BinaryImage.cols));  // 极坐标角度

	vector<int> histogram(30, 0); // 拆分成30份的直方图

	int centerY = BinaryImage.rows / 2;
	int centerX = BinaryImage.cols / 2;

	double executionTime;

	// 计算每个像素的极坐标
	for (int i = 0; i < BinaryImage.rows; ++i)
	{
		for (int j = 0; j < BinaryImage.cols; ++j)
		{
			polarRadius[i][j] = sqrt(pow(i - centerY, 2) + pow(j - centerX, 2)); // 计算极径
			polarAngle[i][j] = atan2(centerY - i, centerX - j) * 180 / CV_PI + 180;    // 计算极角
			//cout << "polarRadius" << polarRadius[i][j] << endl;
			//cout << "polarAngle" << polarAngle[i][j] << endl;
			if(BinaryImage.at<uchar>(i, j) == 255)
				histogram[polarAngle[i][j] / 15]++;                                  // 更新直方图
		}
	}

	// 寻找直方图中的两个最大值
	int max1 = 0, max2 = 0;
	int max1Index = 0, max2Index = 0;
	for (int i = 0; i < 30; ++i)
	{
		if (histogram[i] > max1)
		{
			max2 = max1;
			max2Index = max1Index;
			max1 = histogram[i];
			max1Index = i;
		}
		else if (histogram[i] > max2)
		{
			max2 = histogram[i];
			max2Index = i;
		}
	}

	// 寻找两个最大值对应的角度
	double angle1 = max1Index * 15;
	double angle2 = max2Index * 15;
	double angle = (angle1 + angle2) / 2; // 取两者平均值

	cout << "angle1" << angle1 << endl;
	cout << "angle2" << angle2 << endl;
	cout << "angle" << angle << endl;

	// 标记出对应角度的像素
	for (int i = 0; i < BinaryImage.rows; ++i)
	{
		for (int j = 0; j < BinaryImage.cols; ++j)
		{
			if ((polarAngle[i][j] < angle + 1) && (polarAngle[i][j] > angle - 1))
			{
				BinaryImage.at<uchar>(i, j) = 120; // 标记为白色像素

				cout << "test: " << i << " " << j << endl;
			}
		}
	}

	for (unsigned int i = 0; i < histogram.size(); i++)
	{
		cout << i << ": " << histogram[i] << endl;
		outputFile << i << " " << histogram[i] << endl;
	}

	// 保存旋转后的图像
	imwrite("rotated_test.bmp", BinaryImage);

	// 计算程序执行时间
	QueryPerformanceCounter(&end);
	executionTime = static_cast<double>(end.QuadPart - start.QuadPart) / frequency.QuadPart;
	cout << "Execution time: " << executionTime << " seconds" << endl;

	// 显示旋转后的图像
	imshow("inputImage", inputImage);
	imshow("Rotated Image", BinaryImage);

	outputFile.close();

	cout << "complete" << endl;
	waitKey(0);

	return 0;
}
