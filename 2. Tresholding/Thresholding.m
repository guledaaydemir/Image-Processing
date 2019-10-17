%Gül Eda Aydemir - Tresholding the 'moon.bmp' image.
%Download the 'moon.bmp' to your current folder.
%03/2019

clc;clear all;close all;
 
T=imread('moon.bmp');
% imhist(T)

%Treshold algorithm.
T(find(T<=25))=0;
T(find(T>25))=255;

%Showing the original Image and the tresholded image.
figure
subplot(1,2,2)
imagesc(T)
title('Tresholded Image')
colormap gray
subplot(1,2,1)
imagesc(imread('moon.bmp'))
title('Original Image')