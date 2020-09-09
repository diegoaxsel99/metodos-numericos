v=rand(3);
w=rand(3);

#producto punto 
dot(v,w);
#producto cruz
cross(v,w);
#diferncial de una matriz que es una aproximacion de una derivada

#solucion de una ecuacion lineal

A={1 2 -1; 2 -1 3 ; -1 1 4};
B={3;6;3};
x=inv(A).*B;
