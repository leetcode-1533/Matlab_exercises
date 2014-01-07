function t=cal3_1(num)

t=0;
r=fix(sqrt(num));

for k=2:1:fix(r)
    if mod(num,k)==0
        t=1;
        return ;
    end 
end

 