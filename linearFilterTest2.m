I = imread('images/bone.tif');
G = [2,3,2;3,4,3;2,3,2];%gaussian
B=ones(3,3);
IG = linearFilter(I,G);
IB = linearFilter(I,B);

subplot(1,3,1);imshow(I);hold on;
subplot(1,3,2);imshow(IG);hold on;
subplot(1,3,3);imshow(IB);