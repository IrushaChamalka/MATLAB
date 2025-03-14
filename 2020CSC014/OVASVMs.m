function accuracy = OVASVMs(data,N)

A = [1,3,5]; % generate Class numbers for NvsAll classifiers


% Training the Model
C =   [2^-5 2^-4 2^-3 2^-2 2^-1 2^0 2^1 2^2 2^3 2^4];
accuracy = [];

for i = 1:length(C)
    options=svmlopt(...); 
    predict=[];

    for class=1:N
        Model = [1,3,5];
        xtrain = invertData(:,end-1);
        ytrain = xtrain(end-1,:);
        ...          
        svmlwrite(xtrain+1,:);   
        svm_learn(ytrain);

        xtest = invertData(data);
        ytest = xtest(data);
        ...    
        svmlwrite(xtest);
        ...
        svm_classify();
        svmpredict = svmlread(...);
        ...
    end %endfor class
	
    accuracy(accuracy == predict) = WinnerTakesAll('verbosity'); 
end 

...
