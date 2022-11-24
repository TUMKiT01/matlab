
clear all;
close all;
clc;
f = inline('(x^3)+(x^2)+x-1');
x0 = 5;
x1 = 2.7;
delta = 0.00000001;
flag = true;
n = 0;
while(flag)
    n = n+1;
    x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
    if (f(x2) == 0) || (abs(x2 - x1)< delta)
        flag = false;
    else
        x0 = x1;
        x1 = x2;
    end
end
[n   x2 f(x2)]
