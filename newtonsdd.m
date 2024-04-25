clc;
clear all;

x=[0,1.5,2.0,2.5];
f=[2.7183,4.4817,7.3891,12.1825];
p=2.25;
sum=0;
n=length(x);
dd=zeros(n,n);
dd(:,1)=f';
for j=2:n
    for i=j:n
        dd(i,j)=(dd(i,j-1)-dd(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
dd
for i=1:n
    l(i)=1;
    for j=1:n-1
        l(i) = l(i)*(p-x(j));
    end
    sum = sum+l(i)*dd(i,i);
end
sum