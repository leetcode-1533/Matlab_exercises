z=cplxgrid(30);

z(find(abs(z)==1))==NaN;

figure;
cplxmap(z,1./(1-z));