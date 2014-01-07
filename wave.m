clear all;
t=figure;
u(1:140)=0;
x = linspace(0,1,140);
u(61:80)=0.05*sin(pi*x(61:80)*7);
uu=u;
h = plot(x,u);
set(h,'EraseMode','xor');
f(1)=getframe(t);


for at = 2:60
    lu(1:140)=0;
    lx = [61:80]-at;
    lu(lx)=0.5*uu(61:80);
    
    ru(1:140)=0;
    rx = [61:80]+at;
    ru(rx)=0.5*uu(61:80);
    u=lu+ru;
    set(h,'XData',x,'YData',u);
    drawnow;
    f(at)=getframe(t);
end
