%11
n=input('ingrese la cantidad de numeros pares');

for i=1:n*2
    if(mod(i,2)==0)
        disp(i);
    end
end
