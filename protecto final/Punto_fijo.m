function [raiz,raiz_m] = Punto_fijo(f_x,xi,pos)

    syms x 

    er=100;
    i=1;
    xr(1)=xi;

    g_x=simplify(f_x+x);
    converge=true;
    while(er>0.01)

        xr(i+1)=subs(g_x,x,xr(i));

        i=i+1;
        er=abs((xr(i)-xr(i-1))/xr(i))*100;

        if((i>100)||(er==inf)||(isnan(er)))
            converge=false;
            break;
        end
    end

    if(~converge)
        raiz="el sistema diverge";
        raiz_m=inf;
    else
        if(pos==1)
            raiz="la raiz de la ecuacion es "+num2str(xr(i));
            raiz_m=xr(i);
        else
            raiz="el optimo de la ecuacion es "+num2str(xr(i));
            raiz_m=xr(i);
            
        end
    end

end

