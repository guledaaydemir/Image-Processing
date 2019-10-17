%Gül Eda Aydemir - Spatial Resolution the 'Rose1024.tif' image.
%Download the 'Rose1024.tif' to your current folder.
%03/2019

T = imread('Rose1024.tif');
figure
subplot(2,3,1)
imagesc(T)
title('Original Image')
colormap gray
 
M=T(1:2:size(T,1),1:2:size(T,2)); %512
subplot(2,3,2)
colormap gray
imagesc(M)
title('512x512 Image')
 
N=M(1:2:size(M,1),1:2:size(M,2)); %256
subplot(2,3,3)
colormap gray
imagesc(N)
title('256x256 Image')
 
O=N(1:2:size(N,1),1:2:size(N,2)); %128
subplot(2,3,4)
colormap gray
imagesc(O)
title('128x128 Image')
 
P=O(1:2:size(O,1),1:2:size(O,2)); %64
subplot(2,3,5)
colormap gray
imagesc(P)
title('64x64 Image')
 
Q=P(1:2:size(P,1),1:2:size(P,2)); %32
subplot(2,3,6)
colormap gray
imagesc(Q)
title('32x32 Image')
