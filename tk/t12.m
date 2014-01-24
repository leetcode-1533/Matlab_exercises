clear;
for time = [100,1000,10000]
    i=1:1:time;
    t=1./(i.^2);
    s=sum(t); 
    display(time);
    display((s*6)^0.5);
end
