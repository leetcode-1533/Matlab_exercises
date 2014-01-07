
tha = 0:0.01*pi:2*pi;
ox = cos(tha);
oy = sin(tha);
oz = ox + i*oy;
% ??????
rz = 3./oz;
rx=real(rz);
ry=imag(rz);



subplot(1,2,1);
plot (ox,oy);
axis equal
axis square
axis on
grid on


 subplot(1,2,2);

 plot(rx,ry);
 axis([-3,3,-3,3]);
 axis equal
 axis square
 axis on
 grid on
