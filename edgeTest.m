I = imread('images/jpn.jpeg');

if length(size(I))==3
    I = rgb2gray(I);
end

p = edge(I,'prewitt');

s = edge(I,'sobel');

r = edge(I,'roberts');

subplot(2,2,1);imshow(I); hold on;
subplot(2,2,2);imshow(p); hold on;
subplot(2,2,3);imshow(s);hold on;
subplot(2,2,4);imshow(r);