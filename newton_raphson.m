
clear all;
close all;
clc;
f = inline('(x^3)+(x^2)+x-1');
df = inline('3*(x^2)+(2*x)+1');
x0 = 5;
delta = 0.00000001;
flag = true;
n = 0;
format long;
while(flag)
    n = n+1;
    x1 = x0 - f(x0)/df(x0);
    if (f(x1) == 0) || (abs(x1 -x0) < delta)
        flag = false;
    else
        x0 = x1;
    end
end
[n   x1 f(x1)]
