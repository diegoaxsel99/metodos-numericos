function [int] = simpson(f,a,b,n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    syms x

    h=(b-a)/n;
    
    sumai=0;
    sumap=0;

    for i=1:2:n-1
        sumai=sumai+eval(subs(f,h*i+a));
    end
    for i=2:2:n-2
        sumap=sumap+eval(subs(f,h*i+a));
    end
    int=(h/3)*(eval(subs(f,a))+4*sumai+2*sumap+eval(subs(f,b)));
    
    end

