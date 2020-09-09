% 13 punto

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
