% metodo numericos Diego Axsel Garcia Sierra
% Ingenieria Biomedica- Ingenieria Electronica

close all
clear
clc

syms x y

disp('Metodo numerico para encontrar un optimo apatir del metodo de newton raphson')
f_x=input('Ingrese la funcion f(x) a la cual desea encontrar el optimo: ');
xi=input('Ingrese el punto inicial para encontrar el optimo: ');

f_xo=f_x;
f_x=diff(f_x);

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
    disp("El sistema diverge")
else
    disp("El optimo del sistema es "+num2str(xr(i)))
    
    ezplot(f_xo);
    X=xr(i);
    Y=subs(f_xo,x,xr(i));
    message='X aqui se encuentra el optimo en__';
    texts=strcat(message,num2str(X));
    text(X,Y,texts);
    
end