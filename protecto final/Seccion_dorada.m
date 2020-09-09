function [raiz,raiz_m] = Seccion_dorada(f_x,xl,xu)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    syms x
    
    R=(sqrt(5)-1)/2;
    d=R*(xu-xl);
    x1=xl+d;
    x2=xu-d;
    F1=subs(f_x,x,xl);
    F2=subs(f_x,x,xu);
    er=100;
    i=1;

    while((er>0.01) )

        fx1=subs(f_x,x,x1);
        fx2=subs(f_x,x,x2);

        if(fx1>fx2)

            xl=x2;
            x2=x1;
            xop(i)=x1;
            d=R*(xu-xl);
            x1=xl+d;

        elseif(fx1<fx2)

            xu=x1;
            x1=x2;
            xop(i)=x2;
            d=R*(xu-xl);
            x2=xu-d; 
        end

        er=((1-R)*(abs((xu-xl)/xop(i))))*100;

    end
    
    raiz=strcat('el optimo encontrado es__',num2str(xop(i)));
    raiz_m=xop(i);
    

end

