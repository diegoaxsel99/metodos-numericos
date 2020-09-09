expresion='sin(X)';
syms X;
y=str2sym(expresion);
disp(y);
disp(diff(y));