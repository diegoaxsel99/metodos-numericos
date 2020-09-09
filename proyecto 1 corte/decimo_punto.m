% 10 punto

num1=input('ingrese el primer numero');
num2=input('ingrese el segundo numero');

if(num1>num2)
    v=num2:1:num2;
else
    v=num1:1:num2;
end

disp(v(2:length(v)-1));