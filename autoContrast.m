function I = autoContrast(I)
if length(size(I)) == 3
    I = rgb2gray(I);
end
[r,c]=size(I);
K=256;

amin = 0;
amax = K-1;
alow = min(min(I));
ahigh = max(max(I));

for x=1:r
    for y=1:c
        a=I(x,y);
        I(x,y)=amin + (a-alow)*((amax-amin)/(ahigh-alow));
        
    end
end






