clear 
an=[];
for jj=[100,1000,10000]
    ri=1:1:jj;
    ii=1./4.^(ri);
    an=[an sum(ii)];
end
       

        