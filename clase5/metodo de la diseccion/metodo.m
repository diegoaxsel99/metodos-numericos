clear,clc;
syms x 
disp('Se llevara a cabo el metodo de biseccion');
f=input('ingrese una funcion con respecto a x');

inf=input('ingrese el limite inferior');
sup=input('ingrese el limite superior');

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
    raiz="la raiz encontrada es "+num2str(xr(int));
else
    raiz="no se puede hallar la raiz con el metodo de la diseccion ";
end