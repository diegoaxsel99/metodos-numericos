% noveno punto
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