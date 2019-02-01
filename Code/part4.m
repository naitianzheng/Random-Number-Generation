alpha = 2;
beta= 0; %assign values for alpha and beta
b = atan(beta*tan(pi*alpha/2))/alpha;
s = (1+beta^2*tan(pi*alpha/2)^2) ^ (1/(2*alpha)); %calculate the value of b and s
U = rand(10000,1);
U = U.*pi-pi/2; %generate U?U(-pi/2,pi/2)
V = exprnd(1,10000,1); %generate V?E(V|1)
A = s.*(sin(alpha.*(U+b))./cos(U).^ (1/alpha));
B = (cos(U-alpha.*(U+b))./V).^(1/alpha-1);
X = A.*B; %calculate X
histogram(X,20)
[counts1,centres1]=hist(X,20);
width=centres1(2)-centres1(1);
hold on
l = -6:0.01:6;
k = pdf('Normal',l,0,sqrt(2));
k=k.*10000*width;
plot(l,k,'-k')
%[counts,centres]=hist(X,9:2:201);

%c = 20000*sin(pi*alpha/2)*gamma(alpha+1)/pi
%est = (centres.^-(alpha+1)).*c;
%plot(centres,est,'-k')

