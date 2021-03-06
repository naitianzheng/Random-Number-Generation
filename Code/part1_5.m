hist(x0,20);
[counts0,centers0]=hist(x0,20);
hold on;
l0=0.025:0.05:0.975;
y0=pdf('Uniform',l0,0,1);
y0=y0*10000*(centers0(2)-centers0(1));
std0=sqrt(500*0.95);
std0=std0*ones(1,20);
plot(l0,y0,'-k');
errorbar(centers0,y0,3*std0,'-k');