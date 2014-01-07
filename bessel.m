N = 50;
j = 1;
ld = [];
yy = inline('besselj(1,xx)','xx');

for k = 1:N 
    while(besselj(1,j)*besselj(1,j+1)>0)
        j=j+1;
    end
    q = fzero (yy,j);
    j=j+1;
    ld = [ld,q];
    k=k+1;
end

r0 = 1.5;
u0 = 1;
l = 0.5;
[X,Y] = meshgrid(0:0.05:0.5,0:0.05:1.5);
A=0;

for n = 1:N 
    a = -4 *u0*besselj(2,ld(n));
    a = a*sinh(ld(n).*X/r0).*besselj(0,ld(n).*Y/r0);
    b = (ld(n)/r0)^2;
    b = b*sinh(ld(n).*X/l).*(besselj(0,ld(n))).^2;
    
    c=a./b
    A=A+c;
end

A = A + u0*r0^2/(2*l)*X;


