
clc;
clear;
close all;
% display as an image
% imshow(imageData);

% save as an image
% imwrite(imageData,'test.png');

% load an image
newImageData = imread('E:\OneDrive - University of Adelaide\matlab\test.jpg');

% display as an image
imshow(newImageData);

% print information about what is stored in the variable
whos newImageData;