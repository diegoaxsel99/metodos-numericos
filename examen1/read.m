filename='test.txt';

id=fopen(filename);
inpector=0;
data={};

while(inspector~=-1)
    inpector=fgetl(id);
    
    if(inspector~=-1)
        data=[data;inspector];
    end
end
disp(data);
%%
filename='test.txt';
limit='\t';
in=1;
matriz=importdata(filename,limit,in);

data=matriz.data;
header=char(matriz.textdata);
%%
pol1=[1 2 1];

raices=roots(pol1);

p=poly(raices);

y=polyval(pol1,23);

pol2=conv(pol1,p);
pol3=deconv(pol1,p);

derivada=polyder(p);
integral=polyint(p);
%%
syms x y;
y=x^3+2*x^2+x+7;

primera=diff(y);
segunda=diff(y,2);
integral=int(y);
factorizar=factor(y);
expandido=expand(y);
simplifica=simplify(y);
ezplot(y,[-1 1]);

%%
% resolver ecuaciones


x0=[1000 1000];
[x,fval,exitflag,output,jacobian] = fsolve('noLineal',x0);

function [f]=noLineal(x)
    f(1) = exp(-exp(-(x(1)+x(2)))) - x(2)*(1+x(1)^2);
    f(2) = x(1)*cos(x(2)) + x(2)*sin(x(1)) - 0.5;
end


%%
x=0:01:2*pi;
y1=(sin(3*pi*x))./(exp(-x));
y2=(cos(3*pi*x))