function I = autoContrast(I)
if length(size(I))==3
    I = rgb2gray(I);
end

[row,cols] = size(I);
k=256;

amin=0;
amax=k-1;

alow=min(min(I));
ahigh=max(max(I));

for i = 1:row
    for j = 1:cols
        a = I(i,j);
        I(i,j) = amin + (a-alow)*((amax-amin)/(ahigh-alow));
    end
end
