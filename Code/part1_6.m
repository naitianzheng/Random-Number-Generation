[counts,centres]=hist(x4,20);
w=centres(2)-centres(1);
width=w;
n21=centres(20)+w/2;
w=w/2*ones(1,20);
n=centres-w;
n=[n n21];
mean=zeros(1,20);
std=zeros(1,20);
for i=1:20
mean(i)=normcdf(n(i+1))-normcdf(n(i));
std(i)=mean(i)*(1-mean(i));
end
mean=10000*mean;
std=10000*std;
hist(x4,20);
hold on;
plot(centres,mean,'-k');
errorbar(centres,mean,3*std,'-k');



