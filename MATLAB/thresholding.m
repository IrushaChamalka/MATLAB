function I = thresholding(I,thresh)
if length(size(I))==3
    I = rgb2gray(I);
end
[row,cols]=size(I);

for x=1:row
    for y=1:cols
        a = I(x,y);
        
        if (a <= thresh)
            a=0;
        end
        if (a >= thresh)
            a=255;
        end
        
        I(x,y) = a;
    end
end
