function bdip = bdip(image)
%input : an image from which sketch feature can be extracted.
%output : an image of valleys and edges to local intensities 
fun = @(block_struct) imresize(block_struct.data,0.15);
I = imread('pears.png');
I2 = blockproc(I,[100 100],fun);
figure;
imshow(I);
figure;
imshow(I2);

