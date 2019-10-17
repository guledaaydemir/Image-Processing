%Gül Eda Aydemir - Piecewise Linear Funtion - Stretch to 'kids.tif' image.
%Download the 'kids.tif' to your current folder.
%03/2019

% How to run with Command Window.
%-------------------------------
% input = imread('kids.tif');
% I = stretch(input,70,180,0,255);
% imagesc(I)
% colormap gray

function output = stretch(input,x1,x2,y1,y2)
m1=y1/x1;
m2=(y2-y1)/(x2-x1);
m3=(255-y2)/(255-x2);
output=input;
for i=1:size(input,1)
    for j=1:size(input,2)
        if input(i,j)<x1
            output(i,j)=m1*input(i,j);
        elseif input(i,j)>=x1 && input(i,j)<x2
            output(i,j)=m2*(input(i,j)-x1)+y1;
        else
            output(i,j)=m3*(input(i,j)-x2)+y2;
        end
    end
end
end