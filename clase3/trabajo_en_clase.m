clc
clear
close all
%%
filename='prueba.txt';
delimeterin=' ';
fil=1;

%A=importdata(filename,delimeterin,fil);
%B=importdata(filename,delimeterin,fil+1);
C=importdata(filename,delimeterin,fil+2);

for i=1:3
    disp(C{i});
end
%%

filename='pruebaq.txt';
limit='\t';
cabezal=1;

A=importdata(filename,limit,cabezal);

%for i=1:length(A.colheaders)
  %  disp(A.colheaders{1,k})
 %   disp(A.data(:,k))
%end

disp('elemento indicidual');
%disp(A.colheader{})

%%

clc 
clear 
close all

z=fopen('prueba.txt');

while(~feof(z))
    line=fgets(z);
end
fclose(z);

%%
clc 
clear

poli=[1 0 2 -7];% contruye un polinomio
raicez=roots(poli);% halla las raicez del polinomio
p=poly(raicez);% recontruye el polinomio apartir de las raicez

value=polyval(poli,raicez(1));

%multiplicar o dividir dos polinomios

mul=conv(poly,poly);
div=deconn(poly,poly);

% integrales polyint(polinomio)
% derivadas polyder(polinomio)
% regresion lineal por minimos cuadrados polyfit(x,y,n) donde n es el grado
% de la regresion lineal



% Existe variables simbolicas lo que permite saber expresiones matemalticas
% indefinidas como lo son las integrales o las derivadas


