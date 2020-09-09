x=0:0.01:4*pi;
y=sin(x);

subplot(2,2,1);
plot(x,y);
txt = '\leftarrow sin(\pi) = 0'; 
text(pi,sin(pi),txt);
txt='\leftarrow sin(n\pi)=0';
text(2*pi,sin(2*pi),txt);

n=-10:0.01:10;
m=n.^3-n;

subplot(2,2,2);
plot(n,m);
txt = 'O'; 
text(-1,0,txt);
txt = 'O'; 
text(0,0,txt);
txt = 'O'; 
text(-1,0,txt);
txt = 'O'; 
text(1,0,txt);


x=-pi/24-1:0.01:(3*pi)/14+1;
y=sin(10*x)+cos(3*x);

subplot(2,2,3);

plot(x,y);
txt = 'O'; 
text(-pi/24,0,txt);
txt = 'O'; 
text((3*pi)/14,0,txt);

x=-pi/24-1:0.01:(3*pi)/14+1;
y=sin(10*x)+cos(3*x);

subplot(2,2,3);

plot(x,y);
txt = 'O'; 
text(-pi/24,0,txt);
txt = 'O'; 
text((3*pi)/14,0,txt);

x=0:0.01:20;
y=((667.30./x).*(1-exp(-0.146843.*(x))))-40;

subplot(2,2,4);
plot(x,y);
txt = 'O'; 
text(14.7802,0,txt);



