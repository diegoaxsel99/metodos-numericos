function [x3] = interpolacion(xo,x2,f)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    syms x
    x1 = (xo+x2)/2;
    fo = eval(subs(f,x,xo));
    f1 = eval(subs(f,x,x1));
    f2 = eval(subs(f,x,x2));

    n = fo*(x1^2-x2^2) + f1*(x2^2-xo^2) + f2*(xo^2-x1^2);
    d = 2*( fo*(x1-x2) + f1*(x2-xo) +f2*(xo-x1));
    

    x3(1) = n/d
    i=1;
    f3 = eval(subs(f,x,x3(i)));
    error = 100;
    
    while(error>0.01)

        if(x3(i)>x1 && f3>f1)
            xo = x1;
            x1 = x3(i);
        end

        if(x3(i)>x1 && f3<f1)
            x2 = x3(i);
        end

        if(x3(i)<=x1 && f3<f1)
            xo = x3(i);
        end

        if(x3(i)<=x1 && f3>f1)
            x2 = x1;
            x1 = x3(i);
        end

        fo = eval(subs(f,x,xo));
        f1 = eval(subs(f,x,x1));
        f2 = eval(subs(f,x,x2));

        n = fo*(x1^2-x2^2) + f1*(x2^2-xo^2) + f2*(xo^2-x1^2);
        d = 2*( fo*(x1-x2) + f1*(x2-xo) +f2*(xo-x1));


        x3(i+1) = n/d;
        i = i + 1;
        f3 = eval(subs(f,x,x3(i)));
        
        error = abs((x3(i) - x3(i-1))/x3(i))*100;





    end


end

