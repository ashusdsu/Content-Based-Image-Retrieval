clear all;
%this is to find out the BVLC of the image
clc;
Im = imread('image1.jpg');
Im = rgb2gray(Im);
I = im2double(Im);

s = size(I);
I = padarray( I, [1 1]);
w=1;
c = 2;
bs=2;
k=0;
sx = 0;
m=0;
