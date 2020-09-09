function [raiz1,raiz2] = Bairtow(f,u,v)

    syms x

    % f = x^5 - 3.5*x^4 + 2.75*x^3 + 2.125*x^2 -3.875*x +1.25; 

    a = sym2poly(f);
    eu = 100;
    ev = 100;

    while (eu>1 && ev>1)

        dim = length(a);
        b(1) = 1;
        b(2) = a(2) + u;

        for i = 3: dim
            b(i) = a(i) + b(i-1)*u +b(i-2)*v;
        end

        Ck(1) = b(1);
        Ck(2) = b(2) +u*Ck(1);

        for i = 3: dim - 1
            Ck(i) = b(i) + u*Ck(i-1) + v*Ck(i-2);
        end
        k = length(Ck);

        A = Ck(k-1);
        B = Ck(k-2);
        C = Ck(k);

        matriz_c=[A,B;C,A];
        matriz_B=[-b(dim-1);-b(dim)];

        new =inv(matriz_c)*matriz_B;

        aux_u = u;
        aux_v = v;

        u = u + new(1);
        v = v + new(2);

        eu = abs(new(1)/u)*100;
        ev = abs(new(2)/v)*100;

    end

    raiz1 = (u + sqrt( u^2 +4*v))/2;
    raiz2 = (u - sqrt( u^2 +4*v))/2;

    eval1 = eval(subs(f,x,raiz1));
    eval2 = eval(subs(f,x,raiz2));

    ezplot(f);
    text(raiz1,eval1,'0');
    text(raiz2,eval2,'0');


end

