I = imread('images/bone.tif');
B = brightness(I,-20);
h1 = histogram(I);
h2 = histogram(B);

subplot(2,2,1);imshow(I);hold on;
subplot(2,2,2);bar(h1);hold on;
subplot(2,2,3);imshow(B);hold on;
subplot(2,2,4);bar(h2);