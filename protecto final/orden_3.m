function [y,t] = orden_3(h,ti,tf,conx)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    syms x
    
    y(1) = [conx];

    n = (tf -ti)/h;

    t(1) = ti;

    for i=1: n
        t(i+1) = t(i) + h;
%         k1 = eval(subs(func,x,t(i)));
%         k2 = eval(subs(func,x,t(i) + (1/2)*h));
%         k3 = eval(subs(func,x,t(i) + h));
        
        k1 = feval(@ecu,t(i),y(i));
        k2 = feval(@ecu,t(i) + (1/2)*h, y(i) + (1/2)*k1*h);
        k3 = feval(@ecu,t(i) + h, y(i) - h*k1 +2*k2*h);
        y(i+1)= y(i)+(h/6)*(k1 + 4*k2 + k3 );
    end
    
    plot(t,double(y));
    xlim([0,tf])

end

