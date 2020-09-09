function [raiz,raiz_m] = secante(f_x,xi,xo,pos)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    syms x


    er=100;
    ed=1;
    xr(1)=xi;
    xr(2)=xo;
    eval1=subs(f_x,x,xi);
    eval2=subs(f_x,x,xo);
    i=2;
    converge=true;

    while((er>0.01) &&(ed>0.0001))
        
        eval1=subs(f_x,x,xr(i-1));
        eval2=subs(f_x,x,xr(i));
        
        xr(i+1)=xr(i)-((xr(i)-xr(i-1))/(eval2-eval1))*eval2;
        i=i+1;

        er=abs((xr(i)-xr(i-1))/xr(i))*100;

        ed=sqrt((xr(i)-xr(i-1))^2);

        if((er==inf)||(isnan(er)))
            converge=false;
            break;
        end
    end

    if(~converge)
        raiz="el sistema diverge";
        raiz_m=inf;
    else
        if(pos==1)
            raiz="la raiz del sistema es "+num2str(xr(i));
            raiz_m=xr(i);
        else
            raiz="el optimo del sistema es "+num2str(xr(i));
            raiz_m=xr(i);
        end
    end
end


