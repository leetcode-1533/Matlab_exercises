clear all;
t = 0:0.005:0.25;
x = 0:0.001:1;

ww1=wfun(1,0);
ww2=wfun(2,0);
ww3=wfun(3,0);
ww4=wfun(4,0);

fig = figure;
subplot(4,1,1);
h1 = plot(x,ww1,'r');
subplot(4,1,2);
h2 = plot(x,ww2,'b');
subplot(4,1,3);
h3 = plot(x,ww3,'g');
subplot(4,1,4);
h4 = plot(x,ww4,'k');




for n = 1:length(t)
    ww1=wfun(1,t(n));
    set(h1,'ydata',ww1);
    drawnow;
    
     ww2=wfun(2,t(n));
    set(h2,'ydata',ww2);
    drawnow;
    
     ww3=wfun(3,t(n));
    set(h3,'ydata',ww3);
    drawnow;
     ww4=wfun(4,t(n));
    set(h4,'ydata',ww4);
    drawnow;
     frame(n) = getframe(fig);


    
end
% writegif('test.gif',frame,0.1);
