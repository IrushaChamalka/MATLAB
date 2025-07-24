function Data = invertData(Data,class)

indices = (Data(:,end)==class);
Data(indices,end)=1;

ind = ~indices;
Data(ind,end)=-1;