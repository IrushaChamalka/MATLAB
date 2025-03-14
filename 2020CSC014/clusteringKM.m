rng(1); 
n = 100;


X1 =  [randn(n, 2) + 2]; 
X2 =  [randn(n, 2) - 2]; 
X3 =  [randn(n, 2) + [-4, 4]];  

X = [X1;X2;X3];

K = 3;
[idx, C] = kmeans(X,K);

figure;
gscatter(X(:,1), X(:,2), idx);
hold on;

plot(C(:,1), C(:,2),

xlabel('Feature 1');
ylabel('Feature 2');
hold off;