% Gül Eda Aydemir - Contact with me! :)
% www.linkedin.com/in/gul-eda-aydemir
% guledaaydemir@gmail.com 

%Histogram Equalization to the 'kids.tif' and 'clown.tif' images.
%Download 'kids.tif' and 'clown.tif' images to your current folder.
%04/2019


% How to run with Command Window.
%-------------------------------
% input = imread('kids2.tif');
% equalize(input)

%This algorithm shows the changes in the histograms after processing with my histogram equalization function.

%See results in; 
% equalize.m -> Kids_Histogram_Equalized_Result.png
% equalize.m -> Clown_Histogram_Equalized_Result.png

function Y=equalize(X)
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
subplot(2,2,2);
imhist(X);
title('Original Histogram');
colormap gray;subplot(2,2,3);
imagesc(Y);
title('Equalized image');
subplot(2,2,4);
imhist(uint8(Y));
title('Equalized Histogram');
