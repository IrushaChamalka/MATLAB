function accuracy = OVASVNs(data,N)

[trainData,testData] = splitData(data);
%[trainData,testData] = scaleData(trainData,testData);
[trainData,valData] = slpitData(trainData);

a=1:N;

c = [2^-10 : 2^10]

accuracy = [];

for i = 1:length(c)
    options = svmlopt('c',c(i),'Verbosity',0);
    predict=[];
    
    for class=1:N
        Model = [int2str(A(class)),'VsAll'];
        x = invertData(trainData,A(class));
        y = x(:,end);
        x(:,end) = [];
        svmlwrite('SVMLTrain',x,y);
        svm_learn(options,'SVMLTrain',Model);
        
        xval = invertData(valData,A(class));
        yval = xval(:,end);
        xval(:,end) = [];
        svmlwrite('SVMLVal',xval,yval);
        
        ModelOutPut = ['OutPut',int@str(A(class)), 'VsAll'];
        svm_classify(options,'SVMLVal',Model,ModelOutput);
        svmpredict = svmread(ModelOutput);
        predict = [predict,svmpredict];
    end
    
    accuracy(I) = WinnerTakesAll(valData,predict,A);
end

[elt,ind] = max(accuracy);
cOpt = C(ind);

        
        