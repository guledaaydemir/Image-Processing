image = imread("boat.tif");
normImage = im2double(image);
radius=3; 
filter=ones(radius,radius)/(radius*radius);
filtered = imfilter(normImage, filter);
outputImage3 = filtered * 255;
figure;
subplot(2,2,1);
imshow(uint8(image));
title("Original Image");
subplot(2,2,2);
imshow(uint8(outputImage3));
title("3x3 Image");
radius=5; 
filter=ones(radius,radius)/(radius*radius);
filtered = imfilter(normImage, filter);
outputImage5 = filtered * 255;
subplot(2,2,3);
imshow(uint8(outputImage5));
title("5x5 Image");
radius=7; 
filter=ones(radius,radius)/(radius*radius);
filtered = imfilter(normImage, filter);
outputImage7 = filtered * 255;
subplot(2,2,4);
imshow(uint8(outputImage7));
title("7x7 Image");