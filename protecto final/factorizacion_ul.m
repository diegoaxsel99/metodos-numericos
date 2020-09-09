
function [c]= Eliminacion_gauss(A,B)
% A=[1 1 1; 5 1 -4;-7 2 -5];
% B=[2;1;3];
dim=length(A);

cont=0;
cont2=0;
A=[A,B]
Ao=A;
for i=1:dim-1
    de=A(i,i);
    cont=cont+1;
    for j=1: dim-i
        cont2=cont2+1;
        num=A(i+j,i);
        coeff(cont2)=num/de;
        
        multi(cont)=num/de;
        A(i+j,:) = A(i+j,:)-multi(cont)*(A(i,:));
        B(i+j) = B(i)-B(i+j)*(coeff(cont2));
    end
    
    
end
B = A(:,dim+1);
A = A(1:dim,1:dim);


c(1) = A(dim,dim)\B(dim);
k = 1;
m = 1;
diag = 2;
for i = 2:dim
    Value = 0;
    for j = 1: i-1
        disp(c(k))
        Value = Value+A(dim+1-i,diag+j)*c(k);
        k = k - 1;
    end
    disp('value')
    disp(Value+A(dim-m,dim-m))
    c(m + 1) = A(dim-m,dim-m)\B(dim-m) - Value/A(dim-m,dim-m);
    m = m + 1;
    k = m;
    diag = diag - 1;
end
c = fliplr(c);
c = c';
% 
% U=A;
% L=Ao*inv(U);
% abc=inv(L)*B;
% 
% respuesta=inv(U)*abc;

% fila=1;
% col=1;
% cont=0;
% while(cont~=length(coeff))
%     
%     
%     disp(fila)
%     disp(col)
%     
%     if(l(fila,col)==1)
%         fila=fila+1;
%         col=1;
%     
%     
%     end
%     
%     disp(fila)
%     disp(col)
%     
%     if(l(fila,col)==0)
%         cont=cont+1;
%         l(fila,col)=coeff(cont);
%         col=col+1;
%     end
%         
%     
% end