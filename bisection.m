%bisection
clc;
clear all;
f=@(x)x^2-29;
tol=0.001;
%ivt
h=1;
N=10;
for i=-N:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
       % [a,b];
    end
end
%a=5;
%b=6;
while abs(a-b)>tol;
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
else
    a=c;
    end
end
disp(c)