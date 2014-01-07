clc;
clear all
th = 0:0.01*pi:2*pi
ox = cos(th);
oy = sin(th);
oz = ox + i*oy;


rz = (i*(oz-1))./(1+oz);


rx=real(rz);
ry=imag(rz);
subplot(1,2,1);
plot (ox,oy);
subplot(1,2,2);
plot(rx,ry);