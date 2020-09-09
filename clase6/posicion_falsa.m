syms x

% metodo numerico de la posicion falsa toma dos punto y calcula xr apartir
% de la iterccion con el eje x

y=input('ingrese la ecuacion en terminos de x ');
xl=input('ingrese el limite inferior ');
xu=input('ingrese el limite superior ');

while(xl>=xu)
    disp('ingrese de manera correcta los limites')
    xl=input('ingrese el limite inferior ');
    xu=input('ingrese el limite superior ');
    
end

i=1;
fxl=eval(subs(y,x,xl));
fxu=eval(subs(y,x,xu));
xr(i)=xu-((fxu*(xl-xu))/(fxl-fxu));

fxr=eval(subs(y,x,xr(i)));
er=1;

if(fxl*fxu<0)
    
    while(er>0.01)
        fxl=eval(subs(y,x,xl));
        fxu=eval(subs(y,x,xu));
        fxr=eval(subs(y,x,xr(i)));
        
        disp(xr(i));
        
        if(fxl*fxr<0)
            xu=xr(i);
        end
        if(fxl*fxr>0)
            xl=xr(i);
        end
        
        i=i+1;
        xr(i)=xu-((fxu*(xl-xu))/(fxl-fxu));
        
        er=abs((xr(i)-xr(i-1))/xr(i))*100;
    end 
    disp("la raiz encontrada es ");
    disp(xr(i))
    
else
    disp("no se puede hallar la raiz con el metodo de la diseccion ")
end

