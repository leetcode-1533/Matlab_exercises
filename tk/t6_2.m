clear 
an=[];
for jj=[100,1000,10000]
    ri=1:1:jj;
    ii=1./(2.*ri-1).*(-1).^(ri+1);
    an=[an sum(ii)];
end
