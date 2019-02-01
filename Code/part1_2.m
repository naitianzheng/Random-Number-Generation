hist(x2,20);
[counts1,centers1]=hist(x2,20);
hold on;
l2=0:0.01:1;
y2=pdf('Uniform',l2,0,1);
y2=y2*1000*(centers1(2)-centers1(1));
plot(l2,y2,'-k');