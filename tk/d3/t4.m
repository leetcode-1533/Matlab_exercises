clear;
fk(1)=1;
fk(2)=0;
fk(3)=1;
for i = 4 : 1 :100
  fk(i)=fk(i-1)-2*fk(i-2)+fk(i-3);
end
s=sum(fk);
ma=max(fk);
mi=min(fk);

length(find(fk>0))
length(find(fk==0))
length(find(fk<0))

