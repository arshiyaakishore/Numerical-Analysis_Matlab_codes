%NEWTON
clc;
clear all;
f=@(x)cos(x)-x*exp(x);
syms x;
n=10;
h=0.1;
a=-10;
b=10;
x0=0.5;
g=diff(f(x));
for i=1:n
    x1=x0-f(x0)/subs(g,x0);
    if abs(x1-x0)<0.00001
        x1;
        break
    else
        x0=x1;
    end
end
disp(x1)