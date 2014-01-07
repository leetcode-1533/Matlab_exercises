function re=n2(num)

i1=1:num;
i2=[0,i1];

i1=i1(2:i1(end));
i2=i2(1:i2(end)-1);

re=i1.*i2;
re=sum(re);