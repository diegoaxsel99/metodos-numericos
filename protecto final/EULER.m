function [y ,t] = EULER(h,ti,tf,conx,func)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
   syms x
    y(1) = [conx];

    n = (tf -ti)/h;

    t(1) = ti;

    for i=1: n
        t(i+1) = t(i) + h;
        y(i+1) = y(i) + h*eval(subs(func,x,t(i)));
    end
    plot(t,double(y));
    xlim([0,tf])

end

