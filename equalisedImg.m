function I = equalisedImg(I)

if length(size(I))==3
    I = rgb2gray(I);
end

K = 256;
[M,N] = size(I);
h = histogram(I);
H = cumulativeHistogram(h);

for i = 1:M
    for j = 1:N
        a = I(i,j);
        I(i,j) = floor((H(a)*(k-1))/(M*N));
    end
end


