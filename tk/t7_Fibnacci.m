function an=Fibnacci(n)
% This is a function to calculate Fibnacci series

if n==1 | n==2
    an = 1;
else
    an = Fibnacci(n-1)+Fibnacii(n-2);
end
   