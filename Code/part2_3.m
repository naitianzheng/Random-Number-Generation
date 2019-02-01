A = zeros(10000,1);
B = 2*pi*ones(10000,1);
x = random('Uniform',A,B);
y = sin(x);
z = zeros(10000,1)
for j = 1:10000
    z(i) = min(0.7,y(i));
end
hist(z,20)
hold on
[counts, centres]=hist(z,20);
width = centres(2)-centres(1);
l= -0.997:0.001:0.997;
C = 2*pi*cos(asin(l));
k = ones(1,1995);
for i=1:1995
    k(i)=1/C(i);
    k(i);
end
k=k.*20000*width;
plot(l,k,'-k');