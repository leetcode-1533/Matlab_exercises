
[t1,t2]=meshgrid(0:1,(0:0.02:1)');
y1=besselk(t1,t2);
y2=besseli(t1,t2);
plot(t2,y1,t2,y2);
