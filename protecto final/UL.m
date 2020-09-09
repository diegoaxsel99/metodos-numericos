function [respuesta] = UL(A,B)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    dim=length(A);

    cont=0;
    cont2=0;
    Ao=A;
    for i=1:dim-1
        de=A(i,i);
        cont=cont+1;
        for j=1: dim-i
            cont2=cont2+1;
            num=A(i+j,i);
            coeff(cont2)=num/de;

            multi(cont)=num/de;
            A(i+j,:)=A(i+j,:)-multi(cont)*(A(i,:));
        end 

    end 
    
    U=A;
    L=Ao*inv(U);
    abc=inv(L)*B;

    respuesta=inv(U)*abc;

end

