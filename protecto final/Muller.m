function [raiz] = Muller(f,x0,x1)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
syms x

X(1) = x0;
X(2) = x1;
X(3) = (x0 +x1)/2;
i = 3;

error=100;

while(error>0.01)
    
    f0 = eval(subs(f,x,X(i-2)));
    f1 = eval(subs(f,x,X(i-1)));
    f2 = eval(subs(f,x,X(i)));
    
    delta0 = (f1 - f0)/(X(i-1)-X(i-2));
    delta1 = (f2 -f1)/(X(i) -X(i-1));
    
    ho = X(i-1) - X(i-2);
    h1 = X(i) -X(i-1);
    
    a = (delta1 - delta0)/(h1 - ho);
    b = (a*h1) + delta1;
    c = f2;
    
    if(b < 0)
        X(i+1) = X(i) +((-2*c)/(b - sqrt(b^2 -4*(a*c))));
        
    else
        X(i+1) = X(i) +((-2*c)/(b + sqrt(b^2 -4*(a*c))));
    end
    
    i=i+1;
    
    error = abs(((X(i)-X(i-1))/X(i)))*100;
    if(i>1000)
        break
    end
end

raiz = X(i);
ezplot(f);

end

