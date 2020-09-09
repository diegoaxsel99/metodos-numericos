%Metodos numericos Diego Axsel Garcia Sierra
%Ingenieria Biomedica- Ingenieria Electronica
%% metodo de la biseccion

clear,clc;
syms x 
disp('Se llevara a cabo el metodo de biseccion');
f=input('ingrese una funcion con respecto a x ');

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
    
    raiz="la raiz encontrada es "+num2str(xr(i));
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
    
    disp('la raiz es ');
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

f_x=input(' ingrese la funcion que quiere encontrar una raiz : ');
xi=input('ingrese el valor inicial para encontrar la raiz ');

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
 
%% metodo de newton-raphson 

clear
clc 
close all

syms x 
i=1;

f_x=input('ingrese la funcion al cual desea encontrar la raiz ');
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

%% constante dorada 

clear
close all
clc

syms x

disp('Algoritmo que calcula el optimo apatir del metodo de la seccion dorada')
disp('Ingrese una funcion en terminos de x')

f_x=input('ingrese la funcion al cual desea encontrar el optimo: ');
xl=input('ingrese el valor inicial: ');
xu=input('ingrese el valor final: ');

xuo=xu;
xlo=xl;

R=(sqrt(5)-1)/2;
d=R*(xu-xl);
x1=xl+d;
x2=xu-d;
F1=subs(f_x,x,xl);
F2=subs(f_x,x,xu);
er=100;
i=1;

while((er>0.01) )
    
    fx1=subs(f_x,x,x1);
    fx2=subs(f_x,x,x2);
    
    if(fx1>fx2)
        
        xl=x2;
        x2=x1;
        xop(i)=x1;
        d=R*(xu-xl);
        x1=xl+d;
        
    elseif(fx1<fx2)
        
        xu=x1;
        x1=x2;
        xop(i)=x2;
        d=R*(xu-xl);
        x2=xu-d; 
    end
    
    er=((1-R)*(abs((xu-xl)/xop(i))))*100;

end


ezplot(f_x)
X=xop(i);
Y=subs(f_x,x,X);
message='X aqui se encuentra el optimo en__';
texts=strcat(message,num2str(X));

text(X,Y,texts);
xlim([xlo xuo]);
