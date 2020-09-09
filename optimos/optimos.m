%Metodos numericos Diego Axsel Garcia Sierra
%Ingenieria Biomedica- Ingenieria Electronica
%% metodo de la biseccion

clear,clc;
syms x 
disp('Se llevara a cabo el metodo de biseccion');
f=input('ingrese una funcion con respecto a x ');
f=diff(f);

xl=input('ingrese el limite inferior ');
xu=input('ingrese el limite superior ');

fxl=eval(subs(f,x,xl));%valor de la funcion en el limite inferior
fxu=eval(subs(f,x,xu));%valor de la funcion en el limite superior
i=1;%numero de iteraciones que se llevan a cabo
er=100;%error relativo 
xr(i)=mean([xl xu]);% valor medio del intervalo

if(fxl*fxu<0)%verificar que existe un cambio de signo entre los dos limites
    while(er>0.01)%condicion de salida 
        
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
    
    raiz=" el optimo encontrado es encontrado";
    disp(xr(i))
else
    raiz="no se puede hallar la raiz con el metodo de la diseccion ";
end

disp(raiz)


%% metodo falsa posicion
clc,clear;

syms x y

f=input('ingrese la funcion f(x)');
xl=input('ingrese el intervalo inferior');
xu=input('ingrese el intervalo superior');
f=diff(f);


fxl=subs(f,x,xl);
fxu=subs(f,x,xu);

i=1;
xr(i)=xu-(fxu*(xl-xu))/(fxl-fxu);
er=100;

if(fxl*fxu<0)
    
    while(er>0.01)
        
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
    
    disp('el optimo es ');
    disp(xr(i));
    
else
    disp('metodo incompatible');
end

%% metodo del punto fijo

%%Diego Axsel Garcia sierra Metodos numericos
% metodo de la iteracion de punto fijo
clear
clc 
close all

syms x 

f_x=input(' ingrese la funcion que quiere encontrar el optimos : ');
xi=input('ingrese el valor inicial para encontrar el optimos ');

f_x=diff(f_x);

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
    fprintf('el sistema diverge \n')
else
    fprintf('la optimo encontrados ')
    disp(xr(i))
end
 