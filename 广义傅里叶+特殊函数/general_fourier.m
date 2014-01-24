% [X,Z]= meshgrid([0:0.1:3],[0:0.1:2]);
% [Q,R]= cart2pol(X,Z);
% R(find(R==1))=NaN;
% 
% u=1./sqrt(1-2.*R.*cos(Q)+R.^2);
% meshc(X,Z,u);

     [X,Z]= meshgrid([0:0.1:3],[0:0.1:2]);
     [Q,R]= cart2pol(X,Z);
     R(find(R==1))=NaN;
     
    Rin=R;
    Rout=R;
    
    Uin = 1;
    Uout = 1./Rout;
    
    for k = 1:1:25
        leg =legendre(k,cos(Q));
        legk=squeeze(leg(1,:,:));
        uin=Rin.^k.*legk;
        Uin=Uin+uin;
    end
    figure 
    meshc(X,Z,Uin);
