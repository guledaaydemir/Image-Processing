% Gül Eda Aydemir - Contact with me! :)
% www.linkedin.com/in/gul-eda-aydemir
% guledaaydemir@gmail.com 

%Histogram Equalization to the 'kids.tif' and 'clown.tif' images.
%Download 'kids.tif' and 'clown.tif' images to your current folder.
%04/2019

% How to run with Command Window.
%-------------------------------
% input = imread('kids2.tif');
% equalize_compare_results(input)

%This algorithm compares the result of Built-in histeq() function and my
%histogram equalization function.

%See results as screenshots; 
% equalize_compare_results.m -> Histogram_Equalization_Compare_Result.PNG

function Y=equalize_compare_results(X)
clc;close all;
[n,m]=size(X);
temp=n*m;
Y=zeros(n,m);
Imin=min(min(X));
Imax=max(max(X));
for i=Imin:Imax
Y(X==i) = round(sum(sum(X<=i))/temp*255);
end
figure;colormap gray;subplot(2,2,1);
imagesc(X);
title('Original image');
colormap gray;subplot(2,2,3);
imagesc(Y);
title('Equalized image');
colormap gray;subplot(2,2,4);
imagesc(histeq(X));
title('Built in Equalized image');
