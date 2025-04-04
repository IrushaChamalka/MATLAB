function I = downSample(I)
if length(size(I))==3
    I = rgb2gray(I);
end

[row,cols] = size(I);

I = I(1:2:row,1:2:cols);