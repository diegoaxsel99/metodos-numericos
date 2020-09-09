%% metodo de la biseccion

clear,clc;
syms x 
disp('Se llevara a cabo el metodo de biseccion');
f=2*(x^4)+0.4*(x^3)-13.1*(x^2)-16.6*x+5.1;
xl=2;
xu=4;

fxl=eval(subs(f,x,xl));%valor de la funcion en el limite inferior
fxu=eval(subs(f,x,xu));%valor de la funcion en el limite superior
i=1;%numero de iteraciones que se llevan a cabo
er=100;%error relativo 
xr(i)=mean([xl xu]);% valor medio del intervalo

if(fxl*fxu<0)%verificar que existe un cambio de signo entre los dos limites
    while(er>0.1)%condicion de salida 
        
        fxl=eval(subs(f,x,xl));
        fxu=eval(subs(f,x,xu));
        fxr=eval(subs(f,x,xr(i)));
        
        if(fxl*fxr<0)
            xu=xr(i);
        elseif(fxl*fxr>0)
            xl=xr(i);
        end
        i=i+1;
        xr(i)=mean([xl xu]);
        er=abs((xr(i)-xr(i-1))/xr(i))*100;
    end
    
    disp("la raiz encontrada es:")
    disp(xr(i))
else
    raiz="no se puede hallar la raiz con el metodo de la diseccion ";
end
i1=i;
%% metodo de la falsa posicion

disp('se llevara a cabo el metodo de la falsa posicion')
xl=2;
xu=4;

fxl=subs(f,x,xl);
fxu=subs(f,x,xu);

i=1;
xr(i)=xu-(fxu*(xl-xu))/(fxl-fxu);
er=100;

if(fxl*fxu<0)
    
    while(er>0.1)
        
        fxl=subs(f,x,xl);
        fxu=subs(f,x,xu);
        fxr=subs(f,x,xr);
        
        if(fxl*fxr<0)
            xu=xr(i);
        end
        if(fxl*fxr>0)
            xl=xr(i);
        end
        
        i=i+1;
        xr(i)=xu-(fxu*(xl-xu))/(fxl-fxu);
        
        er=abs((xr(i)-xr(i-1))/xr(i))*100;
        
    end
    
    disp('la raiz es ');
    disp(xr(i));
    
else
    disp('metodo incompatible');
end

i2=i;











