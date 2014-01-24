clear 
re=[];
for jj=[100,1000,10000]   
ii=1:1:jj;
    nu=((-1).^(ii+1)).*(1./ii);
    re=[re sum(nu)];
end

    