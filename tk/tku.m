% clc;
% close all;
% th = 0:0.001*pi:2*pi;
% x=(2^0.5).*cos(th);
% y=((2^0.5).*sin(th)+1);
% % plot(x,y);
% % grid on
% % axis equal
% % axis square
% 
% for ind=1:length(th)
%     if x(ind)^2+(y(ind)+1)^2<2
%     x(ind)=NaN;
%     y(ind)=NaN;
%     end
% end
% subplot(1,2,1);
%  plot(x,y,'g');
%  grid on
%  axis equal
%  axis square
%  
%  z=x+j*y;
%  testz=(z+1)./(z-1);
%  rx=real(testz);
%  ry=imag(testz);
%  subplot(1,2,2);
%   plot(rx,ry,'k');
%  grid on
%  axis equal
%  axis square
 
% clc;
% close all;
% th = 0:0.001*pi:2*pi;
% x=cos(th);
% y=sin(th);
% 
% z=x+j*y;
% testz=i*(1-z)./(z+1);
% rx=real(testz);
% ry=imag(testz);
% 
% plot(rx,ry);

clc;
close all;
% th = 0:0.001*pi:2*pi;
x=-10:0.01:0;
y=0;

z=x+j*y;
testz=log(z);
rx=real(testz);
ry=imag(testz);

plot(rx,ry);
 