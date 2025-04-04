I = imread('images/lowContrast.jpeg');
J = downSample(I);
K = downSample(J);
L = downSample(K);

subplot(3,2,1);imshow(I);hold on;
subplot(3,2,2);imshow(J);hold on;
subplot(3,2,3);imshow(K);hold on;
subplot(3,2,4);imshow(L);