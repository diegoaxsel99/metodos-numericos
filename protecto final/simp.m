
syms x

f=input('Ingresa la funci�n f(x)');
n=1;
while mod(n,2)~=0
    n=input('Ingrese el n�mero de subintervalos: ');
    if mod(n,2)~=0
        disp('El n�mero de subintervalos debe ser par, pulse una tecla para continuar')
        pause
    end
end
a=input('Ingrese el l�mite inferior de la integral: ');
b=input('Ingrese el l�mite superior de la integral: ');


h=(b-a)/n;


sumai=0;
sumap=0;


for i=1:2:n-1
    sumai=sumai+eval(subs(f,h*i+a));
end
for i=2:2:n-2
    sumap=sumap+eval(subs(f,h*i+a));
end


int=(h/3)*(eval(subs(f,a))+4*sumai+2*sumap+eval(subs(f,b)));
