
 w=-8*pi:0.01:8*pi;  
b=[0,-5];
a=[1,5];
% subplot(2,1,1);
 H=freqs(b,a,w);
 plot(w,abs(H)); grid on
% subplot(2,1,2);
% plot(w,angle(H)); grid on
% 
% h=tf(b,a);
% bode(h);