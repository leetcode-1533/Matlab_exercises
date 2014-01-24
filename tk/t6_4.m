clear 
 
an=[];
for jj=[100,1000,10000]
    ri=1:1:jj;
    ii=((2.*ri).^2)./((2.*ri-1).*(2.*ri+1));
    an=[an prod(ii)];
end