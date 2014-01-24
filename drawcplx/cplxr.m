n=2;m=20;
r=(0:m)'/m;
theta = pi*(-n*m:n*m)/m;
z=r*exp(i*theta);

s=r.^(1/n)*exp(i*theta/n);

surf(real(z),imag(z),real(s),imag(s));




