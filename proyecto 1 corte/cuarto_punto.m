% cuarto punto

x=0:0.1:pi;
y=0:0.1:pi;

[X,Y]=meshgrid(x,y);

Z= sin(sqrt(X^2+Y^2));

meshc(Z);

for i=1:10
    Z=sin(sqrt(X^2+Y^2+i));
    meshc(Z);
    M(i)=getframe;
end

movie(M,4,6);