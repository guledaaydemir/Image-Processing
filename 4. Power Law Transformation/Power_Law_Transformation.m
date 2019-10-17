%Gül Eda Aydemir - Power Law Transformation to the 'fractured_spine.tif' image.
%Download the 'fractured_spine.tif' to your current folder.
%03/2019

clc;clear all;close all;
  
T=imread('fractured_spine.tif'); %read image
figure
subplot(2,3,1)
imagesc(T)
title('Original Image')
 
A=im2double(T);
B=A/255;
C=B.^0.6;
D=C*255;
subplot(2,3,2)
imagesc(D);
title('0.6')
 
C=B.^0.5;
D=C*255;
subplot(2,3,3)
imagesc(D);
title('0.5')
 
C=B.^0.4;
D=C*255;
subplot(2,3,4)
imagesc(D);
title('0.4')
 
C=B.^0.3;
D=C*255;
subplot(2,3,5)
imagesc(D);
title('0.3')
 
C=B.^5;
D=C*255;
subplot(2,3,6)
imagesc(D);
title('5')
colormap gray
