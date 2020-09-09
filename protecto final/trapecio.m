function [in] = trapecio(y,a,b,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    dx=(b-a)/n;
    in=eval(subs(y,a));

    for i=2 :n
        
        a = a + dx;
        in = in +2*eval(subs(y,a));

    end

    in = in +subs(y,a+dx);

    in = in *(dx/2);
    
    in = double(in);
    
end

