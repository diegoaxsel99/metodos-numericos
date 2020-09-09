function [raiz,raiz_m] = posicion_falsa(y,xl,xu,pos)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    syms x

% metodo numerico de la posicion falsa toma dos punto y calcula xr apartir
% de la iterccion con el eje x

    i=1;
    fxl=eval(subs(y,x,xl));
    fxu=eval(subs(y,x,xu));

    xr(i)=xu-((fxu*(xl-xu))/(fxl-fxu));
    fxr=eval(subs(y,x,xr(i)));
    er=1;

    if(fxl*fxu<0)
    
        while(er>0.01)
            fxl=eval(subs(y,x,xl));
            fxu=eval(subs(y,x,xu));
            fxr=eval(subs(y,x,xr(i)));
        
            disp(xr(i));
        
            if(fxl*fxr<0)
                xu=xr(i);
            end
            if(fxl*fxr>0)
                xl=xr(i);
            end
        
            i=i+1;
            xr(i)=xu-((fxu*(xl-xu))/(fxl-fxu));
        
            er=abs((xr(i)-xr(i-1))/xr(i))*100;
        end
        
        if(pos==1)
            raiz="la raiz encontrada es "+num2str(xr(i));
            raiz_m=xr(i);
            
        else
            raiz="el optimo encontrada es "+num2str(xr(i));
            raiz_m=xr(i);
            
        end

    else
        
        if(pos==1)
            raiz="no se puede hallar la raiz con el metodo de la falsa posicion ";
            raiz_m=inf;
        else
            raiz="no se puede hallar el optimo con el metodo de la falsa posicion ";
            raiz_m=inf;
        end
    end

end

