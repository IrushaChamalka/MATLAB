function (trData,teData)  = splitData(data)

[m,n] = size(data);

trData = [];
teData = [];
indices = [];

round = roundperm(m);
trData = round(m*0.7);
teData = round(m*0.3);

