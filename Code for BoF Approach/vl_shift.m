I = imread('images/Lenna.jpg');

if length(size(I))==3
    I = rgb2gray(I);
end
 I = single(I);
 [frames,descrips] = vl_sift(I);