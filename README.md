# Image Processing
 CME 4412 Introduction to Image Processing 
 
 
**Descriptions of the codes.**
 
###### --1. Spatial Resolution --
 
 Using the image Rose1024.tif obtain the subsampled versions of the image as given given in the presentation, i.e. obtain the images of 512x512, 256x256, 128x128, 64x64 and 32x32 rose images.
 
###### --2. Tresholding --

Perform thresholding on moon.bmp image to obtain the corresponding result in the presentation.

###### --3. Intensity Level Resolution -- 

Use Ctskull-256.tif image to obtain different quantization levels of the image starting from 8 bits (original skull image), 7 bits, 6 bits, 5bits, 4 bits, 3 bits, 2 bits, and single bit images.

###### --4. Power Law Transformation --

Use power law transformation with c=1 and γ = 0.6, 0.4, and 0.3 to obtain resulting images on fractured_spine.tif image

###### --5. Piecewise Linear Transformation Functions--

Write a Matlab function output = stretch(input, T1, T2) that will perform the pixel transformation shown in figure given below.

**image**
 
Use your stretch function to increase the contrast of the kids.tif image. Choose T1 and T2 so that the output image has a histogram which spans the full range of values from 0 to 255. Display the output image and its histogram. 

Special thanks to, Özlem Öztürk. 
