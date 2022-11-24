clear all;
close all;
clc;
str1='(x-2)^4';
str2='4*(x-2)^3';
f = inline(str1);
df = inline(str2);
p =zeros(1,5);
p(1)=2.1;
for j =2:5
    p(j)=p(j-1)-(f(p(j-1))/df(p(j-1)));
    [p]
end