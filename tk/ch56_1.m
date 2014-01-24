clc;
clear all;
close all;

t=0:0.001*pi:pi;
x2=sin(3.*t).*cos(t);
y2=sin(3.*t).*sin(t);
y1=2*x2-0.5;

plot(x2,y1,'k');
hold on;
plot(x2,y2,'r');
hold on;

% r0=find(abs(y2-y1)<=0.0068);
r0=abs(y2-y1)<=0.01;
xx=r0.*x2;
yy=r0.*y1;
plot(xx,yy,'*');

