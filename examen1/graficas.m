x=0:0.01:2*pi;
y1=(sin(3*pi*x))./(exp(x));
y2=(cos(3*pi*x))./(exp(x));
plot(x,y1,'r')
xlim([0 2*pi]);
hold on
plot(x,y2,'--')
xlim([0 2*pi]);
legend('sin(3pix/(exp(x)','cos(3pix))/(exp(x)');

xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi'});
%%
% t=0:0.01:2*pi;
% y=sin(t);
% x=cos(t);
% [X,Y]=meshgrid(x,y);
% T=X+Y;
% figure
% mesh(X,Y,T);
% meshc(X,Y,T);
figure
x=0:0.01:2*pi;
y=0:0.01:2*pi;
[X,Y]=meshgrid(x,y);
Z=sin(X)+cos(Y);
mesh(X,Y,Z);
meshc(X,Y,Z);
figure
surf(X,Y,Z);
surfc(X,Y,Z);
%%
syms x y

y=x^2+5*x+6;
raices=solve(y);
criticos=solve(simplify(diff(y)));

ezplot(y);
hold on
for i=1:length(raices)
    text(raices(i),0,'o');
end

coordenada=eval(subs(y,criticos));

text(criticos,coordenada,'x');



