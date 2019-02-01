y = 5*x+10;
hist(y,20);
hold on;
[counts,centres] = hist(y,20);
width = centres(2)-centres(1);
l=-10:0.01:30;
yl=pdf('Normal',l,10,5);
yl=10000*width*yl;
plot(l,yl,'-k');