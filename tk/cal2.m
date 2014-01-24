function [a1,a2,n1,n2]=cal2(tha,m1,m2)

%THIS IS A FUNCTION
g=9.18;
a=[m1*cos(tha),-m1,-sin(tha),0;m1*sin(tha),0,cos(tha),0;0,m2,-sin(tha),0;0,0,-cos(tha),1];
c=[0;m1*g;0;m2*g];
t=inv(a)*c;
a1=t(1);
a2=t(2);
n1=t(3);
n2=t(4);