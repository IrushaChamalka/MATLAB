x = load('glass.txt');
[train,test]=splitData(x);
accuracy = nn(train,test);
disp(accuracy);