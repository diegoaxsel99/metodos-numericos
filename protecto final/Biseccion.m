function [raiz,raiz_num] = Biseccion(f,sup, inf,op)
    
    syms x
    
    finf=eval(subs(f,x,inf));%valor de la funcion en el limite inferior
    fsup=eval(subs(f,x,sup));%valor de la funcion en el limite superior
    int=1;%numero de iteraciones que se llevan a cabo
    er=100;%error relativo 
    xr(int)=mean([inf sup]);% valor medio del intervalo

    if(finf*fsup<0)%verificar que existe un cambio de signo entre los dos limites
        while(er>0.01)%condicion de salida 
            finf=eval(subs(f,x,inf));
            fsup=eval(subs(f,x,sup));
            fxr=eval(subs(f,x,xr(int)));
        
            if(finf*fxr<0)
                sup=xr(int);
            elseif(finf*fxr>0)
                inf=xr(int);
            end
            int=int+1;
            xr(int)=mean([inf sup]);
            er=abs((xr(int)-xr(int-1))/xr(int))*100;
        end
        if (op==1)
            
            raiz="la raiz encontrada es "+num2str(xr(int));
            raiz_num=xr(int);
        else
            
            raiz="el optimo encontrado es "+num2str(xr(int));
            raiz_num=xr(int);
        end
        
    else
        if(op==1)
            raiz="no se puede hallar la raiz con el metodo de la diseccion ";
            raiz_num=inf;
        else
            raiz="no se puede hallar un optimo por medio del metodo de la diseccion ";
            raiz_num=inf;
        end
    end
    
end

