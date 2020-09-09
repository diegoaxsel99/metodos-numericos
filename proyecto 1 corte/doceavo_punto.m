%% 12 punto

n=input('ingrese termino n de la sumatoria');
sum=0;
for i=0:n
    sum=sum+factorial(i);
end
disp(sum);