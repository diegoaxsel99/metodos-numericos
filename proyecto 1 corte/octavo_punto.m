% octavo punto

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