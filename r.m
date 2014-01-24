
clear all
 x = 0 : 0.001: 1;
 A = sin(pi*[1:4]'*x);
 B = cos(pi*(0:3)'*x);
 C = sin(pi*(1/2:7/2)'*x);
 D = cos(pi*(1/2:7/2)'*x);
 
 subplot(4,1,1),
 plot(x,A);
 legend('X|0=0,X|l=0');
 subplot(4,1,2),
  plot(x,B);
   legend('Xx|0=0,Xx|l=0');
 subplot(4,1,3),
  plot(x,C);
     legend('X|0=0,Xx|l=0');
 subplot(4,1,4),
  plot(x,D);
     legend('Xx|0=0,X|l=0');

     
     
     
