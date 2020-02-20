function Y = match (X,Z)
M = zeros(256,1,'uint8');  %define mapping
img1 = imhist(X); %histogram
img2 = imhist(Z);
cim1 = cumsum(img1) / numel(X); %cdfs image
cim2 = cumsum(img2) / numel(Z);
 
% Mapping 
i = 1;
while i<=256
    [~,ind] = min(abs(cim1(i) - cim2));
    M(i) = ind-1;
    i = i + 1;
end
Y = M(double(X)+1);
 
figure;colormap gray;subplot(2,4,1);
imagesc(X);
title('Given image');
subplot(2,4,5);
imhist(X);
title('Given Image Histogram');
colormap gray;subplot(2,4,2);
imagesc(Z);
title('Referance image');
subplot(2,4,6);
imhist(Z);
title('Referance Image Histogram');
colormap gray;subplot(2,4,3);
imagesc(Y);
title('Output image');
subplot(2,4,7);
imhist(Y);
title('Output Image Histogram');
colormap gray;subplot(2,4,4);
imagesc(imhistmatch(X,Z));
title('Built in image');
subplot(2,4,8);
imhist((imhistmatch(X,Z)));
title('Built in Image Histogram');
 
end
