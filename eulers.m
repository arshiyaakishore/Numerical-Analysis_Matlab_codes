%Eulers
f=@(t,y)-y+2*cos(t);
y0=1;
t0=0;
h=0.2;
a=0;
b=1;
n=(b-a)/h;
for i = 1:n
    t1 = t0+h;
    y11 = y0+h*f(t0,y0);
    y1 = y0+(h*(f(t0,y0) + f(t1,y11)))/2;
    y0 = y1;
    t0 = t1;
end
y1