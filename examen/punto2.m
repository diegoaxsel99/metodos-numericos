%% metodo newton raphson 
clear
clc 
close all

syms x y
i=1;

f_x=log(x-1);
xi=4;

er=100;
ed=1;
xr(1)=xi;
i=1;
g_x=diff(f_x,x);

converge=true;

while((er>0.01) &&(ed>0.0001))
    evalfx=eval(subs(f_x,x,xr(i)));
    evalgx=eval(subs(g_x,x,xr(i)));

    xr(i+1)=xr(i)-evalfx/evalgx;
    disp(xr(i+1))
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
i1=i;

%% metodo del punto fijo

xi=4;
f_x=log(x-1);
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

i2=i;