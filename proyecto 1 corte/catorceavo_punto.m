% 14 punto

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