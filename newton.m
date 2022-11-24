clear all;
close all;
clc;
f = inline('x^3+x^2+x-1');
df = inline('(3*x^2)+(2*x)+1');
p0 = 8;
delta = 0.000001;
flag = true;
n = 0;
%format long;
while (flag)
    n = n+1;
    p1 = p0-(f(p0)/df(p0));
    if f(p1)==0 || abs(p1-p0) < delta
        flag = false;
        disp 'root found';
    else
        p0 = p1;
    end
    [n p1 f(p1)]
end

