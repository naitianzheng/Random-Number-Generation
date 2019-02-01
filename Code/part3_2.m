y=-log(1-x);
ksdensity(y,'width',0.1);
hold on;
l=0.1:0.001:10;
k=pdf('Exponential',l,1);
plot(l,k,'-k');
legend('Kernel density estimation','Exact exp pdf')