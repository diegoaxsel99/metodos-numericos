%%Diego Axsel Garcia sierra Metodos numericos
% metodo de la iteracion de punto fijo
clear
clc 
close all

syms x 

disp('Algoritmo qeu calcula las raizces de una funcion por medio del metodo de punto fijo')
disp('Ingrese una ecuacion en terminos de x')

f_x=input(' ingrese la funcion que quiere encontrar una raiz : ');
xi=input('ingrese el valor inicial para encontrar la raiz');

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
    fprintf('la raiz de la ecuacion es ')
    disp(xr(i))
end