function accuracy = WinnerTakesAll(data)

[m,n] = size(data);
[maxp,classp] = max((:,1),[],2);
accuracy = sum(maxp == classp)/m;