%% primer punto
a = 3;
b = 10;
h = 0.01;

t = a:h:b;

fx = log(t - 2);

dfx = derivar(fx,t);
legend('funcion','derivada numerica','derivada analitica');

%% Segundo punto

syms x

y = log(exp(x-1));

con_ini = 0.1;
b = 10;
n = 25;

integracion(y,n,b,con_ini);