function accuracy = OVASVNs(data,N)

[trainData,testData] = splitData(data);
%[trainData,testData] = scaleData(trainData,testData);
[trainData,valData] = slpitData(trainData);

a=1:N;

c = [2^-10 to 2^10]

accuracy = []