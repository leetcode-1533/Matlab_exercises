

for time=[100,1000,10000]
 sum=0;   
for t=1:1:100
    sum=sum+(1/t^2);
end
display(time)
display((sum*6)^0.5);
end

    