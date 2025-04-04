I = imread('images/crab.tif');
h1 = histogram(I);
H = cumulativeHist(h1);

subplot(2,2,1);imshow(I);hold on;
subplot(2,2,2);bar(h1);hold on;
subplot(2,2,3);bar(H);