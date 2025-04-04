%imerode Erosion (shrinking)
%imdilate Dilation (Growing)
%strel Structural element

%dilaton

BW1 = zeros(9,10);
BW1(4:6,4:7) = 1;

SE = strel('square',3);

%BW2 = imdilate(BW1,SE);
%BW2 = imdilate(BW1,SE);
%BW2 = imclose(BW1,SE);
%BW2 = imopen(BW1,SE);
BW2 = imdilate(BW1,SE);


subplot(1,2,1);imshow(BW1);hold on;
subplot(1,2,2);imshow(BW2);