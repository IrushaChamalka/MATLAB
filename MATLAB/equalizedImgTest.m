I = imread('images/dog.jpeg');
h = histogram(I);
j = equalizedImg(I);

subplot(1,3,1);imshow(I);hold on;
subplot(1,3,2);bar(h);hold on;
subplot(1,3,3);bar(j);
