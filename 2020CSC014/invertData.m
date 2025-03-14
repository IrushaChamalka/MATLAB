function inv = invertData(data)

indices = [];

data(:,end-1) = 1;
data(end-1,:) = -1;

