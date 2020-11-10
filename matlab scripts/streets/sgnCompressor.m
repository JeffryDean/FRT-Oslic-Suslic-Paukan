clear
close all

imgIn = [];
imgOut = [];
p = 0.7*255;
for i = 1:50
    imgIn = imread(" (" + num2str(i) + ").jpg");
    imgOut = rgb2gray(imgIn);
    imgOut((imgOut < p)) = 0;
    imgOut((imgOut >= p)) = 255;
    imgOut = imresize(imgOut, [20 64]);
    imwrite(imgOut, num2str(i) + ".png");
    imgOut = [];
    imgIn = [];
end
