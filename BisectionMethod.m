clc;clear all;
%%%BISECTION METHOD%%%
f=@(x) x.^3-7.14*x.^2+11.84*x-5.7;
x=0:0.1:6;                        
a=4.2;     %%%NEGATIVE f(a)%%%
b=5.12;    %%%POSITIVE f(b)%%%
c=(a+b)/2;
tol=1e-6;
itr=0;
tic;
while abs(f(c))>=tol
    if f(c)<0
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
   itr=itr+1;
end
toc;
itr       %(gives total number of iterations that were required)
rb=c