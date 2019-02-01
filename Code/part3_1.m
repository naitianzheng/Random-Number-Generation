
y=-log(1-x);
hist(y,20);
[counts,centres]=hist(y,20)
width=centres(2)-centres(1);
hold on;
l=0.1:0.001:10;
k=pdf('Exponential',l,1);
k=k.*10000*width;
plot(l,k,'-k');
