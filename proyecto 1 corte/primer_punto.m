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