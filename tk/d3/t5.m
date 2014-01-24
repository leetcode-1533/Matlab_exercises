clear all
for i = 2:1:50
    if premise(i*(i+1)-1)==1
        a(i)=i;
    end
end
length(a(find(a~=0)))
ar=a(find(a~=0));
a1=[ar,ar(end)+1];
a2=[0,ar];
b=a1.*a2-1;

b(1)=[];
sum(b)