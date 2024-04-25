%trapezoidal
clc;
clear all;
f=@(x)((cos(x))^2);
n=4;
a=-0.25;
b=0.25;
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
ans=sum*(h/2);
ans