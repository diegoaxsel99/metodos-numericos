% 16 punto
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