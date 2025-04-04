I = imread('images/lowContrast.jpeg');
h1 = histogram(I);
J = autoContrast(I);
h2 = histogram(J);

subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2);bar(h1);hold on;
subplot(2,2,3);imshow(J);hold on;
subplot(2,2,4);bar(h2);