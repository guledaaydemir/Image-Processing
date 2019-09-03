clc;clear all;close all;
 
T=imread('Ctskull-256.tif ');
figure
subplot(2,4,1)
imagesc(T)
title('Original Image - 8bit')
colormap gray
 
A=T*(7/255); 
subplot(2,4,2)
colormap gray
imagesc(A)
title('7 bits')
 
A=T*(6/255); 
subplot(2,4,3)
colormap gray
imagesc(A)
title('6 bits')
 
A=T*(5/255); 
subplot(2,4,4)
colormap gray
imagesc(A)
title('5 bits')
 
A=T*(4/255); 
subplot(2,4,5)
colormap gray
imagesc(A)
title('4 bits')
 
A=T*(3/255); 
subplot(2,4,6)
colormap gray
imagesc(A)
title('3 bits')
 
A=T*(2/255); 
subplot(2,4,7)
colormap gray
imagesc(A)
title('2 bits')
 
A=T*(1/255); 
subplot(2,4,8)
colormap gray
imagesc(A)
title('1 bits')
