ksdensity(x1,'width',1);
[counts1,centers1]=hist(x1,20);
hold on;
l1=-4:0.01:4;
y1=pdf('Normal',l1,0,1);
plot(l1,y1,'-k');
legend('Kernel density estimation','Exact Gaussian pdf','Location','northwest');