I= imread('images/O.jpg');
if length(size(I))==3
    I=rgb2gray(I);
end

LoG = edge(I,'log');
Canny = edge(I,'canny');

subplot(2,3,1);imshow(I);title('Image');hold on;
subplot(2,3,2);imshow(LoG);title('LoG');hold on;
subplot(2,3,3);imshow(Canny);title('Canny');