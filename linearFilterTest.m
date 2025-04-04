I = imread('images/bone.tif');
F = [2,3,2;3,4,3;2,3,2];%gaussian
J = linearFilter(I,F);

subplot(1,2,1);imshow(I);hold on;
subplot(1,2,2);imshow(J);