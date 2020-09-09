% tercer punto

poli=[1 -4 1 6];

raices=roots(poli);
value=polyval(poli,50);
derivada=polyder(poli);
integral=polyint(poli);

syms x y 

y=x^3-4*x^2+x+6;

factorizacion=factor(y);

y= (x^3-4*x^2+x+6)/(x-3);

y=simplify(y);

limite=limit(y,x,-2);

y=y/(x-1);
y=y*(x-2);

integral2=int(y,x,0,2*pi);