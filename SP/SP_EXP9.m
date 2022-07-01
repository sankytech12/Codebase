clc;
clear all;
close all;
% RGB = imread('peppers.png'); 
% subplot(1,2,1)
% imshow(RGB)  
% title('Color Image')
% I = rgb2gray(RGB);  
% subplot(1,2,2)  
% imshow(I)  
% title('Gray Image')



% %A1
I = imread('peppers.png');
subplot(2,2,1)
imshow(I)
title("Original Image")
subplot(2,2,2)
imhist(I,64)
title("               Histogram of Original Image")
J = histeq(I);
subplot(2,2,3)
imshow(J)
title("New Image")
subplot(2,2,4)
imhist(J,64)
title("         Histogram of New Image")



% I = imread('coins.png');
% BW1 = edge(I,'sobel');
% BW2 = edge(I,'canny');
% BM3 = edge(I,'prewitt');
% tiledlayout(4,1)
% nexttile
% imshow(I)
% title('Original Image')
% nexttile
% imshow(BW1)
% title('Sobel Edge Detection')
% nexttile
% imshow(BW2)
% title('Canny Edge Detection')
% nexttile
% imshow(BM3)
% title('Prewitt Edge Detection')

