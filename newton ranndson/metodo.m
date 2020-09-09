%%Diego Axsel garcia Sierra metodos numericos 

clear
close all
clc

syms x

disp('Algoritmo que calcula una raiz apatir del metodo de Newton-Raphon')
disp('Ingrese una funcion en terminos de x')

f_x=input('ingrese la funcion al cual desea encontrar la raiz');
xi=input('ingrese el valor inicial ');

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
    disp("el sistema diverge")
else
    disp("la raiz del sistema es "+num2str(xr(i)))
end