%secant 

f=@(x)x^2-17;
n=10;
h=0.1;
for i=-n:h:n
    if(f(i)*f(i+h)<0)
         a=i;
        b=i+h;
    end
end
x0=a;
x1=b;
for i=1:n
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x0);
    if abs(x1-x0)<0.00001
        x2;
        break
    else
        x0=x1;
        x1=x2;
    end
end
x2