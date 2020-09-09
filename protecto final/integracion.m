function [gx] = integracion (fx,n,b,con_ini)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    syms x

    h = b/n;
    t = 0:h:b;
    
    gx(1) = con_ini;
    
    for i = 1:length(t) -1
        gx(i+1) = gx(i) + h*subs(fx,x,t(i));
        
    end
    hold on
    plot(t,gx,'g');
    xlim([0,b]);
    
    
end

