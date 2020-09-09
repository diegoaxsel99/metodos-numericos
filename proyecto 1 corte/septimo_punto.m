% septimo punto
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