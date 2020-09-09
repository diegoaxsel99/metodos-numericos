%%Diego Axsel garcia Sierra metodos numericos 

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

