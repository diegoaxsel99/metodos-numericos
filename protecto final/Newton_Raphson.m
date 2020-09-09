function [raiz,raiz_m] = Newton_Raphson(f_x,xi,pos)

    syms x


    er=100;
    ed=1;
    xr(1)=xi;
    i=1;
    g_x=diff(f_x,x);
    converge=true;

    while((er>0.01) &&(ed>0.0001))
        evalfx=subs(f_x,x,xr(i));
        evalgx=subs(g_x,x,xr(i));

        xr(i+1)=xr(i)-evalfx/evalgx;
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

