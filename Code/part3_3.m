y=-log(1-x);
m=ones(10000,1);
for i=1:1000
    m(i)=y(i)^2-1;
end
var=sum(m);
var =var/10000