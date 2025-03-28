function I = linearFilter(I,F)
if(length(size(I)) == 3)
    I = rgb2gray(I);
end

[M,N]=size(I);
[k,l]=size(F);
K=(k-1)/2;
L=(l-1)/2;
J=I;

for x=(k+1):(M-K)
    for y=(L+1):(N-L)
        s=0;
        for j=-L:L
            p=J(x+i,y+j)*F(K+i+1,L+j+1);
            s