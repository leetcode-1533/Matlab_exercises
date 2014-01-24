clear all;
s = 0 : 0.01*pi : pi/2;
t = 0 : 0.01*pi : 3*pi/2;

[S,T]= meshgrid(s,t);

x=cos(S).*cos(T);
y=cos(S).*sin(T);
z=sin(S);

surf(x,t,z);

shading faceted;
shading interp;