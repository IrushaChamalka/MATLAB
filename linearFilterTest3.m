I = imread('images/Ranger.tif');

if length(size(I))==3
    I = rgb2gray(I);
end
IG = imnoise(I,'salt & pepper');

F = @(x) min(x(:));
Jmin = nlfilter(IG,[3,3],F);

F = @(x) median(x(:));
Jmed = nlfilter(IG,[3,3],F);

F = @(x) max(x(:));
Jmax = nlfilter(IG,[3,3],F);

subplot(2,2,1);imshow(I); hold on;
subplot(2,2,2);imshow(Jmin); hold on;
subplot(2,2,3);imshow(Jmed);hold on;
subplot(2,2,4);imshow(Jmax);