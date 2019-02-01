ksdensity(x2,'width',1);
axis([-3 4 0 1.1]);
[counts1,centers1]=hist(x2,20);
hold on;
l2=0:0.01:1;
y1=pdf('Uniform',l2,0,1);
plot(l2,y1,'-k');
legend('Kernel density estimation','Exact pdf','Location','south');