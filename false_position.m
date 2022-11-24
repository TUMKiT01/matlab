clear all;
close all;
clc;
str = 'x^3+x^2+x-1';
f = inline(str);
a = -1;
b = 1;
acc = 0.00000000001;
format long;
if f(a)*f(b) < 0
    flag = 1;
    n = 0;
    while(flag)
        n = n+1;
        m = b - (f(b)*(b-a))/(f(b)-f(a));
        if f(m) == 0 || abs(f(m)) < acc 
            disp ' found root';
            flag = 0;
        else
            if f(a)*f(m) > 0
                a = m;
            else
                b = m;
            end
        end
    end
    [n  m  f(m)]
elseif f(a)*f(b) == 0
    disp 'found root at boundary';
else
    disp 'Bisection could not detect a root';
end

