function [s,i] = gauss_seidel(A,B,xi)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
clear x l

m=size(A,1);

if(nargin<3)
    xi=zeros(m,1);
end

D = diag(diag(A));

if(det(D) == 0)
    disp('A1 menos 1 de los elementos de la diagonal es cero, la matriz es particular')
else
    U = -triu(A,1);
    L = -tril(A,-1);
    i= 0;
    x = xi ;
    
    while((norm(A*x-B,2)>0.001) &&(i<10000))
        x=inv(D-L)*(U*x) + inv(D-L)*B;
        i = i + 1;
    end 
    s = x;
end
end
