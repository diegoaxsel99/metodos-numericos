x=3;
y=2;
m=cell2mat({1, 8, 4});
n=cell2mat({2, 7, 1});
A=cell2mat({2 2 -7; 1 -2 5; 4 6 3});
B=cell2mat({1 2 4; 6 5 2; 5 6 8});

suma=x+y;

mult1=x*y;

ope=x-3*y;


res=m.-n;
mult4=dot(m,n);
mult5=cross(m,n);
norma = norm(m);

dete=det(A);


mult6=A.*B;
sum=A+B;

ope2=3.*A-2.*B;

sum=0;
for i=1:1:2
  sum+=input("ingrese un numero");
end
disp(sum);

h=input("ingrese altura del triangulo");
b=input("ingrese base del triangulo");
disp("area del triangulo es ");
disp((b*h)/2);
n=input("cuantos alumnos tienes");
disp("ingrese la edad de sus alumnos");
sum=0;
for i=1:1:n
  sum+=input(" ");
end
disp(sum/=n);



