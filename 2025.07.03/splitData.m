function [trainData,testData] = splitData(data)

[m,n] = size(data);

indices = randperm(m);
data = data(indices,:);

trainData = [];
testData = [];
    
nTrain = round(m*0.7);
trainData = data(1:nTrain,:);
testData = data(nTrain+1:m,:);

% [trainData,testData] = splitData(data);
%[Train,Test] = scaleData(trainData,testData);