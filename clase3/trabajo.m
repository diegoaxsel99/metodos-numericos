%% primer punto
x=[-2 7 -1.5];
y=[0 -3 2];
z=[1 -1 1 -1];
A=[1 -5 3 ; 8 -3 2; 7 0 4];
B=[1 -5 7 ; 4 -3 2; 6 0 4];

resta= x-y;
multiplicacion=x.*y;
multplicacion=x.*(sqrt(y));
norma=norm(x);
norma2=norm(z)+det(A);
potencia=z.^2;
raiz=sqrt(x.^2-y.^2);

% no se puede sumar x + y +z debido a la
% diferencia de dimensiones entre los vectore
% x y y con respecto a z

elemento=x(1)+z(length(z));
traza=sum(diag(A));
[m,n]= size(A);
elemento2=A(m,n)+y(2);
producto1=sum(dot(A,B));
producto2=cross(A,B);
suma=max(x)+min(min(B));
%generacion de autovalores y autovectores
autovalores=eig(A);
[P,D]=eig(A);
%solucion de un sistema de ecuciones
%% segundo punto
%generamos la matriz de coeficientes y la matriz de resultados

coef=[1 1 1;2 -1 3;1 -4 -5];
resul=[6;9;-22];

%solucion es la inversa de la matriz de coeficientes por la matriz
%resultados

solu=coef\resul;% tambien se puede utilizar inv(coef)*resul

%% tercer punto

poli=[1 -4 1 6];

raices=roots(poli);
value=polyval(poli,50);
derivada=polyder(poli);
integral=polyint(poli);

syms x y 

y=x^3-4*x^2+x+6;

factorizacion=factor(y);

y= (x^3-4*x^2+x+6)/(x-3);

y=simplify(y);

limite=limit(y,x,-2);

y=y/(x-1);
y=y*(x-2);

integral2=int(y,x,0,2*pi);

%% cuarto punto

x=0:0.1:pi;
y=0:0.1:pi;

[X,Y]=meshgrid(x,y);

Z= sin(sqrt(X^2+Y^2));

meshc(Z);

for i=1:10
    Z=sin(sqrt(X^2+Y^2+i));
    meshc(Z);
    M(i)=getframe;
end

movie(M,4,6);


%% quinto punto

edad=input('ingrese su edad');

if( edad>=18)
    disp('mayor de edad')
else
    disp('menor de edad')
    
end
%% sexto punto

switch input('ingrese un numero')
   
    case 1
        disp('enero')
    case 2
        disp('febrero')
    case 3
        disp('marzo')
    case 4
        disp('abril')
    case 5
        disp('mayo')
    case 6
        disp('junio')
    case 7
        disp('julio')
    case 8
        disp('agosto')
    case 9
        disp('septiembre')
    case 10
        disp('octubre')
    case 11
        disp('noviembre')
    case 12
        disp('diciembre')
    otherwise 
        disp('numero invalido')
    
end

%% septimo punto
valora=0;
valorn=1;
n=input('ingrese n terminos de fibbonaci');
for i=1:n
    disp(valorn);
    aux1=valora;
    aux2=valorn;
    valora=aux2;
    valorn=aux2+aux1;
end

%% octavo punto

num=input('ingrese  cuantos estudiantes tienes');
num=abs(num);
m=zeros(num,1);
for i=1:num
    m(i)=input(' ');
end

disp("promedio es ")
disp(mean(m));

disp("maximo es ")
disp(max(m));

disp("minimo es ")
disp(min(m));

%% noveno punto
num=input('ingrese la cantidad de datos que quiere ordenar');
m=zeros(num,1);
c=input('ingrese 1 para ordenar descendente y 0 para ascendente');

for i=1 :num
    m(i)=input(' ');
end

switch c
    case 1
        disp(sort(m,'descend'));
    case 0
        disp(sort(m));
    otherwise
        disp("numero invalido")
end
%% 10 punto

num1=input('ingrese el primer numero');
num2=input('ingrese el segundo numero');

if(num1>num2)
    v=num2:1:num2;
else
    v=num1:1:num2;
end

disp(v(2:length(v)-1));

%% 11 punto

n=input('ingrese la cantidad de numeros pares');

for i=1:n*2
    if(mod(i,2)==0)
        disp(i);
    end
end

%% 12 punto

n=input('ingrese termino n de la sumatoria');
sum=0;
for i=0:n
    sum=sum+factorial(i);
end
disp(sum);

%% 13 punto

n=input('ingrese el numero');
cont=0;
for i=2:n-1
    if(mod(n,i)==0)
        cont=cont+1;
    end
end

if(cont==0)
    disp('es primo')
else
    disp('no es primo')
end

%% 14 punto

n=input('ingrese n cantidad de numeros primos');

cont=0;
analizar=1;
cont2=0;
while(cont2<n)
    cont=0;
    
    for i=2:analizar-1
        if(mod(analizar,i)==0)
        cont=cont+1;
        end
    end
    
    if(cont==0)
        disp(analizar)
        cont2=cont2+1;
    end
    analizar=analizar+1;
end

%% 15 punto

for i=97:122
    disp(char(i))
end

%% 16 punto
cont=0;
sum=0;
while(cont<20)
    aux=input('ingrese un numero');
    if(aux<0)
        break
    else
        sum=sum+aux;
        cont=cont+1;
    end
end
disp(sum)

%% 17 punto

disp(dec2bin(input('ingrese el numero')))






   

    













