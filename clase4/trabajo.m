close all

t=0:0.01:3*pi;
w=3*pi;
y1=(sin(w.*t))./exp(t);
y2=(cos(w.*t))./exp(t);

plot(t,y1);

hold on;

plot(t,y2,'r:');