t=cplxgrid(50);
z=log(t);
cplxmap(z,log(z));
cplxmap(z,log(z));
rz=imag(z);
iz=real(z);
zz=rz+i*iz;
cplxmap(t,zz);
