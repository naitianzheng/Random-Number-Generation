A = zeros(1,10000);
B = 2*pi*ones(1,10000);
x = random('Uniform',A,B);
y = sin(x);1
C = 0.7*ones(1,10000);
p = [y; C];
z = min(p);
hist(z,20)