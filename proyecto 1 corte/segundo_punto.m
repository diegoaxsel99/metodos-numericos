% segundo punto
%generamos la matriz de coeficientes y la matriz de resultados

coef=[1 1 1;2 -1 3;1 -4 -5];
resul=[6;9;-22];

%solucion es la inversa de la matriz de coeficientes por la matriz
%resultados

solu=coef\resul;% tambien se puede utilizar inv(coef)*resul