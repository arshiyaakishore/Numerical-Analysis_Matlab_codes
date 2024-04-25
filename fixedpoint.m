%fixed point
clc;
clear all;
f=@(x)x^3+4*x^2-10;
g=@(x)x-x^3-4*x^2+10;
a=1;
b=2;
p0=1.5;
n=100;
i=1;
while(i<=n)
    p=g(p0);
    if(abs(p-p0)<0.0001)
        p;
        break
    else
        i=i+1;
        p0=p;
    end
end
p