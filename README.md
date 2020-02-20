# Image Processing
> Gül Eda Aydemir - Contact with me! :)

> www.linkedin.com/in/gul-eda-aydemir

> guledaaydemir@gmail.com

CME 4412 Introduction to Image Processing 

 
###### 1. [Spatial Resolution](https://github.com/guledaaydemir/Image-Processing/tree/master/1.%20Spatial%20Resolution) 
 
 Using the image Rose1024.tif obtain the subsampled versions of the image as given given in the presentation, i.e. obtain the images of 512x512, 256x256, 128x128, 64x64 and 32x32 rose images.
 
![Spatial Resolution Result](https://github.com/guledaaydemir/Image-Processing/blob/master/1.%20Spatial%20Resolution/Spatial_Resolution_Result.PNG?raw=true)
 
###### 2. [Tresholding](https://github.com/guledaaydemir/Image-Processing/tree/master/2.%20Tresholding)

Perform thresholding on moon.bmp image to obtain the corresponding result in the presentation.

![Tresholding Result](https://github.com/guledaaydemir/Image-Processing/blob/master/2.%20Tresholding/Tresholding_Result.PNG?raw=true)

###### 3. [Intensity Level Resolution](https://github.com/guledaaydemir/Image-Processing/tree/master/3.%20Intensity%20Level%20Resolution) 

Use Ctskull-256.tif image to obtain different quantization levels of the image starting from 8 bits (original skull image), 7 bits, 6 bits, 5bits, 4 bits, 3 bits, 2 bits, and single bit images.

![Intensity Level Resolution Result](https://github.com/guledaaydemir/Image-Processing/blob/master/3.%20Intensity%20Level%20Resolution/Intensity_Level_Resolution_Result.PNG?raw=true)

###### 4. [Power Law Transformation](https://github.com/guledaaydemir/Image-Processing/tree/master/4.%20Power%20Law%20Transformation) 

Use power law transformation with c=1 and γ = 0.6, 0.4, and 0.3 to obtain resulting images on fractured_spine.tif image

![Power Law Transformation](https://github.com/guledaaydemir/Image-Processing/blob/master/4.%20Power%20Law%20Transformation/Power_Law_Transformation_Result.PNG?raw=true)

###### 5. [Piecewise Linear Transformation Functions](https://github.com/guledaaydemir/Image-Processing/tree/master/5.%20Piecewise%20Linear%20Transformation)

Write a Matlab function output = stretch(input, T1, T2) that will perform the pixel transformation shown in figure given below.

![Stretch Transformation Graph](https://github.com/guledaaydemir/Image-Processing/blob/master/5.%20Piecewise%20Linear%20Transformation/Stretch_Transformation_Graph.png?raw=true)
 
Use your stretch function to increase the contrast of the kids.tif image. Choose T1 and T2 so that the output image has a histogram which spans the full range of values from 0 to 255. Display the output image and its histogram. 

<img src="https://github.com/guledaaydemir/Image-Processing/blob/master/5.%20Piecewise%20Linear%20Transformation/Original_Histogram.png?raw=true" width="300" height="300"><img src="https://github.com/guledaaydemir/Image-Processing/blob/master/5.%20Piecewise%20Linear%20Transformation/Result_Histogram.png?raw=true" width="300" height="300">

###### 6. [Histogram Equalization](https://github.com/guledaaydemir/Image-Processing/tree/master/6.%20Histogram%20Equalization)

Write a Matlab function Y=equalize(X) that equalizes the histogram of a given image X. Apply your equalize function to different images.Compare the histograms of equalized and original images.

<img src="https://github.com/guledaaydemir/Image-Processing/blob/master/6.%20Histogram%20Equalization/Kids_Histogram_Equalized_Result.png" width="300" height="300"><img src="https://github.com/guledaaydemir/Image-Processing/blob/master/6.%20Histogram%20Equalization/Clown_Histogram_Equalized_Result.png" width="300" height="300">

Compare your function with the built-in histogram equalization function of MATLAB. 

<img src="https://github.com/guledaaydemir/Image-Processing/blob/master/6.%20Histogram%20Equalization/Histogram_Equalization_Compare_Result.PNG" width="300" height="300">

###### 7. [Histogram Matching](https://github.com/guledaaydemir/Image-Processing/tree/master/7.%20Histogram%20Matching)

Write a Matlab function Y=match(X,Z) that matches the histogram of a given image X to the histogram of a reference image Z. You can use your own equalize() function in your implementation.(*imhist used instead)

![Histogram Matching](https://github.com/guledaaydemir/Image-Processing/blob/master/7.%20Histogram%20Matching/Histogram_Matching_Result.png?raw=true)

###### 7. [Combining Histogram Equalization and Matching with GUI](https://github.com/guledaaydemir/Image-Processing/tree/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI)

Try to embed these two functions ([equalize](https://github.com/guledaaydemir/Image-Processing/blob/master/6.%20Histogram%20Equalization/equalize.m) and [match](https://github.com/guledaaydemir/Image-Processing/blob/master/7.%20Histogram%20Matching/match.m)) in a Matlab GUI.

-	Step 1. Select a function (Histogram Equalize)
![Step 1](https://github.com/guledaaydemir/Image-Processing/blob/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI/step_1.png?raw=true)

-	Step 2. Browse an image – Show result
![Step 2](https://github.com/guledaaydemir/Image-Processing/blob/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI/step_2.png?raw=true)

-	Step 3. Select a function (Histogram Matching)
![Step 3](https://github.com/guledaaydemir/Image-Processing/blob/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI/step_3.png?raw=true)

-	Step 4. Browse an image
![Step 4](https://github.com/guledaaydemir/Image-Processing/blob/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI/step_4.png?raw=true)

-	Step 5. Browse a referance image  - Show Result
![Step 5](https://github.com/guledaaydemir/Image-Processing/blob/master/8.%20Combining%20Histogram%20Equalization%20and%20Matching%20with%20GUI/step_5.png?raw=true)
Special thanks to, [Özlem Öztürk](http://debis.deu.edu.tr/akademik/index.php?cat=3&akod=20013757). 
