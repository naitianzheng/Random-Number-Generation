hist(x1,20);
[counts1,centers1]=hist(x1,20);
hold on;
l1=-4:0.01:4;
y1=pdf('Normal',l1,0,1);
y1=y1*1000*(centers1(2)-centers1(1));
plot(l1,y1,'-k');