% Bisection Method
clear all;
close all;
clc;
strfcn = 'x^3+x^2+x-1';
f = inline(strfcn);
a = -1;
b = 1;
flag = true;
if f(a) * f(b) < 0
    disp 'Bisection process';
    i = 1;
    while(flag)
        m = (a+b)/2;
        [i m f(m)]
        if f(m) == 0 ||  abs(f(m)) < 0.000000000001
            disp 'found Root';
            flag = false;
        else
            if f(a)*f(m) < 0
                b = m;
            else
                a = m;
            end
        end
        i = i+1;
    end
    [i m f(m)]
elseif f(a)*f(b) == 0
    disp 'Root is located at the boundary';
else
    disp ' Root could not be detected by bisection';
end

