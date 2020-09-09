x=-10:0.01:10;
y=x.*(x.^3+8);
plot(x,y);
xlim([-10,10])
ylim([-10 10000])
grid on
%%
clear,clc;

syms x;

disp('algoritmo diseccion')

%B=input('ingrese la funcion para hallar sus raices en funcion de x ');
B=x^3-x;
xl=input('ingrese el intervalo inferior');
xu=input('ingrese el intervalo superior');


F1=eval(subs(B,x,xl));
F2=eval(subs(B,x,xu));
ite=1;
xr(ite)=mean([xl xu]);

er=100;

if(F1*F2<0)
    while(er>0.1)
        if( eval(subs(B,x,xl)) * eval(subs(B,x,xr(ite)))<0)
            xu=xr(ite);
        elseif(eval(subs(B,x,xl)) * eval(subs(B,x,xr(ite)))>0)
            xl=xr(ite);
        end
        ite=ite+1;
        xr(ite)=mean([xl xu]);
        er=abs((xr(ite)-xr(ite-1))/(xr(ite)))*100;
        
    end
    fprintf("la raiz encontrada es",xr(ite));
    
else
    fprinf("no se puede encontrar raiz por medio de este metodo")
end
disp(xr(ite))
        
%%
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
    disp("la raiz encontrada es ");
    disp(xr(int));
else
    fprintf("no se puede hallar la raiz con el metodo de la diseccion ");
end