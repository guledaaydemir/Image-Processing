clc;clear all;close all;
 
T=imread('moon.bmp');
% imhist(T)
T(find(T<=25))=0;
T(find(T>25))=255;
imagesc(T)
colormap gray
