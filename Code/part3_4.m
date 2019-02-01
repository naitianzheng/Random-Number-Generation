m=ones(10000,1);
n=zeros(10000,1);
mu=ones(10000,1);
squerr=ones(10000,1);
kk=zeros(10000,1);


for i=1:10000
    m(i)=i;
    n(i)=y(i);
    mu(i)=sum(n);
    mu(i)=mu(i)/i;
    squerr(i)=mu(i)^2-1;
end
plot(m,squerr,'.b')
hold on;
plot(m,kk,'--k')
xlabel('number of samples');
ylabel('squared error');