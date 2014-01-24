clc;
clear;

x=[1,8,10];
y=[1,3,0.1];

for i=1:1:3
a=x(i);
b=y(i);

x1=mean([x(i),y(i)]);
x2=a/(b+x1);
ik=1;
while abs(x2-x1&ik<500) > 0.00001
    ik=ik+1;
    x1=x2;
    x2=a/(b+x1);
end

s(i)=x1;
ss(i)=x2;

end




    
