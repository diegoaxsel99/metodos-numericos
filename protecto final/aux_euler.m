%% metodo de euler 


clear all, clc


conx = 1;

ti = 0;
tf = 6;

y(1) = [conx];

h = 0.01;

n = (tf -ti)/h;

t(1) = ti;

for i=1: n
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h*feval(@ecu,t(i),y(i));
end