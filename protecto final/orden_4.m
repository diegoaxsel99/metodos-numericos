function [y,t] = orden_4(h,ti,tf,conx,f)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    syms x

    y(1) = [conx];

    n = (tf -ti)/h;

    t(1) = ti;

    for i=1: n
        t(i+1) = t(i) + h;
        
        k1 = eval(subs(f,x,t(i)));
        k2 = eval(subs(f,x,t(i) + (1/2)*h));
        k3 = eval(subs(f,x,t(i) + (1/2)*h));
        k4 = eval(subs(f,x,t(i) + h));
        
        
%         k1 = feval(@ecu,t(i),y(i));
%         k2 = feval(@ecu,t(i) + (1/2)*h, y(i) + (1/2)*k1*h);
%         k3 = feval(@ecu,t(i) + (1/2)*h, y(i) + (1/2)*k2*h);
%         k4 = feval(@ecu,t(i) + h, y(i) + k3*h);
        y(i+1)= y(i)+(h/6)*(k1 + 2*k2 + 2*k3 +k4 );
    end
    
    plot(t,double(y));
    xlim([0 tf])
    

end


